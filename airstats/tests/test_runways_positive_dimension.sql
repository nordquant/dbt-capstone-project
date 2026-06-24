{{ 
    config(severity="warn") 
}}

-- Test that runway dimensions are positive when specified
-- Length and width should be greater than 0 if not null
-- This test fails if any rows are returned

SELECT
    runway_id,
    airport_ident,
    runway_length_ft,
    runway_width_ft
FROM {{ ref('silver_runways') }}
WHERE
    (runway_length_ft IS NOT NULL AND runway_length_ft <= 0)
    OR (runway_width_ft IS NOT NULL AND runway_width_ft <= 0)