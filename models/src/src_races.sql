with f1_races as (select * from {{ source("formula_1", "src_races") }})

select
    "raceId" race_id,
    "year" "year",
    "round" round,
    "circuitId" circuit_id,
    "name" name,
    "date" date,
    {{text_time_to_timestamp("time")}} time,
    "url" url,
    {{text_date_time_to_timestamp("fp1_date", "fp1_time")}} fp1_date_time,
    {{text_date_time_to_timestamp("fp2_date", "fp2_time")}} fp2_date_time,
    {{text_date_time_to_timestamp("fp3_date", "fp3_time")}} fp3_date_time,
    {{text_date_time_to_timestamp("quali_date", "quali_time")}} quali_date_time,
    {{text_date_time_to_timestamp("sprint_date", "sprint_time")}} sprint_date_time
from f1_races
