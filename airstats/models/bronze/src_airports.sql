{{ 
    config(materialized='ephemeral') 
}}

WITH airports AS (
    SELECT * FROM {{ source('airstats', 'airports') }}
)

SELECT
    ident AS airport_ident,
    type AS airport_type,
    name AS airport_name,
    latitude_deg AS airport_lat,
    longitude_deg AS airport_long,
    continent,
    iso_country,
    iso_region
FROM airports