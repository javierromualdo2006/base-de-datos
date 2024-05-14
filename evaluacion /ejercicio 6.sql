SELECT count(g.membership_status)
FROM get_fit_now_member g 
LEFT JOIN person p 
ON g.person_id = p.id 
GROUP BY g.membership_status
HAVING count(membership_status)