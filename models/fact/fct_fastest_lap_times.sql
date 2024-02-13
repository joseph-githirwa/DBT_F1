WITH
    lap_time_rank AS (
        SELECT
            a.*,
            rank() over(partition by race_id order by time) rk
        FROM
            {{ ref('src_lap_times') }} a
    )
SELECT
    race_id,
    driver_id,
    lap,
    POSITION,
    TIME
FROM
    lap_time_rank
WHERE
    rk = 1