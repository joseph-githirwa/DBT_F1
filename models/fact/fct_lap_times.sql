SELECT
    a.*,
    RANK() OVER (PARTITION BY race_id, lap ORDER BY milliseconds) lap_time_rank
FROM
    {{ ref("src_lap_times") }}  a