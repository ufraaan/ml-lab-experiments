# Experiment 07: Decision Tree using ID3

## Topic
Custom implementation of the ID3 decision tree algorithm.

## Objective
Compute entropy and information gain to recursively build a decision tree.

## Dataset
- `data/play_tennis.csv`

## Code Flow
1. Load play-tennis dataset.
2. Define entropy calculation function.
3. Define information gain function.
4. Select best attribute based on maximum gain.
5. Recursively build tree using ID3.
6. Output decision tree structure in JSON-like format.

## Libraries Used
- Pandas
- NumPy
- JSON utilities

## Output
- Final decision tree printed as nested dictionary/JSON structure.
