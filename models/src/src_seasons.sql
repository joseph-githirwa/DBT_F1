with f1_seasons as (select * from {{ source("formula_1", "src_seasons") }})

select "year" "year", "url" url
from f1_seasons
