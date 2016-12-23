-- creature template addons
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 21849);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 22466);
DELETE FROM creature_template_addon WHERE entry IN (16968,16857,23285,16844,21380,21849,22038,22482,22466);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(16968, 0, 0, 1, 1, 0, 0, '29147'),
(16857, 0, 0, 1, 1, 0, 0, '29147'),
(23285, 0, 0, 1, 1, 0, 0, '29147'),
(16844, 0, 0, 1, 1, 0, 0, '29147'),
(21380, 0, 0, 1, 1, 0, 0, '29147'),
(21849, 0, 0, 1, 1, 0, 0, '37989'),
(22466, 0, 0, 1, 1, 0, 0, '37989'),
(22038, 0, 0, 1, 1, 0, 0, '37989'),
(22482, 0, 0, 1, 1, 0, 0, '37989');
-- missing unit flags
UPDATE creature_template SET UnitFlags=UnitFlags|33554432 WHERE entry IN (21380,22466);


