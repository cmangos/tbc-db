
SET @OGUID := x; -- [-7/+12]
SET @CGUID := y; -- [-0/+2]

DELETE FROM `creature` WHERE `id` = 22451; -- [-13/+0] - Legion Fel Cannon MKII
DELETE FROM `creature` WHERE `id` = 22327; -- [-6/+0]  - Terror-Fire Guardian
DELETE FROM `creature` WHERE `id` = 22202; -- [-12/+0] - Nightmare Imp
DELETE FROM `creature` WHERE `id` = 22385; -- [-1/+0]  - Terrordar the Tormentor
DELETE FROM `creature` WHERE `id` = 22201; -- [-1/+0]  - Fear Whisperer
DELETE FROM `creature` WHERE `id` = 22392; -- [-3/+0]  - Wrath Fiend
DELETE FROM `creature` WHERE `id` = 22286; -- [-9/+0]  - Fel Rager
DELETE FROM `creature` WHERE `id` = 22281; -- [-1/+0]  - Galvanoth

DELETE FROM `gameobject` WHERE `id` = 185927; -- [-5/+8] - Fel Crystal Prism
DELETE FROM `gameobject` WHERE `id` = 185920; -- [-0/+1] - Fel Crystalforge
DELETE FROM `gameobject` WHERE `id` = 185924; -- [-0/+1] - Crystalforge controller
DELETE FROM `gameobject` WHERE `id` = 185923; -- [-1/+1] - Crystalforge controller
DELETE FROM `gameobject` WHERE `id` = 185919; -- [-1/+1] - Fel Crystalforge

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES 
(@OGUID + 00, '185927', '530', '1', '1673.486', '7377.358', '375.5580', '1.3089950', '0', '0', '0.60876080', '0.7933538', '300', '300', '255', '1'),
(@OGUID + 01, '185927', '530', '1', '1616.641', '7207.047', '375.4805', '5.1312690', '0', '0', '-0.5446386', '0.8386708', '300', '300', '255', '1'),
(@OGUID + 02, '185927', '530', '1', '1385.925', '7392.285', '371.1215', '0.5585039', '0', '0', '0.27563670', '0.9612619', '300', '300', '255', '1'),
(@OGUID + 03, '185927', '530', '1', '1280.611', '7164.499', '377.1786', '5.5850540', '0', '0', '-0.3420200', '0.9396927', '300', '300', '255', '1'),
(@OGUID + 04, '185927', '530', '1', '2810.343', '7006.054', '376.0882', '1.1519160', '0', '0', '0.54463860', '0.8386708', '300', '300', '255', '1'),
(@OGUID + 05, '185927', '530', '1', '2909.894', '6797.157', '365.7202', '2.3910980', '0', '0', '0.93041710', '0.3665025', '300', '300', '255', '1'),
(@OGUID + 06, '185927', '530', '1', '3080.931', '6914.941', '369.3258', '4.3284200', '0', '0', '-0.8290367', '0.5591941', '300', '300', '255', '1'),
(@OGUID + 07, '185927', '530', '1', '2988.610', '7129.965', '368.9746', '1.0297430', '0', '0', '0.49242310', '0.8703560', '300', '300', '255', '1'),
(@OGUID + 08, '185920', '530', '1', '1476.498', '7247.337', '374.3120', '4.1538850', '0', '0', '-0.8746195', '0.4848101', '300', '300', '255', '1'),
(@OGUID + 09, '185924', '530', '1', '1476.589', '7244.074', '374.3083', '4.4855000', '0', '0', '-0.7826071', '0.6225160', '300', '300', '255', '1'),
(@OGUID + 10, '185919', '530', '1', '2944.871', '7067.285', '370.3803', '3.5081170', '0', '0', '-0.9832544', '0.1822380', '300', '300', '255', '1'),
(@OGUID + 11, '185923', '530', '1', '2943.139', '7064.306', '370.4980', '3.5342910', '0', '0', '-0.9807854', '0.1950899', '300', '300', '255', '1');

DELETE FROM `creature` WHERE `id` = 23512;

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CGUID + 00, '23512', '530', '1', '0', '0', '1476.431', '7247.260', '376.4296', '4.15388300', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CGUID + 01, '23512', '530', '1', '0', '0', '2944.764', '7067.285', '372.1829', '3.45575200', '300', '300', '0', '0', '1', '0', '0', '0');

REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES
('23512', '35411');

UPDATE `gameobject_template` SET `name`='Furywing\'s Egg' WHERE `entry`='185937';
UPDATE `gameobject_template` SET `name`='Insidion\'s Egg' WHERE `entry`='185938';
