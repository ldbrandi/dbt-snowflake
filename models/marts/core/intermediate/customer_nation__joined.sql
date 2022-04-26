{{
  config(
    materialized = 'view',
    )
}}


WITH
customer AS (
    SELECT
        *
    FROM {{ ref('stg_tpch_sf1__customer') }}
),

nation AS (
    SELECT
        *
    FROM {{ ref('stg_tpch_sf1__nation') }}
)

SELECT
    c.c_custkey,
    c.c_name,
    c.c_address,
    n.n_name,
    c.c_phone
FROM customer AS c
LEFT JOIN nation AS n
    ON (c.c_nationkey = n.n_nationkey)