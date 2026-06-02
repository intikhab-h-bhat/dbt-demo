select *
from {{ref('customer_order')}}
where Total_Amount < 0