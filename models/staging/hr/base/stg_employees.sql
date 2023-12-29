{{
    config(
        materialized='view'
    )
}}


    select
        name,
        job_titles,
        department,
        full_or_part_time,
        salary_or_hourly,
        typical_hours,
        annual_salary,
        hourly_rate

    from {{ source('people', 'employees') }}
