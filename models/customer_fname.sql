
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/


with customer_fname as (

    select c.CUSTOMER_NAME as first_name from CUSTOMERS c

)

select first_name
from customer_fname

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
