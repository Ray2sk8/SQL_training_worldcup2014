WITH player_stats AS (
    SELECT
        name,
        club,
        -- 体重と身長の和を計算
        weight + height AS wh_sum
    FROM
        players
)
SELECT
    p_stats.name,
    p_stats.club,
    p_stats.wh_sum
FROM
    player_stats p_stats