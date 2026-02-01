@echo off
:: SOVEREIGN DEPLOYMENT SCRIPT
:: 1. Checks connectivity
:: 2. Sets up GitHub remote (if missing)
:: 3. Pushes Source Code -> Triggers GitHub Action

echo ========================================================
echo   INITIATING SOVEREIGN DEPLOYMENT SEQUENCE
echo ========================================================

:: 1. Configuration
set GITHUB_REPO=https://github.com/Andrew-Franklin-Leo/website.git
set REMOTE_NAME=github

:: 2. Check if Remote Exists
git remote | findstr "%REMOTE_NAME%" >nul
if %errorlevel% neq 0 (
    echo [INFO] Adding GitHub remote '%REMOTE_NAME%'...
    git remote add %REMOTE_NAME% %GITHUB_REPO%
) else (
    echo [INFO] GitHub remote '%REMOTE_NAME%' detected.
    :: Ensure URL is correct
    git remote set-url %REMOTE_NAME% %GITHUB_REPO%
)

:: 3. Status Report
echo.
echo [STATUS] Checking local changes...
git status -s

:: 4. Prompt for Commit
echo.
set /p COMMIT_MSG="Enter Commit Message (or press Enter for 'Auto-Deploy'): "
if "%COMMIT_MSG%"=="" set COMMIT_MSG=Auto-Deploy %date% %time%

echo [ACTION] Committing: "%COMMIT_MSG%"
git add .
git commit -m "%COMMIT_MSG%"

:: 5. Push to Orbit
echo.
echo [ACTION] Pushing Source to GitHub...
echo          (This will trigger the remote Build & Deploy Action)
echo.
echo [IMPORTANT] If asked for credentials, use your GitHub Token.
echo.

git push -u %REMOTE_NAME% master:main

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Push failed. 
    echo Possible reasons:
    echo  1. You need to log in (Authentication failed).
    echo  2. The specific restricted repository URL is unreachable.
    pause
    exit /b 1
)

echo.
echo ========================================================
echo   DEPLOYMENT INITIATED
echo   Track progress at: https://github.com/Andrew-Franklin-Leo/website/actions
echo ========================================================
pause
