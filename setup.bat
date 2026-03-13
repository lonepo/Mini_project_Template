@echo off
echo Setting up LaTeX compilation dependencies for Windows...

:: Check if winget is installed
where winget >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo [1/3] Installing MiKTeX (LaTeX Distribution)...
    winget install --id=MiKTeX.MiKTeX -e --accept-package-agreements --accept-source-agreements
    
    echo [2/3] Installing Strawberry Perl (required for latexmk)...
    winget install --id=StrawberryPerl.StrawberryPerl -e --accept-package-agreements --accept-source-agreements
    
    echo [3/3] Installing LaTeX Workshop extension for VS Code...
    where code >nul 2>nul
    if %ERRORLEVEL% EQU 0 (
        code --install-extension James-Yu.latex-workshop --force
    ) else (
        echo VS Code CLI ('code') not found. Please install 'James-Yu.latex-workshop' manually.
    )

    :: Configure MiKTeX to automatically install missing packages on-the-fly without prompting
    :: We use "where" first because MiKTeX might not be in PATH yet for this script instance
    set "MIKTEX_BIN=%USERPROFILE%\AppData\Local\Programs\MiKTeX\miktex\bin\x64"
    if exist "%MIKTEX_BIN%\initexmf.exe" (
        "%MIKTEX_BIN%\initexmf.exe" --set-config-value [Core]AutoInstall=1
    ) else (
        echo Note: Could not auto-configure MiKTeX completely because path isn't reloaded.
        echo To avoid package prompts, run this later: initexmf --set-config-value [Core]AutoInstall=1
    )

    echo.
    echo =======================================================
    echo Setup is complete!
    echo IMPORTANT: You MUST restart VS Code or your terminal
    echo so that MiKTeX and Perl are loaded into your system PATH.
    echo =======================================================
    echo To compile, run: latexmk -pdf main.tex
    echo Or use the LaTeX Workshop extension's build button.
) else (
    echo Error: 'winget' command not found.
    echo Please manually download and install:
    echo 1. MiKTeX: https://miktex.org/download
    echo 2. Perl: https://strawberryperl.com/
    echo 3. VS Code LaTeX Workshop Extension
)
pause