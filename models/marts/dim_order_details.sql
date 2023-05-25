with
    dim_order_details as (
        select
            {{ dbt_utils.generate_surrogate_key(['order_id', 'product_id']) }} as sk_order_details
            , *
        from {{ref("stg_order_details")}}
    )

select *
from dim_order_details