WITH src_runways AS (
    SELECT * FROM {{ ref('src_runways') }}
)

SELECT
    runway_id,
    airport_ident,
    runway_length_ft,
    runway_width_ft,
    CASE
        WHEN runway_surface IS NULL OR runway_surface = '' THEN '__UNKNOWN__' ELSE runway_surface
    END AS runway_surface,
    runway_lighted,
    runway_closed
FROM src_runways