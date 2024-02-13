with f1_drivers as (select * from {{ source("formula_1", "src_drivers") }})

select
    "driverId" driver_id,
    "driverRef" driver_ref,
    "number" number,
    "code" code,
    "forename" forename,
    "surname" surname,
    "dob" dob,
    "nationality" nationality,
    "url" url,
    "forename" || ' ' || "surname" driver_name,
    {{ text_to_int8('"number"') }} driver_number
from f1_drivers
