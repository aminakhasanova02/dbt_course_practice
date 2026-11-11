{{
  config(
    materialized = 'table',
    )
}}
select 
    book_ref,
    book_date as book_datetime,
    total_amount, 
    case 
        when total_amount > 100000 then 'cool'
        else 'not cool'
    end as status,
    date_trunc('month', book_date)::date as book_date
from {{ ref('src_flights__bookings') }}