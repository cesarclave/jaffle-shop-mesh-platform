with orders as (

    select * from {{ ref("int_customers_orders") }}

)

select * from orders
