# Experiment 04: Multiple Linear Regression

## Topic
House price prediction using multiple linear regression.

## Objective
Train a regression model with multiple features and evaluate prediction quality.

## Dataset
- `data/house_data.csv`

## Code Flow
1. Import required libraries.
2. Load dataset and standardize column labels.
3. Select input features and target (`Price`).
4. Split into training and test sets.
5. Train `LinearRegression` model.
6. Display intercept and feature coefficients.
7. Predict on test data.
8. Compare actual vs predicted values.
9. Evaluate with MSE and R2 score.
10. Plot actual vs predicted scatter chart.

## Libraries Used
- Pandas
- NumPy
- Matplotlib
- scikit-learn

## Output
- Coefficients table.
- Performance metrics (MSE, R2).
- Regression comparison plot.
