select* from Telco_customer_churn_cleaned ;



select COUNT(CustomerID) as Total_Customer from Telco_customer_churn_cleaned;
select Count(CustomerID) as  Total_churn_customer from Telco_customer_churn_cleaned 
where Churn_Label='Yes';
SELECT 
    ROUND(
        (CAST(SUM(CASE WHEN Churn_Label = 'Yes' THEN 1 ELSE 0 END) AS FLOAT) / COUNT(CustomerID)) * 100
    , 2) AS Churn_Rate_Percentage
FROM Telco_customer_churn_cleaned;
select Contract, ROUND(
        (CAST(SUM(CASE WHEN Churn_Label = 'Yes' THEN 1 ELSE 0 END) AS FLOAT) / COUNT(CustomerID)) * 100
    , 2) AS Churn_Rate_Percentage from Telco_customer_churn_cleaned group by Contract
    select Top 5 Churn_Reason,COUNT(Churn_Reason) as Churned_Count from Telco_customer_churn_cleaned where Churn_Label='Yes' group by Churn_Reason ORDER BY Churned_Count DESC;
