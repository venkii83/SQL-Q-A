SELECT country_name, count(DISTINCT match_no) AS NoR
FROM match_details a
JOIN asst_referee_mast c ON a.ass_ref=c.ass_ref_id
JOIN soccer_country b ON c.country_id=b.country_id
GROUP BY country_name
ORDER BY count(*) DESC;