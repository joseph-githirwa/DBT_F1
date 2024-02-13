with f1_qualifying as (select * from {{ source("formula_1", "src_qualifying") }})

select
    "qualifyId" qualify_id,
    "raceId" race_id,
    "driverId" driver_id,
    "constructorId" constructor_id,
    "number" number,
    "position" position,
    "q1" q1,
    "q2" q2,
    "q3" q3
from f1_qualifying
