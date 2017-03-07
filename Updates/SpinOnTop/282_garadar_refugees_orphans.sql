-- ************************
-- Misc
-- ************************

DELETE FROM `creature` WHERE `guid`=86753 AND `id`=17578; -- Delete a target dummy that should not exist

DELETE FROM `dbscripts_on_spell` WHERE `id` IN(33423,33424,33425);
INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(33423, 0, 1, 0, 0, 19139, 5, 7, 33, 0, 0, 0, 0, 0, 0, 0, 'Nagrand Target Dummy - OneShotWound'),
(33424, 0, 1, 0, 0, 19139, 5, 7, 33, 0, 0, 0, 0, 0, 0, 0, 'Nagrand Target Dummy - OneShotWound'),
(33425, 0, 1, 0, 0, 19139, 5, 7, 34, 0, 0, 0, 0, 0, 0, 0, 'Nagrand Target Dummy - OneShotWoundCritical'); 

-- creature_templates
UPDATE `creature_template` SET `SpeedWalk`=1, `SpeedRun`=(6.94444/7) WHERE `entry` IN(18296,18299); -- Orphan speed

-- Models
UPDATE `creature_model_info` SET `modelid_alternative`=20545 WHERE `modelid`=20546;
UPDATE `creature_model_info` SET `modelid_alternative`=20542 WHERE `modelid`=20545;

-- ************************
-- Linking
-- ************************
DELETE FROM `creature_linking` WHERE `master_guid` IN(151239,151233,65634); 
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(151255,151239,512), -- Refugee patrol 1
(151249,151233,512), -- Refugee patrol 2

(65635,65634,512), -- Orphans
(151256,65634,512), -- Orphans
(151257,65634,512); -- Orphans

-- ************************
-- Creature Spawns
-- ************************

-- ----------
-- Relocate Sunspring Post Refugees
-- ----------
UPDATE `creature` SET `guid`=151227 WHERE `guid`=65614 AND `id`=18293;
UPDATE `creature_addon` SET `guid`=151227 WHERE `guid`=65614;

UPDATE `creature` SET `guid`=151228 WHERE `guid`=65615 AND `id`=18293;
UPDATE `creature_addon` SET `guid`=151228 WHERE `guid`=65615;

UPDATE `creature` SET `guid`=151229 WHERE `guid`=65616 AND `id`=18293;

UPDATE `creature` SET `guid`=151230 WHERE `guid`=65617 AND `id`=18293;

UPDATE `creature` SET `guid`=151231 WHERE `guid`=65619 AND `id`=18293;

UPDATE `creature` SET `guid`=151232 WHERE `guid`=65620 AND `id`=18293;
UPDATE `creature_addon` SET `guid`=151232 WHERE `guid`=65620;

UPDATE `creature` SET `guid`=151233 WHERE `guid`=65621 AND `id`=18293;

UPDATE `creature` SET `guid`=151234 WHERE `guid`=65622 AND `id`=18293;

UPDATE `creature` SET `guid`=151235 WHERE `guid`=65623 AND `id`=18293;

DELETE FROM `creature_template_addon` WHERE `entry`=18293; -- More creatures stand than sit, so it makes no sense to do this here anymore.
DELETE FROM `creature_addon` WHERE `guid` IN(65621,65622,65623); -- Delete useless addons

-- ----------
-- Relocate Bleeding Hollow Refugees
-- ----------
UPDATE `creature` SET `guid`=151240 WHERE `guid`=65601 AND `id`=18292;

UPDATE `creature` SET `guid`=151241 WHERE `guid`=65602 AND `id`=18292;

UPDATE `creature` SET `guid`=151242 WHERE `guid`=65603 AND `id`=18292;

UPDATE `creature` SET `guid`=151243 WHERE `guid`=65604 AND `id`=18292;

UPDATE `creature` SET `guid`=151244 WHERE `guid`=65605 AND `id`=18292;

UPDATE `creature` SET `guid`=151245 WHERE `guid`=65606 AND `id`=18292;

UPDATE `creature` SET `guid`=151246 WHERE `guid`=65608 AND `id`=18292;
UPDATE `creature_addon` SET `guid`=151246 WHERE `guid`=65608;

UPDATE `creature` SET `guid`=151247 WHERE `guid`=65609 AND `id`=18292;
UPDATE `creature_addon` SET `guid`=151247 WHERE `guid`=65609;

