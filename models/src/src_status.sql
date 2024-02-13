with f1_status as (select * from {{ source("formula_1", "src_status") }})

select "statusId" status_id, "status" status_text
from f1_status
