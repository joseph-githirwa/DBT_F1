with f1_lap_times as (select * from {{ source("formula_1", "src_lap_times") }})

select
    "raceId" race_id,
    "driverId" driver_id,
    "lap" lap,
    "position" position,
    to_timestamp("time", 'MI:SS.MS')::time time,
    "milliseconds" milliseconds
from f1_lap_times
