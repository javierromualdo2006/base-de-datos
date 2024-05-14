SELECT g.name, p.ssn, g.id, g.membership_status, g.membership_start_date
FROM get_fit_now_member g LEFT JOIN person p 
ON g.person_id = p.id 
WHERE membership_start_date LIKE '2018%'
ORDER BY g.membership_status, p.ssn ASC