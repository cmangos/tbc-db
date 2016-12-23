-- Milly's Harvest
-- should be spawned max 10 in same time
UPDATE gameobject SET spawntimesecs = 120 WHERE id = 161557;
DELETE FROM pool_template WHERE entry = 25518;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(25518,10,'Milly\'s Harvest');

DELETE FROM pool_gameobject_template WHERE pool_entry = 25518;
INSERT INTO pool_gameobject_template (id, pool_entry, chance, description) VALUES
(161557, 25518, 0, '161557 - Milly\'s Harvest');


