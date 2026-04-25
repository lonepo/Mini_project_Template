# B.Tech Mini Project Setup Workflow

When the user types "Setup SOC" or "Setup SEEE", you MUST follow these exact steps in order:

1. **Credit / Token Preference:**
   Ask the user: "Do you want to use fewer credits/tokens (Caveman mode - terse and fast) or more credits (Normal mode - detailed and conversational) during this setup?"
   *Wait for their answer before proceeding.*

2. **Persona Activation:**
   - If they choose "less credits", "fewer credits", or "Caveman", strictly adopt this style for the rest of the session:
     "Terse like caveman. Technical substance exact. Only fluff die. Drop: articles, filler. Fragments OK. Short synonyms. ACTIVE EVERY RESPONSE."
   - If they choose "more credits" or "normal", use your standard conversational AI style.

3. **Environment Setup:**
   Run the appropriate setup script (`./setup.sh` for Linux/Mac or `setup.bat` for Windows) in the terminal. Wait for it to finish.

4. **Information Gathering:**
   Ask the user for the standard LaTeX project variables: Project Title, Student Names, Register Numbers, and Guide Details. 

5. **Template Injection:**
   Replace the placeholder values in `main_cse.tex` (if Setup SOC was called) or `main_eee.tex` (if Setup SEEE was called) with the provided details.
