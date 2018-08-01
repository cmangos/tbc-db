DELETE FROM gameobject WHERE id IN(177669) AND map IN(540);

DELETE FROM spell_script_target WHERE entry=30952;
INSERT INTO spell_script_target VALUES
(30952,1,17687,0);


#Creature inserts:
DELETE FROM creature WHERE guid BETWEEN 150500 AND 150510;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('150500', '17693', '540', '3', '0', '0', '342.09', '316.053', '1.91817', '3.10806', '7200', '0', '0', '14147', '0', '0', '0'),
('150501', '17462', '540', '3', '0', '0', '338.854', '312.779', '1.91817', '1.46265', '7200', '0', '0', '9431', '0', '0', '0'),
('150502', '17462', '540', '3', '0', '0', '336.91', '315.106', '1.91817', '0.17067', '7200', '0', '0', '9431', '0', '0', '0'),
('150503', '17462', '540', '3', '0', '0', '339.462', '318.231', '1.91786', '4.66315', '7200', '0', '0', '9431', '0', '0', '0'),
('150504', '17462', '540', '3', '0', '0', '499.912', '321.851', '1.94442', '3.26121', '7200', '0', '0', '9431', '0', '0', '0'),
('150505', '17462', '540', '3', '0', '0', '498.971', '310.249', '1.94442', '2.8371', '7200', '0', '0', '9431', '0', '0', '0'),
('150506', '17462', '540', '3', '0', '0', '501.247', '318.65', '1.94352', '3.2832', '7200', '0', '0', '9431', '0', '0', '0'),
('150507', '17462', '540', '3', '0', '0', '500.503', '313.616', '1.94355', '3.05544', '7200', '0', '0', '9431', '0', '0', '0'),
('150508', '17461', '540', '1', '0', '0', '513.315', '316.846', '1.936', '3.17325', '7200', '0', '0', '5000', '0', '0', '0'),
('150509', '17427', '540', '3', '0', '0', '516.599', '313.796', '3.14', '1.88519', '7200', '0', '0', '20283', '0', '0', '0'),
('150510', '17427', '540', '3', '0', '0', '515.545', '320.122', '3.14', '4.854', '7200', '0', '0', '20283', '0', '0', '0');

#Fixes an issue where the Blood Guard was agroing improperly on normal mode:
UPDATE `creature_template` SET `FactionAlliance`='168', `FactionHorde`='168' WHERE `Entry`='17461';

# remove 'heroic' verisons of blood guard and porung that should not exist
# (porung should be the heroic version of the blood guard)

#Scout run-to spot: 494.015 316.213 1.945

#Gauntlet-npc-spawn-loc:
#409.848 315.385 1.921

#First-8-zealots-spawns:
#L	504.649 302.811 1.940
#R	506.683 329.961 2.069

#First-8-zealots-first-WP
#L	495.646 313.251 1.945
#R	497.516 319.176 1.945

#Spawned-wave-zealots-spawn-spot:
#L	517.662 277.186 1.918
#R	520.533 280.180 1.918

#New-Spawned_zealots-WPs:
#WP1: 519.107 273.546 1.916
#WP2: 518.681 291.375 1.923
#WP3: 504.559 315.952 1.942
#WP4: 482.445 315.779 1.939

#Spawned-zealots-WPs:
#L1	512.658 297.653 1.931
#R1	519.941 303.073 1.940
#L2 499.320 313.782 1.943
#R2	499.457 319.004 1.945
#L3	482.499 314.149 1.943
#R3	482.475 317.740 1.940

#Spawned-zealots-run-destinations:
#First Row:
#L	362.577 311.449 1.918
#R	362.592 320.969 1.918
#Second Row:
#L	384.897 311.348 1.946
#R	384.212 321.826 1.946
#Third Row:
#L	422.212 310.864 1.946
#R	419.034 319.279 1.940
#Fourth Row:
#L	463.375 310.195 1.935
#R	458.814 321.833 1.946

#Static Mob guids:
#3 front zealots: 140448, 140447, 140445
#Scout: 140444 

#4 rear zealots: 140449, 140453, 140454, 140451 

#Porung: 140455
#2 Archers behind porung: 140459, 140456 

#Linking:
#front three with scout:
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES ('140448', '140444', '3');
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES ('140447', '140444', '3');
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES ('140445', '140444', '3');

#rear four zealots with eachother:
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES ('140449', '140453', '3');
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES ('140453', '140454', '3');
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES ('140454', '140451', '3');

#archers & porung:
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES ('140459', '140455', '3');
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES ('140456', '140455', '3');

#porung to the zealots (pulling porung will pull the 4 zealots but not the other way around)
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES ('140451', '140455', '1');

