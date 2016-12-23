-- Venture Co. Saboteur
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 17278);
UPDATE creature_template_addon SET auras = 5680 WHERE entry = 17278;


