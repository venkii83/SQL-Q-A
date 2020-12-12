SELECT COUNT(goal_score) 
FROM match_details 
WHERE win_lose='W'
AND penalty_score=0
AND goal_score=1;