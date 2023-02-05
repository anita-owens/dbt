{{
    config(
        materialized='view'
    )
}}

select
    *
from my-project-39149-2020.dbt_bigquery.employees