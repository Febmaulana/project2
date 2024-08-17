{{
  config(
    materialized = "table",
    schema = 'mart'
  )
}}

-- TOP 20 Actor Multitalent
select 
	count(dim_film_actor.film_id) as total,
	concat(dim_actor.first_name,' ', dim_actor.last_name) as name 
from {{ ref('dim_film_actor') }}
left join {{ ref('dim_actor') }}
	on dim_film_actor.actor_id = dim_actor.actor_id
group by name
order by total desc limit 20