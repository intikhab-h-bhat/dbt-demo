SELECT
    os.customerid,
    C.customer_Name,
    sum(os.ordercount) as ordercount,
    sum(os.revenue) as revenue
FROM 
    {{ref('orders_fact')}} os

join 
    {{ref('customers_stg')}} c ON  os.customerid=c.customerid

GROUP BY 
    os.customerid,
    C.customer_Name
