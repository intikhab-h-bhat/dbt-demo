SELECT 
    employeeid,
    concat(firstname,'',lastname) as employee_Name,
    email,
    Jobtitle,
    address,
    city,
    state,
    zipcode,
    updated_at
from
    {{source('landing','employee')}}