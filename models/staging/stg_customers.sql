{{ config(materialized='view') }}

with src as (
    select * from {{ source('raw_snowflake', 'customers') }}
)

select
    customer_id,
    email,
    city,
    plan,
    updated_at
from src