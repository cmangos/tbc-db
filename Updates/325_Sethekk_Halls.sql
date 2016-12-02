-- ==================================
-- Auchindoun: Sethekk Halls
-- ==================================

-- ========================================================
-- All Bosses and Heroic Bosses Are Immune To Crowd Control -- Daze, Horror, Shackle, Banish, Polymorph, Knockout, Freeze, Stun, Snare, Sleep, Silence, Pacify, Root, Fear, Distract, Disarm, Confused, Charm
-- ========================================================
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|76234719 WHERE entry IN (18472,20690,23035,18473,20706);


-- ===================
-- Some Misc NPC Fixes
-- ===================
-- Charming Totem (Time Lost Controller)
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16, AIName='TotemAI' WHERE entry IN (20343);
insert into `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`) values('20343','35120','0','0','0');
-- Sethekk Spirit
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16, SpeedWalk=0.285714, SpeedRun=1.11111 WHERE entry IN (18703);


-- =========================
-- Missing Equipment Entries
-- =========================


-- =====================
-- Fix Lakka Quest Event
-- =====================
-- Should Be Spawned In Heroic Also
UPDATE creature SET spawnMask=3 WHERE guid IN (132569);

-- Lakka Event Related Data
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('778','9','10097','0');
UPDATE gossip_menu_option SET action_menu_id=-1, action_script_id=7868, condition_id=778 WHERE menu_id IN (7868);
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000398','Thank you for freeing me, $N! I\'m going to make my way to Shattrath!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','Lakka - Sethekk Halls');

DELETE FROM dbscripts_on_gossip WHERE id IN (7868);
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES('7868','1','0','0','0','0','0','0','2000000398','0','0','0','0','0','0','0','Lakka - Say');
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES('7868','3','11','112782','0','0','0','0','0','0','0','0','0','0','0','0','Open Lakka Cage Door');
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES('7868','5','3','0','0','0','0','0','0','0','0','0','-153.937531','163.880600','0.010805','0.846670','Lakka - Waypoint 1');
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES('7868','9','8','18956','1','0','0','0','0','0','0','0','0','0','0','0','Lakka - Quest Credit');
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES('7868','9','3','0','0','0','0','0','0','0','0','0','-139.781143','164.047684','0.010805','6.203086','Lakka - Waypoint 2');
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES('7868','15','3','0','0','0','0','0','0','0','0','0','-124.421837','171.729553','0.010805','0.048706','Lakka - Waypoint 3');
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES('7868','18','3','0','0','0','0','0','0','0','0','0','-108.974945','173.300247','0.009469','6.141039','Lakka - Waypoint 4');
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES('7868','28','3','0','0','0','0','0','0','0','0','0','-80.349655','173.157730','0.009601','5.420829','Lakka - Waypoint 5');
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES('7868','38','18','0','0','0','0','0','0','0','0','0','0','0','0','0','Lakka - Despawn');

-- Lakka Cage Not Player Intractable
UPDATE gameobject_template SET flags=48 WHERE entry IN (183051);

-- Fix Lakka Respawn Time
UPDATE creature SET SpawnTimeSecs=86400 WHERE guid IN (132569);


