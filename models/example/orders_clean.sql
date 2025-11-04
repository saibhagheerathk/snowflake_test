-- models/example/orders_clean.sql
{{ config(materialized='view') }}

select *
from {{ source('raw_snowflake', 'orders') }}

