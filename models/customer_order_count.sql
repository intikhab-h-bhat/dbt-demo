
{{ config(materialized='table') }}

with customer_order as (
    select
         c.customer_name,
       count(o.order_id) as order_count,
       c.customer_id,
       sum(o.amount) as total_amount,
           
    from orders o join customers c 
    on o.customer_id = c.customer_id
   group by c.customer_id, c.customer_name
)
select *
from customer_order