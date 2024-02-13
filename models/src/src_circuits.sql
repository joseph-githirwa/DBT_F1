with f1_circuits as (select * from {{ source("formula_1", "src_circuits") }})

select
    "circuitId" circuit_id,
    "circuitRef" circuit_ref,
    "name" name,
    "location" location,
    "country" country,
    "lat" lat,
    "lng" lng,
    "alt" alt,
    "url" url
from f1_circuits
