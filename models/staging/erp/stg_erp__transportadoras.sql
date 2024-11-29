
with
    renomeado as (
        select 
            cast(ID as int) as pk_transportadora
            ,cast(COMPANYNAME as varchar) as nome_transportadora
        from {{ source('erp', 'shippers') }}
    )

select *
from renomeado