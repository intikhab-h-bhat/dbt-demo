{{ config(materialized='table') }}

with customer_order as (
    select
        concat(c.firstname , ' ' , c.lastname) as customer_name,
       count(o.orderid) as order_count,
       sum(items.quantity * items.unitprice) as total_amount,
       c.customerid                
    from orders o join customers c 
    on o.customerid = c.customerid
    join orderitems items
    on o.orderid= items.orderid
   group by c.customerid, customer_name
   order by order_count
)
select *
from customer_order