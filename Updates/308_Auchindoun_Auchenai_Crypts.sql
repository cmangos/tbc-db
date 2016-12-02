-- ==================================
-- Auchindoun: Auchenai Crypts
-- ==================================

-- ========================================================
-- All Bosses and Heroic Bosses Are Immune To Crowd Control -- Daze, Horror, Shackle, Banish, Polymorph, Knockout, Freeze, Stun, Snare, Sleep, Silence, Pacify, Root, Fear, Distract, Disarm, Confused, Charm
-- ========================================================
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|76234719 WHERE entry IN (18371,20318,18373,20306);

-- Fix Stolen Soul Faction
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16 WHERE entry IN (18441,20305);


-- =========================
-- Missing Equipment Entries
-- =========================



-- ================================
-- Remove Incorrect or Wrong Spawns
-- ================================
DELETE FROM creature WHERE guid=83363;
DELETE FROM creature_addon WHERE guid=83363;
DELETE FROM creature_movement WHERE id=83363;
DELETE FROM game_event_creature WHERE guid=83363;
DELETE FROM game_event_creature_data WHERE guid=83363;
DELETE FROM creature_battleground WHERE guid=83363;
DELETE FROM creature_linking WHERE guid=83363 OR master_guid=83363;
DELETE FROM creature WHERE guid=83359;
DELETE FROM creature_addon WHERE guid=83359;
DELETE FROM creature_movement WHERE id=83359;
DELETE FROM game_event_creature WHERE guid=83359;
DELETE FROM game_event_creature_data WHERE guid=83359;
DELETE FROM creature_battleground WHERE guid=83359;
DELETE FROM creature_linking WHERE guid=83359 OR master_guid=83359;
DELETE FROM creature WHERE guid=83362;
DELETE FROM creature_addon WHERE guid=83362;
DELETE FROM creature_movement WHERE id=83362;
DELETE FROM game_event_creature WHERE guid=83362;
DELETE FROM game_event_creature_data WHERE guid=83362;
DELETE FROM creature_battleground WHERE guid=83362;
DELETE FROM creature_linking WHERE guid=83362 OR master_guid=83362;
DELETE FROM creature WHERE guid=83361;
DELETE FROM creature_addon WHERE guid=83361;
DELETE FROM creature_movement WHERE id=83361;
DELETE FROM game_event_creature WHERE guid=83361;
DELETE FROM game_event_creature_data WHERE guid=83361;
DELETE FROM creature_battleground WHERE guid=83361;
DELETE FROM creature_linking WHERE guid=83361 OR master_guid=83361;
DELETE FROM creature WHERE guid=83358;
DELETE FROM creature_addon WHERE guid=83358;
DELETE FROM creature_movement WHERE id=83358;
DELETE FROM game_event_creature WHERE guid=83358;
DELETE FROM game_event_creature_data WHERE guid=83358;
DELETE FROM creature_battleground WHERE guid=83358;
DELETE FROM creature_linking WHERE guid=83358 OR master_guid=83358;
DELETE FROM creature WHERE guid=83364;
DELETE FROM creature_addon WHERE guid=83364;
DELETE FROM creature_movement WHERE id=83364;
DELETE FROM game_event_creature WHERE guid=83364;
DELETE FROM game_event_creature_data WHERE guid=83364;
DELETE FROM creature_battleground WHERE guid=83364;
DELETE FROM creature_linking WHERE guid=83364 OR master_guid=83364;
DELETE FROM creature WHERE guid=83369;
DELETE FROM creature_addon WHERE guid=83369;
DELETE FROM creature_movement WHERE id=83369;
DELETE FROM game_event_creature WHERE guid=83369;
DELETE FROM game_event_creature_data WHERE guid=83369;
DELETE FROM creature_battleground WHERE guid=83369;
DELETE FROM creature_linking WHERE guid=83369 OR master_guid=83369;
DELETE FROM creature WHERE guid=83371;
DELETE FROM creature_addon WHERE guid=83371;
DELETE FROM creature_movement WHERE id=83371;
DELETE FROM game_event_creature WHERE guid=83371;
DELETE FROM game_event_creature_data WHERE guid=83371;
DELETE FROM creature_battleground WHERE guid=83371;
DELETE FROM creature_linking WHERE guid=83371 OR master_guid=83371;
DELETE FROM creature WHERE guid=83366;
DELETE FROM creature_addon WHERE guid=83366;
DELETE FROM creature_movement WHERE id=83366;
DELETE FROM game_event_creature WHERE guid=83366;
DELETE FROM game_event_creature_data WHERE guid=83366;
DELETE FROM creature_battleground WHERE guid=83366;
DELETE FROM creature_linking WHERE guid=83366 OR master_guid=83366;


-- ==================================
-- Remove/Add/Fix Improper Addon Data
-- ==================================
DELETE FROM creature_template_addon WHERE entry IN (18497);

