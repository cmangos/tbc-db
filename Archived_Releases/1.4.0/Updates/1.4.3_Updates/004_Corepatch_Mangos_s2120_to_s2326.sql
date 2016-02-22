ALTER TABLE db_version CHANGE COLUMN required_s2092_xxxxx_01_mangos_creature_template_classlevelstats required_s2128_12654_01_mangos_creature_template_power bit;

ALTER TABLE creature_template CHANGE ManaMultiplier PowerMultiplier float NOT NULL DEFAULT '1';
ALTER TABLE creature_template CHANGE RegenerateHealth RegenerateStats tinyint(3) unsigned NOT NULL DEFAULT '3';
UPDATE creature_template SET RegenerateStats=RegenerateStats|2;
ALTER TABLE db_version CHANGE COLUMN required_s2128_12654_01_mangos_creature_template_power required_s2138_12670_01_mangos_spell_template bit;

DELETE FROM spell_template WHERE id=21883;
INSERT INTO spell_template VALUES
(21883, 0x00000180, 101, 225,  76,  22,   0,   0, 178904, 0,     0,     'Summon Healed Celebrian Vine');
ALTER TABLE db_version CHANGE COLUMN required_s2138_12670_01_mangos_spell_template required_s2170_12757_01_mangos_spell_chain bit;

DELETE FROM spell_chain WHERE spell_id IN (12319, 12971, 12972, 12973, 12974, 16256, 16281, 16282, 16283, 16284);
INSERT INTO spell_chain VALUES
/* Flurry triggered, Warrior */
(12319,0,12319,1,0),
(12971,12319,12319,2,0),
(12972,12971,12319,3,0),
(12973,12972,12319,4,0),
(12974,12973,12319,5,0),
/* Flurry triggered, Shaman */
(16256,0,16256,1,0),
(16281,16256,16256,2,0),
(16282,16281,16256,3,0),
(16283,16282,16256,4,0),
(16284,16283,16256,5,0);
ALTER TABLE db_version CHANGE COLUMN required_s2170_12757_01_mangos_spell_chain required_s2171_12759_01_mangos_spell_chain bit;


DELETE FROM spell_chain WHERE spell_id IN (12319, 12971, 12972, 12973, 12974, 16256, 16281, 16282, 16283, 16284);ALTER TABLE db_version CHANGE COLUMN required_s2171_12759_01_mangos_spell_chain required_s2201_12748_01_mangos_spell_template bit;

DELETE FROM spell_template WHERE id IN (11756,19394);
INSERT INTO spell_template VALUES
(11756, 0x00000180, 101,   4,  76,  47,   0,   0, 144064, 0,     0,     'Summon Gordunni chest (COBALT)'),
(19394, 0x00000180, 101,   4,  76,  47,   0,   0, 177681, 0,     0,     'Summon Gordunni chest (JUNK)');
ALTER TABLE db_version CHANGE COLUMN required_s2201_12748_01_mangos_spell_template required_s2254_12816_01_mangos_command bit;