UPDATE `creature` SET `guid`=151248 WHERE `guid`=65610 AND `id`=18292;

UPDATE `creature` SET `guid`=151249 WHERE `guid`=65611 AND `id`=18292;

UPDATE `creature` SET `guid`=151250 WHERE `guid`=65612 AND `id`=18292;

DELETE FROM `creature_template_addon` WHERE `entry`=18292; -- More creatures stand than lie down, so it makes no sense to do this here anymore.
DELETE FROM `creature_addon` WHERE `guid` IN(65611,65612); -- Delete useless addons

-- ----------
-- Relocate Sunspring Orphans
-- ----------
UPDATE `creature` SET `guid`=151256 WHERE `guid`=65626 AND `id`=18296;
UPDATE `creature` SET `guid`=151257 WHERE `guid`=65627 AND `id`=18296;
UPDATE `creature` SET `guid`=151258 WHERE `guid`=65628 AND `id`=18296;
UPDATE `creature` SET `guid`=151259 WHERE `guid`=65629 AND `id`=18296;
UPDATE `creature` SET `guid`=151260 WHERE `guid`=65630 AND `id`=18296;
DELETE FROM `creature` WHERE `guid` BETWEEN 65631 AND 65633; -- Delete 3 spawns

-- ----------
-- Add missing spawns
-- ----------
DELETE FROM `creature` WHERE `guid` BETWEEN 151236 AND 151239;
DELETE FROM `creature` WHERE `guid` BETWEEN 151251 AND 151255;
DELETE FROM `creature` WHERE `guid` BETWEEN 151261 AND 151275;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
-- Sunspring Post Refugee
('151236', '18293', '530', '1', '0', '0', '-1236.125', '7318.438', '34.14582', '1.413717', '300', '0', '0', '6900', '0', '0', '0'),
('151237', '18293', '530', '1', '0', '0', '-1231.991', '7319.694', '34.14589', '2.530727', '300', '0', '0', '6900', '0', '0', '0'),
('151238', '18293', '530', '1', '0', '0', '-1233.276', '7317.435', '34.14582', '1.884956', '300', '0', '0', '6900', '0', '0', '0'),
('151239', '18293', '530', '1', '0', '0', '-1359.02', '7232.19', '33.1641', '0.8193725', '300', '0', '0', '6900', '0', '0', '2'), -- Patrol

-- Bleeding Hollow Refugee
('151251', '18292', '530', '1', '0', '0', '-1238.738', '7318.203', '34.14579', '1.064651', '300', '0', '0', '1651', '0', '0', '0'),
('151252', '18292', '530', '1', '0', '0', '-1239.813', '7321.254', '34.14585', '0.1570796', '300', '0', '0', '1651', '0', '0', '0'),
('151253', '18292', '530', '1', '0', '0', '-1231.991', '7319.694', '34.14589', '2.530727', '300', '0', '0', '1651', '0', '0', '0'),
('151254', '18292', '530', '1', '0', '0', '-1233.276', '7317.435', '34.14582', '1.884956', '300', '0', '0', '1651', '0', '0', '0'),
('151255', '18292', '530', '1', '0', '0', '-1360.445', '7230.681', '33.12306', '0.8193725', '300', '0', '0', '1651', '0', '0', '0'), -- Patrol

-- Sunspring Post Orphan
('151261', '18296', '530', '1', '0', '0', '-1238.738', '7318.203', '34.14579', '1.064651', '300', '0', '0', '3600', '0', '0', '0'),
('151262', '18296', '530', '1', '0', '0', '-1239.813', '7321.254', '34.14585', '0.1570796', '300', '0', '0', '3600', '0', '0', '0'),
('151263', '18296', '530', '1', '0', '0', '-1236.125', '7318.438', '34.14582', '1.413717', '300', '0', '0', '3600', '0', '0', '0'),
('151264', '18296', '530', '1', '0', '0', '-1231.991', '7319.694', '34.14589', '2.530727', '300', '0', '0', '3600', '0', '0', '0'),
('151265', '18296', '530', '1', '0', '0', '-1233.276', '7317.435', '34.14582', '1.884956', '300', '0', '0', '3600', '0', '0', '0'),

