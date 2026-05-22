SELECT
    o.orderid,
    o.orderdate,
    o.customerid,
    o.employeeid,
    o.storeid,
    o.StatusCD,
    o.statusDesc,
    o.updated_at,
    count(distinct o.orderid) as ordercount,
    sum(oi.Totalprice) as Revenue
FROM 
    {{ref('orders_stg')}} o
JOIN 
    {{ref('orderitem_stg')}} oi
ON o.orderid=oi.orderid

Group by 
    o.orderid,
    o.orderdate,
    o.customerid,
    o.employeeid,
    o.storeid,
    o.StatusCD,
    o.statusDesc,
    o.updated_at

