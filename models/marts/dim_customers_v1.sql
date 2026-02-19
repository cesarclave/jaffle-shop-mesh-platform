with source as (

    select * from {{ ref(
        'stg_customers') }}

),

renamed as (

    select
        customer_id::varchar as customer_id,
        customer_name::varchar as customer_name
    from source

)

select * from renamed