('151266', '18296', '530', '1', '0', '0', '-1240.434', '7317.608', '34.05803', '0.8726646', '300', '0', '0', '3600', '0', '0', '0'),
('151267', '18296', '530', '1', '0', '0', '-1237.264', '7317.44', '34.14582', '1.361357', '300', '0', '0', '3600', '0', '0', '0'),
('151268', '18296', '530', '1', '0', '0', '-1233.896', '7314.2', '33.8602', '1.815142', '300', '0', '0', '3600', '0', '0', '0'),
('151269', '18296', '530', '1', '0', '0', '-1240.306', '7319.542', '34.14584', '0.4886922', '300', '0', '0', '3600', '0', '0', '0'),
('151270', '18296', '530', '1', '0', '0', '-1239.64', '7315.324', '33.83245', '1.343904', '300', '0', '0', '3600', '0', '0', '0'),
('151271', '18296', '530', '1', '0', '0', '-1240.962', '7322.252', '34.14582', '0.1745329', '300', '0', '0', '3600', '0', '0', '0'),
('151272', '18296', '530', '1', '0', '0', '-1231.66', '7317.985', '34.14583', '2.303835', '300', '0', '0', '3600', '0', '0', '0'),
('151273', '18296', '530', '1', '0', '0', '-1234.854', '7317.321', '34.14582', '1.605703', '300', '0', '0', '3600', '0', '0', '0'),
('151274', '18296', '530', '1', '0', '0', '-1229.214', '7319.086', '34.14582', '2.722714', '300', '0', '0', '3600', '0', '0', '0'),
('151275', '18296', '530', '1', '0', '0', '-1231.389', '7316.122', '34.14579', '2.146755', '300', '0', '0', '3600', '0', '0', '0');

-- ************************
-- Addons
-- ************************
DELETE FROM `creature_addon` WHERE `guid` IN(151240,151241,151248,151243,151242,151231,151229,151230);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(151240, 0, 3, 1, 16, 0, 0, NULL),
(151241, 0, 3, 1, 16, 0, 0, NULL),
(151248, 0, 3, 1, 16, 0, 0, NULL),
(151243, 0, 3, 1, 16, 0, 0, NULL),
(151242, 0, 3, 1, 16, 0, 0, NULL),
(151231, 0, 1, 1, 16, 0, 0, NULL),
(151229, 0, 1, 1, 16, 0, 0, NULL),
(151230, 0, 1, 1, 16, 0, 0, NULL);


-- ************************
-- Pooling
-- ************************
-- Pooling around the Mag'har Pitfighter.
-- 5 spawnpoints.
-- 3 possible cases for each spawnpoint: 
-- 1: One Bleeding Hollow Refugee
-- 2: One Sunspring Post Refugee
-- 3: Three Sunspring Post Orphans
DELETE FROM `pool_creature` WHERE `pool_entry` BETWEEN 25624 AND 25633;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
-- #Spawnpoint 1
(151237, 25624, 0, 'Maghar Pitfighter Spectators (Sunspring Post Refugee)'),
(151253, 25624, 0, 'Maghar Pitfighter Spectators (Bleeding Hollow Refugee)'),

(151264, 25629, 0, 'Maghar Pitfighter Spectators (Sunspring Post Orphan)'),
(151274, 25629, 0, 'Maghar Pitfighter Spectators (Sunspring Post Orphan)'),
(151272, 25629, 0, 'Maghar Pitfighter Spectators (Sunspring Post Orphan)'),
-- #Spawnpoint 2
(151238, 25625, 0, 'Maghar Pitfighter Spectators (Sunspring Post Refugee)'),
(151254, 25625, 0, 'Maghar Pitfighter Spectators (Bleeding Hollow Refugee)'),

(151265, 25630, 0, 'Maghar Pitfighter Spectators (Sunspring Post Orphan)'),
(151275, 25630, 0, 'Maghar Pitfighter Spectators (Sunspring Post Orphan)'),
(151268, 25630, 0, 'Maghar Pitfighter Spectators (Sunspring Post Orphan)'),
-- #Spawnpoint 3
(151236, 25626, 0, 'Maghar Pitfighter Spectators (Sunspring Post Refugee)'),
(151250, 25626, 0, 'Maghar Pitfighter Spectators (Bleeding Hollow Refugee)'),

