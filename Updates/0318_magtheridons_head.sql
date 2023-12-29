DELETE FROM gameobject_addon WHERE guid IN(164000,164001); -- new template handling does it properly
UPDATE gameobject SET spawntimesecsmin=-300,spawntimesecsmax=-300 WHERE id IN(184640); -- despawned by default

