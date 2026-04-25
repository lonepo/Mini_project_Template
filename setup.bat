@echo off
echo Installing MiKTeX and LaTeX Workshop...
winget install -e --id MiKTeX.MiKTeX
code --install-extension James-Yu.latex-workshop
echo "Setup complete. Please close and reopen VS Code, and compile main_eee.tex or main_cse.tex depending on your department."
pause
