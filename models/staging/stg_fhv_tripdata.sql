{{ config(materialized='view') }}

select * from {{ source('dbt_taxi_data','taxi_data_combined')}}