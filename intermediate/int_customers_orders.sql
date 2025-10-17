with 
ordre as (select * from {{ ref("stg_orders") }}) ,
kunde as (select * from {{ ref("stg_orders") }}) 

select ordre.*, kunde.id from ordre inner join kunde on ordre.
where ordre.id > (select max(id) from {{this}})

