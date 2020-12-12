SELECT b.country_id, b.country_name, c.player_id, c.sent_off, d.score_goal, e.player_gk, f.match_no, f.plr_of_match, e.goal_score, a.player_id, a.team_id, a.jersey_no, a.age, a.player_name, a.posi_to_play, a.playing_club
FROM player_mast a
JOIN soccer_country b ON a.team_id=b.country_id
LEFT JOIN player_booked c ON a.player_id = c.player_id
LEFT JOIN penalty_shootout d ON a.player_id = d.player_id
LEFT JOIN match_details e ON a.player_id = e.player_gk
LEFT JOIN match_mast f ON a.player_id = f.plr_of_match
Where a.playing_club = 'LIVERPOOL' AND b.country_name = 'ENGLAND'
ORDER BY a.player_id DESC