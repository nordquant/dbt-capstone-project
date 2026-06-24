-- Validate snapshot captured the closure of Los Angeles County Sheriff's Department Heliport
SELECT * FROM {{ ref('scd_silver_airports') }} WHERE airport_ident = '01CN'