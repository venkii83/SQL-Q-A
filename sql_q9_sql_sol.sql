SELECT b.country_id,b.country_name, c.play_stage, jersey_no, player_name
 FROM player_mast a 
 JOIN soccer_country b ON a.team_id=b.country_id
 JOIN match_details c ON c.team_id=a.team_id
 WHERE play_stage = 'G' AND a.team_id =1208 AND posi_to_play ='GK'
 ORDER BY country_name,player_name DESC LIMIT 0, 1000