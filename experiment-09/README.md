# Experiment 09: Random Forest Classification

## Topic
Diabetes outcome prediction using Random Forest.

## Objective
Train an ensemble classifier and analyze feature importance.

## Dataset
- `data/diabetes.csv`

## Code Flow
1. Load diabetes dataset.
2. Separate features and target (`Outcome`).
3. Replace invalid zero values in selected medical fields.
4. Split into training and testing sets.
5. Train `RandomForestClassifier`.
6. Predict test labels.
7. Evaluate with accuracy, confusion matrix, and classification report.
8. Plot feature importances.

## Libraries Used
- Pandas
- NumPy
- Matplotlib
- scikit-learn

## Output
- Classification performance metrics.
- Feature importance bar chart.
