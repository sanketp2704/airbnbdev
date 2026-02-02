{{
  config(
    materialized = 'view' --Sanket Pingale,123
    )
}}

WITH src_hosts AS (
    SELECT
        *
    FROM
        {{ ref('src_hosts') }}
)
SELECT
    host_id,
    NVL(
        host_name,
        'Anonymous'
    ) AS host_name,
    is_superhost,
    {{first_day_of_month ('created_at')}} as first_day_of_month,
    created_at,
    updated_at
FROM
    src_hosts
