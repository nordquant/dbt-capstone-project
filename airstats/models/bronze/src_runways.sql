{{ 
    config(materialized='ephemeral') 
}}

WITH runways AS (
    SELECT * FROM {{ source('airstats', 'runways') }}
)

SELECT
    id AS runway_id,
    airport_ident,
    length_ft AS runway_length_ft,
    width_ft AS runway_width_ft,
    surface AS runway_surface,
    lighted AS runway_lighted,
    closed AS runway_closed

FROM runways