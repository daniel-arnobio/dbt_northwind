with
    dim_employees as (
        select
            {{ dbt_utils.generate_surrogate_key(['employee_id', 'last_name']) }} as sk_customer
            , *
        from {{ref("stg_employees")}}   
    )

select *
from dim_employees