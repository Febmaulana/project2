
  
    

  create  table "data_warehouse"."dbt_dev_mart"."best_selling__dbt_tmp"
  
  
    as
  
  (
    

-- TOP 20 Best Selling
select 
	count(fact_payment.payment_id) as total, 
	dim_film.title 
from "data_warehouse"."dbt_dev_intermediete"."fact_payment"
left join "data_warehouse"."dbt_dev_intermediete"."dim_rental" 
	on fact_payment.rental_id = dim_rental.rental_id 
left join "data_warehouse"."dbt_dev_intermediete"."dim_inventory"
	on dim_rental.inventory_id = dim_inventory.inventory_id 
left join "data_warehouse"."dbt_dev_intermediete"."dim_film"
	on dim_inventory.film_id = dim_film.film_id
group by title 
order by total desc 
limit 20
  );
  