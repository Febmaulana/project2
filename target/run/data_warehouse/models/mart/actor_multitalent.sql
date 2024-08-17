
  
    

  create  table "data_warehouse"."dbt_dev_mart"."actor_multitalent__dbt_tmp"
  
  
    as
  
  (
    

-- TOP 20 Actor Multitalent
select 
	count(dim_film_actor.film_id) as total,
	concat(dim_actor.first_name,' ', dim_actor.last_name) as name 
from "data_warehouse"."dbt_dev_intermediete"."dim_film_actor"
left join "data_warehouse"."dbt_dev_intermediete"."dim_actor"
	on dim_film_actor.actor_id = dim_actor.actor_id
group by name
order by total desc limit 20
  );
  