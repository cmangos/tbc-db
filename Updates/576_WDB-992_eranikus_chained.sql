-- Eranikus the Chained
-- spawned from item 10455 (must whisper to player random text)
DELETE FROM dbscript_random_templates WHERE id = 6; -- templates are diff for each DB
INSERT INTO dbscript_random_templates (id, type, target_id, chance) VALUES
(6,0,-1559,0),
(6,0,-1560,0),
(6,0,-1561,0),
(6,0,-1562,0),
(6,0,-1563,0),
(6,0,-1564,0),
(6,0,-1565,0),
(6,0,-1566,0),
(6,0,-1567,0),
(6,0,-1568,0);
