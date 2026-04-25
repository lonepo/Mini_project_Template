#!/bin/bash
sudo apt update
sudo apt install -y texlive-full latexmk
code --install-extension James-Yu.latex-workshop
echo "Setup complete. Please use VS Code to compile main_eee.tex or main_cse.tex depending on your department."
