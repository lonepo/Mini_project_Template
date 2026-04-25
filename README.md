# SASTRA B.Tech Mini Project LaTeX Template

This repository contains two main LaTeX files to generate the B.Tech Mini Project reports based on the different department guidelines.

## Quick Start
1. **Requirements**: 
   - Windows users: Run `setup.bat`. This will install MikTeX and the VS Code extension if not present.
   - Linux/Ubuntu users: Run `./setup.sh` to install TeXLive and required extensions.

2. **Select your Department Main file**:
   - `main_eee.tex` - For **School of Electrical & Electronics Engineering**. Includes all required front-matter covers, declarations, and certificates exactly mapped matching the C1257 templates.
   - `main_cse.tex` - For **School of Computing (CSE/INT/ICT)**. Mapped exactly to the Project Guidelines for CSE 300 / INT 300 / ICT 300.

3. **Content Updates**:
   - Open your corresponding `main_*.tex` and update variables like Title, Names, Reg Nos, and Supervisor.
   - Write your chapter content inside the `Chapters/` folder (shared between both). E.g., `Chapters/Introduction.tex`.
   - Update `refs.bib` for your references.

4. **Compile**:
   - Save the file on VS Code, the LaTeX Workshop extension should automatically compile. Alternatively, run `latexmk -pdf main_eee.tex` or `pdflatex main_eee.tex`.
