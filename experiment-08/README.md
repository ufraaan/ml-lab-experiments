# Experiment 08: K-Nearest Neighbors (KNN)

## Topic
KNN classifier implementation and evaluation on the Iris dataset.

## Objective
Understand distance-based classification by building KNN logic and testing accuracy.

## Dataset
- Iris dataset from scikit-learn (`load_iris`)

## Code Flow
1. Load iris features and labels.
2. Split into training and testing sets.
3. Implement custom KNN class with:
   - Euclidean distance
   - Neighbor selection
   - Majority voting
4. Train KNN model with chosen `k`.
5. Predict test labels.
6. Calculate and print accuracy.

## Libraries Used
- NumPy
- scikit-learn (datasets and split utility)

## Output
- Predicted labels for test set.
- Accuracy score.
