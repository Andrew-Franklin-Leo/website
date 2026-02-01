import os
import re
import sys
from urllib.parse import unquote

# CONFIGURATION
CONTENT_DIR = "content"
# Extensions to check
EXTENSIONS = [".md", ".html"]
# Ignored prefixes (external links, anchors)
IGNORED_PREFIXES = ["http", "https", "mailto:", "#", "tel:"]

def get_all_files(root_dir):
    """Recursively find all content files."""
    content_files = []
    for root, _, files in os.walk(root_dir):
        for file in files:
            if any(file.endswith(ext) for ext in EXTENSIONS):
                content_files.append(os.path.join(root, file))
    return content_files

def get_valid_paths(root_dir):
    """
    Build a set of valid URL paths from the file system.
    Hugo logic: 
    - /content/section/page.md -> /section/page/
    - /content/section/_index.md -> /section/
    """
    valid_paths = set()
    for root, _, files in os.walk(root_dir):
        for file in files:
            # Calculate logic path
            rel_dir = os.path.relpath(root, root_dir)
            if rel_dir == ".": rel_dir = ""
            
            base_name = os.path.splitext(file)[0]
            
            # _index.md case
            if base_name == "_index":
                path = f"/{rel_dir}/".replace("//", "/")
                if path == "/./": path = "/"
            else:
                path = f"/{os.path.join(rel_dir, base_name)}/".replace("\\", "/").replace("//", "/")
            
            valid_paths.add(path.lower())
            
            # Also add direct file reference in case of image/asset
            # This is a simplification; strict checking requires more Hugo awareness
    return valid_paths

def check_file(file_path, valid_paths):
    """Scan a file for broken links."""
    errors = []
    with open(file_path, "r", encoding="utf-8") as f:
        content = f.read()

    # Regex for Markdown links [text](target)
    # Simple regex, might miss edge cases but good for sovereign audit
    links = re.findall(r'\[.*?\]\((.*?)\)', content)

    for link in links:
        link = link.strip()
        
        # Skip external or ignored
        if any(link.startswith(p) for p in IGNORED_PREFIXES):
            continue
        
        # Handle anchors
        clean_link = link.split("#")[0]
        if not clean_link: continue # Just an anchor

        # Handle absolute internal paths
        if clean_link.startswith("/"):
            # Check if this maps to a valid path
            # Heuristic: verify if it ends in / or check exact match
            # Hugo typically treats /foo/bar as /foo/bar/
            
            check_link = clean_link.lower()
            if not check_link.endswith("/"):
                check_link += "/"
            
            # Normalize for comparison
            check_link = check_link.replace("//", "/")
            
            if check_link not in valid_paths:
                # Fallback: check if it's an asset (image/pdf) in static?
                # For now, flag it.
                errors.append(link)
        
        # Relative paths are harder without context, flagging for manual review if they look suspicious
        # Ignoring relative paths for this MVP version to reduce noise
    
    return errors

def main():
    print("💀 SOVEREIGN DEAD LINK REAPER 💀")
    print(f"Scanning {CONTENT_DIR}...")
    
    abs_content_dir = os.path.abspath(CONTENT_DIR)
    if not os.path.exists(abs_content_dir):
        print(f"Error: Content directory {abs_content_dir} not found.")
        return

    files = get_all_files(abs_content_dir)
    print(f"Found {len(files)} content files.")
    
    # 1. Build Index of Valid Destinations
    # This is an approximation of Hugo's build. 
    # For a perfect check, checking `public/` after build is better, 
    # but this script runs *without* building, which is the goal (speed).
    valid_paths = get_valid_paths(abs_content_dir)
    
    total_errors = 0
    
    for file_path in files:
        rel_path = os.path.relpath(file_path, os.getcwd())
        file_errors = check_file(file_path, valid_paths)
        
        if file_errors:
            print(f"\n[FAIL] {rel_path}")
            for err in file_errors:
                print(f"  ❌ Broken Link: {err}")
            total_errors += len(file_errors)

    if total_errors > 0:
        print(f"\n💀 REAPER FINISHED. Found {total_errors} broken internal links.")
        sys.exit(1)
    else:
        print("\n✨ SYSTEM CLEAN. No broken internal absolute links detected.")
        sys.exit(0)

if __name__ == "__main__":
    main()
