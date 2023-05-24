with
    categories as (
        select 
            category_id
            , category_name
            , description
        from {{ source ('northwind', 'categories')}}
    )
select *
from categories