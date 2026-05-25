SELECT
    o.storeid,
    sum(ofact.revenue) as Revenue,
  FROM 
    {{ref('orders_stg')}} o
JOIN 
    {{ref('orders_fact')}} ofact
ON o.orderid=ofact.orderid


Group by o.storeid