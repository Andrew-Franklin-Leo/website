@echo off
:: SOVEREIGN DEVELOPMENT SERVER
:: Overrides the production 'baseURL' to serve the site at the root locally.
:: Access at: http://localhost:1313/

echo ========================================================
echo   STARTING DEV SERVER (Watching for changes...)
echo ========================================================
echo.

:: -b flag forces the Base URL to localhost root
:: --disableFastRender prevents caching weirdness during active dev
hugo server -b http://localhost:1313/ --disableFastRender
