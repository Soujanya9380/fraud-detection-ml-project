/* Creating Table */
CREATE DATABASE fraud_detection;
USE fraud_detection;
CREATE TABLE transactions (
    step INT,
    type VARCHAR(50),
    amount DOUBLE,
    nameOrig VARCHAR(50),
    oldbalanceOrg DOUBLE,
    newbalanceOrig DOUBLE,
    nameDest VARCHAR(50),
    oldbalanceDest DOUBLE,
    newbalanceDest DOUBLE,
    isFraud INT,
    isFlaggedFraud INT
);


/* importing csv file */

SET GLOBAL local_infile = 1;
LOAD DATA LOCAL INFILE 'C:/Fraud Detection/cleaned_fraud_data.csv'
INTO TABLE transactions
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


SELECT count(*) 
FROM transactions;



/* Fraud Analysis Queries */

/* Total Transactions */
SELECT COUNT(*) AS total_transactions
from transactions;



/* Total Fraud Transactions */
SELECT COUNT(*) AS fraud_transactions
FROM transactions
WHERE isFraud = 1;



/* Fraud Percentage */
SELECT (SUM(isFraud)/COUNT(*))*100 AS fraud_percentage
FROM transactions;



/* Transaction Types with Highest Fraud */
SELECT 
    type,
    COUNT(*) AS fraud_count
FROM transactions
WHERE isFraud = 1
GROUP BY type
ORDER BY fraud_count DESC;



/* High-Risk Large Transactions */
SELECT *
FROM transactions
WHERE isFraud = 1
AND amount > 200000
ORDER BY amount DESC;



/* Average Fraud Amount*/
SELECT 
    AVG(amount) AS avg_fraud_amount
FROM transactions
WHERE isFraud = 1;



/* Top 10 Largest Fraud Transactions*/
SELECT 
    amount,
    type,
    nameOrig,
    nameDest
FROM transactions
WHERE isFraud = 1
ORDER BY amount DESC
LIMIT 10;