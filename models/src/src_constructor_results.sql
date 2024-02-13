with
    f1_constructor_results as (
        select * from {{ source("formula_1", "src_constructor_results") }}
    )

select
    "constructorResultsId" constructor_results_id,
    "raceId" race_id,
    "constructorId" constructor_id,
    "points" points,
    "status" status
from f1_constructor_results
