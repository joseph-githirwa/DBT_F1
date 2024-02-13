select 
gp.date,
gp.round,
gp.name, 
results.position_order,
drivers.driver_name,
drivers.driver_number,
results.milliseconds,
results.points,
results.fastest_lap,
results.fastest_lap_time,
results.fastest_lap_speed,
standings.points overall_points,
standings.wins overall_wins
from {{ ref('src_races') }} gp 
join {{ ref('src_results') }}  results on(gp.race_id = results.race_id)
join {{ ref('src_drivers') }}  drivers on(results.driver_id = drivers.driver_id)
join {{ ref('src_driver_standings') }}  standings on(results.race_id = standings.race_id and results.driver_id = standings.driver_id)
