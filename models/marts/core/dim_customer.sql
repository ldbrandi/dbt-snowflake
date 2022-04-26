
WITH
source AS (
    SELECT
        *
    FROM {{ ref('customer_nation__joined') }}
)

SELECT 
    *
FROM source