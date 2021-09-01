SELECT f.ID "rowid", f.name "friend", f.phone, f.company_id, c.name "worked_at"
FROM friends f 
INNER JOIN companies c 
ON f.company_id = c.id
WHERE c.name = "ООО Рога и Копыта";

SELECT f.ID "rowid", f.name "friend", f.phone, f.company_id
FROM friends f 
WHERE friends.id = (SELECT companies.id FROM companies 
WHERE companies.name = "ООО Рога и Копыта");
