Select match_mast.venue_id, match_mast.decided_by, soccer_venue.venue_name
From match_mast
INNER JOIN soccer_venue ON match_mast.venue_id=soccer_venue.venue_id
Where decided_by = 'p'
