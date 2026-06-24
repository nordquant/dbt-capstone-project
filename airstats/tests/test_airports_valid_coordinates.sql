-- Test that all airport coordinates are within valid geographic ranges
-- Latitude must be between -90 and 90
-- Longitude must be between -180 and 180
-- This test fails if any rows are returned

SELECT
    airport_ident,
    airport_name,
    airport_lat,
    airport_long
FROM {{ ref('silver_airports') }}
WHERE
    (airport_lat IS NOT NULL AND (airport_lat < -90 OR airport_lat > 90))
    OR (airport_long IS NOT NULL AND (airport_long < -180 OR airport_long > 180))