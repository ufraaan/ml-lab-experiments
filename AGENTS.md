# AGENTS.md

## 1. Mission and Scope
This repository contains machine-learning lab experiments implemented primarily as Jupyter notebooks.

Agent objective:
- Deliver accurate, reproducible, and minimal-scoped changes.
- Preserve notebook usability for instructional/lab evaluation.
- Keep each experiment self-contained.

Repository facts:
- Repository name: `ml-lab-experiments`
- Primary assets: `experiment-01` through `experiment-11`
- Typical notebook naming: `exp-XX.ipynb`
- Typical dataset location: `experiment-XX/data/`
- Documentation locations:
  - Root: `README.md`
  - Per experiment: `experiment-XX/README.md`

## 2. Execution Priorities
When requirements conflict, follow this order:
1. Correctness and runtime reliability
2. Data safety and non-destructive edits
3. Reproducibility and path portability
4. Consistency with existing notebook style
5. Concision of implementation

## 3. Notebook Authoring Standards
- Prefer code-first, procedural flow over heavy markdown narrative.
- Keep cells focused (one logical task per cell).
- Use explicit step comments (for example: `# step 1 ...`, `# step 2 ...`).
- Ensure outputs are visible inline where useful:
  - Data previews and summary tables
  - Metrics and classification/regression reports
  - Plots/figures
- Avoid introducing unnecessary abstraction for simple lab tasks.

Recommended ML flow:
1. Import libraries
2. Load data
3. Inspect schema and target
4. Clean/preprocess
5. Train/test split
6. Model training
7. Evaluation with consistent metrics
8. Visualization
9. Final comparison/summary table

## 4. Data and Preprocessing Rules
- Never delete, rename, or overwrite user-provided dataset files unless explicitly requested.
- Use relative paths only; do not hardcode machine-specific absolute paths.
- Normalize column labels when required (for example: strip spaces).
- Handle hidden characters and non-breaking spaces (`\xa0`) in text columns when relevant.
- Use dtype-safe preprocessing:
  - Do not apply numeric reductions (median/mean) directly to string/object columns.
  - Use explicit conversion logic for mixed-type fields.
- Keep target-column selection explicit and stable.

## 5. Documentation Requirements
If notebook behavior or workflow changes, update the corresponding `experiment-XX/README.md`.

Expected README sections:
- Topic
- Objective
- Dataset
- Code Flow
- Libraries Used
- Output

## 6. Safety and Change Control
- Keep edits minimal and scoped to the user request.
- Preserve existing outputs unless reset/regeneration is explicitly requested.
- Do not introduce broad refactors unrelated to the task.
- Avoid adding dependencies unless required for correctness.

## 7. Completion Gate (Definition of Done)
Before finalizing, verify:
- Notebook executes top-to-bottom without NameError/ordering failures.
- Key metrics and plots render correctly.
- File paths match actual repository structure.
- Final expected tables/outputs are visible in notebook when requested.
- Related README content is aligned with implemented behavior.
