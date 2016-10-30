-- ================================
-- RFK Improvements and Fixes
-- ================================
/*
-- All Bosses Can Not Be Charmed / Feared / Polymorphed / Horrored
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN (639,642,643,644,645,646,647,1763);
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|16 WHERE entry IN (639,642,643,644,645,646,647,1763);
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|65536 WHERE entry IN (639,642,643,644,645,646,647,1763);
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8388608 WHERE entry IN (639,642,643,644,645,646,647,1763);
*/

-- Remove Boar Spawns (Should not be there)
DELETE FROM creature WHERE guid=87299;
DELETE FROM creature_addon WHERE guid=87299;
DELETE FROM creature_movement WHERE id=87299;
DELETE FROM game_event_creature WHERE guid=87299;
DELETE FROM game_event_creature_data WHERE guid=87299;
DELETE FROM creature_battleground WHERE guid=87299;
DELETE FROM creature_linking WHERE guid=87299 OR master_guid=87299;
DELETE FROM creature WHERE guid=87295;
DELETE FROM creature_addon WHERE guid=87295;
DELETE FROM creature_movement WHERE id=87295;
DELETE FROM game_event_creature WHERE guid=87295;
DELETE FROM game_event_creature_data WHERE guid=87295;
DELETE FROM creature_battleground WHERE guid=87295;
DELETE FROM creature_linking WHERE guid=87295 OR master_guid=87295;


-- Update NPC For Proper Type and Add Waypoint Movement
UPDATE creature SET id=4436, SpawnDist=0, MovementType=2 WHERE guid IN (87296);
DELETE FROM creature_movement WHERE id IN (87296);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('87296','1','1984.9','1601.33','79.6094','0','0','0','0','0','0','0','0','0','3.19427','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('87296','2','1976.46','1601.48','80.0231','0','0','0','0','0','0','0','0','0','3.19034','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('87296','3','1967.94','1601.07','80.4888','0','0','0','0','0','0','0','0','0','3.19034','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('87296','4','1961.14','1599.4','81.1372','0','0','0','0','0','0','0','0','0','3.38198','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('87296','5','1955.46','1595.81','81.9168','0','0','0','0','0','0','0','0','0','3.70556','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('87296','6','1951.26','1583.76','81.8884','0','0','0','0','0','0','0','0','0','4.36687','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('87296','7','1955.19','1594.79','82.0734','0','0','0','0','0','0','0','0','0','1.19543','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('87296','8','1963.58','1599.38','80.8979','0','0','0','0','0','0','0','0','0','0.501138','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('87296','9','1968.28','1601.08','80.4596','0','0','0','0','0','0','0','0','0','0.3472','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('87296','10','1986.78','1601.08','79.783','0','0','0','0','0','0','0','0','0','6.28088','0','0');

-- Move NPC into Proper Position
UPDATE creature SET position_x = '2008.055786', position_y = '1569.062988', position_z = '81.737740', orientation = '2.060939' WHERE guid = '87292';

-- NPC NPC Into Position and Change to Correct Type
UPDATE creature SET id=4530, spawndist=0, MovementType=0, position_x = '2000.325195', position_y = '1558.828735', position_z = '82.008972', orientation = '0.571824' WHERE guid = '87293';



/*
-- Linked Aggro Between 3 Defias NPC Right After Rhahk'Zor
DELETE FROM creature_linking WHERE master_guid IN (79171);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79273','79171','3'); -- Defias Evoker
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79170','79171','3'); -- Defias Overseer
*/


