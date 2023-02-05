{{
    config(
        materialized='table'
    )
}}

select
    sex
    ,COUNT(*) as n_employees
    ,ROUND(AVG(salary)) as avg_salary
    ,ROUND(STDDEV(salary)) as stddev_salary
    ,ROUND(MIN(salary)) as min_salary
    ,ROUND(MAX(salary)) as max_salary

from {{ ref('stg_employees') }}
group by 1
