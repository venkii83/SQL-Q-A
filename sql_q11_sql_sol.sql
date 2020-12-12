SELECT b.country_id,b.country_name, a.posi_to_play, a.jersey_no, a.player_name, a.playing_club, a.team_id
From player_mast a
JOIN soccer_country b ON a.team_id=b.country_id
WHERE b.country_name = 'ENGLAND' AND a.posi_to_play = 'GK'
ORDER BY a.player_name