#Archer flaming arrow assault:
#Bounds:
#Top Left:  481.519 323.895 1.945
#Top Right: 480.630 308.647 1.942
#Bot Left:  362.607 323.948 1.918
#Bot Right: 360.884 308.777 1.918

DELETE FROM creature WHERE id IN(17687);
INSERT INTO creature VALUES
(150200, 17687, 540, 3, 0, 0, 475.6067, 317.2593, 1.935114, 3.531838, 7200, 10, 0, 0, 0, 0, 1),
(150201, 17687, 540, 3, 0, 0, 474.6041, 316.2657, 1.932237, 3.525025, 7200, 10, 0, 0, 0, 0, 1),
(150202, 17687, 540, 3, 0, 0, 458.635, 316.2261, 1.938598, 1.090479, 7200, 10, 0, 0, 0, 0, 1),
(150203, 17687, 540, 3, 0, 0, 442.53, 312.5515, 1.899712, 4.909473, 7200, 10, 0, 0, 0, 0, 1),
(150204, 17687, 540, 3, 0, 0, 443.132, 315.5444, 1.984968, 0, 7200, 10, 0, 0, 0, 0, 1),
(150205, 17687, 540, 3, 0, 0, 425.6966, 315.9063, 1.938396, 0.08963271, 7200, 10, 0, 0, 0, 0, 1),
(150206, 17687, 540, 3, 0, 0, 424.8783, 314.6467, 1.940272, 5.809037, 7200, 10, 0, 0, 0, 0, 1),
(150207, 17687, 540, 3, 0, 0, 405.5229, 315.3778, 1.899588, 3.401769, 7200, 10, 0, 0, 0, 0, 1),
(150208, 17687, 540, 3, 0, 0, 317.9739, 314.8011, 1.914595, 0.3468798, 7200, 10, 0, 0, 0, 0, 1),
(150209, 17687, 540, 3, 0, 0, 317.2108, 315.7421, 1.914925, 1.165596, 7200, 10, 0, 0, 0, 0, 1),
(150210, 17687, 540, 3, 0, 0, 351.3468, 315.5931, 1.918159, 4.003428, 7200, 10, 0, 0, 0, 0, 1),
(150211, 17687, 540, 3, 0, 0, 351.7728, 317.0378, 1.918159, 0.5018787, 7200, 10, 0, 0, 0, 0, 1),
(150212, 17687, 540, 3, 0, 0, 368.1509, 317.0759, 1.915697, 1.269189, 7200, 10, 0, 0, 0, 0, 1),
(150213, 17687, 540, 3, 0, 0, 369.2977, 320.1037, 1.916945, 1.422513, 7200, 10, 0, 0, 0, 0, 1),
(150214, 17687, 540, 3, 0, 0, 384.0943, 319.2183, 1.939879, 2.532656, 7200, 10, 0, 0, 0, 0, 1),
(150215, 17687, 540, 3, 0, 0, 384.2781, 314.477, 1.939694, 3.99809, 7200, 10, 0, 0, 0, 0, 1),
(150216, 17687, 540, 3, 0, 0, 408.5064, 316.6922, 1.91144, 0.05422917, 7200, 10, 0, 0, 0, 0, 1),
(150217, 17687, 540, 3, 0, 0, 294.7224, 317.8992, 1.918162, 0.1862966, 7200, 10, 0, 0, 0, 0, 1),
(150218, 17687, 540, 3, 0, 0, 287.0657, 315.5296, 1.87145, 6.219948, 7200, 10, 0, 0, 0, 0, 1),
(150219, 17687, 540, 3, 0, 0, 455.5135, 317.7841, 1.941776, 3.581758, 7200, 10, 0, 0, 0, 0, 1);

-- normal
DELETE FROM creature_template_addon WHERE entry IN(16507,16700,17669,17671,17462,20923);
INSERT INTO creature_template_addon(entry,auras) VALUES
(16507,'18950'),
(16700,'30472'),
(17669,'18950'),
(17671,'12782'),
(17462,'18950'),
(20923,'18950');

-- heroic
DELETE FROM creature_template_addon WHERE entry IN(20593,20589,20574,20584,20595,20993);
INSERT INTO creature_template_addon(entry,auras) VALUES
(20593,'18950'),
(20589,'30472'),
(20574,'18950'),
(20584,'12782'),
(20595,'18950'),
(20993,'18950');

-- (16593,'16093') present on retail no idea why, likely one somewhere sleeps

UPDATE creature_template SET ModelId1=17188,UnitFlags=33554432,SpeedRun=(8/7),SpeedWalk=(2.5/2.5) WHERE entry=17687;

DELETE FROM creature WHERE guid IN(62926,62927,62925,62924,62923,62922,62928,62929,62930,62931,86453,86452,62932,62933,62921,62871,62872,62873);

UPDATE creature_template SET UnitFlags=UnitFlags|514 WHERE entry IN(17693,20592); -- set scout not attackable passive and not selectable



