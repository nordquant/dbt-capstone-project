{% docs silver_airports_description %}
The silver_airports table contains cleaned and standardized airport data from OurAirports.
It includes geographic coordinates, airport classifications, and location information for over 70,000 airports worldwide.

**Data Source:** OurAirports (ourairports.com/data/)

**Key transformations:**
- Column names standardized with airport_ prefix
- No data filtering applied - all airports included
{% enddocs %}

{% docs airport_type_description %}
Classification of the airport by size and type:
- **small_airport**: Regional or community airports
- **medium_airport**: Regional commercial airports
- **large_airport**: Major commercial airports
- **heliport**: Helicopter landing sites
- **seaplane_base**: Water landing sites
- **balloonport**: Balloon launch sites
- **closed**: Non-operational airports
{% enddocs %}