(151263, 25631, 0, 'Maghar Pitfighter Spectators (Sunspring Post Orphan)'),
(151273, 25631, 0, 'Maghar Pitfighter Spectators (Sunspring Post Orphan)'),
(151267, 25631, 0, 'Maghar Pitfighter Spectators (Sunspring Post Orphan)'),
-- #Spawnpoint 4
(151234, 25627, 0, 'Maghar Pitfighter Spectators (Sunspring Post Refugee)'),
(151251, 25627, 0, 'Maghar Pitfighter Spectators (Bleeding Hollow Refugee)'),

(151261, 25632, 0, 'Maghar Pitfighter Spectators (Sunspring Post Orphan)'),
(151270, 25632, 0, 'Maghar Pitfighter Spectators (Sunspring Post Orphan)'),
(151266, 25632, 0, 'Maghar Pitfighter Spectators (Sunspring Post Orphan)'),
-- #Spawnpoint 5
(151235, 25628, 0, 'Maghar Pitfighter Spectators (Sunspring Post Refugee)'),
(151252, 25628, 0, 'Maghar Pitfighter Spectators (Bleeding Hollow Refugee)'),

(151262, 25633, 0, 'Maghar Pitfighter Spectators (Sunspring Post Orphan)'),
(151269, 25633, 0, 'Maghar Pitfighter Spectators (Sunspring Post Orphan)'),
(151271, 25633, 0, 'Maghar Pitfighter Spectators (Sunspring Post Orphan)');

DELETE FROM `pool_template` WHERE `entry` BETWEEN 25624 AND 25633;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(25624, 1, 'Maghar Pitfighter Spectators (Bleeding Hollow/Sunspring Post Refugee)'),
(25625, 1, 'Maghar Pitfighter Spectators (Bleeding Hollow/Sunspring Post Refugee)'),
(25626, 1, 'Maghar Pitfighter Spectators (Bleeding Hollow/Sunspring Post Refugee)'),
(25627, 1, 'Maghar Pitfighter Spectators (Bleeding Hollow/Sunspring Post Refugee)'),
(25628, 1, 'Maghar Pitfighter Spectators (Bleeding Hollow/Sunspring Post Refugee)'),
-- Orphans
(25629, 3, 'Maghar Pitfighter Spectators (Group of 3 orphans)'),
(25630, 3, 'Maghar Pitfighter Spectators (Group of 3 orphans)'),
(25631, 3, 'Maghar Pitfighter Spectators (Group of 3 orphans)'),
(25632, 3, 'Maghar Pitfighter Spectators (Group of 3 orphans)'),
(25633, 3, 'Maghar Pitfighter Spectators (Group of 3 orphans)');

DELETE FROM `pool_pool` WHERE `mother_pool` BETWEEN 28000 AND 28004;
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES 
(25624, 28000, 0, 'Maghar Pitfighter Spectators'),
(25629, 28000, 0, 'Maghar Pitfighter Spectators'),

(25625, 28001, 0, 'Maghar Pitfighter Spectators'),
(25630, 28001, 0, 'Maghar Pitfighter Spectators'),

(25626, 28002, 0, 'Maghar Pitfighter Spectators'),
(25631, 28002, 0, 'Maghar Pitfighter Spectators'),

(25627, 28003, 0, 'Maghar Pitfighter Spectators'),
(25632, 28003, 0, 'Maghar Pitfighter Spectators'),

(25628, 28004, 0, 'Maghar Pitfighter Spectators'),
(25633, 28004, 0, 'Maghar Pitfighter Spectators');

DELETE FROM `pool_template` WHERE `entry` BETWEEN 28000 AND 28004;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(28000, 1, 'Maghar Pitfighter Spectators'),
(28001, 1, 'Maghar Pitfighter Spectators'),
(28002, 1, 'Maghar Pitfighter Spectators'),
(28003, 1, 'Maghar Pitfighter Spectators'),
(28004, 1, 'Maghar Pitfighter Spectators');


-- ************************
-- Bleeding Hollow/Sunspring Post Refugee movement
-- ************************
-- Update spawnpoints for the existing pack
UPDATE `creature` SET `position_x`=-1317.707,`position_y`=7250.646,`position_z`=33.2876,`orientation`=0.7177305,`MovementType`=2,`spawndist`=0 WHERE `guid`=151233; -- Master
UPDATE `creature` SET `position_x`=-1319.519,`position_y`=7249.072,`position_z`=33.09513,`orientation`=0.7177305,`MovementType`=0,`spawndist`=0 WHERE `guid`=151249; -- Follower
-- Delete the old follower waypoints
DELETE FROM `creature_movement` WHERE `id`=65611;

