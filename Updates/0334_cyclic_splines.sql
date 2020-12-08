ALTER TABLE db_version CHANGE COLUMN required_s2422_01_mangos_creature_template_spells_extension required_s2424_01_mangos_creature_spawn_data bit;

DROP TABLE IF EXISTS creature_spawn_data_template;
CREATE TABLE creature_spawn_data_template(
Entry INT UNSIGNED NOT NULL COMMENT 'ID of template',
UnitFlags BIGINT NOT NULL DEFAULT '-1',
Faction INT UNSIGNED NOT NULL DEFAULT '0',
ModelId MEDIUMINT UNSIGNED NOT NULL DEFAULT '0',
EquipmentId MEDIUMINT NOT NULL DEFAULT '0',
CurHealth INT UNSIGNED NOT NULL DEFAULT '0',
CurMana INT UNSIGNED NOT NULL DEFAULT '0',
SpawnFlags INT UNSIGNED NOT NULL DEFAULT '0',
PRIMARY KEY(Entry,UnitFlags,ModelId,EquipmentId,CurHealth,CurMana,SpawnFlags)
);

INSERT INTO creature_spawn_data_template(entry) VALUES(0);
INSERT INTO creature_spawn_data_template(Entry,SpawnFlags)
VALUES(1,0x01);

INSERT INTO creature_spawn_data_template(Entry,SpawnFlags)
VALUES(2,0x02);

INSERT INTO creature_spawn_data_template(Entry,SpawnFlags)
VALUES(3,0x03);


DROP TABLE IF EXISTS creature_spawn_data;
CREATE TABLE creature_spawn_data(
Guid INT UNSIGNED NOT NULL COMMENT 'guid of creature',
Id INT UNSIGNED NOT NULL COMMENT 'ID of template',
PRIMARY KEY(Guid)
);

-- ---------------------------------------
-- Redeemed Avian c.22326
-- ---------------------------------------
UPDATE creature SET MovementType=3 WHERE guid IN(78558); -- Delete Duplicate
UPDATE creature SET MovementType=3,position_x=-1652.127,position_y=5443.76,position_z=-36.10043 WHERE guid IN(78557);
DELETE FROM creature_movement WHERE id IN(78557);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(78557,1,-1652.127,5443.76,-36.10043,0,0,100),
(78557,2,-1651.403,5448.297,-36.10043,0,0,100),
(78557,3,-1653.394,5452.388,-36.10043,0,0,100),
(78557,4,-1658.315,5452.66,-36.10043,0,0,100),
(78557,5,-1661.395,5448.715,-36.10043,0,0,100),
(78557,6,-1659.505,5443.885,-36.10043,0,0,100),
(78557,7,-1656.319,5442.147,-36.10043,0,0,100);

UPDATE creature SET MovementType=3,position_x=-1652.1948,position_y=5444.72,position_z=-34.350433 WHERE guid IN(78556);
DELETE FROM creature_movement WHERE id IN(78556);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(78556,1,-1652.1948,5444.72,-34.350433,0,0,100),
(78556,2,-1655.254,5443.502,-34.60044,0,0,100),
(78556,3,-1658.8391,5443.5254,-35.517097,0,0,100),
(78556,4,-1660.9156,5446.9673,-37.40597,0,0,100),
(78556,5,-1660.2383,5450.659,-37.794884,0,0,100),
(78556,6,-1657.7184,5452.7925,-37.0171,0,0,100),
(78556,7,-1654.1393,5453.226,-37.01711,0,0,100),
(78556,8,-1650.8257,5449.3965,-35.017105,0,0,100);

-- Set run on spawn
DELETE FROM creature_spawn_data WHERE guid IN(78557,78556);
INSERT INTO creature_spawn_data(Guid,Id) VALUES
(78557, 1),
(78556, 1);

-- ---------------------------------------
-- Al'ar c.19514
-- ---------------------------------------
UPDATE creature SET MovementType=3,position_x=375.2119,position_y=-24.14878,position_z=39.75965 WHERE guid IN(5500003);
DELETE FROM creature_movement_template WHERE entry IN(19514);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19514,0,1,383.0095,-0.892289,43.99946,0,0,100),
(19514,0,2,370.5421,31.28668,43.80863,0,0,100),
(19514,0,3,332.5465,45.77088,43.6697,0,0,100),
(19514,0,4,294.3148,30.9292,43.8919,0,0,100),
(19514,0,5,282.0638,-0.653615,43.91968,0,0,100),
(19514,0,6,294.2132,-32.41557,43.61413,0,0,100),
(19514,0,7,332.3423,-47.54061,43.69747,0,0,100),
(19514,0,8,370.3282,-32.59526,44.08632,0,0,100);

