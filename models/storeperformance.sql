SELECT
    o.storeid,
    sum(ofact.revenue) as Revenue,
   st.salestarget as targetsales
FROM 
    {{ref('orders_stg')}} o
JOIN 
    {{ref('orders_fact')}} ofact
ON o.orderid=ofact.orderid
join
    {{ref('salestargets')}} st on st.storeid=o.storeid

Group by o.storeid,targetsales