-- Refugee pack 1
DELETE FROM `creature_movement` WHERE `id`=151239;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(151239,1,-1354.399,7237.723,33.27947,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,2,-1346.962,7244.54,32.9324,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,3,-1346.687,7244.558,33.20311,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,4,-1342.101,7246.384,33.04727,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,5,-1335.973,7245.182,33.37698,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,6,-1329.011,7244.577,33.47681,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,7,-1321.868,7243.684,32.82362,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,8,-1318.456,7229.126,33.45498,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,9,-1318.562,7227.281,33.70908,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,10,-1319.876,7217.337,33.79403,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,11,-1323.474,7214.474,33.6877,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,12,-1329.668,7210.847,33.45736,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,13,-1339.584,7209.714,33.3239,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,14,-1344.667,7210.862,33.16006,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,15,-1350.588,7216.098,32.84206,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,16,-1354.889,7222.595,32.97782,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,17,-1360.053,7230.465,33.3327,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,18,-1357.022,7233.605,33.28196,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,19,-1351.183,7240.679,33.2063,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,20,-1346.219,7247.075,33.12708,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,21,-1345.508,7250.239,33.10449,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,22,-1357.097,7272.427,31.69828,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,23,-1368.568,7283.662,27.09403,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,24,-1372.086,7286.646,26.41646,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,25,-1375.701,7284.221,25.94019,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,26,-1381.686,7273.792,26.14983,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,27,-1385.975,7268.55,26.11956,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,28,-1389.542,7266.891,25.97676,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,29,-1395.599,7266.233,25.64387,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,30,-1396.956,7262.034,25.62311,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,31,-1391.697,7240.618,26.511,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,32,-1387.983,7235.648,27.32685,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,33,-1376.938,7230.501,30.90981,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,34,-1371.382,7230.69,32.25353,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,35,-1367.356,7230.584,32.84739,0,0,0,0,0,0,0,0,0,0,0,0),
(151239,36,-1361.362,7231.027,33.33109,0,0,0,0,0,0,0,0,0,0,0,0);

-- Refugee pack 2
DELETE FROM `creature_movement` WHERE `id`=151233;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(151233,1,-1295.564,7274.13,34.48501,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,2,-1285.217,7289.154,34.00926,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,3,-1275.988,7304.673,34.91505,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,4,-1273.012,7309.723,34.67834,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,5,-1264.193,7325.271,34.59145,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,6,-1257.135,7335.729,34.48764,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,7,-1258.281,7343.942,34.28508,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,8,-1269.767,7351.505,34.51558,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,9,-1279.136,7356.812,34.85705,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,10,-1298.11,7366.695,34.76949,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,11,-1303.583,7371.507,34.79503,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,12,-1314.917,7387.566,34.15798,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,13,-1315.801,7383.724,34.3122,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,14,-1292.391,7361.372,35.25991,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,15,-1290.744,7359.883,35.18055,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,16,-1278.918,7356.839,34.8656,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,17,-1269.96,7351.048,34.57149,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,18,-1258.796,7343.611,34.48634,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,19,-1257.158,7335.793,34.47298,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,20,-1272.633,7312.526,34.07935,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,21,-1283.497,7291.36,34.45887,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,22,-1289.621,7282.625,34.62551,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,23,-1295.696,7273.752,34.57401,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,24,-1312.347,7254.093,33.3829,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,25,-1310.043,7256.5,33.62945,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,26,-1303.299,7263.09,34.01146,0,0,0,0,0,0,0,0,0,0,0,0),
(151233,27,-1303.34,7263.042,33.96964,0,0,0,0,0,0,0,0,0,0,0,0);

-- ************************
-- Bleeding Hollow/Sunspring Post Orphan Movement
-- ************************

