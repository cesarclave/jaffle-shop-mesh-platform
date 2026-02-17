with customers as (

    select * from {{ ref("stg_customers") }}

),

orders as (

    select * from {{ ref("stg_orders") }}

),

customer_orders as (

    select
        orders.order_id,
        orders.location_id,
        orders.customer_id,
        orders.order_total,
        orders.tax_paid,
        orders.ordered_at,
        customers.customer_name

    from orders

    left join customers on orders.customer_id = customers.customer_id

)

select * from customer_orders