-- Shadowmoon Valley - zone entrance event
-- Bonechewer Messenger - (Shadowmoon Valley)
DELETE FROM `creature` WHERE `guid` IN (140651,140647,140648,140649,140650);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
('140651','21244','530','1','0','0','-2977.49','3384.37','-2.32643','6.0012','300','0','0','4906','0','0','2'),
-- Bonechewer Marauder,
('140647','21245','530','1','0','0','-2973.17','3382.29','-2.8634','5.85669','300','0','0','4057','0','0','0'),
('140648','21245','530','1','0','0','-2977.81','3381.37','-2.6299','5.84049','300','0','0','4057','0','0','0'),
('140649','21245','530','1','0','0','-2975.02','3386.34','-2.31233','5.80829','300','0','0','4057','0','0','0'),
('140650','21245','530','1','0','0','-2978.72','3385','-2.12195','5.86094','300','0','0','4057','0','0','0');

DELETE FROM creature_movement WHERE id = 140651;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(140651,1,-2937.67,3368.64,-2.94686,1000,2124401,5.82874,0,0),
(140651,2,-2908.6,3352.87,-8.9373,0,0,5.94419,0,0),
(140651,3,-2870.56,3334.28,-14.6119,0,0,6.1264,0,0),
(140651,4,-2838.55,3328.12,-17.8089,0,0,6.09498,0,0),
(140651,5,-2799.63,3325.48,-13.6239,0,0,6.27169,0,0),
(140651,6,-2774.5,3325.19,-6.52773,0,0,6.06121,0,0),
(140651,7,-2759.81,3318.71,-1.21886,0,0,5.58369,0,0),
(140651,8,-2753.67,3300.73,0.404458,0,0,4.51555,0,0),
(140651,9,-2762.81,3287.77,1.64481,2000,2124402,3.84012,0,0),
(140651,10,-2799.17,3251.58,5.24811,0,0,3.98149,0,0),
(140651,11,-2817.62,3230.52,10.9412,0,0,3.9972,0,0),
(140651,12,-2836.91,3208.31,5.78583,0,0,3.9972,0,0),
(140651,13,-2858.83,3186.2,9.36214,0,0,3.89509,0,0),
(140651,14,-2893.35,3135.73,23.5054,0,0,3.88095,0,0),
(140651,15,-2912.03,3112.6,30.9569,0,0,4.43668,0,0),
(140651,16,-2916.88,3088.77,37.5773,0,0,4.8333,0,0),
(140651,17,-2909.69,3051.5,46.2469,0,0,4.72335,0,0),
(140651,18,-2912.2,3036.69,49.4472,0,0,4.27174,0,0),
(140651,19,-2920.07,3026.1,53.028,0,0,3.77145,0,0),
(140651,20,-2947.36,3005.48,63.1732,0,0,3.73658,0,0),
(140651,21,-2979.29,2986.76,74.036,5000,2124403,3.77507,0,0),
(140651,22,-3000.95,2972.91,80.7834,0,0,3.89288,0,0),
(140651,23,-3014.11,2962.72,84.2728,0,0,3.93293,0,0),
(140651,24,-3034.623291,2937.464600,86.423225,10000,2124404,4.975207,0,0),
(140651,25,-2998.161377,2973.201904,80.465218,0,0,3.880181,0,0);

DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2124401 AND 2124404; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2124401,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2124402,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2124403,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(2124404,3,0,0,0,0,0,0,2000005765,0,0,0,0,0,0,0,''),
(2124404,5,10,21249,20000,0,0,0,0,0,0,0,-3040.230713,2923.361572,86.667702,0.959264,'summon - Wrathstalker'),
(2124404,5,10,21249,20000,0,0,0,0,0,0,0,-3049.942139,2944.359863,91.529282,6.221430,'summon - Wrathstalker'),
(2124404,5,10,21249,20000,0,0,0,0,0,0,0,-3018.137207,2925.356201,90.870773,1.300909,'summon - Wrathstalker'),
(2124404,5,10,21249,20000,0,0,0,0,0,0,0,-3047.662842,2927.633301,86.636345,0.723925,'summon - Wrathstalker');

DELETE FROM dbscripts_on_creature_death WHERE id = 21244;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21244,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');

-- Bonechewer Marauder linked to Bonechewer Messenger
DELETE FROM creature_linking WHERE guid IN (140647, 140648, 140649, 140650);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(140647, 140651, 643),
(140648, 140651, 643),
(140649, 140651, 643),
(140650, 140651, 643);
-- duplicates Removed

DELETE FROM creature WHERE guid IN (74476,74477,74478,74479);
DELETE FROM creature_addon WHERE guid IN (74476,74477,74478,74479);
DELETE FROM creature_movement WHERE id IN (74476,74477,74478,74479);
DELETE FROM game_event_creature WHERE guid IN (74476,74477,74478,74479);
DELETE FROM game_event_creature_data WHERE guid IN (74476,74477,74478,74479);
DELETE FROM creature_battleground WHERE guid IN (74476,74477,74478,74479);
DELETE FROM creature_linking WHERE guid IN (74476,74477,74478,74479) OR master_guid IN (74476,74477,74478,74479);


-- Missing Backport Required
DELETE FROM `db_script_string` WHERE `entry`=2000005765;
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000005765','There they are!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL);


