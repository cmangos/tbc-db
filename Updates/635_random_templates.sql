-- dbscript_random_templates ids moved to correct expansions

-- 0 - 9999    - Vanilla
-- 10k - 19999 - TBC
-- 20k - x     - WoTLK

-- ----------------------
-- TBC
-- ----------------------
-- Coilskar Assassin (21044) - Shadowmoon Valley
UPDATE dbscript_random_templates SET id = 10010, comments = '21044 - Random Aggro Texts' WHERE id = 5;

-- Time Keeper (17918) - The Black Morass
DELETE FROM dbscript_random_templates WHERE id IN(10011,10012);
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(10011,0,-1543,0,'17918 - Random Despawn Texts'),
(10011,0,-1544,0,'17918 - Random Despawn Texts'),
(10011,0,-1545,0,'17918 - Random Despawn Texts'),
(10012,0,-1546,0,'17918 - Random Spawn Texts'),
(10012,0,-1547,0,'17918 - Random Spawn Texts'),
(10012,0,-1548,0,'17918 - Random Spawn Texts');

-- Papa Wheeler (19645) - Netherstorm
DELETE FROM dbscript_random_templates WHERE id = 10013;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(10013,0,-423,0,'19645 - Random OOC Texts'),
(10013,0,-424,0,'19645 - Random OOC Texts'),
(10013,0,-425,0,'19645 - Random OOC Texts'),
(10013,0,-426,0,'19645 - Random OOC Texts'),
(10013,0,-427,0,'19645 - Random OOC Texts'),
(10013,0,-428,0,'19645 - Random OOC Texts');

-- Shadowy Necromancer (17899) - Hyjal Summit
DELETE FROM dbscript_random_templates WHERE id = 10014;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(10014,0,-695,0,'17899 - Random Death Texts'),
(10014,0,-696,0,'17899 - Random Death Texts'),
(10014,0,-697,0,'17899 - Random Death Texts');

-- Samia Inkling (Entry: 21983) - Blade's Edge Mountains
UPDATE dbscript_random_templates SET id = 10015, comments = '21983 - Random Text' WHERE id = 3;
-- Script Updated
UPDATE dbscripts_on_creature_movement SET datalong = 10015 WHERE id = 2213002 AND command = 0;

-- Baron Sablemane (22103) - Blade's Edge Mountains
UPDATE dbscript_random_templates SET id = 10016, comments = '22103 - Random Text' WHERE id = 4;
-- Script Updated
UPDATE dbscripts_on_creature_movement SET datalong = 10016 WHERE id = 2213001 AND command = 0;

-- Natasha (22465) - Blade's Edge Mountains
DELETE FROM dbscript_random_templates WHERE id = 10017;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(10017,0,-77,0,'22465 - Random OOC Texts'),
(10017,0,-78,0,'22465 - Random OOC Texts'),
(10017,0,-79,0,'22465 - Random OOC Texts'),
(10017,0,-80,0,'22465 - Random OOC Texts');

-- Boulderfist Crusher(17134)/Boulderfist Mystic(17135)/Boulderfist Warrior(17136)/Boulderfist Mage(17137) - Nagrand
DELETE FROM dbscript_random_templates WHERE id = 10018;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(10018,0,-1125,0,'17134/17135/17136/17137 - Random OOC Texts'),
(10018,0,-1126,0,'17134/17135/17136/17137 - Random OOC Texts'),
(10018,0,-1127,0,'17134/17135/17136/17137 - Random OOC Texts'),
(10018,0,-1128,0,'17134/17135/17136/17137 - Random OOC Texts');

-- Corki (18369) - Nagrand
DELETE FROM dbscript_random_templates WHERE id = 10019;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(10019,0,-1120,0,'18369 - Random OOC Texts'),
(10019,0,-1121,0,'18369 - Random OOC Texts'),
(10019,0,-1122,0,'18369 - Random OOC Texts'),
(10019,0,-1123,0,'18369 - Random OOC Texts'),
(10019,0,-1124,0,'18369 - Random OOC Texts');

-- Grulloc (20216) - Blade's Edge Mountains
DELETE FROM dbscript_random_templates WHERE id = 10020;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(10020,0,-799,0,'20216 - Random Yell on SpellHit'),
(10020,0,-800,0,'20216 - Random Yell on SpellHit'),
(10020,0,-801,0,'20216 - Random Yell on SpellHit'),
(10020,0,-802,0,'20216 - Random Yell on SpellHit'),
(10020,0,-803,0,'20216 - Random Yell on SpellHit'),
(10020,0,-804,0,'20216 - Random Yell on SpellHit'),
(10020,0,-805,0,'20216 - Random Yell on SpellHit'),
(10020,0,-806,0,'20216 - Random Yell on SpellHit');

