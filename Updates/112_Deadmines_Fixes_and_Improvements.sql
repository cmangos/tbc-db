-- ================================
-- Deadmines Improvements and Fixes
-- ================================
-- Required for Duplicate Entries
ALTER TABLE creature_linking DROP PRIMARY KEY;

-- ======================================
-- All Bosses Are Immune To Crowd Control -- Daze, Horror, Shackle, Banish, Polymorph, Knockout, Freeze, Stun, Snare, Sleep, Silence, Pacify, Root, Fear, Distract, Disarm, Confused, Charm
-- ======================================
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|76234719 WHERE entry IN (647,645,639,626,1763,646,644,643,642);


-- Group 1 Pathing (Respawns on Rhahk'Zor Death)
UPDATE creature SET position_x = '-169.588608', position_y = '-402.076477', position_z = '57.082920', orientation = '0.354403' WHERE guid = '79374';
DELETE FROM creature_movement WHERE id IN (79374);
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (79374);
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (79373);
DELETE FROM creature_linking WHERE master_guid IN (79373);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79374','79373','515'); -- Defias Evoker linked to Defias Overseer


-- CONFIRMED BY VIDEO THEY ARE NOT LINKED
/*
-- Linked Aggro Between Rhahk'Zor and 2 Defias Watchman Adds
DELETE FROM creature_linking WHERE master_guid IN (79368);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79165','79368','3'); -- Defias Watchman
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79167','79368','3'); -- Defias Watchman
-- Patrolling NPC Who Respawn After Boss is Killed
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79373','79368','64'); -- Defias Evoker
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79374','79368','64'); -- Defias Overseer
*/

-- Rhahk'Zor Pathing
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE id=644;
DELETE FROM creature_movement_template WHERE entry=644;
INSERT INTO creature_movement_template (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('644','1','-193.304','-440.544','53.5319','0','0','0','0','0','0','0','0','0','1.76218','0','0');
INSERT INTO creature_movement_template (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('644','2','-192.834','-435.956','53.2713','15000','0','0','0','0','0','0','0','0','1.3577','0','0');
INSERT INTO creature_movement_template (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('644','3','-193.565','-441.151','53.568','0','0','0','0','0','0','0','0','0','4.49458','0','0');
INSERT INTO creature_movement_template (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('644','4','-191.926','-453.598','54.4336','0','0','0','0','0','0','0','0','0','4.94932','0','0');
INSERT INTO creature_movement_template (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('644','5','-192.789','-447.285','54.3726','40000','0','0','0','0','0','0','0','0','1.6483','0','0');


-- Linked Aggro Between 3 Defias NPC Right After Rhahk'Zor
DELETE FROM creature_linking WHERE master_guid IN (79171);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79273','79171','3'); -- Defias Evoker
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79170','79171','3'); -- Defias Overseer


-- Remove Random Movement of 2 Miners
DELETE FROM creature_movement WHERE id IN (79172,79180,79182,79184);
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (79172,79180,79182,79184);


-- Fix an Defias Overseer Pathing (Removed bad waypoint)
DELETE FROM creature_movement WHERE id IN (79273);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('79273','1','-181.386','-491.686','54.0401','0','0','0','0','0','0','0','0','0','6.21382','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('79273','2','-180.97','-498.254','53.4632','0','0','0','0','0','0','0','0','0','4.81189','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('79273','3','-183.791','-502.539','53.3808','0','0','0','0','0','0','0','0','0','4.13016','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('79273','4','-193.579','-506.077','53.1769','0','0','0','0','0','0','0','0','0','3.4987','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('79273','5','-193.943','-496.426','53.2004','0','0','0','0','0','0','0','0','0','1.58704','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('79273','6','-192.601','-488.515','54.0488','0','0','0','0','0','0','0','0','0','1.32122','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('79273','7','-187.413','-492.182','53.5523','0','0','0','0','0','0','0','0','0','5.87846','0','0');


-- Add Random NPC Movement to Defias Evoker
UPDATE creature SET SpawnDist=5, MovementType=1 WHERE guid IN (79177);


-- Group 2 Pathing (Respawns on Sneed Death)
UPDATE creature SET position_x = '-206.025070', position_y = '-505.739960', position_z = '51.897705', orientation = '3.121361' WHERE guid = '79245';
DELETE FROM creature_movement WHERE id IN (79245);
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (79245);
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (79244);
DELETE FROM creature_linking WHERE master_guid IN (79244);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79245','79244','515'); -- Defias Evoker linked to Defias Overseer


-- Patrolling NPC Who Respawn After Boss Sneed is Killed
-- DELETE FROM creature_linking WHERE master_guid IN (79223);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79244','79223','64'); -- Defias Overseer
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79245','79223','64'); -- Defias Evoker


-- Group 3 Pathing (Respawns on Gilnid Death)
DELETE FROM creature_movement WHERE id IN (79229);
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (79229);
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (79230);
DELETE FROM creature_linking WHERE master_guid IN (79230);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79229','79230','515'); -- Defias Wizard linked to Defias Taskmaster


-- Fix NPC Z Problem
UPDATE creature SET position_z='28.4' WHERE guid IN (79242);
-- Fix NPC Placement
UPDATE creature SET position_x = '-209.043808', position_y = '-590.668701', position_z = '20.976866', orientation = '2.302266' WHERE guid = '79212';
UPDATE creature SET position_x = '-196.753937', position_y = '-582.341492', position_z = '20.976866', orientation = '1.217631' WHERE guid = '79209';


-- Group 4 Pathing
UPDATE creature SET position_x = '-208.265869', position_y = '-555.223206', position_z = '19.306499', orientation = '3.021687' WHERE guid = '79380';
DELETE FROM creature_movement WHERE id IN (79379,79380);
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (79379);
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (79380);
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (79378);
DELETE FROM creature_linking WHERE master_guid IN (79378);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79379','79378','515'); -- Defias Overseer linked to Defias Wizard
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79380','79378','515'); -- Defias Overseer linked to Defias Wizard


-- Fix Gilnid Movement
UPDATE creature SET SpawnDist=5, MovementType=1 WHERE guid IN (79206);
-- Patrolling NPC Who Respawn After Boss Gilnid is Killed
DELETE FROM creature_linking WHERE master_guid IN (79206);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79229','79206','64');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79230','79206','64');


-- Group 5 Pathing (Respawns after boss kill ??? )
UPDATE creature SET position_x = '-112.329689', position_y = '-645.826172', position_z = '8.976121', orientation = '5.168961' WHERE guid = '79260';
DELETE FROM creature_movement WHERE id IN (79260);
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (79260);
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (79361);
DELETE FROM creature_linking WHERE master_guid IN (79361);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79260','79361','515'); -- Defias Wizard linked to Defias Overseer


-- Delete Humans in Foundry
DELETE FROM creature WHERE guid=79285;
DELETE FROM creature_addon WHERE guid=79285;
DELETE FROM creature_movement WHERE id=79285;
DELETE FROM game_event_creature WHERE guid=79285;
DELETE FROM game_event_creature_data WHERE guid=79285;
DELETE FROM creature_battleground WHERE guid=79285;
DELETE FROM creature_linking WHERE guid=79285 OR master_guid=79285;
DELETE FROM creature WHERE guid=79283;
DELETE FROM creature_addon WHERE guid=79283;
DELETE FROM creature_movement WHERE id=79283;
DELETE FROM game_event_creature WHERE guid=79283;
DELETE FROM game_event_creature_data WHERE guid=79283;
DELETE FROM creature_battleground WHERE guid=79283;
DELETE FROM creature_linking WHERE guid=79283 OR master_guid=79283;
DELETE FROM creature WHERE guid=79284;
DELETE FROM creature_addon WHERE guid=79284;
DELETE FROM creature_movement WHERE id=79284;
DELETE FROM game_event_creature WHERE guid=79284;
DELETE FROM game_event_creature_data WHERE guid=79284;
DELETE FROM creature_battleground WHERE guid=79284;
DELETE FROM creature_linking WHERE guid=79284 OR master_guid=79284;
DELETE FROM creature WHERE guid=79380;
DELETE FROM creature_addon WHERE guid=79380;
DELETE FROM creature_movement WHERE id=79380;
DELETE FROM game_event_creature WHERE guid=79380;
DELETE FROM game_event_creature_data WHERE guid=79380;
DELETE FROM creature_battleground WHERE guid=79380;
DELETE FROM creature_linking WHERE guid=79380 OR master_guid=79380;
DELETE FROM creature WHERE guid=79378;
DELETE FROM creature_addon WHERE guid=79378;
DELETE FROM creature_movement WHERE id=79378;
DELETE FROM game_event_creature WHERE guid=79378;
DELETE FROM game_event_creature_data WHERE guid=79378;
DELETE FROM creature_battleground WHERE guid=79378;
DELETE FROM creature_linking WHERE guid=79378 OR master_guid=79378;
DELETE FROM creature WHERE guid=79379;
DELETE FROM creature_addon WHERE guid=79379;
DELETE FROM creature_movement WHERE id=79379;
DELETE FROM game_event_creature WHERE guid=79379;
DELETE FROM game_event_creature_data WHERE guid=79379;
DELETE FROM creature_battleground WHERE guid=79379;
DELETE FROM creature_linking WHERE guid=79379 OR master_guid=79379;


-- Summon Defias Overseer on Gunpowder GO Use
DELETE FROM dbscripts_on_go_template_use WHERE id=17155;
insert into `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('17155','2','10','634','60000','0','0','8','0','0','0','0','0','0','0','0','Summon Defias Overseer');


-- Fix NPC Random Movement
UPDATE creature SET SpawnDist=5, MovementType=1 WHERE guid IN (79296);


-- Linked Aggro Between Mr. Smite and 2 Defias Blackguards
DELETE FROM creature_linking WHERE master_guid IN (79337);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79345','79337','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79346','79337','3');


-- Linked Aggro Between Defias Pirate and Defias Squallshaper Behind Mr. Smite
DELETE FROM creature_linking WHERE master_guid IN (79338);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79330','79338','3');
-- MOVE NPC BACK SO THEY DO NOT PULL
UPDATE creature SET position_x = '-22.056364', position_y = '-809.104553', position_z = '19.543686', orientation = '1.330994' WHERE guid = '79338';
UPDATE creature SET position_x = '-34.434910', position_y = '-796.904114', position_z = '18.909523', orientation = '6.229524' WHERE guid = '79330';



-- Fix NPC Random Movement of Pirates on the Ship
UPDATE creature SET SpawnDist=3, MovementType=1 WHERE guid IN (79323,79325,79305,79327);


-- Remove 2 Defias Blackguards On Deck (They Do Not Exist As Per Videos)
DELETE FROM creature WHERE guid IN (79368,79383);


-- Move Pirates Beside Captain Greenskin
UPDATE creature SET position_x = '-59.401653', position_y = '-822.202759', position_z = '41.638664', orientation = '0.797708', SpawnDist=0, MovementType=0 WHERE guid = '79335';
UPDATE creature SET position_x = '-61.088074', position_y = '-820.519287', position_z = '41.468719', orientation = '0.794565', SpawnDist=0, MovementType=0 WHERE guid = '79334';
-- Link For Aggro and Movement
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79335','79333','515'); -- Defias Squallshaper (Aggro with Boss Aggro Only)
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79334','79333','515'); -- Defias Pirate (Aggro with Boss Aggro Only)


-- Linked Aggro Between VanCleef and 2 Defias Blackguard Adds
DELETE FROM creature_linking WHERE master_guid IN (79336);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79369','79336','3'); -- Defias Blackguard
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('79370','79336','3'); -- Defias Blackguard
-- VanCleef Adds (Should Not Random Move)
Update creature SET SpawnDist=0, MovementType=0 WHERE guid IN (79369,79370);