DELETE FROM command WHERE name='wp add' OR name='wp modify' OR name='wp show';
INSERT INTO command VALUES
('wp add',2,'Syntax: .wp add [Selected Creature or dbGuid] [pathId [wpOrigin] ]'),
('wp modify',2,'Syntax: .wp modify command [dbGuid, id] [value]\r\nwhere command must be one of: waittime  | scriptid | orientation | del | move\r\nIf no waypoint was selected, one can be chosen with dbGuid and id.\r\nThe commands have the following meaning:\r\n waittime (Set the time the npc will wait at a point (in ms))\r\n scriptid (Set the DB-Script that will be executed when the wp is reached)\r\n orientation (Set the orientation of this point) \r\n del (Remove the waypoint from the path)\r\n move (Move the wayoint to the current position of the player)'),
('wp show',2,'Syntax: .wp show command [dbGuid] [pathId [wpOrigin] ]\r\nwhere command can have one of the following values\r\non (to show all related wp)\r\nfirst (to see only first one)\r\nlast (to see only last one)\r\noff (to hide all related wp)\r\ninfo (to get more info about theses wp)\r\n\r\nFor using info you have to do first show on and than select a Visual-Waypoint and do the show info!\r\nwith pathId and wpOrigin you can specify which path to show (optional)');
ALTER TABLE db_version CHANGE COLUMN required_s2254_12816_01_mangos_command required_s2254_12816_02_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry BETWEEN 220 AND 252;
INSERT INTO mangos_string VALUES
(220,'Cannot find waypoint id %u for %s (in path %i, loaded from %s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(221,'Last Waypoint not found for %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(222,'%s has no path or path empty, path-id %i (loaded from %s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(223,'Creature (GUID: %u) No waypoints found - This is a MaNGOS db problem (single float).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(224,'Cannot access %s on map, maybe you are too far away from its spawn location',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(225,'Creature (GUID: %u) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(226,'You must select a visual waypoint.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(227,'No visual waypoints found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(228,'Could not create visual waypoint with creatureID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(229,'All visual waypoints removed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(230,'Could not add waypoint %u to %s (pathId %i stored by %s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(231,'No GUID provided.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(232,'No waypoint number provided.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(233,'Argument required for \'%s\'.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(234,'Added Waypoint %u to %s (PathId %i, path stored by %s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(235,'UNUSED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(236,'Waypoint changed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(237,'Waypoint %s modified.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(238,'WP export successfull.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(239,'No waypoints found inside the database.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(240,'File imported.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(241,'Waypoint removed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(242,'UNUSED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(243,'UNUSED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(244,'UNUSED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(245,'UNUSED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(246,'Waypoint %u for %s (from pathId %i, stored by %s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(247,' Waittime: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(248,' Orientation: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(249,' ScriptId: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(250,'ScriptID set to non-existing id %u, add it to DBScriptsEngine and reload the table.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(251,'UNUSED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(252,'AIScriptName: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_s2254_12816_02_mangos_mangos_string required_s2261_12821_01_mangos_command bit;

DELETE FROM command WHERE name='npc addmove';
ALTER TABLE db_version CHANGE COLUMN required_s2261_12821_01_mangos_command required_s2263_12823_01_mangos_command bit;

DELETE FROM command WHERE name='wp import';
ALTER TABLE db_version CHANGE COLUMN required_s2263_12823_01_mangos_command required_s2263_12823_02_mangos_creature_movement bit;

ALTER TABLE creature_movement DROP COLUMN wpguid;
ALTER TABLE db_version CHANGE COLUMN required_s2263_12823_02_mangos_creature_movement required_s2263_12823_03_mangos_creature_movement_template bit;

ALTER TABLE creature_movement_template DROP COLUMN wpguid;
ALTER TABLE db_version CHANGE COLUMN required_s2263_12823_03_mangos_creature_movement_template required_s2263_12823_04_mangos_creature bit;

-- Remove waypoints spawned with the old system
DELETE FROM creature WHERE id=1;
ALTER TABLE db_version CHANGE COLUMN required_s2263_12823_04_mangos_creature required_s2324_12916_01_mangos_battleground_template bit;

ALTER TABLE `battleground_template` ADD `StartMaxDist` float NOT NULL DEFAULT 0 AFTER `HordeStartO`;

UPDATE `battleground_template` SET `StartMaxDist`=100 WHERE `id`=1; -- AV
UPDATE `battleground_template` SET `StartMaxDist`=75 WHERE `id` IN (2,3,7); -- WS, AB, EY
ALTER TABLE db_version CHANGE COLUMN required_s2324_12916_01_mangos_battleground_template required_s2325_03_mangos bit;

ALTER TABLE db_version CHANGE COLUMN required_s2325_03_mangos required_s2326_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry=58;

INSERT INTO mangos_string VALUES
(58,'Using script library',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
