# SASTRA B.Tech Mini Project LaTeX Template

This repository contains two main LaTeX files to generate the B.Tech Mini Project reports based on the different department guidelines.

---

## 🌱 Absolute Beginner's Guide (Start Here)

If you don't know how to use Git, VS Code, or GitHub Copilot, follow these steps to get everything running for free:

### 1. Get the Project Files

- You don't need Git. Just go to this repository on GitHub.
- Click the green **Code** button and select **Download ZIP**.
- Extract the ZIP file into a folder on your computer.

### 2. Install Visual Studio Code (VS Code)

- Download and install [VS Code](https://code.visualstudio.com/).
- Open VS Code, click **File > Open Folder**, and select the folder where you extracted the ZIP.

### 3. Setup GitHub Copilot (Free for Students)

- (NOT COMPULSORY AS THERE IS A FREE TIER WITH ANY GITHUB ACCOUNT THAT IS SUFFICIENT)Sign up for the [GitHub Student Developer Pack](https://education.github.com/pack). This gives you GitHub Copilot for free!
- Open VS Code, go to the **Extensions** view (Ctrl+Shift+X or Cmd+Shift+X).
- Search for **GitHub Copilot** and install both _GitHub Copilot_ and _GitHub Copilot Chat_.
- Click the Account icon in the bottom-left of VS Code and sign in with your GitHub Student account to activate the AI.

---

## 🤖 AI Agent Workflow (Recommended for Everyone)

Now that your tools are installed, you don't need to manually configure the boilerplate. Let the AI do it!

**Step 1: Initialize Setup**
Open your Copilot Chat extension (the chat bubble icon in the left sidebar) and type:

> "Setup SOC" _(For School of Computing)_
> OR
> "Setup SEEE" _(For School of Electrical & Electronics Engineering)_

**How the Agent will assist you:**

1. **Environment Setup:** It will automatically run the appropriate script (`setup.bat` or `setup.sh`) to install LaTeX compiling tools (MikTeX/TeXLive) and the VS Code LaTeX extension.
2. **Information Gathering:** It will ask you a structured series of questions to gather your project details (Project Title, Student Names, Guide Details, etc.).
3. **Template Injection:** It will automatically fill in your answers into the correct `main_cse.tex` or `main_eee.tex` file.
4. **Drafting:** Once the front matter is configured, you can prompt the agent to start generating your project content inside the `Chapters/` folder.

---

## ⚙️ Manual Quick Start (Fallback)

If you prefer not to use the AI Agent:

1. **Requirements**:
   - Windows users: Double-click `setup.bat`. This installs MikTeX and the VS Code LaTeX extension.
   - Linux/Ubuntu users: Run `./setup.sh` in the terminal to install TeXLive and required extensions.

2. **Select your Department Main file**:
   - `main_eee.tex` - For **School of Electrical & Electronics Engineering**. Includes all required front-matter covers, declarations, and certificates exactly mapped to C1257 templates.
   - `main_cse.tex` - For **School of Computing (CSE/INT/ICT)**. Mapped exactly to the Project Guidelines for CSE 300 / INT 300 / ICT 300.

3. **Content Updates**:
   - Open your corresponding `main_*.tex` and update details like Title, Names, Reg Nos, and Supervisor.
   - Write your chapter content inside the `Chapters/` folder (E.g., `Chapters/Introduction.tex`).
   - Update `refs.bib` for your references.

4. **Compile**:
   - Save the file on VS Code, the LaTeX Workshop extension should automatically compile. Alternatively, run `pdflatex main_eee.tex`.
