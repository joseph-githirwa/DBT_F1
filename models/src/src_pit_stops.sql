with f1_pit_stops as (select * from {{ source("formula_1", "src_pit_stops") }})

select
    "raceId" race_id,
    "driverId" driver_id,
    "stop" stop,
    "lap" lap,
    {{ text_sec_to_timestamp("time") }}  stop_time,
    {{ int_milli_to_timestamp("milliseconds") }} total_pit_time
from f1_pit_stops