-- Delete the old children that had movement. These were obviously spawned in by hand, since they had much higher GUIDs and their spawntime was 25sec (which is default with .npc add)
-- We will link and give waypoints to the correct pack instead (they already existed). 
DELETE FROM `creature` WHERE `guid` IN(84588,84717,84718);
DELETE FROM `creature_movement` WHERE `id` IN(84588,84717,84718);
-- Delete the dbscript from old path, we'll create a new one.
DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=1829601;
-- Update their spawn position for linking formation
UPDATE `creature` SET `position_x`=-1363.474365,`position_y`=7168.391113,`position_z`=33.544312,`orientation`=4.05506,`spawndist`=0,`MovementType`=2 WHERE `guid`=65634;
UPDATE `creature` SET `position_x`=-1361.136719,`position_y`=7170.930664,`position_z`=33.538593,`orientation`=4.05506,`spawndist`=0,`MovementType`=0 WHERE `guid`=65635;
UPDATE `creature` SET `position_x`=-1358.902588,`position_y`=7173.357422,`position_z`=33.526085,`orientation`=4.05506,`spawndist`=0,`MovementType`=0 WHERE `guid`=151256;
UPDATE `creature` SET `position_x`=-1356.869751,`position_y`=7175.565918,`position_z`=33.779922,`orientation`=4.05506,`spawndist`=0,`MovementType`=0 WHERE `guid`=151257;

DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=1829901;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(1829901,0,35,6,20,0,0,0,0,0,0,0,0,0,0,0,'Sunspring Post Orphan - Throw EventAIType 6'), -- Texts done in EventAI because we need them to be done on a random timer.
(1829901,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Sunspring Post Orphan - Set Run');

-- New path
-- Pathing for  Entry: 18299 'UDB FORMAT' 
DELETE FROM `creature_movement` WHERE `id`=65634;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(65634,1,-1368.824,7160.531,32.98368,0,1829901,0,0,0,0,0,0,0,0,0,0),
-- (65634,1,-1369.162,7163.984,33.80407,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,2,-1391.536,7138.759,34.03838,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,3,-1391.599,7128.7,34.62458,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,4,-1388.2,7094.424,34.89927,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,5,-1368.123,7045.014,34.42104,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,6,-1366.659,7042.598,34.23129,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,7,-1345.406,7031.192,33.88631,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,8,-1314.296,7014.217,33.1035,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,9,-1289.15,6990.88,33.03849,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,10,-1266.098,6996.509,36.7338,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,11,-1246.558,7011.159,36.65608,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,12,-1236.455,7048.06,38.37126,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,13,-1234.444,7057.604,37.87772,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,14,-1230.986,7102.877,50.2425,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,15,-1235.524,7110.579,54.76244,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,16,-1241.49,7115.727,57.30606,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,17,-1252.56,7124.044,57.71313,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,18,-1267.082,7138.558,57.91617,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,19,-1271.484,7159.12,57.4148,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,20,-1272.416,7187.849,55.14549,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,21,-1287.671,7203.667,44.48739,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,22,-1315.112,7213.846,34.82297,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,23,-1318.46,7229.94,33.57411,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,24,-1319.776,7243.842,32.71201,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,25,-1303.109,7263.931,34.31274,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,26,-1285.414,7284.976,34.18332,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,27,-1270.281,7312.073,33.8917,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,28,-1261.043,7322.351,34.64442,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,29,-1246.963,7337.627,34.26264,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,30,-1208.158,7331.556,34.36385,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,31,-1193.99,7323.189,34.13569,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,32,-1183.828,7301.811,34.19047,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,33,-1189.435,7268.553,35.98135,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,34,-1194.702,7250.263,35.47498,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,35,-1193.552,7243.884,36.06839,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,36,-1196.61,7227.721,44.57949,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,37,-1201.1,7222.88,47.91219,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,38,-1205.185,7219.594,48.65769,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,39,-1215.103,7230.423,49.46203,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,40,-1235.621,7229.821,49.6953,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,41,-1251.994,7223.95,49.2765,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,42,-1287.817,7204.786,44.15344,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,43,-1308.304,7211.989,36.05666,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,44,-1314.512,7215.029,34.73685,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,45,-1319.373,7230.686,33.61108,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,46,-1313.931,7264.531,34.79191,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,47,-1313.376,7266.343,34.85728,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,48,-1320.058,7277.386,34.51681,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,49,-1339.746,7250.657,33.72844,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,50,-1342.894,7247.499,33.31709,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,51,-1363.049,7213.163,34.68153,0,0,0,0,0,0,0,0,0,0,0,0),
(65634,52,-1360.377,7189.571,35.91071,0,0,0,0,0,0,0,0,0,0,0,0);

