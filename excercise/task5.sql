SELECT
    p.kickoff,
    (
        SELECT
            c.name
        FROM
            countries c
        WHERE
            c.id = p.my_country_id
    ) AS mycountry,
    (
        SELECT
            c.name
        FROM
            countries c
        WHERE
            c.id = p.enemy_country_id
    ) AS enemyCountry
FROM
    pairings p
ORDER BY
    p.kickoff ASC;
