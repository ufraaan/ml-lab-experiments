# Experiment 10: Multi-Model Classification on Mobile Data

## Topic
Comparison of multiple ML classifiers for product-quality prediction.

## Objective
Apply and compare Decision Tree, Random Forest, SVM, Naive Bayes, and KNN on mobile product data.

## Dataset
- `data/mobile-info.xlsx`

## Code Flow
1. Load Excel dataset and inspect records.
2. Visualize category distributions.
3. Encode categorical columns.
4. Prepare feature matrix and target (`Product_Quality`).
5. Train and evaluate Decision Tree.
6. Train and evaluate Random Forest.
7. Train and evaluate SVM.
8. Train and evaluate Naive Bayes.
9. Train and evaluate KNN for multiple `k` values.
10. Print confusion matrix and classification report for each model.

## Libraries Used
- Pandas
- NumPy
- Matplotlib
- Seaborn
- scikit-learn
- SciPy

## Output
- Accuracy and detailed classification metrics per algorithm.
- Comparative understanding of model behavior on same dataset.
