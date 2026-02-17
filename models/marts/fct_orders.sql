with source as (

    select * from {{ ref("int_customers_orders") }}

),

renamed as (

    select
        order_id::varchar as order_id,
        customer_id::varchar as customer_id,
        order_total::number(38,2) as order_total,
        tax_paid::number(38,2) as tax_paid,
        ordered_at::timestamp_ntz as ordered_at
    from source

)

select * from renamed