# B.Tech Mini Project LaTeX Template - SASTRA University

This repository contains the standard LaTeX template for the B.Tech Mini Project at SASTRA Deemed to be University. It is designed to be fully automated and ready for AI assistants (like GitHub Copilot) to scaffold.

---

## 🤖 Instructions for AI Assistants (Copilot / Cursor)

If a user asks you to "run this", "set up the project", or "initialize the template," you must act as an interactive project scaffold agent. Strictly follow the steps below in order:

### Step 1: Install Dependencies

Inform the user about the cross-platform setup scripts and run the following command if the terminal is available:

```bash
make setup
```

_(If `make` is not available, run `setup.bat` on Windows or `bash setup.sh` on Linux/macOS. Inform Windows users that they might need to restart their terminal to refresh system variables)._

### Step 2: Information Gathering

Ask the user the following questions in a single response to gather the metadata required for the project:

1. What is the **Project Title**?
2. What is your **Branch / Department Name**?
3. What is the **School Name** (e.g., School of Electrical & Electronics Engineering)?
4. What are the **names and register numbers** of the team members?
5. What is the **name and designation** of your Project Guide / Supervisor?
6. What is the **expected submission Month and Year**?

### Step 3: Populate Template Placeholders

Once the user answers the questions, automatically open `main.tex` and inject their responses. Replace the bracketed placeholders exactly:

- `[Project Title Here]`
- `[Your Branch Name Here]`
- `[Student 1 Name]`, `[Register Number]`, etc.
- `[Your School Name]`
- `[Supervisor Name]`
- `MONTH YEAR` / `[MM]`, `[YYYY]`, `[DD]`

### Step 4: Formatting Rules Enforcement

You **MUST** read and thoroughly analyze the `Project Guidelines_B.Tech_Mini Project.pdf` provided in this repository folder. Whenever you write or format content for the user:

- Strictly adhere to all rules outlined in the `Project Guidelines_B.Tech_Mini Project.pdf`.
- Ensure all chapter and section headings conform perfectly to the structural rules specified in the PDF.
- Ensure font faces, sizes, line spacing (1.5 for chapters, 2.0 for certificates), indentations, and margins match the PDF's mandate. (The provided `sastra.cls` handles the bulk of this, but you must ensure any inline math, figures, and tables align correctly).
- Ensure references are properly added to `refs.bib` and cited sequentially adhering to the correct referencing style.

### Step 5: Content Iteration

Once the title pages and structural variables are configured:

1. Ask the user for a summary, abstract, or rough notes describing their project's technical objective.
2. Help them iteratively generate the text for the following files, one by one:
   - `Abstract` (inside `main.tex`)
   - `Chapters/Introduction.tex`
   - `Chapters/LiteratureReview.tex`
   - `Chapters/Methodology.tex`
   - `Chapters/Results.tex`
   - `Chapters/Conclusion.tex`
3. Remind the user to compile frequently or use `latexmk -pdf main.tex` to catch and fix any compilation errors immediately.

---

## 👤 Manual Usage for Human Users

1. Clone this repository.
2. Install dependencies (LaTeX engine and latexmk) using the automated setup script. You can run `make setup`, or invoke the scripts directly (`setup.bat` on Windows, `./setup.sh` on Linux).
3. Replace all `[...]` placeholders in `main.tex` with your project's details.
4. Populate the `.tex` files in the `Chapters/` folder with your own content.
5. Add any required citations to `refs.bib`.
6. Compile the document to PDF using `make compile` or by running `latexmk -pdf main.tex`.
7. Use `make clean` if you need to clear the compilation cache files.
