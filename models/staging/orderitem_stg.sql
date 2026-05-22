SELECT
    orderitemid,
    orderid,
    productid,
    quantity,
    unitprice,
    quantity*unitprice as Totalprice,
    updated_at
FROM 
    orderitems


