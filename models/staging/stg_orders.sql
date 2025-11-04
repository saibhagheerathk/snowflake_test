{{ config(materialized='view') }}

with src as (
    select * from {{ source('raw_snowflake', 'orders') }}
)

select
    order_id,
    customer_id,
    order_ts,
    status,
    amount,
    source
from src