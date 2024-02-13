with
    f1_constructor_standings as (
        select * from {{ source("formula_1", "src_constructor_standings") }}
    )

select
    "constructorStandingsId" constructor_standings_id,
    "raceId" race_id,
    "constructorId" constructor_id,
    "points" points,
    "position" position,
    "positionText" position_text,
    "wins" wins
from f1_constructor_standings
