with f1_results as (select * from {{ source("formula_1", "src_results") }})

select
    "resultId" result_id,
    "raceId" race_id,
    "driverId" driver_id,
    "constructorId" constructor_id,
    {{ text_to_int8('"number"') }} number,
    "grid" grid,
    "position" position,
    "positionText" position_text,
    "positionOrder" position_order,
    "points" points,
    "laps" laps,
    time,
    "milliseconds" milliseconds,
    {{ text_milli_to_timestamp('"milliseconds"') }} lap_time,
    {{ text_to_int8('"fastestLap"') }} fastest_lap,
    {{ text_to_int8('"rank"') }} rank,
    {{ text_time_to_timestamp('"fastestLapTime"') }} fastest_lap_time,
    {{ text_to_double('"fastestLapSpeed"') }} fastest_lap_speed,
    "statusId" status_id
from f1_results
