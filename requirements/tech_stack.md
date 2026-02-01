# THE SOVEREIGN TECH STACK
**Status**: DRAFT
**Philosophy**: Ownership, Durability, Velocity.

To build an "Intellectual Empire" on rented land is strategic suicide.
This stack is chosen to ensure `andrewfranklinleo.com` remains:
1.  **Uncensorable** (within reason).
2.  **Portable** (move anywhere in <1 hour).
3.  **Fast** (globally replicated).
4.  **Database-Free** (no SQL injection, no maintenance rot).

---

## 1. THE CORE ENGINE
**Selection: [Hugo](https://gohugo.io/)**
*   **Why**: It parses 10,000 pages in milliseconds. It produces pure HTML. It survives without maintenance for years.
*   **Rejected**:
    *   *WordPress* (Security nightmare, plugin bloat).
    *   *Next.js/React* (Over-engineering for a text-heavy empire. Client-side hydration is fragility).
    *   *Ghost* (Good, but requires a database/server. We want files).

## 2. THE HOSTING (DISTRIBUTION)
**Selection: [Cloudflare Pages](https://pages.cloudflare.com/) or [Vercel](https://vercel.com)**
*   **Why**: Global edge network. DDoS protection. Zero-config HTTPS.
*   **The Sovereign Constraint**: The *Repository* is the truth, not the host. We can switch from Vercel to Netlify to AWS S3 in 10 minutes by changing the git remote.
*   **DNS**: Cloudflare (for the security layer).

## 3. SEARCH & RETRIEVAL
**Selection: [Pagefind](https://pagefind.app/)**
*   **Why**: It is a purely static search library. It indexes your site *at build time* and ships a small WASM blob.
*   **The Win**: No external API calls. No monthly SaaS fee. No "Algolia quota exceeded". It works offline. It is yours.

## 4. INTELLIGENCE (ANALYTICS)
**Selection: [Plausible](https://plausible.io/) (Self-hosted or Cloud)**
*   **Why**: "Google Analytics" is surveillance capitalism that slows down your site. Plausible is <1KB, GDPR compliant, and tracks *what matters* (attention), not *who they are* (spying).
*   **Alternative**: [GoAccess](https://goaccess.io/) (Server log analysis) for pure stealth.

## 5. CONTENT MANAGEMENT (THE INTERFACE)
**Selection: [Decap CMS](https://decapcms.org/) (formerly Netlify CMS) or [Visual Studio Code](https://code.visualstudio.com/)**
*   **Why**: It writes directly to Git.
*   **Philosophy**: You do not store "posts" in a database. You store *files*. If GitHub dies, you have the files locally. If the CMS dies, you edit Markdown.
*   **Constraint**: No "Headless CMS" (Contentful/Sanity) that holds your data hostage via API.

## 6. ASSET OPTIMIZATION
**Selection: [Hugo Pipes](https://gohugo.io/hugo-pipes/) (Built-in)**
*   **Why**: Resize, crop, and webp-convert images at build time.
*   **Rejected**: Third-party CDNs (Cloudinary/Imgix) *for core assets*. Dependency risk.

## 7. DEPLOYMENT PIPELINE
**Selection: Azure Pipelines (Existing) / GitHub Actions**
*   **Role**: The factory floor.
*   **Config**: `azure-pipelines.yml`.
*   **Strict Rule**: The main branch *is* production. No manual FTP. No "it works on my machine".

## 8. NEWSLETTER (THE OUTPOST)
**Selection: [Buttondown](https://buttondown.email/) or [Substack](https://substack.com)**
*   **Why**: Text-first. Markdown support. Exportable lists.
*   **The Trap**: Do not build a custom email server unless you enjoy being flagged as spam. Outsource *delivery*, own the *list*.

---

## MISSING TOOLS (TO BE BUILT)
To achieve the "Sovereign" vision, you likely need to build:
1.  **The Dead Link Reaper**: A script that runs in CI to kill broken internal links before deploy.
2.  **The Style Enforcer**: A linter (Markdownlint) that rejects "lazy" writing (e.g., passive voice, missing metadata).
3.  **The Map Generator**: Auto-generate the `/tools/` and `/concepts/` interconnectivity graph (MermaidJS or D3) from the frontmatter links.

**Verdict**: Your stack is solid (Hugo), but your *ecosystem* (Search, Analytics, Feedback) is empty. Fill it with the tools above.
