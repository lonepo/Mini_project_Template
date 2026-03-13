# Mini Project LaTeX Template

This is a generic LaTeX template adapted for B.Tech Mini Projects at SASTRA Deemed to be University. It complies with the official mini-project report formatting guidelines.

## Structure

- `main.tex`: The root document. Here you can fill in your project details (Title, Names, Reg Nos, Guide Name, etc.) and it will automatically generate the title page, certificates, declarations, etc.
- `Chapters/`: Contains all the individual chapter files:
  - `Introduction.tex`
  - `LiteratureReview.tex`
  - `Methodology.tex`
  - `Results.tex`
  - `Conclusion.tex`
- `images/`: Put all your project images and figures in this folder.
- `refs.bib`: Add your BibTeX bibliography references here.
- `sastra.cls`, `sastra1.cls`, `t1enc.sty`, etc.: Required class and styling files. Do not modify these unless required.

## How to use

1. Clone this repository.
2. Edit `main.tex` and replace all placeholders enclosed in brackets `[...]` with your actual project data.
3. Add your content to the respective `.tex` files in the `Chapters/` folder.
4. Add your citations to `refs.bib`.
5. Compile `main.tex` using your preferred LaTeX compiler (e.g., pdfLaTeX or XeLaTeX). Usually, the sequence is `pdflatex -> bibtex -> pdflatex -> pdflatex`.

## Guidelines

Please refer to the enclosed `Project Guidelines_B.Tech_Mini Project.pdf` for strict instructions on formatting, page lengths, font sizes, margins, etc.
