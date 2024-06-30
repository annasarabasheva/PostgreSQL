SELECT
	 r.start_point,
	 r.end_point,
	 r.leader_id, 
	 concat(c.first_name, ' ', c.last_name) as leader_name
FROM routes as r
JOIN campers as c 
ON c.id = r.leader_id;