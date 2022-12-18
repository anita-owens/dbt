{{
    config(
        materialized='table'
    )
}}

select
    sex
    ,count(*) as n_employees
    ,ROUND(AVG(salary)) as avg_salary
    ,ROUND(STDDEV(salary)) as stddev_salary
from my-project-39149-2020.dbt_bigquery.employees
group by 1
