select clients.first_name, clients.last_name, billing.amount, billing.charged_datetime
from clients
join billing on clients.id =billing.clients_id;

select sites.domain_name,leads.first_name, leads.last_name
from sites
join leads on sites.id = leads.sites_id;

select clients.first_name AS clients_first, clients.last_name, sites.domain_name, leads.first_name AS leads_first
from clients
join sites on clients.id = sites.clients_id
join leads on sites.id = leads.sites_id;

select clients.first_name, clients.last_name, sites.domain_name
from clients
left join sites on clients.id = sites.clients_id;

select clients.first_name, clients.last_name, AVG(billing.amount)
from clients
join billing on clients.id =billing.clients_id
group by clients.id;

SELECT GROUP_CONCAT(' ',sites.domain_name) AS domains, clients.first_name, clients.last_name
from clients
join sites on clients.id = sites.clients_id
group by clients.id;

SELECT COUNT(leads.id), sites.domain_name
FROM sites
JOIN leads ON sites.id = leads.sites_id
GROUP BY sites.id