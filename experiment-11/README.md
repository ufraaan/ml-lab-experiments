# Experiment 11: Case Study - Decision Tree, Random Forest, and SVM

## Topic
Case-study style comparison of three classifiers on e-commerce mobile product data.

## Objective
Build a complete classification pipeline with robust preprocessing and compare model performance fairly.

## Dataset
- `data/mobile-info.xlsx`

## Code Flow
1. Import required libraries and configure display settings.
2. Load dataset from experiment-11 data folder.
3. Inspect schema, null counts, and class distribution.
4. Clean data:
   - Remove duplicates
   - Strip hidden spaces (including non-breaking spaces)
   - Handle mixed-type columns safely
   - Fill missing values
   - Label-encode categorical fields
5. Split into features and target.
6. Perform stratified train-test split.
7. Train and evaluate Decision Tree.
8. Train and evaluate Random Forest.
9. Scale features and train SVM.
10. Compare all models with accuracy, precision, recall, and F1.
11. Visualize model comparison and confusion matrices.
12. Display prediction validation table directly in notebook.

## Libraries Used
- Pandas
- Matplotlib
- scikit-learn

## Output
- Metric table comparing all three algorithms.
- Confusion matrix graph for each model.
- Bar chart of model metrics.
- In-notebook prediction validation table.