-- =========================================
-- REMOVE NPC SPAWNS (WILL REUSE GUID)
-- =========================================
DELETE FROM creature WHERE guid=83246;
DELETE FROM creature_addon WHERE guid=83246;
DELETE FROM creature_movement WHERE id=83246;
DELETE FROM game_event_creature WHERE guid=83246;
DELETE FROM game_event_creature_data WHERE guid=83246;
DELETE FROM creature_battleground WHERE guid=83246;
DELETE FROM creature_linking WHERE guid=83246 OR master_guid=83246;
DELETE FROM creature WHERE guid=83249;
DELETE FROM creature_addon WHERE guid=83249;
DELETE FROM creature_movement WHERE id=83249;
DELETE FROM game_event_creature WHERE guid=83249;
DELETE FROM game_event_creature_data WHERE guid=83249;
DELETE FROM creature_battleground WHERE guid=83249;
DELETE FROM creature_linking WHERE guid=83249 OR master_guid=83249;
DELETE FROM creature WHERE guid=83250;
DELETE FROM creature_addon WHERE guid=83250;
DELETE FROM creature_movement WHERE id=83250;
DELETE FROM game_event_creature WHERE guid=83250;
DELETE FROM game_event_creature_data WHERE guid=83250;
DELETE FROM creature_battleground WHERE guid=83250;
DELETE FROM creature_linking WHERE guid=83250 OR master_guid=83250;
DELETE FROM creature WHERE guid=99691;
DELETE FROM creature_addon WHERE guid=99691;
DELETE FROM creature_movement WHERE id=99691;
DELETE FROM game_event_creature WHERE guid=99691;
DELETE FROM game_event_creature_data WHERE guid=99691;
DELETE FROM creature_battleground WHERE guid=99691;
DELETE FROM creature_linking WHERE guid=99691 OR master_guid=99691;
DELETE FROM creature WHERE guid=83253;
DELETE FROM creature_addon WHERE guid=83253;
DELETE FROM creature_movement WHERE id=83253;
DELETE FROM game_event_creature WHERE guid=83253;
DELETE FROM game_event_creature_data WHERE guid=83253;
DELETE FROM creature_battleground WHERE guid=83253;
DELETE FROM creature_linking WHERE guid=83253 OR master_guid=83253;
DELETE FROM creature WHERE guid=83252;
DELETE FROM creature_addon WHERE guid=83252;
DELETE FROM creature_movement WHERE id=83252;
DELETE FROM game_event_creature WHERE guid=83252;
DELETE FROM game_event_creature_data WHERE guid=83252;
DELETE FROM creature_battleground WHERE guid=83252;
DELETE FROM creature_linking WHERE guid=83252 OR master_guid=83252;
DELETE FROM creature WHERE guid=83251;
DELETE FROM creature_addon WHERE guid=83251;
DELETE FROM creature_movement WHERE id=83251;
DELETE FROM game_event_creature WHERE guid=83251;
DELETE FROM game_event_creature_data WHERE guid=83251;
DELETE FROM creature_battleground WHERE guid=83251;
DELETE FROM creature_linking WHERE guid=83251 OR master_guid=83251;
DELETE FROM creature WHERE guid=83254;
DELETE FROM creature_addon WHERE guid=83254;
DELETE FROM creature_movement WHERE id=83254;
DELETE FROM game_event_creature WHERE guid=83254;
DELETE FROM game_event_creature_data WHERE guid=83254;
DELETE FROM creature_battleground WHERE guid=83254;
DELETE FROM creature_linking WHERE guid=83254 OR master_guid=83254;
DELETE FROM creature WHERE guid=83255;
DELETE FROM creature_addon WHERE guid=83255;
DELETE FROM creature_movement WHERE id=83255;
DELETE FROM game_event_creature WHERE guid=83255;
DELETE FROM game_event_creature_data WHERE guid=83255;
DELETE FROM creature_battleground WHERE guid=83255;
DELETE FROM creature_linking WHERE guid=83255 OR master_guid=83255;
DELETE FROM creature WHERE guid=83256;
DELETE FROM creature_addon WHERE guid=83256;
DELETE FROM creature_movement WHERE id=83256;
DELETE FROM game_event_creature WHERE guid=83256;
DELETE FROM game_event_creature_data WHERE guid=83256;
DELETE FROM creature_battleground WHERE guid=83256;
DELETE FROM creature_linking WHERE guid=83256 OR master_guid=83256;
DELETE FROM creature WHERE guid=83257;
DELETE FROM creature_addon WHERE guid=83257;
DELETE FROM creature_movement WHERE id=83257;
DELETE FROM game_event_creature WHERE guid=83257;
DELETE FROM game_event_creature_data WHERE guid=83257;
DELETE FROM creature_battleground WHERE guid=83257;
DELETE FROM creature_linking WHERE guid=83257 OR master_guid=83257;
DELETE FROM creature WHERE guid=83258;
DELETE FROM creature_addon WHERE guid=83258;
DELETE FROM creature_movement WHERE id=83258;
DELETE FROM game_event_creature WHERE guid=83258;
DELETE FROM game_event_creature_data WHERE guid=83258;
DELETE FROM creature_battleground WHERE guid=83258;
DELETE FROM creature_linking WHERE guid=83258 OR master_guid=83258;
DELETE FROM creature WHERE guid=83259;
DELETE FROM creature_addon WHERE guid=83259;
DELETE FROM creature_movement WHERE id=83259;
DELETE FROM game_event_creature WHERE guid=83259;
DELETE FROM game_event_creature_data WHERE guid=83259;
DELETE FROM creature_battleground WHERE guid=83259;
DELETE FROM creature_linking WHERE guid=83259 OR master_guid=83259;
DELETE FROM creature WHERE guid=14543;
DELETE FROM creature_addon WHERE guid=14543;
DELETE FROM creature_movement WHERE id=14543;
DELETE FROM game_event_creature WHERE guid=14543;
DELETE FROM game_event_creature_data WHERE guid=14543;
DELETE FROM creature_battleground WHERE guid=14543;
DELETE FROM creature_linking WHERE guid=14543 OR master_guid=14543;
DELETE FROM creature WHERE guid=83264;
DELETE FROM creature_addon WHERE guid=83264;
DELETE FROM creature_movement WHERE id=83264;
DELETE FROM game_event_creature WHERE guid=83264;
DELETE FROM game_event_creature_data WHERE guid=83264;
DELETE FROM creature_battleground WHERE guid=83264;
DELETE FROM creature_linking WHERE guid=83264 OR master_guid=83264;
DELETE FROM creature WHERE guid=83265;
DELETE FROM creature_addon WHERE guid=83265;
DELETE FROM creature_movement WHERE id=83265;
DELETE FROM game_event_creature WHERE guid=83265;
DELETE FROM game_event_creature_data WHERE guid=83265;
DELETE FROM creature_battleground WHERE guid=83265;
DELETE FROM creature_linking WHERE guid=83265 OR master_guid=83265;
DELETE FROM creature WHERE guid=83266;
DELETE FROM creature_addon WHERE guid=83266;
DELETE FROM creature_movement WHERE id=83266;
DELETE FROM game_event_creature WHERE guid=83266;
DELETE FROM game_event_creature_data WHERE guid=83266;
DELETE FROM creature_battleground WHERE guid=83266;
DELETE FROM creature_linking WHERE guid=83266 OR master_guid=83266;
DELETE FROM creature WHERE guid=83262;
DELETE FROM creature_addon WHERE guid=83262;
DELETE FROM creature_movement WHERE id=83262;
DELETE FROM game_event_creature WHERE guid=83262;
DELETE FROM game_event_creature_data WHERE guid=83262;
DELETE FROM creature_battleground WHERE guid=83262;
DELETE FROM creature_linking WHERE guid=83262 OR master_guid=83262;
DELETE FROM creature WHERE guid=83261;
DELETE FROM creature_addon WHERE guid=83261;
DELETE FROM creature_movement WHERE id=83261;
DELETE FROM game_event_creature WHERE guid=83261;
DELETE FROM game_event_creature_data WHERE guid=83261;
DELETE FROM creature_battleground WHERE guid=83261;
DELETE FROM creature_linking WHERE guid=83261 OR master_guid=83261;
DELETE FROM creature WHERE guid=34061;
DELETE FROM creature_addon WHERE guid=34061;
DELETE FROM creature_movement WHERE id=34061;
DELETE FROM game_event_creature WHERE guid=34061;
DELETE FROM game_event_creature_data WHERE guid=34061;
DELETE FROM creature_battleground WHERE guid=34061;
DELETE FROM creature_linking WHERE guid=34061 OR master_guid=34061;
DELETE FROM creature WHERE guid=83260;
DELETE FROM creature_addon WHERE guid=83260;
DELETE FROM creature_movement WHERE id=83260;
DELETE FROM game_event_creature WHERE guid=83260;
DELETE FROM game_event_creature_data WHERE guid=83260;
DELETE FROM creature_battleground WHERE guid=83260;
DELETE FROM creature_linking WHERE guid=83260 OR master_guid=83260;
DELETE FROM creature WHERE guid=83263;
DELETE FROM creature_addon WHERE guid=83263;
DELETE FROM creature_movement WHERE id=83263;
DELETE FROM game_event_creature WHERE guid=83263;
DELETE FROM game_event_creature_data WHERE guid=83263;
DELETE FROM creature_battleground WHERE guid=83263;
DELETE FROM creature_linking WHERE guid=83263 OR master_guid=83263;
DELETE FROM creature WHERE guid=83268;
DELETE FROM creature_addon WHERE guid=83268;
DELETE FROM creature_movement WHERE id=83268;
DELETE FROM game_event_creature WHERE guid=83268;
DELETE FROM game_event_creature_data WHERE guid=83268;
DELETE FROM creature_battleground WHERE guid=83268;
DELETE FROM creature_linking WHERE guid=83268 OR master_guid=83268;
DELETE FROM creature WHERE guid=83269;
DELETE FROM creature_addon WHERE guid=83269;
DELETE FROM creature_movement WHERE id=83269;
DELETE FROM game_event_creature WHERE guid=83269;
DELETE FROM game_event_creature_data WHERE guid=83269;
DELETE FROM creature_battleground WHERE guid=83269;
DELETE FROM creature_linking WHERE guid=83269 OR master_guid=83269;
DELETE FROM creature WHERE guid=36693;
DELETE FROM creature_addon WHERE guid=36693;
DELETE FROM creature_movement WHERE id=36693;
DELETE FROM game_event_creature WHERE guid=36693;
DELETE FROM game_event_creature_data WHERE guid=36693;
DELETE FROM creature_battleground WHERE guid=36693;
DELETE FROM creature_linking WHERE guid=36693 OR master_guid=36693;
DELETE FROM creature WHERE guid=83267;
DELETE FROM creature_addon WHERE guid=83267;
DELETE FROM creature_movement WHERE id=83267;
DELETE FROM game_event_creature WHERE guid=83267;
DELETE FROM game_event_creature_data WHERE guid=83267;
DELETE FROM creature_battleground WHERE guid=83267;
DELETE FROM creature_linking WHERE guid=83267 OR master_guid=83267;
DELETE FROM creature WHERE guid=83279;
DELETE FROM creature_addon WHERE guid=83279;
DELETE FROM creature_movement WHERE id=83279;
DELETE FROM game_event_creature WHERE guid=83279;
DELETE FROM game_event_creature_data WHERE guid=83279;
DELETE FROM creature_battleground WHERE guid=83279;
DELETE FROM creature_linking WHERE guid=83279 OR master_guid=83279;
DELETE FROM creature WHERE guid=38931;
DELETE FROM creature_addon WHERE guid=38931;
DELETE FROM creature_movement WHERE id=38931;
DELETE FROM game_event_creature WHERE guid=38931;
DELETE FROM game_event_creature_data WHERE guid=38931;
DELETE FROM creature_battleground WHERE guid=38931;
DELETE FROM creature_linking WHERE guid=38931 OR master_guid=38931;
DELETE FROM creature WHERE guid=38664;
DELETE FROM creature_addon WHERE guid=38664;
DELETE FROM creature_movement WHERE id=38664;
DELETE FROM game_event_creature WHERE guid=38664;
DELETE FROM game_event_creature_data WHERE guid=38664;
DELETE FROM creature_battleground WHERE guid=38664;
DELETE FROM creature_linking WHERE guid=38664 OR master_guid=38664;
DELETE FROM creature WHERE guid=83278;
DELETE FROM creature_addon WHERE guid=83278;
DELETE FROM creature_movement WHERE id=83278;
DELETE FROM game_event_creature WHERE guid=83278;
DELETE FROM game_event_creature_data WHERE guid=83278;
DELETE FROM creature_battleground WHERE guid=83278;
DELETE FROM creature_linking WHERE guid=83278 OR master_guid=83278;
DELETE FROM creature WHERE guid=83282;
DELETE FROM creature_addon WHERE guid=83282;
DELETE FROM creature_movement WHERE id=83282;
DELETE FROM game_event_creature WHERE guid=83282;
DELETE FROM game_event_creature_data WHERE guid=83282;
DELETE FROM creature_battleground WHERE guid=83282;
DELETE FROM creature_linking WHERE guid=83282 OR master_guid=83282;
DELETE FROM creature WHERE guid=83281;
DELETE FROM creature_addon WHERE guid=83281;
DELETE FROM creature_movement WHERE id=83281;
DELETE FROM game_event_creature WHERE guid=83281;
DELETE FROM game_event_creature_data WHERE guid=83281;
DELETE FROM creature_battleground WHERE guid=83281;
DELETE FROM creature_linking WHERE guid=83281 OR master_guid=83281;
DELETE FROM creature WHERE guid=83280;
DELETE FROM creature_addon WHERE guid=83280;
DELETE FROM creature_movement WHERE id=83280;
DELETE FROM game_event_creature WHERE guid=83280;
DELETE FROM game_event_creature_data WHERE guid=83280;
DELETE FROM creature_battleground WHERE guid=83280;
DELETE FROM creature_linking WHERE guid=83280 OR master_guid=83280;


