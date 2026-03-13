#!/bin/bash
echo "Setting up LaTeX compilation dependencies for Linux..."

# Detect package manager
if command -v apt-get &> /dev/null; then
    echo "Detected apt-get (Debian/Ubuntu/Mint)..."
    sudo apt-get update
    sudo apt-get install -y texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra latexmk chktex
elif command -v dnf &> /dev/null; then
    echo "Detected dnf (Fedora/RHEL/CentOS)..."
    sudo dnf install -y texlive-scheme-basic texlive-collection-latexextra latexmk chktex
elif command -v pacman &> /dev/null; then
    echo "Detected pacman (Arch/Manjaro)..."
    sudo pacman -S --noconfirm texlive-core texlive-latexextra latexmk chktex
elif command -v zypper &> /dev/null; then
    echo "Detected zypper (openSUSE)..."
    sudo zypper install -y texlive-latex texlive-latexextra latexmk chktex
else
    echo "Could not detect your package manager (apt/dnf/pacman/zypper not found)."
    echo "Please install TeX Live (texlive-latex-extra) and latexmk manually according to your distribution."
    exit 1
fi

echo "Installing LaTeX Workshop extension for VS Code..."
if command -v code &> /dev/null; then
    code --install-extension James-Yu.latex-workshop --force
else
    echo "VS Code CLI ('code') not found. Please install the 'LaTeX Workshop' extension manually."
fi

echo "Setup complete! You can now compile your PDF by running: latexmk -pdf main.tex"
echo "Or use the LaTeX Workshop extension's build button in VS Code."