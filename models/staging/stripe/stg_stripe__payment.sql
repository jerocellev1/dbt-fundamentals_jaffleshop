with 

    source as (
        
        select * from {{ source('stripe', 'payment') }}

    ),

    renamed as (

        select 
            id AS payment_id,
            orderid AS order_id,
            paymentmethod AS payment_method,
            status AS payment_status,
            amount,
            created,
            _etl_loaded_at

        from source

)

select * from renamed