@echo off
echo Setting up LaTeX compilation dependencies for Windows...

:: Check if winget is installed
where winget >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo [1/2] Installing MiKTeX (LaTeX Distribution)...
    winget install --id=MiKTeX.MiKTeX -e --accept-package-agreements --accept-source-agreements
    
    echo [2/2] Installing Strawberry Perl (required for latexmk)...
    winget install --id=StrawberryPerl.StrawberryPerl -e --accept-package-agreements --accept-source-agreements
    
    echo.
    echo Setup complete! NOTE: You may need to restart your terminal or PC for MiKTeX to appear in your system PATH.
    echo After restarting, you can compile your PDF using the command: latexmk -pdf main.tex
) else (
    echo Error: 'winget' command not found.
    echo Please manually download and install:
    echo 1. MiKTeX: https://miktex.org/download
    echo 2. Perl: https://strawberryperl.com/
)
pause