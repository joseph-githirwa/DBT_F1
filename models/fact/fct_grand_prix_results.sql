select gp_results.*,
gp_status.status_text
from {{ ref('src_results')}} gp_results
join {{ ref("src_status")}} gp_status on(gp_results.status_id = gp_status.status_id)