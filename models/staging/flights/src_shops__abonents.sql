{{
  config(
    materialized = 'table',
    )
}}
select
    abonent_id, inn, kpp, notdeleted
from
{{ source('public', 'abonents') }}