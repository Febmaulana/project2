{{
  config(
    materialized = "table",
    schema = 'mart'
  )
}}

-- Montly revenue
SELECT 
	  sum(amount) as montly_revenue, 
	  DATE_TRUNC('month', payment_date) AS month 
FROM {{ ref('fact_payment') }}
GROUP BY month 