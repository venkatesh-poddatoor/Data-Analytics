SELECT * FROM Telco_Customer_Churn_Data_1_1_2_;

SELECT COUNT(*) AS total_customers FROM Telco_Customer_Churn_Data_1_1_2_;

SELECT "Churn", COUNT(*) AS customer_count,
       ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM Telco_Customer_Churn_Data_1_1_2_), 2) AS percentage
FROM Telco_Customer_Churn_Data_1_1_2_
GROUP BY "Churn";

SELECT "InternetService", "Churn", COUNT(*) AS customer_count
FROM Telco_Customer_Churn_Data_1_1_2_
GROUP BY "InternetService", "Churn"
ORDER BY "InternetService", "Churn";

SELECT "customerID", "MonthlyCharges", "Churn"
FROM Telco_Customer_Churn_Data_1_1_2_
WHERE "MonthlyCharges" > 90
ORDER BY "MonthlyCharges" DESC;

SELECT "customerID", "tenure", "Churn"
FROM Telco_Customer_Churn_Data_1_1_2_
WHERE tenure < 6
ORDER BY tenure;

SELECT "SeniorCitizen",
       SUM(CASE WHEN "Churn"='Yes' THEN 1 ELSE 0 END) AS churned_customers,
       COUNT(*) AS total_customers,
       ROUND(100.0 * SUM(CASE WHEN "Churn"='Yes' THEN 1 ELSE 0 END)/COUNT(*), 2) AS churn_rate
FROM Telco_Customer_Churn_Data_1_1_2_
GROUP BY "SeniorCitizen";

SELECT gender,
       SUM(CASE WHEN "Churn"='Yes' THEN 1 ELSE 0 END) AS churned_customers,
       COUNT(*) AS total_customers,
       ROUND(100.0 * SUM(CASE WHEN "Churn"='Yes' THEN 1 ELSE 0 END)/COUNT(*), 2) AS churn_rate
FROM Telco_Customer_Churn_Data_1_1_2_
GROUP BY gender;

SELECT "PaperlessBilling", "Churn", COUNT(*) AS customer_count
FROM Telco_Customer_Churn_Data_1_1_2_
GROUP BY "PaperlessBilling", "Churn";

SELECT "MultipleLines", "Churn", COUNT(*) AS customer_count
FROM Telco_Customer_Churn_Data_1_1_2_
GROUP BY "MultipleLines", "Churn"
ORDER BY "MultipleLines", "Churn";

SELECT "Contract", ROUND(AVG(tenure), 2) AS avg_tenure
FROM Telco_Customer_Churn_Data_1_1_2_
GROUP BY "Contract"
ORDER BY avg_tenure DESC;



