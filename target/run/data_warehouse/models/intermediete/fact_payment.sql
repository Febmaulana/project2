
  
    

  create  table "data_warehouse"."dbt_dev_intermediete"."fact_payment__dbt_tmp"
  
  
    as
  
  (
    

SELECT *
FROM "data_warehouse"."dbt_dev_raw"."payment"
  );
  