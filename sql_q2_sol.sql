SELECT Count(win_lose)
FROM match_details
Where win_lose = 'W'
AND decided_by ='P'