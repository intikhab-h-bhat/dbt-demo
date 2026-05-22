SELECT
    orderid,
    orderdate,
    customerid,
    employeeid,
    storeid,
    status as StatusCD,
    CASE 
        when status='01' then 'In Progress'
        when status='02' then 'completed'
        when status='03' then 'cancelled'
    END as statusDesc,
    updated_at
From 
    orders