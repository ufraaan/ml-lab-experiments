# Experiment 05: Polynomial Regression

## Topic
Temperature prediction using polynomial feature expansion and linear regression.

## Objective
Model non-linear relationships by transforming input features into polynomial terms.

## Dataset
- `data/weather_data.csv`

## Code Flow
1. Load weather dataset.
2. Select weather features and target (`Temperature`).
3. Split into training and testing sets.
4. Apply polynomial transformation (degree 2).
5. Train regression model on transformed features.
6. Predict test values.
7. Compare actual and predicted values.
8. Evaluate using MSE and R2 score.
9. Visualize prediction performance.

## Libraries Used
- Pandas
- NumPy
- Matplotlib
- scikit-learn

## Output
- Predicted vs actual table.
- MSE and R2 metrics.
- Scatter plot showing model fit.
