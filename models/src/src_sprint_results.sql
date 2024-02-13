with
    f1_sprint_results as (select * from {{ source("formula_1", "src_sprint_results") }})

select
    "resultId" result_id,
    "raceId" race_id,
    "driverId" driver_id,
    "constructorId" constructor_id,
    "number" number,
    "grid" grid,
    "position" position,
    "positionText" position_text,
    "positionOrder" position_order,
    "points" points,
    "laps" laps,
    "time" time,
    "milliseconds" milliseconds,
    "fastestLap" fastest_lap,
    "fastestLapTime" fastest_lap_time,
    "statusId" status_id
from f1_sprint_results
