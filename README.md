# SASTRA B.Tech Mini Project LaTeX Template

This repository contains two main LaTeX files to generate the B.Tech Mini Project reports based on the different department guidelines.

## 🤖 AI Agent Workflow (Recommended)
This template is heavily optimized for AI coding assistants (like GitHub Copilot). You don't need to manually configure the boilerplate!

**Step 1: Initialize Setup**
Simply open your AI assistant chat and prompt:
> "Setup SOC" *(For School of Computing)* 
> OR 
> "Setup SEEE" *(For School of Electrical & Electronics Engineering)*

**How the Agent will assist you:**
1. It will automatically run the appropriate environment setup (`setup.bat` or `setup.sh`) to install LaTeX compiling tools and extensions.
2. It will ask you a structured series of questions to gather your project details (Project Title, Student Names & Reg. Nos, Guide Details, etc.).
3. It will automatically inject your answers into the correct `main_cse.tex` or `main_eee.tex` file.
4. Once the front matter is configured, you can prompt the agent to start drafting your content inside the `Chapters/` folder.

---

## ⚙️ Manual Quick Start (Fallback)
If you prefer to configure the files manually without an agent:

1. **Requirements**: 
   - Windows users: Run `setup.bat`. This will install MikTeX and the VS Code extension if not present.
   - Linux/Ubuntu users: Run `./setup.sh` to install TeXLive and required extensions.

2. **Select your Department Main file**:
   - `main_eee.tex` - For **School of Electrical & Electronics Engineering**. Includes all required front-matter covers, declarations, and certificates exactly mapped to C1257 templates.
   - `main_cse.tex` - For **School of Computing (CSE/INT/ICT)**. Mapped exactly to the Project Guidelines for CSE 300 / INT 300 / ICT 300.

3. **Content Updates**:
   - Open your corresponding `main_*.tex` and update variables like Title, Names, Reg Nos, and Supervisor.
   - Write your chapter content inside the `Chapters/` folder (shared between both). E.g., `Chapters/Introduction.tex`.
   - Update `refs.bib` for your references.

4. **Compile**:
   - Save the file on VS Code, the LaTeX Workshop extension should automatically compile. Alternatively, run `latexmk -pdf main_eee.tex` or `pdflatex main_eee.tex`.
