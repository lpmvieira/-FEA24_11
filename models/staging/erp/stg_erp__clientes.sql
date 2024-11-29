with
    renomeado as (
        select
            cast(ID as varchar) as pk_cliente
            , cast(COMPANYNAME as varchar) as nome_empresa_cliente
            , cast(CITY as varchar) as cidade_cliente
            , cast(REGION as varchar) as regiao_cliente
            , cast(COUNTRY as varchar) as pais_cliente
        from {{ source('erp', 'customers') }}
    )

select *
from renomeado