with
    f1_driver_standings as (
        select * from {{ source("formula_1", "src_driver_standings") }}
    )

select
    "driverStandingsId" driver_standings_id,
    "raceId" race_id,
    "driverId" driver_id,
    "points" points,
    "position" position,
    "positionText" position_text,
    "wins" wins
from f1_driver_standings