-- =========================================
-- Dungeon Aggro Linking and Missing Pathing
-- =========================================
-- Front Entry Sethekk Guards
UPDATE creature SET position_x = '39.657516', position_y = '23.291351', position_z = '0.006490', orientation = '4.754020', MovementType=2 WHERE guid = '11747';
DELETE FROM creature_movement WHERE id IN (11747);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('11747','1','38.6102','5.71044','0.008262','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('11747','2','30.0571','5.55771','0.006819','10000','3','0','0','0','0','0','0','0','3.020643','0','0');

insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83246','18323','556','3','0','0','43.6146','22.894','0.00647427','4.70925','86400','0','0','18971','0','0','2');
DELETE FROM creature_movement WHERE id IN (83246);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83246','1','37.1708','-5.36963','0.006045','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83246','2','31.5586','-5.30272','0.005889','10000','3','0','0','0','0','0','0','0','3.020643','0','0');


-- Pathing Sethekk Initiate with Darkhawk
UPDATE creature SET id=18318, position_x = '43.208076', position_y = '44.575550', position_z = '0.006490', orientation = '4.740669', curhealth=18345, curmana=0, MovementType=2 WHERE guid = '83248';
UPDATE creature SET id=19429, position_x = '45.795933', position_y = '44.169434', position_z = '0.006313', orientation = '4.618149' WHERE guid = '83247';

DELETE FROM creature_linking WHERE master_guid IN (83248);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83247','83248','515');

DELETE FROM creature_movement WHERE id IN (83248);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83248','1','46.203','39.4853','0.006334','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83248','2','46.048','23.3382','0.006334','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83248','3','44.3729','6.70198','0.006334','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83248','4','39.361','0.788004','0.006334','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83248','5','41.0862','24.0322','0.007492','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83248','6','40.6359','42.0957','0.007492','0','0','0','0','0','0','0','0','0','0','0','0');


-- 2 Sethekk Guards
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83249','18323','556','3','0','0','40.052','54.2018','0.00748827','4.7281','86400','0','0','18971','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83250','18323','556','3','0','0','47.0133','52.3834','0.00748827','4.01417','86400','0','0','18345','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (83249);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83250','83249','3');


-- Group of 3 NPC First Room
DELETE FROM creature_linking WHERE master_guid IN (99692);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('14634','99692','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('34057','99692','3');

UPDATE creature SET MovementType=2 WHERE guid IN (99692);
DELETE FROM creature_movement WHERE id IN (99692);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99692','1','58.8213','88.4199','0.140756','0','0','0','0','0','0','0','0','0','100','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99692','2','63.8854','82.8381','0.092106','0','0','0','0','0','0','0','0','0','100','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99692','3','60.5229','78.0749','0.060807','0','0','0','0','0','0','0','0','0','100','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99692','4','56.6981','73.3763','0.01604','0','0','0','0','0','0','0','0','0','100','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99692','5','50.4783','79.2079','-0.506371','0','0','0','0','0','0','0','0','0','100','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99692','6','55.484','86.6857','0.151828','0','0','0','0','0','0','0','0','0','100','0','0');


-- 2 Sethekk Guards Right Side First Room
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('99691','18323','556','3','0','0','90.5185','96.5259','0.00799179','3.17301','86400','0','0','18345','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83253','18323','556','3','0','0','90.8233','104.327','0.103572','3.16594','86400','0','0','18971','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (99691);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83253','99691','3');


-- Group of 3 NPC First Room
DELETE FROM creature_linking WHERE master_guid IN (34056);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('14579','34056','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('99669','34056','3');

UPDATE creature SET MovementType=2 WHERE guid IN (99669);
DELETE FROM creature_movement WHERE id IN (99669);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99669','1','76.0246','121.401','0.305402','0','0','0','0','0','0','0','0','0','100','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99669','2','83.3333','115.886','0.361815','0','0','0','0','0','0','0','0','0','100','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99669','3','87.12','110.594','0.266584','0','0','0','0','0','0','0','0','0','100','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99669','4','84.2209','107.545','0.198444','0','0','0','0','0','0','0','0','0','100','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99669','5','80.4848','107.663','0.211609','0','0','0','0','0','0','0','0','0','100','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99669','6','72.4484','114.981','-0.037887','0','0','0','0','0','0','0','0','0','100','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99669','7','71.8636','121.481','-0.056928','0','0','0','0','0','0','0','0','0','100','0','0');


-- 2 Sethekk Halls On Back Wall
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83252','18323','556','3','0','0','47.9049','130.693','0.0829321','5.09724','86400','0','0','18971','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83251','18323','556','3','0','0','41.0165','130.745','0.08101','4.77836','86400','0','0','18971','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (83252);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83251','83252','3');


-- Group of NPC Center of First Room
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107736','18318','556','3','0','0','38.2351','99.2026','0.150803','6.1159','86400','0','0','18345','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (107736);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('34059','107736','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('14638','107736','3');


-- Group of 3 NPC Left Side First Room
UPDATE creature SET position_x = '28.345066', position_y = '76.991585', position_z = '0.181705', orientation = '2.904405' WHERE guid = '14551';

DELETE FROM creature_linking WHERE master_guid IN (14551);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('14558','14551','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('34051','14551','3');


-- Group of 3 NPC Far Left Side
DELETE FROM creature_linking WHERE master_guid IN (99668);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('14561','99668','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('34052','99668','3');

UPDATE creature SET MovementType=2 WHERE guid IN (99668);
DELETE FROM creature_movement WHERE id IN (99668);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99668','1','15.511','109.227','0.423335','0','0','0','0','0','0','0','0','0','100','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99668','2','13.0079','106.943','0.423335','0','0','0','0','0','0','0','0','0','100','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99668','3','6.86698','104.401','0.250887','0','0','0','0','0','0','0','0','0','100','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99668','4','7.67441','99.6876','0.266578','0','0','0','0','0','0','0','0','0','100','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99668','5','14.2144','100.084','0.422042','0','0','0','0','0','0','0','0','0','100','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99668','6','21.4908','104.487','0.379002','0','0','0','0','0','0','0','0','0','100','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99668','7','21.0058','109.258','0.024757','0','0','0','0','0','0','0','0','0','100','0','0');


-- 2 Sethekk Guards on Left Side Door
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83254','18323','556','3','0','0','-2.37456','97.6468','0.00848962','6.24628','86400','0','0','18971','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83255','18323','556','3','0','0','-3.03972','103.079','0.00848962','6.26277','86400','0','0','18345','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (83254);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83255','83254','3');


-- Group of 3 NPC in Second Room
UPDATE creature SET position_x = '-60.303066', position_y = '115.056656', position_z = '0.007218', orientation = '5.257458' WHERE guid = '34060';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83256','18328','556','3','0','0','-52.0194','111.074','0.00721832','3.56964','86400','0','0','13282','34410','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83257','18318','556','3','0','0','-57.3641','107.647','0.00721832','1.17967','86400','0','0','18345','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (34060);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83256','34060','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83257','34060','3');


-- 2 Guards Right Side Of Second Room
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83258','18323','556','3','0','0','-66.6027','131.012','0.00580438','4.69904','86400','0','0','18345','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83259','18323','556','3','0','0','-75.0627','131.022','0.00580438','4.79329','86400','0','0','18971','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (83258);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83259','83258','3');


-- Avian Darkhawk Pathing in Center of Second Room
UPDATE creature SET MovementType=2 WHERE guid IN (99675);
DELETE FROM creature_movement WHERE id IN (99675);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99675','1','-77.0533','109.209','0.007215','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99675','2','-81.4142','103.175','0.007215','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99675','3','-80.4612','96.3246','0.007215','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99675','4','-74.5093','90.5569','0.007215','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99675','5','-68.4521','91.0337','0.007215','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99675','6','-61.7857','95.1055','0.016225','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99675','7','-59.8589','101.718','0.007462','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99675','8','-63.3626','108.92','0.007462','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99675','9','-70.3113','111.568','0.007462','0','0','0','0','0','0','0','0','0','0','0','0');


-- NPC in Back of Second Room
UPDATE creature SET position_x = '-82.226730', position_y = '119.218163', position_z = '0.005804', orientation = '3.928563' WHERE guid = '99670'; -- Darkhawk
UPDATE creature SET position_x = '-80.621437', position_y = '108.614182', position_z = '0.007210', orientation = '2.409613' WHERE guid = '35868';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('14543','18328','556','3','0','0','-83.2097','114.335','0.00721343','5.22212','86400','0','0','12844','33745','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83264','18328','556','3','0','0','-86.0627','108.256','0.00721343','0.541152','86400','0','0','12844','33745','0','0');

DELETE FROM creature_linking WHERE master_guid IN (99670);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('35868','99670','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('14543','99670','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83264','99670','3');

UPDATE creature SET MovementType=2 WHERE guid IN (99670);
DELETE FROM creature_movement WHERE id IN (99670);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99670','1','-86.2999','115.969','0.00721','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99670','2','-89.1276','109.504','0.006205','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99670','3','-89.202','103.305','0.005781','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99670','4','-82.4682','100.243','0.005781','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99670','5','-77.2148','105.371','0.005781','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99670','6','-75.9542','113.523','0.005781','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99670','7','-80.6146','120.269','0.005781','0','0','0','0','0','0','0','0','0','0','0','0');


-- Group of NPC Left Side Second Room
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83265','18327','556','3','0','0','-76.1171','84.2598','0.00720769','0.131176','86400','0','0','12844','33745','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83266','18328','556','3','0','0','-76.1437','89.6367','0.00720769','4.91661','86400','0','0','13282','34410','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83262','18318','556','3','0','0','-69.9291','84.0796','0.00720328','2.6578','86400','0','0','18345','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (83265);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83266','83265','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83262','83265','3');


-- Pathing Avian Darkhawk in Hall Before First Boss
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83261','19429','556','3','0','0','-77.0939','173.086','0.00963326','3.08271','86400','0','0','18978','0','0','0');

UPDATE creature SET MovementType=2 WHERE guid IN (83261);
DELETE FROM creature_movement WHERE id IN (83261);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83261','1','-92.8836','173.643','0.009633','0','5','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83261','2','-98.7081','169.269','0.009633','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83261','3','-102.878','173.664','0.009633','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83261','4','-98.992','177.58','0.009633','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83261','5','-92.7725','173.357','0.009633','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83261','6','-80.5309','172.984','0.009633','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83261','7','-72.5057','162.438','0.010699','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83261','8','-71.0172','148.843','0.007691','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83261','9','-67.3467','143.209','0.007691','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83261','10','-70.5109','138.34','0.007691','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83261','11','-75.2119','143.084','0.007691','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83261','12','-70.6499','148.623','0.007691','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83261','13','-72.1855','162.397','0.007889','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83261','14','-80.4118','173.032','0.010443','0','0','0','0','0','0','0','0','0','0','0','0');

-- Group of 3 NPC in Hall Before First Boss
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('34061','18318','556','3','0','0','-65.3326','166.729','0.00840977','2.47795','86400','0','0','18345','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83260','18328','556','3','0','0','-74.6281','173.854','0.00891793','5.78997','86400','0','0','12844','33745','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83263','18327','556','3','0','0','-68.2389','174.427','0.00939019','4.82864','86400','0','0','12844','33745','0','0');

DELETE FROM creature_linking WHERE master_guid IN (34061);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83260','34061','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83263','34061','3');


-- 2 Guards Before First Boss
UPDATE creature SET position_x = '-102.717079', position_y = '170.086044', position_z = '0.010068', orientation = '6.256485' WHERE guid = '14544';
UPDATE creature SET position_x = '-102.658409', position_y = '177.944199', position_z = '0.010068', orientation = '0.024350' WHERE guid = '14547';

DELETE FROM creature_addon WHERE guid IN (14544,14547);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('14544','0','0','1','0','333','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('14547','0','0','1','0','333','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (14544);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('14547','14544','3');


-- 2 Ravenguards After First Boss
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83268','18322','556','3','0','0','-204.519','176.99','0.0116269','0.035346','86400','0','0','18971','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83269','18322','556','3','0','0','-205.563','168.766','0.0116269','6.17873','86400','0','0','18971','0','0','0');

DELETE FROM creature_addon WHERE guid IN (83268,83269);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('83268','0','0','1','0','333','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('83269','0','0','1','0','333','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (83268);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83269','83268','3');


-- Cobalt Serpent Pathing Bottom of Stairs
UPDATE creature SET MovementType=2 WHERE guid IN (99671);
DELETE FROM creature_movement WHERE id IN (99671);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99671','1','-257.998','178.855','0.037037','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99671','2','-244.678','197.054','0.0634','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99671','3','-257.793','178.745','0.037671','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99671','4','-238.788','172.517','0.008656','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99671','5','-226.582','172.362','0.041895','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99671','6','-229.728','148.749','0.060948','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99671','7','-226.218','172.15','0.041709','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99671','8','-238.586','172.315','-0.003053','0','0','0','0','0','0','0','0','0','0','0','0');


-- Misc Group of 4 NPC at Bottom of Stairs
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('36693','18319','556','3','0','0','-241.377','156.957','0.0613401','2.23368','86400','0','0','12844','33745','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83267','18327','556','3','0','0','-246.783','160.008','0.0692523','5.95804','86400','0','0','12844','33745','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83279','18328','556','3','0','0','-243.316','162.996','0.0650751','4.99436','86400','0','0','12844','33745','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('38931','18318','556','3','0','0','-237.177','160.469','-0.193011','0.918937','86400','0','0','18345','0','0','2');

DELETE FROM creature_linking WHERE master_guid IN (36693);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83267','36693','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83279','36693','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('38931','36693','3');

DELETE FROM creature_movement WHERE id IN (38931);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('38931','1','-236.171','163.263','-0.243667','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('38931','2','-241.777','168.288','0.040596','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('38931','3','-235.875','163.151','-0.258676','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('38931','4','-237.176','159.286','-0.193438','0','0','0','0','0','0','0','0','0','0','0','0');


-- Group of Avian Rippers At Bottom Of Stairs
UPDATE creature SET position_x = '-234.474609', position_y = '192.294754', position_z = '3.389620', orientation = '0.149247' WHERE guid = '99656';
UPDATE creature SET position_x = '-230.575531', position_y = '183.377869', position_z = '2.295305', orientation = '0.424137' WHERE guid = '99658';
UPDATE creature SET position_x = '-223.039581', position_y = '185.992722', position_z = '3.873250', orientation = '1.808794' WHERE guid = '99655';
UPDATE creature SET position_x = '-231.389877', position_y = '198.800903', position_z = '3.965144', orientation = '3.373308' WHERE guid = '99657';
UPDATE creature SET position_x = '-225.472229', position_y = '194.349289', position_z = '6.541734', orientation = '0.582789' WHERE guid = '99654';

DELETE FROM creature_linking WHERE master_guid IN (99656);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('99658','99656','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('99655','99656','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('99657','99656','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('99654','99656','3');


-- Misc Group of 4 NPC at Bottom of Stairs
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('38664','18327','556','3','0','0','-259.46','192.472','0.0380371','4.47913','86400','0','0','12844','33745','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83278','18327','556','3','0','0','-265.526','190.422','0.0339229','5.56219','86400','0','0','12844','33745','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83282','18328','556','3','0','0','-268.529','185.028','0.0339359','0.304736','86400','0','0','13282','34410','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83281','18318','556','3','0','0','-255.693','189.136','0.0414217','4.77051','86400','0','0','18345','0','0','2');

DELETE FROM creature_linking WHERE master_guid IN (83281);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('38664','83281','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83278','83281','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83282','83281','3');

DELETE FROM creature_movement WHERE id IN (83281);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83281','1','-255.693','189.136','0.041422','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83281','2','-260.459','181.767','0.034236','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83281','3','-267.75','181.15','0.034236','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83281','4','-259.939','181.594','0.034236','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83281','5','-255.213','189.129','0.041745','0','0','0','0','0','0','0','0','0','0','0','0');


-- More Removed NPC
DELETE FROM creature WHERE guid=83283;
DELETE FROM creature_addon WHERE guid=83283;
DELETE FROM creature_movement WHERE id=83283;
DELETE FROM game_event_creature WHERE guid=83283;
DELETE FROM game_event_creature_data WHERE guid=83283;
DELETE FROM creature_battleground WHERE guid=83283;
DELETE FROM creature_linking WHERE guid=83283 OR master_guid=83283;
DELETE FROM creature WHERE guid=99672;
DELETE FROM creature_addon WHERE guid=99672;
DELETE FROM creature_movement WHERE id=99672;
DELETE FROM game_event_creature WHERE guid=99672;
DELETE FROM game_event_creature_data WHERE guid=99672;
DELETE FROM creature_battleground WHERE guid=99672;
DELETE FROM creature_linking WHERE guid=99672 OR master_guid=99672;
DELETE FROM creature WHERE guid=12161;
DELETE FROM creature_addon WHERE guid=12161;
DELETE FROM creature_movement WHERE id=12161;
DELETE FROM game_event_creature WHERE guid=12161;
DELETE FROM game_event_creature_data WHERE guid=12161;
DELETE FROM creature_battleground WHERE guid=12161;
DELETE FROM creature_linking WHERE guid=12161 OR master_guid=12161;
DELETE FROM creature WHERE guid=12163;
DELETE FROM creature_addon WHERE guid=12163;
DELETE FROM creature_movement WHERE id=12163;
DELETE FROM game_event_creature WHERE guid=12163;
DELETE FROM game_event_creature_data WHERE guid=12163;
DELETE FROM creature_battleground WHERE guid=12163;
DELETE FROM creature_linking WHERE guid=12163 OR master_guid=12163;
DELETE FROM creature WHERE guid=12162;
DELETE FROM creature_addon WHERE guid=12162;
DELETE FROM creature_movement WHERE id=12162;
DELETE FROM game_event_creature WHERE guid=12162;
DELETE FROM game_event_creature_data WHERE guid=12162;
DELETE FROM creature_battleground WHERE guid=12162;
DELETE FROM creature_linking WHERE guid=12162 OR master_guid=12162;
DELETE FROM creature WHERE guid=83284;
DELETE FROM creature_addon WHERE guid=83284;
DELETE FROM creature_movement WHERE id=83284;
DELETE FROM game_event_creature WHERE guid=83284;
DELETE FROM game_event_creature_data WHERE guid=83284;
DELETE FROM creature_battleground WHERE guid=83284;
DELETE FROM creature_linking WHERE guid=83284 OR master_guid=83284;



-- Cobalt Serpent on Stairs
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83280','19428','556','3','0','0','-272.322','149.851','13.5615','1.54409','86400','0','0','31398','14955','0','2');

DELETE FROM creature_movement WHERE id IN (83280);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83280','1','-272.265','170.857','0.056658','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83280','2','-271.679','150.533','13.5648','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83280','3','-265.851','143.108','13.5737','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83280','4','-258.416','141.533','14.4117','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83280','5','-241.133','141.023','26.7631','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83280','6','-216.932','142.151','26.7682','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83280','7','-210.577','151.641','26.8315','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83280','8','-213.123','202.468','26.7228','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83280','9','-220.511','205.44','26.723','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83280','10','-242.141','205.113','26.8715','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83280','11','-281.207','204.965','26.7233','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83280','12','-254.643','204.992','26.7449','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83280','13','-220.118','205.293','26.723','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83280','14','-212.276','202.117','26.7227','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83280','15','-210.997','177.681','26.9007','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83280','16','-210.277','151.407','26.8235','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83280','17','-216.99','141.631','26.7671','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83280','18','-240.872','141.167','26.7642','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83280','19','-258.631','141.013','14.2459','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83280','20','-266.747','143.178','13.5716','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83280','21','-271.421','150.526','13.5665','0','0','0','0','0','0','0','0','0','0','0','0');


-- 2 Guards Top of Stairs
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83283','18322','556','3','0','0','-239.009','211.679','26.8284','4.52704','86400','0','0','18971','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('99672','18322','556','3','0','0','-246.056','211.557','26.7655','4.59694','86400','0','0','18971','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (83283);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('99672','83283','3');


-- Group of Avian Rippers
DELETE FROM creature_linking WHERE master_guid IN (99661);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('45186','99661','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('99660','99661','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('99662','99661','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('99663','99661','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('99664','99661','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('46702','99661','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('46674','99661','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('99665','99661','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('99659','99661','3');


-- Group of NPC in Upstairs Room 1
UPDATE creature SET position_x = '-233.518677', position_y = '324.039459', position_z = '27.001568', orientation = '2.935822', MovementType=2 WHERE guid = '83285';
UPDATE creature SET position_x = '-241.061432', position_y = '335.813568', position_z = '27.165026', orientation = '5.404326' WHERE guid = '83286';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('12161','18325','556','3','0','0','-234.855','335.618','27.2972','4.16105','86400','0','0','13725','35155','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('12163','18325','556','3','0','0','-230.971','330.685','27.3506','3.82097','86400','0','0','13725','35155','0','0');

DELETE FROM creature_movement WHERE id IN (83285);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83285','1','-244.343','329.097','27.018','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83285','2','-234.267','324.206','26.9965','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83285','3','-225.315','324.967','27.1854','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83285','4','-233.727','323.955','26.9942','0','0','0','0','0','0','0','0','0','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (83285);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83286','83285','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('12161','83285','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('12163','83285','3');


-- Avian Warhawk Upstairs Room 1
UPDATE creature SET position_x = '-215.155289', position_y = '342.261841', position_z = '26.759258', orientation = '4.898537', MovementType=2 WHERE guid = '83287';

DELETE FROM creature_movement WHERE id IN (83287);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83287','1','-211.275','331.613','26.6495','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83287','2','-215.402','342.433','26.7657','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83287','3','-199.718','323.537','26.4926','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83287','4','-211.222','331.704','26.6486','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83287','5','-214.794','336.408','26.7295','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83287','6','-215.402','342.433','26.7657','0','0','0','0','0','0','0','0','0','0','0','0');


-- Group of 5 Birds Upstairs Room 1
UPDATE creature SET position_x = '-200.571365', position_y = '304.581909', position_z = '31.893444', orientation = '5.059550' WHERE guid = '47273';
UPDATE creature SET position_x = '-205.143036', position_y = '307.153198', position_z = '33.508354', orientation = '6.248643' WHERE guid = '47274';
UPDATE creature SET position_x = '-205.215637', position_y = '317.266052', position_z = '28.875376', orientation = '6.240790' WHERE guid = '46987';

DELETE FROM creature_linking WHERE master_guid IN (47273);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('47274','47273','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('46987','47273','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('47275','47273','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('47272','47273','3');


-- Group of 5 Birds Upstairs Room 1
UPDATE creature SET position_x = '-190.051636', position_y = '340.944275', position_z = '26.292501', orientation = '1.622647' WHERE guid = '99667';
UPDATE creature SET position_x = '-181.593475', position_y = '339.488861', position_z = '26.925211', orientation = '5.695721' WHERE guid = '47278';

DELETE FROM creature_linking WHERE master_guid IN (99667);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('47278','99667','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('47930','99667','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('99666','99667','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('47277','99667','3');


-- Group of 3 NPC Middle of Upstairs Room 1
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('12162','18325','556','3','0','0','-202.212','343.274','26.6361','3.26255','86400','0','0','13725','35155','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83284','18325','556','3','0','0','-204.866','335.853','26.6361','2.17634','86400','0','0','13282','34410','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107737','18319','556','3','0','0','-211.249','344.734','26.7096','4.64092','86400','0','0','12844','33745','0','0');

DELETE FROM creature_linking WHERE master_guid IN (107737);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('12162','107737','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83284','107737','3');


-- Cobalt Serpant Upstairs Room 1
UPDATE creature SET MovementType=2 WHERE guid IN (99673);
DELETE FROM creature_movement WHERE id IN (99673);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99673','1','-185.632','299.557','26.7009','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99673','2','-196.197','319.274','26.626','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99673','3','-206.85','330.404','26.6615','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99673','4','-219.4','329.957','26.9936','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99673','5','-231.037','317.393','26.7381','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99673','6','-244.697','300.62','26.7305','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99673','7','-230.639','317.369','26.7438','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99673','8','-218.877','330.067','26.9665','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99673','9','-205.946','329.989','26.6652','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99673','10','-195.921','318.962','26.6381','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99673','11','-185.163','299.494','26.6998','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99673','12','-171.59','299.439','26.7089','0','0','0','0','0','0','0','0','0','0','0','0');


-- Group of NPC End of Upstairs Room 1
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107738','18319','556','3','0','0','-171.066','283.28','26.622','2.29729','86400','0','0','12844','33745','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107739','18326','556','3','0','0','-179.296','277.913','26.6342','1.49697','86400','0','0','15686','15400','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107740','18325','556','3','0','0','-185.794','282.315','26.5514','0.0856124','86400','0','0','13282','34410','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107741','21904','556','3','0','0','-167.916','288.879','26.7049','3.21935','86400','0','0','19626','0','0','2');

DELETE FROM creature_linking WHERE master_guid IN (107741);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('107738','107741','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('107739','107741','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('107740','107741','3');

DELETE FROM creature_movement WHERE id IN (107741);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107741','1','-189.365','287.014','26.5427','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107741','2','-167.246','288.853','26.721','0','0','0','0','0','0','0','0','0','0','0','0');


-- 2 Raven Guards End of Upstairs Room 1
DELETE FROM creature WHERE guid=83289;
DELETE FROM creature_addon WHERE guid=83289;
DELETE FROM creature_movement WHERE id=83289;
DELETE FROM game_event_creature WHERE guid=83289;
DELETE FROM game_event_creature_data WHERE guid=83289;
DELETE FROM creature_battleground WHERE guid=83289;
DELETE FROM creature_linking WHERE guid=83289 OR master_guid=83289;
DELETE FROM creature WHERE guid=83290;
DELETE FROM creature_addon WHERE guid=83290;
DELETE FROM creature_movement WHERE id=83290;
DELETE FROM game_event_creature WHERE guid=83290;
DELETE FROM game_event_creature_data WHERE guid=83290;
DELETE FROM creature_battleground WHERE guid=83290;
DELETE FROM creature_linking WHERE guid=83290 OR master_guid=83290;

insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83289','18322','556','3','0','0','-141.171','291.066','26.7312','3.14396','86400','0','0','18971','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83290','18322','556','3','0','0','-141.044','283.336','26.7312','2.01299','86400','0','0','18971','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (83289);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83290','83289','3');


-- ==============================================================
-- ANZU BOSS ROOM (NORMAL MODE) - NO BOSS SPAWNED ONLY NORMAL NPC
-- ==============================================================
DELETE FROM creature WHERE guid=83292;
DELETE FROM creature_addon WHERE guid=83292;
DELETE FROM creature_movement WHERE id=83292;
DELETE FROM game_event_creature WHERE guid=83292;
DELETE FROM game_event_creature_data WHERE guid=83292;
DELETE FROM creature_battleground WHERE guid=83292;
DELETE FROM creature_linking WHERE guid=83292 OR master_guid=83292;
DELETE FROM creature WHERE guid=83291;
DELETE FROM creature_addon WHERE guid=83291;
DELETE FROM creature_movement WHERE id=83291;
DELETE FROM game_event_creature WHERE guid=83291;
DELETE FROM game_event_creature_data WHERE guid=83291;
DELETE FROM creature_battleground WHERE guid=83291;
DELETE FROM creature_linking WHERE guid=83291 OR master_guid=83291;
DELETE FROM creature WHERE guid=83293;
DELETE FROM creature_addon WHERE guid=83293;
DELETE FROM creature_movement WHERE id=83293;
DELETE FROM game_event_creature WHERE guid=83293;
DELETE FROM game_event_creature_data WHERE guid=83293;
DELETE FROM creature_battleground WHERE guid=83293;
DELETE FROM creature_linking WHERE guid=83293 OR master_guid=83293;

-- Group of 4 NPC (Anzu Room)
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83293','18319','556','1','0','0','-121.408','267.407','27.1212','1.32549','86400','0','0','12844','33745','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83292','18320','556','1','0','0','-114.047','267.32','26.7602','1.85511','86400','0','0','13725','35155','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83291','18325','556','1','0','0','-124.933','270.834','27.2959','6.17559','86400','0','0','13725','35155','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107742','21904','556','1','0','0','-109.943','269.444','26.1775','2.6146','86400','0','0','19626','0','0','2');

DELETE FROM creature_linking WHERE master_guid IN (107742);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83291','107742','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83292','107742','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83293','107742','3');

DELETE FROM creature_movement WHERE id IN (107742);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107742','1','-115.818','272.955','26.9893','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107742','2','-125.805','273.441','27.4341','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107742','3','-115.582','272.844','26.9539','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107742','4','-108.995','269.765','26.3045','0','0','0','0','0','0','0','0','0','0','0','0');


-- Group of 4 NPC (Anzu Room)
UPDATE creature SET position_x = '-102.993652', position_y = '301.039856', position_z = '26.507664', orientation = '0.786195', spawnMask=1 WHERE guid = '12160';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107743','18320','556','1','0','0','-100.165','309.53','26.3916','5.54256','86400','0','0','13725','35155','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107744','18319','556','1','0','0','-92.966','315.398','26.4423','3.91443','86400','0','0','12844','33745','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107745','18321','556','1','0','0','-94.815','310.075','25.8588','3.9757','86400','0','0','15175','2991','0','2');

DELETE FROM creature_linking WHERE master_guid IN (107745);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('12160','107745','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('107743','107745','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('107744','107745','3');

DELETE FROM creature_movement WHERE id IN (107745);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107745','1','-100.451','296.802','26.4832','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107745','2','-107.547','296.552','26.5721','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107745','3','-99.7536','296.632','26.4833','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107745','4','-94.5788','308.955','25.7607','0','0','0','0','0','0','0','0','0','0','0','0');


-- Colbalt Serpant Anzu Room
UPDATE creature SET spawnMask=1, movementtype=2 WHERE guid IN (99674);
DELETE FROM creature_movement WHERE id IN (99674);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99674','1','-93.192','292.411','26.484','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99674','2','-87.7111','295.207','26.484','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99674','3','-82.8339','293.872','26.484','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99674','4','-79.7918','288.292','26.484','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99674','5','-81.6849','282.776','26.484','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99674','6','-88.041','280.449','26.484','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99674','7','-93.3227','282.171','26.484','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('99674','8','-95.2092','287.774','26.484','0','0','0','0','0','0','0','0','0','0','0','0');


-- Group of 4 NPC in Anzu Room
UPDATE creature SET position_x = '-82.038994', position_y = '273.266113', position_z = '26.807936', orientation = '3.341885', spawnMask=1 WHERE guid = '83294';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107746','18325','556','1','0','0','-90.0859','262.57','26.839','1.56924','86400','0','0','13725','35155','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107747','18319','556','1','0','0','-86.2376','266.389','26.8079','1.39253','86400','0','0','13282','34410','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107748','18321','556','1','0','0','-91.2837','268.721','26.9007','1.15062','86400','0','0','15686','3080','0','2');

DELETE FROM creature_linking WHERE master_guid IN (107748);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83294','107748','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('107746','107748','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('107747','107748','3');

DELETE FROM creature_movement WHERE id IN (107748);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107748','1','-86.8076','276.025','26.6743','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107748','2','-81.4167','277.535','26.7617','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107748','3','-86.5522','275.758','26.6953','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107748','4','-90.77','269.08','26.8831','0','0','0','0','0','0','0','0','0','0','0','0');


-- Group of 4 NPC (Anzu Room) - Back Left Corner
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107749','18320','556','1','0','0','-66.3568','315.249','27.1083','3.9113','86400','0','0','13725','35155','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107750','18325','556','1','0','0','-60.7047','311.864','27.1181','3.9278','86400','0','0','13282','34410','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107751','18325','556','1','0','0','-61.083','305.694','26.5483','2.79604','86400','0','0','13282','34410','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107752','21904','556','1','0','0','-66.129','309.003','26.4486','2.20699','86400','0','0','19626','0','0','2');

DELETE FROM creature_linking WHERE master_guid IN (107752);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('107749','107752','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('107750','107752','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('107751','107752','3');

DELETE FROM creature_movement WHERE id IN (107752);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107752','1','-74.8872','314.959','26.8931','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107752','2','-66.5723','309.872','26.5173','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107752','3','-61.8085','298.518','26.3884','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107752','4','-65.9499','309.213','26.483','0','0','0','0','0','0','0','0','0','0','0','0');


-- Group of 4 NPC Back Corner of Anzu Room
UPDATE creature SET position_x = '-48.826794', position_y = '280.531952', position_z = '26.848234', orientation = '2.344426', spawnMask=1 WHERE guid = '83295';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107753','18320','556','1','0','0','-59.0407','281.012','26.9161','1.57788','86400','0','0','13725','35155','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107754','18325','556','1','0','0','-51.7687','285.552','26.8965','3.29633','86400','0','0','13282','34410','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107755','18321','556','1','0','0','-54.6136','290.327','26.8747','6.19994','86400','0','0','15175','2991','0','2');

DELETE FROM creature_linking WHERE master_guid IN (107755);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83295','107755','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('107753','107755','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('107754','107755','3');

DELETE FROM creature_movement WHERE id IN (107755);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107755','1','-47.0272','291.707','26.803','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107755','2','-61.6514','289.355','26.8504','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107755','3','-64.575','282.009','26.8059','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107755','4','-61.288','289.461','26.8628','0','0','0','0','0','0','0','0','0','0','0','0');


-- ============================
-- ANZU BOSS ROOM (HEROIC MODE)
-- ============================






-- ===============
-- Final Boss Room
-- ===============
DELETE FROM creature WHERE guid=83296;
DELETE FROM creature_addon WHERE guid=83296;
DELETE FROM creature_movement WHERE id=83296;
DELETE FROM game_event_creature WHERE guid=83296;
DELETE FROM game_event_creature_data WHERE guid=83296;
DELETE FROM creature_battleground WHERE guid=83296;
DELETE FROM creature_linking WHERE guid=83296 OR master_guid=83296;
DELETE FROM creature WHERE guid=83299;
DELETE FROM creature_addon WHERE guid=83299;
DELETE FROM creature_movement WHERE id=83299;
DELETE FROM game_event_creature WHERE guid=83299;
DELETE FROM game_event_creature_data WHERE guid=83299;
DELETE FROM creature_battleground WHERE guid=83299;
DELETE FROM creature_linking WHERE guid=83299 OR master_guid=83299;
DELETE FROM creature WHERE guid=83298;
DELETE FROM creature_addon WHERE guid=83298;
DELETE FROM creature_movement WHERE id=83298;
DELETE FROM game_event_creature WHERE guid=83298;
DELETE FROM game_event_creature_data WHERE guid=83298;
DELETE FROM creature_battleground WHERE guid=83298;
DELETE FROM creature_linking WHERE guid=83298 OR master_guid=83298;
DELETE FROM creature WHERE guid=83297;
DELETE FROM creature_addon WHERE guid=83297;
DELETE FROM creature_movement WHERE id=83297;
DELETE FROM game_event_creature WHERE guid=83297;
DELETE FROM game_event_creature_data WHERE guid=83297;
DELETE FROM creature_battleground WHERE guid=83297;
DELETE FROM creature_linking WHERE guid=83297 OR master_guid=83297;

insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83296','18321','556','1','0','0','-10.8688','292.38','26.731','3.13061','86400','0','0','15686','3080','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83299','18325','556','1','0','0','-0.663798','289.514','26.6898','3.23271','86400','0','0','13725','35155','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83298','18326','556','1','0','0','-0.647923','284.375','26.6893','3.03636','86400','0','0','15686','15400','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83297','18320','556','1','0','0','-10.6373','281.32','26.7306','3.08584','86400','0','0','13725','35155','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107756','21904','556','1','0','0','-17.9008','286.656','26.7308','1.5873','86400','0','0','19626','0','0','2');

DELETE FROM creature_linking WHERE master_guid IN (107756);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83296','107756','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83299','107756','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83297','107756','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('107754','107756','3');

DELETE FROM creature_movement WHERE id IN (107756);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107756','1','-18.0182','293.767','26.7308','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('107756','2','-17.4787','278.907','26.7311','0','0','0','0','0','0','0','0','0','0','0','0');








-- ======================
-- Gameobject Spawn Fixes 
-- ======================
-- Minerals and Herbs Not Spawned in Heroic Mode
UPDATE gameobject SET SpawnMask=3, SpawnTimeSecs=86400 WHERE map=556 AND ID IN (181270,181275,181276,181278,181556,181569);




-- ===========================================
-- Creature Spawn Time Fixes (24 Hour Respawn) - Confirmed No Special Short Spawn Time NPC
-- ===========================================
UPDATE creature SET SpawnTimeSecs=86400 WHERE map IN (556);


















