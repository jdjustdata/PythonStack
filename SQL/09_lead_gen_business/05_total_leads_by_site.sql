SELECT CONCAT_WS(" ", clients.first_name, clients.last_name) AS client_name, 
    sites.domain_name AS site,
    COUNT(leads.leads_id) AS number_of_leads
FROM clients
LEFT JOIN sites ON clients.client_id = sites.client_id
LEFT JOIN leads ON sites.site_id = leads.site_id
WHERE sites.created_datetime >= DATE("2011-01-01")
	AND sites.created_datetime <= DATE("2011-02-15")
GROUP BY sites.site_id
ORDER BY clients.first_name;

