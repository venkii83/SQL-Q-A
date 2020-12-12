Select win_lose, Sum(penalty_score) as WS
From match_details
Where win_lose = 'W'