WITH src_airports AS (
    SELECT * FROM {{ ref('src_airports') }}
)
SELECT * FROM src_airports