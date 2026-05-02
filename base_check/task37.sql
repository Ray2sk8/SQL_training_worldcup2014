WITH player_stats AS (
    SELECT
        name,
        position,
        birth,
        -- BMIの計算: (体重 / 身長^2) * 10000
        (weight / (height * height)) * 10000 AS bmi
    FROM
        players
)
SELECT
    p_bmi.name,
    p_bmi.position,
    p_bmi.birth,
    p_bmi.bmi
FROM
    player_stats p_bmi
-- // 20 <= BMI  < 30
WHERE
    p_bmi.bmi >= 20 AND p_bmi.bmi < 30
ORDER BY
    p_bmi.birth ASC