with f1_constructors as (select * from {{ source("formula_1", "src_constructors") }})

select
    "constructorId" constructor_id,
    "constructorRef" constructor_ref,
    "name" name,
    "nationality" nationality,
    "url" url
from f1_constructors
