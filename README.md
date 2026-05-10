# Fraud Detection & Transaction Analysis using Machine Learning

## Project Overview

This project focuses on detecting fraudulent financial transactions using Machine Learning, SQL, and anomaly detection techniques. The system analyzes large-scale transaction data to identify suspicious activities and uncover fraud patterns.

The project includes:
- Data Cleaning & Exploratory Data Analysis (EDA)
- Fraud Pattern Analysis using SQL
- Machine Learning-based Fraud Detection
- SMOTE for handling imbalanced data
- ROC-AUC Evaluation
- SHAP Explainability
- Isolation Forest Anomaly Detection
- Data Visualization & Dashboard Insights

---

## Dataset

Dataset used:
Synthetic Financial Datasets For Fraud Detection

Kaggle Dataset Link:
https://www.kaggle.com/datasets/ealaxi/paysim1

Dataset contains:
- 6.3M+ financial transactions
- Fraud and non-fraud labels
- Transaction amount, balances, transaction type, etc.

---

## Technologies Used

### Programming Language
- Python

### Libraries
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn
- SHAP
- imbalanced-learn (SMOTE)

### Database
- MySQL

### Machine Learning Models
- Logistic Regression
- Random Forest
- Isolation Forest

---

## Project Workflow

### 1. Data Preprocessing
- Loaded transaction dataset
- Checked missing values
- Removed duplicates
- Encoded categorical variables

### 2. Exploratory Data Analysis (EDA)
- Fraud vs non-fraud analysis
- Transaction type distribution
- Fraud trend visualization
- Correlation heatmap

### 3. SQL Fraud Analysis
Performed SQL queries to:
- Identify fraud transactions
- Calculate fraud percentage
- Detect high-risk transaction types
- Analyze transaction trends

### 4. Machine Learning
Built fraud prediction models using:
- Random Forest Classifier
- SMOTE for balancing dataset

### 5. Model Evaluation
Evaluated model using:
- Accuracy
- Precision
- Recall
- F1-Score
- ROC-AUC Curve

### 6. Explainable AI
Used SHAP Explainability to:
- Interpret fraud predictions
- Identify top fraud-driving features

### 7. Anomaly Detection
Implemented Isolation Forest to detect abnormal financial transactions.

---

## Key Insights

- Fraud percentage is extremely low (~0.13%), making the dataset highly imbalanced.
- Most fraud transactions occur in:
  - TRANSFER
  - CASH_OUT
- Transaction amount and balance differences are major fraud indicators.

---

## Project Structure

```text
Fraud_Detection_Project/
│
├── notebooks/
│   └── fraud_detection.ipynb
│
├── sql/
│   └── fraud_analysis_queries.sql
│
├── visuals/
│
├── README.md
│


---

## Results

- Successfully built an end-to-end fraud detection system.
- Achieved strong fraud classification performance using Random Forest and SMOTE.
- Built explainable and anomaly-based fraud detection workflows.

---

## Future Improvements

- Real-time fraud detection system
- Streamlit deployment
- Power BI dashboard integration
- XGBoost model implementation
- Deep Learning-based fraud detection

---

## Author

Soujanya Giraddi

GitHub:
https://github.com/Soujanya9380
