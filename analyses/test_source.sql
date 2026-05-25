SELECT 
    customerid,
    concat(firstname,'',lastname) as customer_Name,
    email,
    phone,
    address,
    city,
    state,
    zipcode,
    updated_at
from
    {{source('landing','cust')}}
