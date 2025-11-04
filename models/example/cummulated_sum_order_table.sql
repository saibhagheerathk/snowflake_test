-- models/orders_clean.sql
{{ config(materialized='view') }}

select
    order_id,
    customer_id,
    order_ts,
    status,
    amount,
    source
from {{ source('raw', 'orders') }}