-- Cro Threadstrong (19196) - Shattrath City
DELETE FROM dbscript_random_templates WHERE id = 10021;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(10021,0,2000001180,0,'19196 - Random Text'),
(10021,0,2000001181,0,'19196 - Random Text'),
(10021,0,2000001182,0,'19196 - Random Text'),
(10021,0,2000001183,0,'19196 - Random Text'),
(10021,0,2000001184,0,'19196 - Random Text');
-- Script Updated
UPDATE dbscripts_on_creature_movement SET datalong = 10021 WHERE id = 1919601 AND command = 0;

-- The Rokk (24393) - Shattrath City
DELETE FROM dbscript_random_templates WHERE id = 10022;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(10022,0,-1507,0,'24393 - Random OOC Texts'),
(10022,0,-1508,0,'24393 - Random OOC Texts'),
(10022,0,-1509,0,'24393 - Random OOC Texts');

-- Grisy Spicecrackle (24416) - Shattrath City 
DELETE FROM dbscript_random_templates WHERE id = 10023;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(10023,0,-1510,0,'24416 - Random Texts'),
(10023,0,-1511,0,'24416 - Random Texts'),
(10023,0,-1512,0,'24416 - Random Texts');

-- Corki (20812) - Nagrand
DELETE FROM dbscript_random_templates WHERE id = 10024;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(10024,0,-1513,0,'20812 - Random OOC Texts'),
(10024,0,-1514,0,'20812 - Random OOC Texts'),
(10024,0,-1515,0,'20812 - Random OOC Texts'),
(10024,0,-1516,0,'20812 - Random OOC Texts');

-- Harold Lane (18218) - Nagrand
DELETE FROM dbscript_random_templates WHERE id = 10025;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(10025,0,-1549,0,'18218 - Random OOC Texts'),
(10025,0,-1550,0,'18218 - Random OOC Texts'),
(10025,0,-1551,0,'18218 - Random OOC Texts'),
(10025,0,-1552,0,'18218 - Random OOC Texts'),
(10025,0,-1553,0,'18218 - Random OOC Texts'),
(10025,0,-1554,0,'18218 - Random OOC Texts'),
(10025,0,-1555,0,'18218 - Random OOC Texts');

-- Field Marshal Rohamus (19316) - Hellfire Peninsula
DELETE FROM dbscript_random_templates WHERE id = 10026;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(10026,0,-630,0,'19316 - Random OOC Texts'),
(10026,0,-631,0,'19316 - Random OOC Texts'),
(10026,0,-632,0,'19316 - Random OOC Texts'),
(10026,0,-633,0,'19316 - Random OOC Texts');

-- Vashj'ir Honor Guard (21218) - Coilfang Reservoir: Serpentshrine Cavern
DELETE FROM dbscript_random_templates WHERE id = 10027;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(10027,0,-841,0,'21218 - Random OOC Texts'),
(10027,0,-842,0,'21218 - Random OOC Texts'),
(10027,0,-843,0,'21218 - Random OOC Texts'),
(10027,0,-844,0,'21218 - Random OOC Texts'),
(10027,0,-845,0,'21218 - Random OOC Texts'),
(10027,0,-846,0,'21218 - Random OOC Texts'),
(10027,0,-847,0,'21218 - Random OOC Texts'),
(10027,0,-848,0,'21218 - Random OOC Texts');

-- Marshal Isildor (19308) - Hellfire Peninsula
DELETE FROM dbscript_random_templates WHERE id = 10028;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(10028,0,-644,0,'19308 - Random OOC Texts'),
(10028,0,-645,0,'19308 - Random OOC Texts'),
(10028,0,-646,0,'19308 - Random OOC Texts'),
(10028,0,-647,0,'19308 - Random OOC Texts');

-- Add comments to templates that were added before the comment field existed
UPDATE dbscript_random_templates SET comments = '5355,16769 - Random Emote' WHERE id = 10000;
UPDATE dbscript_random_templates SET comments = '1410,5355 - Random Emote' WHERE id = 10001;
UPDATE dbscript_random_templates SET comments = '5355,16769 - Turn to random target Group 1-3' WHERE id = 10002;
UPDATE dbscript_random_templates SET comments = '5355,16769 - Emote OR Turn to random target Group 1-3' WHERE id = 10003;
UPDATE dbscript_random_templates SET comments = '19426 - random action' WHERE id = 10100;
UPDATE dbscript_random_templates SET comments = '19426 - 25% chance for peon response' WHERE id = 10103;

-- ----------------------
-- Classic
-- ----------------------
UPDATE dbscript_random_templates SET comments = '8506 - Random Spawn Texts' WHERE id = 6;


