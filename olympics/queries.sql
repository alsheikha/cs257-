SELECT noc
FROM noc_countries
ORDER BY noc;

SELECT DISTINCT first_name, last_name
FROM athletes, appearances
WHERE athletes.id = appearances.athlete_id
AND appearances.team = 'Jamaica'
ORDER BY athletes.last_name;

SELECT event, year, medal
FROM athletes, events, appearances, olympics
WHERE athletes.first_name LIKE '%Greg%'
AND athletes.last_name LIKE '%Louganis%'
AND athletes.id = appearances.athlete_id
AND events.id = appearances.event_id
AND appearances.olympics_id = olympics.id
AND appearances.medal IS NOT NULL
ORDER BY olympics.year;

SELECT noc_countries.noc, COUNT(medal)
FROM noc_countries, appearances
WHERE noc_countries.noc = appearances.noc
AND appearances.medal = 'Gold'
GROUP BY noc_countries.noc
ORDER BY COUNT(medal) DESC;
