@echo off
setlocal enabledelayedexpansion

:: Prompt user for website
set /p website=Enter the website URL (without http/https): 

echo.
echo Running troubleshooting tests for %website%
echo -------------------------------------------

:: 1. Ping test (10 packets)
echo.
echo >>> Pinging %website%...
ping -n 10 %website%

:: 2. Traceroute test
echo.
echo >>> Traceroute to %website%...
tracert %website%

:: 3. DNS Lookup
echo.
echo >>> NSLookup for %website%...
nslookup %website%

:: 4. Check if port 80 is open using PowerShell
echo.
echo >>> Checking if port 80 is open...
powershell -Command "try {Test-NetConnection -ComputerName %website% -Port 80 -InformationLevel Detailed} catch {Write-Host 'Test-NetConnection not available on this system.'}"

:: 5. Get HTTP headers using curl (if installed in Windows 10/11)
echo.
echo >>> Fetching HTTP headers...
curl -I http://%website%

echo.
echo Troubleshooting complete!
pause
