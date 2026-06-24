# Silver Layer Overview

## Tables

The silver layer contains three interconnected tables that provide a clean, analysis-ready view of airport data.

### silver_airports
The core dimension table containing airport information including identifiers, names, types, and geographic coordinates. This is the parent table that other tables reference.

### silver_runways
Contains runway specifications for airports. Each runway belongs to exactly one airport, linked via `airport_ident`. Includes dimensions (length, width), surface type, and operational status.

### silver_airport_comments
An incremental table storing user-submitted comments about airports. Comments are linked to airports via `airport_ident`. Records are filtered to exclude empty comment bodies, and a `loaded_at` timestamp tracks when each record was loaded.

## Relationships

All three tables are connected through the `airport_ident` field:

```
silver_airports (parent)
    |
    +-- silver_runways (one airport has many runways)
    |
    +-- silver_airport_comments (one airport has many comments)
```

## Data Quality

- Unknown runway surfaces are standardized to `__UNKNOWN__`
- Unknown commenter nicknames are standardized to `__UNKNOWN__`
- Empty or null comment bodies are filtered out
- All primary keys are unique and not null
