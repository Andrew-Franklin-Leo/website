@echo off
:: SOVEREIGN DOUBLE-TAP DEPLOYMENT
:: 1. Secure Source: Pushes full code to Azure (origin)
:: 2. Broadcast Site: Builds and pushes 'public' to GitHub

echo ========================================================
echo   INITIATING SOVEREIGN DEPLOYMENT SEQUENCE
echo ========================================================

:: --- PHASE 1: SECURE SOURCE (AZURE) ---
echo.
echo [PHASE 1] Securing Source Code (Azure)...

echo [STATUS] Checking local changes...
git status -s

:: Prompt for Commit Message
echo.
set /p COMMIT_MSG="Enter Commit Message (or press Enter for 'Auto-Deploy'): "
if "%COMMIT_MSG%"=="" set COMMIT_MSG=Auto-Deploy %date% %time%

echo [ACTION] Committing Source: "%COMMIT_MSG%"
git add .
git commit -m "%COMMIT_MSG%"

echo [ACTION] Pushing Source to Azure (origin)...
git push origin master

if %errorlevel% neq 0 (
    echo.
    echo [WARNING] Source push to Azure failed.
    echo Check your internet or Azure credentials.
    echo Proceeding to site deployment...
) else (
    echo [SUCCESS] Source code secured.
)

:: --- PHASE 2: BROADCAST SITE (GITHUB) ---
echo.
echo [PHASE 2] Broadcasting Site (GitHub)...

:: Clean and Build
if exist "public" (
    echo [ACTION] Cleaning old build...
    rmdir /s /q public
)

echo [ACTION] Generating Sovereign Site...
hugo --minify

:: Enter Output Directory
cd public

:: Initialize Temporary Git Repo
echo [ACTION] Packaging for Orbit...
git init
git branch -m main

:: Connect to GitHub
git remote add origin https://github.com/Andrew-Franklin-Leo/website.git

:: Commit Website
git add .
git commit -m "Deploy %date% %time%"

echo.
echo [ACTION] Pushing Site to GitHub...
echo          (This will overwrite the remote content with the new site)
echo.

:: Force push to GitHub
git push --force origin main

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Site push failed. 
    echo Check that you are logged in and the repo exists.
    cd ..
    pause
    exit /b 1
)

:: Cleanup
cd ..

echo.
echo ========================================================
echo   DEPLOYMENT SUCCESSFUL
echo   1. Source Code -> Azure (Saved)
echo   2. Web Site    -> GitHub (Published)
echo   https://andrew-franklin-leo.github.io/website/
echo ========================================================
pause
