SELECT c.country_id, c.country_name, b.goal_score, b.penalty_score, b.team_id, a.team_id, a.posi_to_play
FROM player_mast a
JOIN match_details b ON a.team_id = b.team_id
LEFT JOIN soccer_country c ON a.team_id = c.country_id
WHERE goal_score <>0 AND penalty_score <>0
GROUP BY C.COUNTRY_NAME AND A.posi_to_play
