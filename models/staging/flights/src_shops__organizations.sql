{{
  config(
    materialized = 'table',
    )
}}
select
  organization_id,
  inn,
  kpp,
  shop_name,
  shop_address
from 
  {{ source('public', 'organizations') }}