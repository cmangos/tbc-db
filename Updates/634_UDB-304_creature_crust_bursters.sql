-- DB Updates for Tunneler/ Marauding Crust Burster/ Nethermine Burster/ Crust Burster/ Greater Crust Burster
UPDATE creature_template SET ExtraFlags = 0, SpeedRUN = 1.19048 WHERE entry IN (16968,16857,23285,16844,21380);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 16968);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 16857);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 23285);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 16844);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 21380);
DELETE FROM creature_template_addon WHERE entry IN (16968,16857,23285,16844,21380);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(16968, 0, 0, 1, 1, 0, 0, '33928'),
(16857, 0, 0, 1, 1, 0, 0, '33928'),
(23285, 0, 0, 1, 1, 0, 0, '33928'),
(16844, 0, 0, 1, 1, 0, 0, '33928'),
(21380, 0, 0, 1, 1, 0, 0, '33928');


