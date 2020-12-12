SELECT match_no, Booked 
FROM (
SELECT match_no,COUNT(*) Booked 
FROM player_booked  
GROUP BY match_no) M1 where Booked=(
SELECT MAX(M1) 
FROM (SELECT match_no,COUNT(*) M1 
FROM player_booked  
GROUP BY match_no) M2);