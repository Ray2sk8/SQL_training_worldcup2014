SELECT c.name, COUNT(g.goal_time)
FROM goals g
LEFT JOIN pairings p ON p.id = g.pairing_id
LEFT JOIN countries c ON p.my_country_id = c.id
WHERE p.id = 103 OR p.id = 39
GROUP BY c.name