
  
    

  create  table "data_warehouse"."dbt_dev_mart"."montly_revenue__dbt_tmp"
  
  
    as
  
  (
    

-- Montly revenue
SELECT 
	  sum(amount) as montly_revenue, 
	  DATE_TRUNC('month', payment_date) AS month 
FROM "data_warehouse"."dbt_dev_intermediete"."fact_payment"
GROUP BY month
  );
  