with
    customers as (
        select *
        from {{ ref("dim_customers") }}
    )
    , orders as (
        select *
        from {{ ref("dim_orders") }}
    )
    , products as (
        select *
        from {{ ref("dim_products") }}
    )
    , employees as (
        select *
        from {{ ref("dim_employees") }}
    )
    , suppliers as (
        select *
        from {{ ref("dim_suppliers") }}
    )
    , final as (
        select 
            customers.sk_customer
            , orders.*
        from orders
        left join customers on orders.customer_id = customers.customer_id
    )
select *
from final