-- Set cyclic
UPDATE creature SET MovementType=3 WHERE id IN(19918);
-- Set Run on Spawn
DELETE FROM creature_spawn_data WHERE guid IN (SELECT guid FROM creature WHERE id=19918);
INSERT INTO creature_spawn_data(Guid,Id) SELECT Guid, 3 FROM creature WHERE Id IN(19918);
-- Remove dbscript that is now not needed
UPDATE creature_movement SET waittime=0,script_id=0 WHERE id IN(23441, 23437, 23440, 23436) AND point=1;
DELETE FROM creature_movement WHERE id IN(23436) AND point>9;
DELETE FROM dbscripts_on_creature_movement WHERE Id IN(1991801);
UPDATE `creature_movement` SET `script_id` = 0 WHERE `script_id` = 1991801;
DELETE FROM creature_movement_template WHERE entry=19918;
INSERT INTO creature_movement_template(entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id, comment) VALUES
('19918',1, '1', '-8416.94', '-4226.26', '-210.404', '100', '0', '0', NULL),
('19918',1, '2', '-8433.85', '-4210.99', '-209.974', '100', '0', '0', NULL),
('19918',1, '3', '-8447.16', '-4193.48', '-211.035', '100', '0', '0', NULL),
('19918',1, '4', '-8447.56', '-4159.84', '-208.959', '100', '0', '0', NULL),
('19918',1, '5', '-8442.45', '-4124.03', '-208.588', '100', '0', '0', NULL),
('19918',1, '6', '-8424.84', '-4097.41', '-208.584', '100', '0', '0', NULL),
('19918',1, '7', '-8405.97', '-4077.36', '-208.584', '100', '0', '0', NULL),
('19918',1, '8', '-8369.05', '-4058.84', '-208.357', '100', '0', '0', NULL),
('19918',1, '9', '-8339.43', '-4050.1', '-207.764', '100', '500', '1', NULL);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
('1991803', '1000', '0', '20', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Time Watcher - Start waypoint movement');

UPDATE creature SET MovementType=3 WHERE guid IN(1002286,1002287);


-- ---------------------------------------
-- Bat Rider Guard (Thrallmar) c.15242
-- ---------------------------------------
-- These two already have correct sniffed paths
UPDATE creature SET MovementType=3 WHERE guid IN(54840,54842);

-- Delete duplicates (Should be 4 total)
DELETE FROM creature WHERE guid IN(54843,54845,54839) AND id=15242;
DELETE FROM creature_movement WHERE id IN(54843,54845);

-- Delete other duplicates spawned in Outland. (Only Thrallmar have these as static spawns. Others are spawned by air force triggers
-- DELETE FROM creature WHERE MovementType!=9 AND id=15242;
-- While at it, despawn the ALliance Equivalent, Gryphon Rider Guard, that should not be static spawned anywhere (not even Honor Hold)
DELETE FROM creature WHERE id=15241;

-- These had incorrect custom-created paths. Add sniffed paths
UPDATE creature SET MovementType=3 WHERE guid IN(54844);
DELETE FROM creature_movement WHERE id=54844;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(54844,1,115.17114,2822.4436,163.6752,0,0,100),
(54844,2,57.16672,2791.6438,163.6752,0,0,100),
(54844,3,38.804634,2758.8225,163.6752,0,0,100),
(54844,4,19.692818,2714.7842,163.6752,0,0,100),
(54844,5,23.22027,2677.714,163.6752,0,0,100),
(54844,6,65.97776,2661.2046,163.6752,0,0,100),
(54844,7,85.52612,2668.3118,163.6752,0,0,100),
(54844,8,119.9537,2689.26,163.6752,0,0,100),
(54844,9,121.82381,2721.8796,163.6752,0,0,100),
(54844,10,142.69073,2750.891,163.6752,0,0,100),
(54844,11,149.98117,2788.5037,163.6752,0,0,100),
(54844,12,142.93533,2830.4639,163.6752,0,0,100);

UPDATE creature SET MovementType=3 WHERE guid IN(54841);
DELETE FROM creature_movement WHERE id=54841;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(54841,1,62.42025,2785.719,192.1124,0,0,100),
(54841,2,159.9371,2842.977,208.279,0,0,100),
(54841,3,183.0578,2845.035,208.279,0,0,100),
(54841,4,211.2432,2864.757,214.2235,0,0,100),
(54841,5,238.1182,2871.979,220.9457,0,0,100),
(54841,6,252.9173,2853.913,220.9457,0,0,100),
(54841,7,255.0203,2812.634,220.9457,0,0,100),
(54841,8,240.4993,2780.929,220.9457,0,0,100),
(54841,9,195.4901,2773.965,209.3901,0,0,100),
(54841,10,162.1341,2742.294,212.9179,0,0,100),
(54841,11,125.4935,2720.611,197.9457,0,0,100),
(54841,12,93.49241,2699.757,192.1124,0,0,100),
(54841,13,58.35324,2681.49,192.1124,0,0,100),
(54841,14,22.8833,2715.123,192.1124,0,0,100),
(54841,15,30.10514,2764.5,192.1124,0,0,100),
(54841,16,62.42025,2785.719,192.1124,0,0,100),
(54841,17,159.9371,2842.977,208.279,0,0,100),
(54841,18,183.0578,2845.035,208.279,0,0,100);

-- Set run on spawn
DELETE FROM creature_spawn_data WHERE guid IN(54840,54841,54842,54844);
INSERT INTO creature_spawn_data(Guid,Id) VALUES
(54840, 1),
(54841, 1),
(54842, 1),
(54844, 1);

-- Eye of Thrallmar
UPDATE creature SET MovementType=3 WHERE id IN(16598);
-- ToDO Recheck waypoints

-- Monstrous Kaliri
UPDATE creature SET MovementType=3 WHERE id IN(23051);

-- Terokkar - Bone Wastes - Draenei Soul (Temp spawns in Vengeful Harbinger quest)
UPDATE creature_template SET MovementType=3 WHERE entry IN(21424);

-- Tame Kaliri
UPDATE creature SET MovementType=3 WHERE id IN(20127);

-- Gutripper
UPDATE creature SET MovementType=3 WHERE id IN(18257);

-- Kor'kron Wyvern Rider
UPDATE creature SET MovementType=3 WHERE id IN(21153);

-- Vilewing Chimaera
UPDATE creature SET MovementType=3 WHERE id IN(21879);

-- Mature Netherwing Drake
UPDATE creature SET MovementType=3 WHERE id IN(21648);
-- Set Run on Spawn
INSERT INTO creature_spawn_data(Guid,Id) SELECT Guid, 3 FROM creature WHERE Id IN(21648);

-- Neltharaku
UPDATE creature SET MovementType=3 WHERE id IN(21657);
UPDATE creature_movement_template SET script_id=0,comment='' WHERE entry IN(21657) AND point=1;

-- Dragonmaw Transporter
UPDATE creature SET MovementType=3 WHERE id IN(23188);

-- Dragonmaw Skybreaker
UPDATE creature SET MovementType=3 WHERE id IN(22274);

-- Frost Wyrm
UPDATE creature_template SET MovementType=3 WHERE entry IN(17907);

-- Gargoyle
UPDATE creature_template SET MovementType=3 WHERE entry IN(17906);

-- Zeth'Gor Quest Credit Marker, They Must Burn, Tower South
UPDATE creature SET MovementType=3 WHERE id IN(21182);
-- Delete 3 duplicate points from already existing path
DELETE FROM creature_movement_template WHERE entry=21182 AND point IN(12,13,14);

-- Zeth'Gor Quest Credit Marker, They Must Burn, Tower North
UPDATE creature SET MovementType=3 WHERE id IN(22401);
-- Delete 3 duplicate points from already existing path
DELETE FROM creature_movement_template WHERE entry=22401 AND point IN(5,6,7);

-- Zeth'Gor Quest Credit Marker, They Must Burn, Tower Forge
UPDATE creature SET MovementType=3 WHERE id IN(22402);
-- Delete 3 duplicate points from already existing path
DELETE FROM creature_movement_template WHERE entry=22402 AND point IN(6,7,8);

-- Zeth'Gor Quest Credit Marker, They Must Burn, Tower Foothill
UPDATE creature SET MovementType=3 WHERE id IN(22403);
-- Delete 3 duplicate points from already existing path
DELETE FROM creature_movement_template WHERE entry=22403 AND point IN(6,7,8);

-- Aether Ray
UPDATE creature SET MovementType=3 WHERE id IN(22181);

-- Obsidia
UPDATE creature SET MovementType=3 WHERE id IN(23282);

-- Rivendark
UPDATE creature SET MovementType=3 WHERE id IN(23061);

-- Furywing
UPDATE creature SET MovementType=3 WHERE id IN(23261);

-- Insidion
UPDATE creature SET MovementType=3 WHERE id IN(23281);

-- Bladewing Bloodletter c.21033
-- TODO check paths with BEM fly file
-- UPDATE creature SET MovementType=3 WHERE id IN(21033);

-- Razaani Light Orb - Mini
UPDATE creature SET MovementType=3 WHERE id IN(20771);
-- TODO: ALL 49 spawns have handmade waypoints. Massive task to fix these
-- Also, check cyclic for the summoning quest in this area

-- Razaani Light Orb
-- Add paths and set cyclic from BEM fly file

-- Shimmerwing Moth c.20611
-- TODO fix missing paths from netherwing fly file

-- Unending Voidwraith
UPDATE creature SET MovementType=3 WHERE id IN(19568);

-- all despawn on end scripts need waittime
-- select * from creature a where MovementType=3 AND EXISTS (select b.id from creature_movement b WHERE script_id=1 AND a.guid=b.id);
UPDATE creature_movement SET WaitTime=1000 WHERE script_id = 1 AND id IN(select guid from creature where MovementType=3);
-- all change movegen ones need waittime
UPDATE creature_movement_template SET waittime=1000 WHERE script_id IN(1790601,1790602,1790603);

-- Table creature_movement entry 191185 point 15 has no delay and no delay despawn script. Adding delay to point.
UPDATE `creature_movement` SET `waittime` = 1000 WHERE `id` = 191185 AND `point` = 15;

