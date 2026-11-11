{{
  config(
    materialized = 'table',
    )
}}
select
    abonent_id,
    a.inn,
    o.kpp,
    shop_name,
    shop_address,
    now() as ldts,
    'market' as rcrs
from {{ ref('src_shops__abonents') }} a
join {{ ref('src_shops__organizations') }} o on a.inn = o.inn