DELETE FROM creature_template_addon WHERE entry IN (18559);
insert into `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('18559','0','0','0','0','0','0','31748');



-- =========================================
-- Special Scripting For Phasing NPC
-- =========================================
-- ---------------
-- Phasing Stalker
-- ---------------
UPDATE creature SET SpawnTimeSecs=7200, SpawnDist=0, MovementType=2 WHERE guid IN (83360);
DELETE FROM creature_movement WHERE id IN (83360);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83360','1','61.6461','14.3518','2.72275','0','0','0','0','0','0','0','0','0','3.56513','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83360','2','60.8672','-0.027434','-0.156324','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83360','3','61.8067','-18.512','2.50957','30000','8336004','0','0','0','0','0','0','0','4.81135','0','0');
-- New Location
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83360','4','103.139','-25.0153','-0.053496','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83360','5','101.822','-13.794','0.162897','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83360','6','103.285','12.8828','-0.099057','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83360','7','103.489670','18.520596','0.124781','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83360','8','109.089821','22.249718','0.136722','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83360','9','115.250832','22.515013','-0.129131','30000','8336007','0','0','0','0','0','0','0','0.030629','0','0');

-- DB Scripts For Teleport Of Phasing Stalkers To Selected Points To Continue Movement
DELETE FROM dbscripts_on_creature_movement WHERE id IN (8336004);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336004','0','15','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Stalker Invisible');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336004','2','22','35','0','0','0','0','0','0','0','0','0','0','0','0','Temp Friendly Faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336004','2','3','0','0','0','0','8','0','0','0','0','102.749985','-32.943798','2.437387','1.5496','Teleport Phasing Stalker To New Location');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336004','26','22','0','0','0','0','0','0','0','0','0','0','0','0','0','Restore Faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336004','26','15','33422','0','0','0','0','0','0','0','0','0','0','0','0','Cast Phase-In');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336004','27','14','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Stalker Visible');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (8336007);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336007','0','15','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Stalker Invisible');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336007','2','22','35','0','0','0','0','0','0','0','0','0','0','0','0','Temp Friendly Faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336007','2','3','0','0','0','0','8','0','0','0','0','61.6461','14.3518','2.72275','3.56513','Teleport Phasing Stalker To Original Spawn Location');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336007','26','22','0','0','0','0','0','0','0','0','0','0','0','0','0','Restore Faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336007','26','15','33422','0','0','0','0','0','0','0','0','0','0','0','0','Cast Phase-In');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336007','27','14','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Stalker Visible');

-- ---------------
-- Phasing Soldier
-- ---------------
UPDATE creature SET position_x = '126.306511', position_y = '33.207840', position_z = '-0.113875', orientation = '4.846698', SpawnTimeSecs=7200, SpawnDist=0, MovementType=2 WHERE guid = '83370';
DELETE FROM creature_movement WHERE id IN (83370);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83370','1','129.825','23.4731','-0.128527','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83370','2','130.773','9.24298','-0.12908','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83370','3','137.655','-6.95471','1.55496','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83370','4','141.784','-8.56258','2.20093','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83370','5','154.28','-8.94985','2.31843','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83370','6','161.355','-13.9388','1.12359','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83370','7','165.427','-18.7034','2.87921','30000','8337007','0','0','0','0','0','0','0','5.387837','0','0');
-- New Location
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83370','8','133.080505','-14.573885','3.986804','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83370','9','132.858810','-24.073812','8.159985','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83370','10','136.058105','-31.377907','12.084146','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83370','11','150.871979','-36.691605','13.588638','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83370','12','161.658859','-39.999710','12.365635','30000','8337013','0','0','0','0','0','0','0','6.163810','0','0');

-- DB Scripts For Teleport Of Phasing Soldier To Selected Points To Continue Movement
DELETE FROM dbscripts_on_creature_movement WHERE id IN (8337007);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8337007','0','15','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Soldier Invisible');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8337007','2','22','35','0','0','0','0','0','0','0','0','0','0','0','0','Temp Friendly Faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8337007','2','3','0','0','0','0','8','0','0','0','0','129.738647','-8.927769','0.819057','1.726307','Teleport Phasing Soldier To New Location');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8337007','26','22','0','0','0','0','0','0','0','0','0','0','0','0','0','Restore Faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8337007','26','15','33422','0','0','0','0','0','0','0','0','0','0','0','0','Cast Phase-In');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8337007','27','14','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Soldier Visible');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (8337013);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8337013','0','15','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Soldier Invisible');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8337013','2','22','35','0','0','0','0','0','0','0','0','0','0','0','0','Temp Friendly Faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8337013','2','3','0','0','0','0','8','0','0','0','0','126.306511','33.207840','-0.113875','4.846698','Teleport Phasing Soldier To Original Spawn Location');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8337013','26','22','0','0','0','0','0','0','0','0','0','0','0','0','0','Restore Faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8337013','26','15','33422','0','0','0','0','0','0','0','0','0','0','0','0','Cast Phase-In');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8337013','27','14','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Soldier Visible');

-- --------------
-- Phasing Cleric
-- --------------
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83369','18557','558','3','0','0','169.078','-17.6317','2.71439','0.86237','7200','0','0','4731','8370','0','2');
DELETE FROM creature_movement WHERE id IN (83369);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83369','1','178.208','-8.37331','-0.748543','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83369','2','192.227','2.29999','-0.120996','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83369','3','191.193','14.8093','1.52797','30000','8336903','0','0','0','0','0','0','0','1.547241','0','0');
-- New Location
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83369','4','248.941','8.89292','-0.049169','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83369','5','245.233','0.881873','-0.053473','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83369','6','237.602','-9.95962','-0.089788','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83369','7','227.509','-14.377','3.02301','30000','8336907','0','0','0','0','0','0','0','3.315957','0','0');

-- DB Scripts For Teleport Of Phasing Cleric To Selected Points To Continue Movement
DELETE FROM dbscripts_on_creature_movement WHERE id IN (8336903);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336903','0','15','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Cleric Invisible');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336903','2','22','35','0','0','0','0','0','0','0','0','0','0','0','0','Temp Friendly Faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336903','2','3','0','0','0','0','8','0','0','0','0','253.710510','13.715553','0.741836','3.932496','Teleport Phasing Cleric To New Location');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336903','26','22','0','0','0','0','0','0','0','0','0','0','0','0','0','Restore faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336903','26','15','33422','0','0','0','0','0','0','0','0','0','0','0','0','Cast Phase-In');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336903','27','14','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Cleric Visible');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (8336907);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336907','0','15','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Cleric Invisible');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336907','2','22','35','0','0','0','0','0','0','0','0','0','0','0','0','Temp Friendly Faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336907','2','3','0','0','0','0','8','0','0','0','0','169.078','-17.6317','2.71439','0.86237','Teleport Phasing Cleric To Original Spawn Location');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336907','26','22','0','0','0','0','0','0','0','0','0','0','0','0','0','Restore Faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336907','26','15','33422','0','0','0','0','0','0','0','0','0','0','0','0','Cast Phase-In');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336907','27','14','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Cleric Visible');



-- =========================================
-- Dungeon Aggro Linking and Missing Pathing
-- =========================================
-- Left Side Kneeling Soulpriests
UPDATE creature SET id=18493, position_x = '84.601730', position_y = '8.654230', position_z = '-0.062491', orientation = '1.519754' WHERE guid = '83353';
UPDATE creature SET id=18493, position_x = '89.855019', position_y = '8.524772', position_z = '-0.064318', orientation = '1.553526' WHERE guid = '83354';

DELETE FROM creature_addon WHERE guid IN (83353,83354);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('83353','0','8','0','0','68','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('83354','0','8','0','0','68','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (83353);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83354','83353','3');

-- Right Side Kneeling Soulpriests
UPDATE creature SET id=18493, position_x = '77.838707', position_y = '-8.154584', position_z = '-0.062080', orientation = '4.496414' WHERE guid = '83352';
UPDATE creature SET id=18493, position_x = '82.155273', position_y = '-8.352374', position_z = '-0.061861', orientation = '4.769732' WHERE guid = '83351';

DELETE FROM creature_addon WHERE guid IN (83352,83351);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('83352','0','8','0','0','68','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('83351','0','8','0','0','68','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (83352);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83351','83352','3');

-- Right Pathing Soulpriest
UPDATE creature SET id=18493, position_x = '79.825035', position_y = '-5.117529', position_z = '-0.086953', orientation = '3.162810' WHERE guid = '83365';
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (83365);
DELETE FROM creature_movement WHERE id IN (83365);

UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (83365);
DELETE FROM creature_movement WHERE id IN (83365);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83365','1','70.4428','-5.52704','-0.081998','0','0','0','0','0','0','0','0','0','3.14475','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83365','2','68.8033','-9.17252','-0.095647','0','0','0','0','0','0','0','0','0','3.96549','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83365','3','68.5866','-26.2573','-0.063077','0','0','0','0','0','0','0','0','0','4.69513','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83365','4','70.6502','-28.8836','-0.064496','0','0','0','0','0','0','0','0','0','5.56849','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83365','5','97.332','-29.0043','-0.038368','0','0','0','0','0','0','0','0','0','0.037717','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83365','6','100.607','-25.0518','-0.034154','0','0','0','0','0','0','0','0','0','1.02889','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83365','7','100.853','-9.91002','0.092635','0','0','0','0','0','0','0','0','0','1.53469','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83365','8','96.6178','-5.09689','-0.064114','0','0','0','0','0','0','0','0','0','2.29495','0','0');


-- Left Pathing Vindicator
UPDATE creature SET id=18495, position_x = '100.801842', position_y = '17.323095', position_z = '-0.087370', orientation = '4.598523', SpawnDist=0, MovementType=2 WHERE guid = '83355';
DELETE FROM creature_movement WHERE id IN (83355);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83355','1','100.78','8.34866','0.160511','0','0','0','0','0','0','0','0','0','4.84983','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83355','2','95.9644','3.92051','-0.099093','0','0','0','0','0','0','0','0','0','3.88693','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83355','3','71.2327','4.84142','-0.090976','0','0','0','0','0','0','0','0','0','3.07719','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83355','4','68.339','8.11337','-0.097064','0','0','0','0','0','0','0','0','0','2.29493','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83355','5','69.5207','14.0001','-0.056235','0','0','0','0','0','0','0','0','0','1.83155','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83355','6','69.2525','26.6497','-0.123079','0','0','0','0','0','0','0','0','0','1.55116','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83355','7','71.2453','29.5185','-0.116317','0','0','0','0','0','0','0','0','0','0.963682','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83355','8','98.258','28.9546','-0.120986','0','0','0','0','0','0','0','0','0','6.23999','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83355','9','100.633','24.0382','-0.021694','0','0','0','0','0','0','0','0','0','5.16242','0','0');


-- Left Side Ledge Vindicators
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83364','18495','558','3','0','0','84.7056','40.5358','4.26158','1.50168','7200','0','0','14186','8538','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83358','18495','558','3','0','0','78.1336','40.1341','4.26168','1.57158','7200','0','0','13719','8370','0','0');

DELETE FROM creature_addon WHERE guid IN (83364,83358);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('83364','0','8','0','0','68','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('83358','0','8','0','0','68','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (83364);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83358','83364','3');

-- Right Side Ledge Vindicator and Soulpriest
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83361','18493','558','3','0','0','87.7399','-39.3042','4.26142','4.67076','7200','0','0','13719','8370','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83362','18495','558','3','0','0','93.0756','-39.5644','4.26114','4.83491','7200','0','0','14186','8538','0','0');

DELETE FROM creature_addon WHERE guid IN (83361,83362);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('83361','0','8','0','0','68','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('83362','0','8','0','0','68','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (83361);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83362','83361','3');

-- Priest and Vindicator Kneeling in Main Walkway
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83359','18493','558','3','0','0','123.117','4.0979','-0.129858','3.88694','7200','0','0','13719','8370','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83363','18495','558','3','0','0','117.857','-3.94193','-0.0341318','0.742203','7200','0','0','13719','8370','0','0');

DELETE FROM creature_addon WHERE guid IN (83359,83363);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('83359','0','8','0','0','68','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('83363','0','8','0','0','68','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (83359);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83363','83359','3');

-- Second Left Ledge Vindicators
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101308','18495','558','3','0','0','139.07','40.0566','4.26011','1.58886','7200','0','0','13719','8370','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101309','18495','558','3','0','0','148.921','40.2461','4.25999','1.5009','7200','0','0','14186','8538','0','0');

DELETE FROM creature_addon WHERE guid IN (101308,101309);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('101308','0','8','0','0','68','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('101309','0','8','0','0','68','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (101308);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101309','101308','3');

-- Move Monk for Pathing
UPDATE creature SET position_x = '160.191864', position_y = '30.616804', position_z = '-0.106432', orientation = '2.948383', SpawnDist=0, MovementType=2 WHERE guid = '83357';
DELETE FROM creature_movement WHERE id IN (83357);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83357','1','148.445','30.7565','-0.10329','0','0','0','0','0','0','0','0','0','3.184','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83357','2','144.748','35.2066','1.81657','0','0','0','0','0','0','0','0','0','2.47164','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83357','3','154.812','37.0526','3.32337','0','0','0','0','0','0','0','0','0','0.671508','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83357','4','152.26','39.0965','4.25969','30000','0','0','0','0','0','0','68','0','2.49599','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83357','5','153.46','36.7801','3.10079','0','0','0','0','0','0','0','0','0','5.2386','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83357','6','144.473','30.8718','-0.101362','0','0','0','0','0','0','0','0','0','3.97568','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83357','7','133.689','29.9309','-0.108321','0','0','0','0','0','0','0','0','0','3.14473','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83357','8','130.662','26.6505','-0.127513','0','0','0','0','0','0','0','0','0','3.96625','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83357','9','130.611','10.2899','0.148114','0','0','0','0','0','0','0','0','0','4.71395','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83357','10','130.72','-1.40306','-0.012503','0','0','0','0','0','0','0','0','0','4.81606','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83357','11','128.658','-2.39713','0.060023','0','0','0','0','0','0','0','0','0','3.59084','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83357','12','126.596','-4.0005','0.177076','0','0','0','0','0','0','0','0','0','3.73456','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83357','13','125.665','-2.92913','0.098741','8000','0','0','0','0','0','0','0','0','2.26351','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83357','14','125.665','-2.92913','0.098741','30000','0','0','0','0','0','0','68','0','2.26351','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83357','15','136.891','4.36495','-0.129042','0','0','0','0','0','0','0','0','0','0.593754','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83357','16','158.484','3.73787','-0.127465','0','0','0','0','0','0','0','0','0','6.2392','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83357','17','162.95','8.04022','-0.127465','0','0','0','0','0','0','0','0','0','0.81288','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83357','18','163.105','27.0841','-0.059237','0','0','0','0','0','0','0','0','0','1.63441','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83357','19','159.258','30.1414','-0.10936','0','0','0','0','0','0','0','0','0','2.47007','0','0');


-- 2 Vindicators Channeling Up on Rubble Pile
UPDATE creature SET id=18495, position_x = '136.867844', position_y = '-27.252693', position_z = '10.033357', orientation = '6.180294', MovementType=2 WHERE guid = '83368';
UPDATE creature SET id=18495, position_x = '134.631607', position_y = '-22.721069', position_z = '7.648569', orientation = '6.227417', MovementType=2 WHERE guid = '83367';

DELETE FROM creature_linking WHERE master_guid IN (83368);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83367','83368','3');

DELETE FROM creature_movement WHERE id IN (83367,83368);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83367','1','134.631607','-22.721069','7.648569','5000','8336701','0','0','0','0','0','0','0','6.227417','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83368','1','136.867844','-27.252693','10.033357','5000','8336701','0','0','0','0','0','0','0','6.180294','0','0');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (8336701);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336701','3','15','32930','0','0','0','0','0','0','0','0','0','0','0','0','Cast Blue Beam');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8336701','5','32','1','0','0','0','0','0','0','0','0','0','0','0','0','Pause Waypoints');

-- Sniff Data
UPDATE creature_template SET InhabitType=4, UnitFlags=33554688 WHERE entry IN (18778);

-- Raging Soul Visual Spell (32459) - NPC ID 18778
-- Vindicators Cast 32930 at Raging Soul

-- Add Missing Raging Soul Spawn (4.3.4 Sniff Data)
INSERT INTO `creature` (`guid`, `id`, `modelid`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES (83371, 18778, 11686, 558, 3, 141.6882, -17.80097, 9.308136, 2.129302, 7200, 0, 0); -- 18778 (Area: 0)


-- Monk and Soulpriest in middle of Walkway Far End
UPDATE creature SET position_x = '187.664551', position_y = '4.658244', position_z = '-0.123336', orientation = '5.647013' WHERE guid = '83356';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101310','18493','558','3','0','0','190.131','-3.65762','-0.0481654','1.38544','7200','0','0','13719','8370','0','0');

DELETE FROM creature_addon WHERE guid IN (83356,101310);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('83356','0','8','0','0','68','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('101310','0','8','0','0','68','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (83356);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101310','83356','3');

-- Left Side Near Stairs NPC
UPDATE creature SET position_x = '231.560226', position_y = '19.625532', position_z = '-0.063548', orientation = '1.471837' WHERE guid = '83372';
UPDATE creature SET id=18497, position_x = '238.133743', position_y = '14.235974', position_z = '-0.064787', orientation = '5.694137', SpawnDist=0, MovementType=2 WHERE guid = '83373';

DELETE FROM creature_addon WHERE guid IN (83372);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('83372','0','8','0','0','68','0',NULL);

DELETE FROM creature_movement WHERE id IN (83373);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83373','1','222.88','13.8903','-0.075499','10000','0','0','0','0','0','0','0','0','3.05599','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83373','2','238.567','14.1287','-0.066652','10000','0','0','0','0','0','0','0','0','5.68','0','0');

DELETE FROM creature_linking WHERE master_guid IN (83373);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83372','83373','3');

-- Right Side Near Stairs NPC
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101311','18495','558','3','0','0','243.079','-14.5574','-0.0613293','0.754769','7200','0','0','13719','8370','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101312','18497','558','3','0','0','248.385','-9.51682','-0.0561865','3.81547','7200','0','0','18333','0','0','0');

DELETE FROM creature_addon WHERE guid IN (101311,101312);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('101311','0','8','0','0','68','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('101312','0','8','0','0','68','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (101311);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101312','101311','3');


-- 2 Soulpriests Pathing Up Stairs
DELETE FROM creature WHERE guid IN (101313,101314);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101313','18493','558','3','0','0','238.24','-31.651','26.7127','3.1251','7200','0','0','13719','8370','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101314','18493','558','3','0','0','235.574','-31.607','27.0868','3.1251','7200','0','0','14186','8538','0','2');

DELETE FROM creature_linking WHERE master_guid IN (101314);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101313','101314','515');

DELETE FROM creature_movement WHERE id IN (101314);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','1','211.25','-32.5531','26.5913','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','2','206.558','-29.6245','26.5913','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','3','206.846','2.9624','26.6089','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','4','208.449','29.0183','26.6237','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','5','214.47','31.2264','26.6401','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','6','237.969','31.8593','26.6358','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','7','267.278','32.2465','13.432','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','8','269.743','29.0039','13.4276','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','9','269.483','20.9772','13.3957','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','10','269.795','-1.88818','-0.066842','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','11','269.028','12.9737','7.30811','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','12','269.102','22.2329','13.419','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','13','268.701','29.0391','13.432','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','14','265.437','32.5422','13.4303','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','15','246.648','32.3708','20.9473','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','16','235.326','32.1635','26.6343','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','17','214.469','32.5403','26.6329','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','18','207.544','25.8809','26.6183','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','19','207.02','2.82084','26.6086','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','20','208.547','-29.5215','26.591','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','21','213.394','-33.2204','26.591','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101314','22','239.78','-32.5393','26.594','0','0','0','0','0','0','0','0','0','0','0','0');

-- Phasing Warrior At Top of Stairs
DELETE FROM creature WHERE guid IN (101315);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101315','18556','558','3','0','0','218.466','3.71303','29.0994','4.74537','7200','0','0','5914','0','0','2');

DELETE FROM creature_movement WHERE id IN (101315);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101315','1','219.741','-0.675325','28.203','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101315','2','219.792','-4.76663','26.8361','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101315','3','217.358','-11.594','25.4282','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101315','4','218.272','-19.8373','24.1715','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101315','5','218.662','-23.4493','23.8279','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101315','6','220.473755','-25.368420','25.368142','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101315','7','219.946167','-29.873604','26.898235','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101315','8','249.729','-31.8743','26.6054','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101315','9','267.403','-32.7667','26.5914','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101315','10','277.982','-32.4806','26.5914','240000','10131510','0','0','0','0','0','0','0','0.019631','0','0');

-- DB Scripts For Teleport Of Phasing Warrior To Selected Points To Continue Movement
DELETE FROM dbscripts_on_creature_movement WHERE id IN (10131510);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('10131510','0','15','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Warrior Invisible');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('10131510','2','22','35','0','0','0','0','0','0','0','0','0','0','0','0','Temp Friendly Faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('10131510','2','3','0','0','0','0','8','0','0','0','0','218.466','3.71303','29.0994','4.74537','Teleport Phasing Warrior To Spawn Location');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('10131510','236','22','0','0','0','0','0','0','0','0','0','0','0','0','0','Restore Faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('10131510','236','15','33422','0','0','0','0','0','0','0','0','0','0','0','0','Cast Phase-In');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('10131510','237','14','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Warrior Visible');


-- ------------------------------------
-- REMOVE MORE WRONG SPAWNS - 2nd FLOOR
-- ------------------------------------
DELETE FROM creature WHERE guid=83381;
DELETE FROM creature_addon WHERE guid=83381;
DELETE FROM creature_movement WHERE id=83381;
DELETE FROM game_event_creature WHERE guid=83381;
DELETE FROM game_event_creature_data WHERE guid=83381;
DELETE FROM creature_battleground WHERE guid=83381;
DELETE FROM creature_linking WHERE guid=83381 OR master_guid=83381;
DELETE FROM creature WHERE guid=83380;
DELETE FROM creature_addon WHERE guid=83380;
DELETE FROM creature_movement WHERE id=83380;
DELETE FROM game_event_creature WHERE guid=83380;
DELETE FROM game_event_creature_data WHERE guid=83380;
DELETE FROM creature_battleground WHERE guid=83380;
DELETE FROM creature_linking WHERE guid=83380 OR master_guid=83380;
DELETE FROM creature WHERE guid=83374;
DELETE FROM creature_addon WHERE guid=83374;
DELETE FROM creature_movement WHERE id=83374;
DELETE FROM game_event_creature WHERE guid=83374;
DELETE FROM game_event_creature_data WHERE guid=83374;
DELETE FROM creature_battleground WHERE guid=83374;
DELETE FROM creature_linking WHERE guid=83374 OR master_guid=83374;
DELETE FROM creature WHERE guid=83385;
DELETE FROM creature_addon WHERE guid=83385;
DELETE FROM creature_movement WHERE id=83385;
DELETE FROM game_event_creature WHERE guid=83385;
DELETE FROM game_event_creature_data WHERE guid=83385;
DELETE FROM creature_battleground WHERE guid=83385;
DELETE FROM creature_linking WHERE guid=83385 OR master_guid=83385;
DELETE FROM creature WHERE guid=83376;
DELETE FROM creature_addon WHERE guid=83376;
DELETE FROM creature_movement WHERE id=83376;
DELETE FROM game_event_creature WHERE guid=83376;
DELETE FROM game_event_creature_data WHERE guid=83376;
DELETE FROM creature_battleground WHERE guid=83376;
DELETE FROM creature_linking WHERE guid=83376 OR master_guid=83376;
DELETE FROM creature WHERE guid=83383;
DELETE FROM creature_addon WHERE guid=83383;
DELETE FROM creature_movement WHERE id=83383;
DELETE FROM game_event_creature WHERE guid=83383;
DELETE FROM game_event_creature_data WHERE guid=83383;
DELETE FROM creature_battleground WHERE guid=83383;
DELETE FROM creature_linking WHERE guid=83383 OR master_guid=83383;
DELETE FROM creature WHERE guid=83375;
DELETE FROM creature_addon WHERE guid=83375;
DELETE FROM creature_movement WHERE id=83375;
DELETE FROM game_event_creature WHERE guid=83375;
DELETE FROM game_event_creature_data WHERE guid=83375;
DELETE FROM creature_battleground WHERE guid=83375;
DELETE FROM creature_linking WHERE guid=83375 OR master_guid=83375;
DELETE FROM creature WHERE guid=83377;
DELETE FROM creature_addon WHERE guid=83377;
DELETE FROM creature_movement WHERE id=83377;
DELETE FROM game_event_creature WHERE guid=83377;
DELETE FROM game_event_creature_data WHERE guid=83377;
DELETE FROM creature_battleground WHERE guid=83377;
DELETE FROM creature_linking WHERE guid=83377 OR master_guid=83377;
DELETE FROM creature WHERE guid=83378;
DELETE FROM creature_addon WHERE guid=83378;
DELETE FROM creature_movement WHERE id=83378;
DELETE FROM game_event_creature WHERE guid=83378;
DELETE FROM game_event_creature_data WHERE guid=83378;
DELETE FROM creature_battleground WHERE guid=83378;
DELETE FROM creature_linking WHERE guid=83378 OR master_guid=83378;



-- Soulpriest and Monk Pathing in Hallway
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83378','18493','558','3','0','0','239.385','-49.6785','26.5912','4.59379','7200','0','0','13719','8370','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83377','18497','558','3','0','0','239.401','-46.9768','26.5912','4.87575','7200','0','0','18959','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (83378);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83377','83378','515');

DELETE FROM creature_movement WHERE id IN (83378);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83378','1','239.482','-69.9902','26.5912','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83378','2','239.466','-100.007','26.5912','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83378','3','239.365','-125.633','26.5912','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83378','4','239.716','-100.183','26.5912','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83378','5','239.764','-70.1469','26.5912','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83378','6','239.557','-45.5533','26.5912','0','0','0','0','0','0','0','0','0','0','0','0');


-- Group of 3 NPC in Room Top of Stairs
UPDATE creature SET position_x = '228.154800', position_y = '-155.341476', position_z = '26.591999', orientation = '5.605387' WHERE guid = '83379';
UPDATE creature SET position_x = '225.272018', position_y = '-163.883240', position_z = '26.591959', orientation = '0.198709' WHERE guid = '83382';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83375','18495','558','3','0','0','228.703','-170.708','26.592','0.574126','7200','0','0','14186','8538','0','0');

DELETE FROM creature_linking WHERE master_guid IN (83379);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83382','83379','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83375','83379','3');

DELETE FROM creature_addon WHERE guid IN (83379,83382,83375);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('83379','0','8','0','0','68','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('83382','0','8','0','0','68','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('83375','0','8','0','0','68','0',NULL);

-- Phasing Cleric in Upstairs Room
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83383','18557','558','3','0','0','249.466','-144.105','29.6535','2.93661','7200','0','0','4731','8370','0','2');

DELETE FROM creature_movement WHERE id IN (83383);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83383','1','242.429','-144.49','26.6118','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83383','2','225.061','-146.547','26.5915','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83383','3','219.352','-154.711','26.5915','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83383','4','217.615','-162.978','26.5915','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83383','5','219.621','-171.307','26.5915','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83383','6','223.668','-177.367','26.5915','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83383','7','230.066','-182.124','26.5915','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83383','8','233.654','-185.381','26.5915','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83383','9','234.627','-187.683','26.6824','120000','8338309','0','0','0','0','0','0','0','5.096456','0','0');
-- Next Location Start
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83383','10','238.415','-179.568','26.5913','0','0','0','0','0','0','0','0','0','100','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83383','11','231.578','-179.229','26.5913','0','0','0','0','0','0','0','0','0','100','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83383','12','226.351','-181.556','26.5913','0','0','0','0','0','0','0','0','0','100','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83383','13','223.909','-186.291','26.5913','120000','8338313','0','0','0','0','0','0','0','100','0','0');

-- DB Scripts For Teleport Of Phasing Warrior To Selected Points To Continue Movement
DELETE FROM dbscripts_on_creature_movement WHERE id IN (8338309);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8338309','0','15','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Cleric Invisible');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8338309','2','22','35','0','0','0','0','0','0','0','0','0','0','0','0','Temp Friendly Faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8338309','2','3','0','0','0','0','8','0','0','0','0','243.299316','-180.866608','28.640589','2.881630','Teleport Phasing Cleric To Next Location');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8338309','116','22','0','0','0','0','0','0','0','0','0','0','0','0','0','Restore Faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8338309','116','15','33422','0','0','0','0','0','0','0','0','0','0','0','0','Cast Phase-In');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8338309','117','14','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Cleric Visible');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (8338313);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8338313','0','15','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Cleric Invisible');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8338313','2','22','35','0','0','0','0','0','0','0','0','0','0','0','0','Temp Friendly Faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8338313','2','3','0','0','0','0','8','0','0','0','0','249.466','-144.105','29.6535','2.93661','Teleport Phasing Cleric To Spawn Location');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8338313','116','22','0','0','0','0','0','0','0','0','0','0','0','0','0','Restore Faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8338313','116','15','33422','0','0','0','0','0','0','0','0','0','0','0','0','Cast Phase-In');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8338313','117','14','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Cleric Visible');

-- NPC Pathing on Bridge of Souls
UPDATE creature SET position_x = '129.002182', position_y = '-162.865051', position_z = '12.884370', orientation = '3.220920', MovementType=2 WHERE guid = '83386';
UPDATE creature SET position_x = '130.643967', position_y = '-164.901779', position_z = '12.753355', orientation = '3.125101' WHERE guid = '83384';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83376','18493','558','3','0','0','130.674','-160.664','12.7517','3.29239','86400','0','0','13719','8370','0','0');

DELETE FROM creature_linking WHERE master_guid IN (83386);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83384','83386','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83376','83386','515');

DELETE FROM creature_movement WHERE id IN (83386);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83386','1','102.866','-162.857','14.9086','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83386','2','74.6199','-162.925','15.5006','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83386','3','44.3247','-162.931','15.0019','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83386','4','74.9605','-163.193','15.494','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83386','5','103.282','-163.015','14.8936','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83386','6','142.787','-163.311','12.5674','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83386','7','167.955','-163.422','26.3869','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83386','8','143.145','-163.496','12.564','0','0','0','0','0','0','0','0','0','0','0','0');

-- Pasing Cleric on Bridge of Souls
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83374','18557','558','3','0','0','68.5056','-155.576','15.346','3.13688','86400','0','0','4892','8538','0','2');

DELETE FROM creature_movement WHERE id IN (83374);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83374','1','51.3806','-156.691','15.2135','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83374','2','31.5568','-158.001','14.3307','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83374','3','25.3965','-156.892','13.8555','180000','8337403','0','0','0','0','0','0','0','3.136884','0','0');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (8337403);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8337403','0','15','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Cleric Invisible');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8337403','2','22','35','0','0','0','0','0','0','0','0','0','0','0','0','Temp Friendly Faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8337403','2','3','0','0','0','0','8','0','0','0','0','68.5056','-155.576','15.346','3.13688','Teleport Phasing Cleric To Spawn Location');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8337403','176','22','0','0','0','0','0','0','0','0','0','0','0','0','0','Restore Faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8337403','176','15','33422','0','0','0','0','0','0','0','0','0','0','0','0','Cast Phase-In');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8337403','177','14','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Cleric Visible');

-- Phasing Soldier on Bridge of Souls
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83380','18556','558','3','0','0','119.912','-167.935','13.5053','3.2492','86400','0','0','5914','0','0','2');

DELETE FROM creature_movement WHERE id IN (83380);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83380','1','103.362','-167.144','14.8752','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83380','2','92.2411','-168.086','15.2795','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83380','3','79.6217','-173.368','15.352','180000','8338003','0','0','0','0','0','0','0','3.249197','0','0');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (8338003);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8338003','0','15','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Soldier Invisible');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8338003','2','22','35','0','0','0','0','0','0','0','0','0','0','0','0','Temp Friendly Faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8338003','2','3','0','0','0','0','8','0','0','0','0','119.912','-167.935','13.5053','3.2492','Teleport Phasing Soldier To Spawn Location');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8338003','176','22','0','0','0','0','0','0','0','0','0','0','0','0','0','Restore Faction');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8338003','176','15','33422','0','0','0','0','0','0','0','0','0','0','0','0','Cast Phase-In');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8338003','177','14','10032','0','0','0','0','0','0','0','0','0','0','0','0','Turn Phasing Soldier Visible');

-- 2 Monks In Front Of First Boss
UPDATE creature SET position_x = '28.254129', position_y = '-167.180008', position_z = '14.073889', orientation = '3.190293' WHERE guid = '83387';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83385','18497','558','3','0','0','24.1878','-160.623','13.7844','3.14474','86400','0','0','18959','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (83385);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83387','83385','3');

DELETE FROM creature_addon WHERE guid IN (83385,83387);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('83385','0','0','1','0','375','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('83387','0','0','1','0','375','0',NULL);

-- 2 Monks After First Boss
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83381','18497','558','3','0','0','-127.816','-159.974','26.5891','6.27612','86400','0','0','18333','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83366','18497','558','3','0','0','-123.35','-166.807','26.5891','0.0534143','86400','0','0','18959','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (83381);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83366','83381','3');

DELETE FROM creature_addon WHERE guid IN (83381,83366);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('83381','0','0','1','0','375','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('83366','0','0','1','0','375','0',NULL);

-- Skeleton Group 1 (First Skeleton Room)
UPDATE creature SET position_x = '-170.373764', position_y = '-276.212219', position_z = '31.486916', orientation = '0.135090' WHERE guid = '83404';
UPDATE creature SET position_x = '-160.005112', position_y = '-269.389252', position_z = '26.604630', orientation = '0.969183' WHERE guid = '83390';
UPDATE creature SET position_x = '-151.847702', position_y = '-285.092926', position_z = '25.582790', orientation = '5.936040' WHERE guid = '83405';
UPDATE creature SET position_x = '-159.087357', position_y = '-278.097900', position_z = '26.617495', orientation = '0.132734' WHERE guid = '83389';
UPDATE creature SET position_x = '-161.237961', position_y = '-285.688965', position_z = '26.598896', orientation = '4.204240' WHERE guid = '83395';

UPDATE creature Set SpawnDist=3, MovementType=1 WHERE guid IN (83404,83390,83405,83389,83395);

DELETE FROM creature_linking WHERE master_guid IN (83404);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83390','83404','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83405','83404','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83389','83404','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83395','83404','3');

-- Skeleton Group 2 (First Skeleton Room)
UPDATE creature SET position_x = '-134.852066', position_y = '-247.899017', position_z = '26.430767', orientation = '2.020832' WHERE guid = '83392';
UPDATE creature SET position_x = '-138.643097', position_y = '-256.870087', position_z = '26.750633', orientation = '0.600831' WHERE guid = '83391';
UPDATE creature SET position_x = '-142.841339', position_y = '-251.908981', position_z = '26.759272', orientation = '1.678398' WHERE guid = '83408';
UPDATE creature SET position_x = '-127.825264', position_y = '-250.382584', position_z = '26.349686', orientation = '2.682922' WHERE guid = '83406';

UPDATE creature Set SpawnDist=3, MovementType=1 WHERE guid IN (83392,83391,83408,83406);

DELETE FROM creature_linking WHERE master_guid IN (83392);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83391','83392','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83408','83392','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83406','83392','3');

-- Skeleton Group 3 (First Skeleton Room)
UPDATE creature SET position_x = '-139.068665', position_y = '-299.999939', position_z = '26.423042', orientation = '2.388399' WHERE guid = '83400';
UPDATE creature SET position_x = '-130.669632', position_y = '-304.512787', position_z = '26.377756', orientation = '4.641713' WHERE guid = '83399';
UPDATE creature SET position_x = '-140.272232', position_y = '-310.587402', position_z = '26.591045', orientation = '6.263552' WHERE guid = '83398';
UPDATE creature SET position_x = '-127.904808', position_y = '-294.348419', position_z = '27.071251', orientation = '3.027712' WHERE guid = '83397';
UPDATE creature SET position_x = '-131.805328', position_y = '-313.266907', position_z = '28.232765', orientation = '5.399621' WHERE guid = '83396';

UPDATE creature Set SpawnDist=3, MovementType=1 WHERE guid IN (83400,83399,83398,83397,83396);

DELETE FROM creature_linking WHERE master_guid IN (83400);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83399','83400','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83398','83400','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83397','83400','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83396','83400','3');


-- EXTRA SKELETONS DELETED
DELETE FROM creature WHERE guid=83430;
DELETE FROM creature_addon WHERE guid=83430;
DELETE FROM creature_movement WHERE id=83430;
DELETE FROM game_event_creature WHERE guid=83430;
DELETE FROM game_event_creature_data WHERE guid=83430;
DELETE FROM creature_battleground WHERE guid=83430;
DELETE FROM creature_linking WHERE guid=83430 OR master_guid=83430;
DELETE FROM creature WHERE guid=83421;
DELETE FROM creature_addon WHERE guid=83421;
DELETE FROM creature_movement WHERE id=83421;
DELETE FROM game_event_creature WHERE guid=83421;
DELETE FROM game_event_creature_data WHERE guid=83421;
DELETE FROM creature_battleground WHERE guid=83421;
DELETE FROM creature_linking WHERE guid=83421 OR master_guid=83421;
DELETE FROM creature WHERE guid=83419;
DELETE FROM creature_addon WHERE guid=83419;
DELETE FROM creature_movement WHERE id=83419;
DELETE FROM game_event_creature WHERE guid=83419;
DELETE FROM game_event_creature_data WHERE guid=83419;
DELETE FROM creature_battleground WHERE guid=83419;
DELETE FROM creature_linking WHERE guid=83419 OR master_guid=83419;
DELETE FROM creature WHERE guid=83407;
DELETE FROM creature_addon WHERE guid=83407;
DELETE FROM creature_movement WHERE id=83407;
DELETE FROM game_event_creature WHERE guid=83407;
DELETE FROM game_event_creature_data WHERE guid=83407;
DELETE FROM creature_battleground WHERE guid=83407;
DELETE FROM creature_linking WHERE guid=83407 OR master_guid=83407;
DELETE FROM creature WHERE guid=83402;
DELETE FROM creature_addon WHERE guid=83402;
DELETE FROM creature_movement WHERE id=83402;
DELETE FROM game_event_creature WHERE guid=83402;
DELETE FROM game_event_creature_data WHERE guid=83402;
DELETE FROM creature_battleground WHERE guid=83402;
DELETE FROM creature_linking WHERE guid=83402 OR master_guid=83402;
DELETE FROM creature WHERE guid=83401;
DELETE FROM creature_addon WHERE guid=83401;
DELETE FROM creature_movement WHERE id=83401;
DELETE FROM game_event_creature WHERE guid=83401;
DELETE FROM game_event_creature_data WHERE guid=83401;
DELETE FROM creature_battleground WHERE guid=83401;
DELETE FROM creature_linking WHERE guid=83401 OR master_guid=83401;
DELETE FROM creature WHERE guid=83409;
DELETE FROM creature_addon WHERE guid=83409;
DELETE FROM creature_movement WHERE id=83409;
DELETE FROM game_event_creature WHERE guid=83409;
DELETE FROM game_event_creature_data WHERE guid=83409;
DELETE FROM creature_battleground WHERE guid=83409;
DELETE FROM creature_linking WHERE guid=83409 OR master_guid=83409;
DELETE FROM creature WHERE guid=83394;
DELETE FROM creature_addon WHERE guid=83394;
DELETE FROM creature_movement WHERE id=83394;
DELETE FROM game_event_creature WHERE guid=83394;
DELETE FROM game_event_creature_data WHERE guid=83394;
DELETE FROM creature_battleground WHERE guid=83394;
DELETE FROM creature_linking WHERE guid=83394 OR master_guid=83394;
DELETE FROM creature WHERE guid=83410;
DELETE FROM creature_addon WHERE guid=83410;
DELETE FROM creature_movement WHERE id=83410;
DELETE FROM game_event_creature WHERE guid=83410;
DELETE FROM game_event_creature_data WHERE guid=83410;
DELETE FROM creature_battleground WHERE guid=83410;
DELETE FROM creature_linking WHERE guid=83410 OR master_guid=83410;
DELETE FROM creature WHERE guid=83393;
DELETE FROM creature_addon WHERE guid=83393;
DELETE FROM creature_movement WHERE id=83393;
DELETE FROM game_event_creature WHERE guid=83393;
DELETE FROM game_event_creature_data WHERE guid=83393;
DELETE FROM creature_battleground WHERE guid=83393;
DELETE FROM creature_linking WHERE guid=83393 OR master_guid=83393;
DELETE FROM creature WHERE guid=83403;
DELETE FROM creature_addon WHERE guid=83403;
DELETE FROM creature_movement WHERE id=83403;
DELETE FROM game_event_creature WHERE guid=83403;
DELETE FROM game_event_creature_data WHERE guid=83403;
DELETE FROM creature_battleground WHERE guid=83403;
DELETE FROM creature_linking WHERE guid=83403 OR master_guid=83403;
-- Extra NPC Deleted
DELETE FROM creature WHERE guid=83413;
DELETE FROM creature_addon WHERE guid=83413;
DELETE FROM creature_movement WHERE id=83413;
DELETE FROM game_event_creature WHERE guid=83413;
DELETE FROM game_event_creature_data WHERE guid=83413;
DELETE FROM creature_battleground WHERE guid=83413;
DELETE FROM creature_linking WHERE guid=83413 OR master_guid=83413;
DELETE FROM creature WHERE guid=83414;
DELETE FROM creature_addon WHERE guid=83414;
DELETE FROM creature_movement WHERE id=83414;
DELETE FROM game_event_creature WHERE guid=83414;
DELETE FROM game_event_creature_data WHERE guid=83414;
DELETE FROM creature_battleground WHERE guid=83414;
DELETE FROM creature_linking WHERE guid=83414 OR master_guid=83414;


-- 2 Pathing SoulPriests After First Skeleton Room
UPDATE creature SET position_x = '-145.785553', position_y = '-376.330383', position_z = '26.591452', orientation = '1.576305', SpawnDist=0, MovementType=2 WHERE guid = '83411';
UPDATE creature SET position_x = '-143.096008', position_y = '-376.454315', position_z = '26.591816', orientation = '1.533893' WHERE guid = '83412';

DELETE FROM creature_linking WHERE master_guid IN (83411);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83412','83411','515');

DELETE FROM creature_movement WHERE id IN (83411);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83411','1','-146.241','-362.348','26.5907','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83411','2','-146.111','-341.64','26.5907','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83411','3','-143.813','-348.902','26.5907','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83411','4','-143.79','-363.792','26.5907','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83411','5','-143.978','-380.805','26.5907','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83411','6','-138.339','-385.452','26.5907','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83411','7','-120.94','-385.288','26.5891','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83411','8','-104.938','-385.534','26.5891','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83411','9','-110.419','-387.719','26.5891','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83411','10','-121.804','-387.763','26.5891','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83411','11','-137.504','-387.664','26.5891','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83411','12','-145.998','-380.364','26.5896','0','0','0','0','0','0','0','0','0','0','0','0');

-- Skeleton Group 1 (Final Boss Room)
UPDATE creature SET position_x = '-52.285065', position_y = '-371.333252', position_z = '26.586025', orientation = '4.769728', SpawnDist=0, MovementType=2 WHERE guid = '83415';

insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83414','18700','558','3','0','0','-76.0561','-370.413','26.589','4.74303','86400','3','0','3416','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83413','18700','558','3','0','0','-66.7684','-370.037','26.5861','6.22586','86400','3','0','3302','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83403','18700','558','3','0','0','-65.8798','-377.71','26.5866','4.88361','86400','3','0','3416','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83393','18700','558','3','0','0','-57.0486','-374.216','26.5868','1.60693','86400','3','0','3416','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83410','18700','558','3','0','0','-54.8159','-365.368','26.5916','1.39252','86400','3','0','3416','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83394','18700','558','3','0','0','-44.5335','-365.745','26.5908','5.09724','86400','3','0','3302','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83409','18700','558','3','0','0','-44.8718','-377.895','26.5849','4.98336','86400','3','0','3416','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83401','18700','558','3','0','0','-56.3714','-381.359','26.5864','3.30182','86400','3','0','3302','0','0','1');

DELETE FROM creature_linking WHERE master_guid IN (83415);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83414','83415','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83413','83415','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83403','83415','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83393','83415','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83410','83415','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83394','83415','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83409','83415','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83401','83415','3');

DELETE FROM creature_movement WHERE id IN (83415);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83415','1','-49.5313','-384.348','26.5866','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83415','2','-43.3234','-388.675','26.5852','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83415','3','-49.4948','-384.557','26.5857','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83415','4','-51.8242','-371.816','26.5857','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83415','5','-50.149','-362.456','26.598','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83415','6','-51.5602','-371.933','26.586','0','0','0','0','0','0','0','0','0','0','0','0');

-- Skeleton Group 2 (Final Boss Room)
UPDATE creature SET position_x = '-45.264286', position_y = '-405.536774', position_z = '28.356083', orientation = '2.743402', SpawnDist=3, MovementType=1 WHERE guid = '83418';
UPDATE creature SET position_x = '-58.121181', position_y = '-408.039917', position_z = '29.146114', orientation = '5.946255', SpawnDist=3, MovementType=1 WHERE guid = '83424';
UPDATE creature SET position_x = '-49.288597', position_y = '-410.636749', position_z = '27.713062', orientation = '1.682329', SpawnDist=3, MovementType=1 WHERE guid = '83420';
UPDATE creature SET position_x = '-43.813904', position_y = '-398.606262', position_z = '26.813101', orientation = '2.957031', SpawnDist=3, MovementType=1 WHERE guid = '83417';
UPDATE creature SET position_x = '-47.582336', position_y = '-395.320129', position_z = '27.591200', orientation = '3.841390', SpawnDist=3, MovementType=1 WHERE guid = '83426';
UPDATE creature SET position_x = '-52.001617', position_y = '-394.903564', position_z = '27.851955', orientation = '4.649564', SpawnDist=3, MovementType=1 WHERE guid = '83416';
UPDATE creature SET position_x = '-57.930328', position_y = '-397.835663', position_z = '27.968586', orientation = '3.905006', SpawnDist=3, MovementType=1 WHERE guid = '83427';
UPDATE creature SET position_x = '-61.002075', position_y = '-402.608032', position_z = '29.161417', orientation = '6.159885', SpawnDist=3, MovementType=1 WHERE guid = '83423';
UPDATE creature SET position_x = '-55.614651', position_y = '-402.252411', position_z = '30.469250', orientation = '1.829985', SpawnDist=3, MovementType=1 WHERE guid = '83422';
UPDATE creature SET position_x = '-50.732841', position_y = '-404.121582', position_z = '30.253084', orientation = '6.117473', SpawnDist=3, MovementType=1 WHERE guid = '83425';

DELETE FROM creature_linking WHERE master_guid IN (83418);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83424','83418','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83420','83418','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83417','83418','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83426','83418','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83416','83418','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83427','83418','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83423','83418','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83422','83418','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83425','83418','3');

-- Skeleton Group 3 (Final Boss Room)
UPDATE creature SET position_x = '-19.791372', position_y = '-365.722565', position_z = '26.583307', orientation = '3.133739' WHERE guid = '83428';

UPDATE creature SET position_x = '-30.294191', position_y = '-352.081787', position_z = '28.947195', orientation = '1.973717' WHERE guid = '83429';
UPDATE creature SET position_x = '-19.504272', position_y = '-358.347931', position_z = '26.595013', orientation = '5.592045' WHERE guid = '83431';
UPDATE creature SET position_x = '-18.740747', position_y = '-379.275635', position_z = '19.410315', orientation = '1.389373' WHERE guid = '83432';
UPDATE creature SET position_x = '-12.912337', position_y = '-361.958405', position_z = '26.582373', orientation = '1.890458' WHERE guid = '83439';
UPDATE creature SET position_x = '-27.757481', position_y = '-366.651703', position_z = '26.584764', orientation = '2.780314' WHERE guid = '83437';
UPDATE creature SET position_x = '-21.976477', position_y = '-372.255341', position_z = '23.407911', orientation = '1.958783' WHERE guid = '83433';
UPDATE creature SET position_x = '-15.082137', position_y = '-371.850861', position_z = '23.710218', orientation = '0.629103' WHERE guid = '83434';
UPDATE creature SET position_x = '-18.710443', position_y = '-373.630157', position_z = '22.355282', orientation = '1.456128' WHERE guid = '83438';
UPDATE creature SET position_x = '-26.029779', position_y = '-359.785522', position_z = '26.597061', orientation = '1.054789' WHERE guid = '83435';
UPDATE creature SET position_x = '-37.392403', position_y = '-352.116333', position_z = '28.924486', orientation = '2.125287' WHERE guid = '83436';

DELETE FROM creature_linking WHERE master_guid IN (83428);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83429','83428','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83431','83428','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83432','83428','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83439','83428','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83437','83428','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83433','83428','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83434','83428','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83438','83428','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83435','83428','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83436','83428','3');

-- Skeleton Group 4 (Final Boss Room)
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83402','18702','558','3','0','0','-23.6649','-410.292','26.5929','3.22013','86400','0','0','22770','8799','0','0');

insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83407','18700','558','3','0','0','-27.7304','-408.642','26.5899','3.1306','86400','3','0','3302','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83419','18700','558','3','0','0','-35.0918','-419.816','26.6244','3.91914','86400','3','0','3416','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83421','18700','558','3','0','0','-33.8195','-400.51','24.5188','1.48362','86400','3','0','3302','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('83430','18700','558','3','0','0','-29.1455','-393.659','20.9314','2.7379','86400','3','0','3416','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101316','18700','558','3','0','0','-18.1263','-405.396','25.3244','5.70121','86400','3','0','3302','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101317','18700','558','3','0','0','-10.0026','-402.247','22.8378','0.231695','86400','3','0','3416','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101318','18700','558','3','0','0','-8.65687','-396.45','19.4094','1.97999','86400','3','0','3416','0','0','1');

DELETE FROM creature_linking WHERE master_guid IN (83402);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83407','83402','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83419','83402','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83421','83402','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83430','83402','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101316','83402','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101317','83402','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101318','83402','3');

-- MORE DELETED NPC
DELETE FROM creature WHERE guid=83445;
DELETE FROM creature_addon WHERE guid=83445;
DELETE FROM creature_movement WHERE id=83445;
DELETE FROM game_event_creature WHERE guid=83445;
DELETE FROM game_event_creature_data WHERE guid=83445;
DELETE FROM creature_battleground WHERE guid=83445;
DELETE FROM creature_linking WHERE guid=83445 OR master_guid=83445;
DELETE FROM creature WHERE guid=83446;
DELETE FROM creature_addon WHERE guid=83446;
DELETE FROM creature_movement WHERE id=83446;
DELETE FROM game_event_creature WHERE guid=83446;
DELETE FROM game_event_creature_data WHERE guid=83446;
DELETE FROM creature_battleground WHERE guid=83446;
DELETE FROM creature_linking WHERE guid=83446 OR master_guid=83446;

-- Skeleton Group 5 (Final Boss Room)
UPDATE creature SET position_x = '7.240323', position_y = '-398.061554', position_z = '19.640959', orientation = '1.853545', SpawnDist=3, MovementType=1 WHERE guid = '83442';
UPDATE creature SET position_x = '7.062633', position_y = '-402.780426', position_z = '23.253195', orientation = '6.036575', SpawnDist=3, MovementType=1 WHERE guid = '83443';
UPDATE creature SET position_x = '12.875730', position_y = '-404.707733', position_z = '24.757910', orientation = '5.471088', SpawnDist=3, MovementType=1 WHERE guid = '83448';
UPDATE creature SET position_x = '21.415304', position_y = '-402.563446', position_z = '23.217337', orientation = '0.610259', SpawnDist=3, MovementType=1 WHERE guid = '83449';
UPDATE creature SET position_x = '22.944016', position_y = '-397.047546', position_z = '24.381039', orientation = '2.034186', SpawnDist=3, MovementType=1 WHERE guid = '83450';
UPDATE creature SET position_x = '32.387974', position_y = '-403.327545', position_z = '26.583982', orientation = '5.840224', SpawnDist=3, MovementType=1 WHERE guid = '83447';
UPDATE creature SET position_x = '29.493336', position_y = '-413.012451', position_z = '26.590525', orientation = '4.227801', SpawnDist=3, MovementType=1 WHERE guid = '83444';
UPDATE creature SET position_x = '3.638356', position_y = '-413.636902', position_z = '26.582325', orientation = '4.746952', SpawnDist=3, MovementType=1 WHERE guid = '83441';
UPDATE creature SET position_x = '11.628613', position_y = '-416.594940', position_z = '26.587507', orientation = '4.788576', SpawnDist=3, MovementType=1 WHERE guid = '83440';
UPDATE creature SET position_x = '23.342031', position_y = '-416.118439', position_z = '26.598295', orientation = '0.175933', SpawnDist=3, MovementType=1 WHERE guid = '83451';

UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (83452);
DELETE FROM creature_movement WHERE id IN (83452);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83452','1','17.7547','-409.4','26.5852','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83452','2','28.659','-408.99','26.5871','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83452','3','28.7313','-400.716','26.5842','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83452','4','28.9641','-409.005','26.5868','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83452','5','17.7235','-409.554','26.5868','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('83452','6','7.51309','-409.564','26.5839','0','0','0','0','0','0','0','0','0','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (83452);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83442','83452','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83443','83452','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83448','83452','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83449','83452','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83450','83452','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83447','83452','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83444','83452','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83441','83452','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83440','83452','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('83451','83452','3');

-- Skeleton Group 6 (Final Boss Room)
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101319','18700','558','3','0','0','17.9402','-381.513','20.5501','4.52233','86400','3','0','3302','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101320','18700','558','3','0','0','22.4457','-377.248','23.9979','1.7648','86400','3','0','3302','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101321','18700','558','3','0','0','21.13','-370.713','24.6083','1.57552','86400','3','0','3302','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101322','18700','558','3','0','0','13.1984','-369.914','25.2534','1.30849','86400','3','0','3416','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101323','18700','558','3','0','0','6.13705','-374.024','22.0521','3.85867','86400','3','0','3302','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101324','18700','558','3','0','0','2.98452','-366.832','26.5822','1.24408','86400','3','0','3416','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101325','18700','558','3','0','0','14.3194','-360.835','26.6053','0.44062','86400','3','0','3302','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101326','18700','558','3','0','0','22.9908','-361.364','26.6062','0.315742','86400','3','0','3416','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101327','18700','558','3','0','0','31.5531','-364.96','27.9252','0.190078','86400','3','0','3416','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101328','18700','558','3','0','0','35.8048','-367.576','30.2166','5.2339','86400','3','0','3302','0','0','1');

DELETE FROM creature_linking WHERE master_guid IN (101319);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101320','101319','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101321','101319','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101322','101319','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101323','101319','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101324','101319','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101325','101319','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101326','101319','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101327','101319','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101328','101319','3');

-- Move Final Boss To Correct Spawn Location
UPDATE creature SET position_x = '67.279091', position_y = '-387.560242', position_z = '26.588747', orientation = '2.968037' WHERE guid = '83453';





-- ======================
-- Gameobject Spawn Fixes 
-- ======================
-- Minerals and Herbs Not Spawned in Heroic Mode
UPDATE gameobject SET SpawnMask=3, SpawnTimeSecs=86400 WHERE map=558 AND ID IN (181270,181275,181276,181278,181556,181569);

-- Delete Non-Existant Soul Mirror Spawns
DELETE FROM gameobject WHERE guid = '50351';
DELETE FROM game_event_gameobject WHERE guid = '50351';
DELETE FROM gameobject_battleground WHERE guid = '50351';
DELETE FROM gameobject WHERE guid = '50350';
DELETE FROM game_event_gameobject WHERE guid = '50350';
DELETE FROM gameobject_battleground WHERE guid = '50350';
DELETE FROM gameobject WHERE guid = '50349';
DELETE FROM game_event_gameobject WHERE guid = '50349';
DELETE FROM gameobject_battleground WHERE guid = '50349';
DELETE FROM gameobject WHERE guid = '50352';

-- Fix Soul Mirror Spawn Location (Front Door)
DELETE FROM gameobject WHERE guid IN (50353);
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('50353','183441','558','3','40.87143','12.57517','4.040081','2.809975','0','0','0','0','120','100','1');

-- Fix Soul Mirror Spawn Location (Final Boss)
DELETE FROM gameobject WHERE guid IN (50352);
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('50352','183441','558','3','61.9334','-397.812','30','2.84235','0','0','0.988828','0.149064','120','100','1');



-- Add Missing Mineral Spawns
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('87613','181556','558','3','254.377','-153.02','30.985','0.751633','0','0','0.367032','0.930208','86400','100','1');



-- ===========================================
-- Creature Spawn Time Fixes (24 Hour Respawn) - Confirmed No Special Short Spawn Time NPC
-- ===========================================
UPDATE creature SET SpawnTimeSecs=86400 WHERE map IN (558);


















