DELETE FROM `pool_template` WHERE `entry` IN(104,105);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(104, 1, 'XXXXXXX Refugee at Spymistress Mehlisah Highcrown'),
(105, 1, 'XXXXXXX Refugee at Spymistress Mehlisah Highcrown');

-- Shattrath Soup Tent
UPDATE `gameobject` SET `spawntimesecsmin`=-3852,`spawntimesecsmax`=-3852 WHERE `guid`=24224;

-- Fantei (Stand/Sit is randomized in EventAI)
UPDATE creature_template_addon SET bytes1=0 WHERE entry=19678;

-- Jim Saltit
UPDATE creature SET MovementType=1, spawndist=1 WHERE guid=68730; 

-- Add missing Cooking Pot
DELETE FROM gameobject WHERE guid=200008 AND id=187370;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, state) VALUES 
(200008, 187370, 530, -1614.855, 5328.135, -40.29599, 5.174902, -0.5262136, 0.8503524, 180, 180, 1);

-- Set correct positions
UPDATE `creature` SET `position_x`='-1616.258', `position_y`='5326.976', `position_z`='-40.12583', `orientation`='1.308997' WHERE  `guid`=84720; -- Grisy Spicecrackle
UPDATE `creature` SET `position_x`='-1609.388', `position_y`='5328.675', `position_z`='-39.38972', `orientation`='2.181662' WHERE  `guid`=84722; -- The Rokk
UPDATE `creature` SET `position_x`='-1609.702', `position_y`='5333.756', `position_z`='-40.12583', `orientation`='0.296706' WHERE  `guid`=84721; -- Gargoth
UPDATE `creature` SET `position_x`='-1793.096', `position_y`='5153.81', `position_z`='-40.12583', `orientation`='2.879793' WHERE  `guid`=12270; -- Wind Trader Zhareem
UPDATE `creature` SET `position_x`='-1798.239', `position_y`='5149.043', `position_z`='-40.12583', `orientation`='1.745329' WHERE  `guid`=12271; -- Nether-Stalker Mah'duun
UPDATE `creature` SET `position_x`='-1624.759', `position_y`='5272.502', `position_z`='-40.83841', `orientation`='3.839724' WHERE  `guid`=12177; -- Voranaku
UPDATE `creature` SET `position_x`='-1640.653', `position_y`='5274.589', `position_z`='-41.08338', `orientation`='5.864306' WHERE  `guid`=8313; -- Zoya
UPDATE `creature` SET `position_x`='-1639.091', `position_y`='5262.758', `position_z`='-41.01227', `orientation`='0.1396263' WHERE  `guid`=2126; -- Suraku
UPDATE `creature` SET `position_x`='-1638.031', `position_y`='5254.087', `position_z`='-40.85145', `orientation`='0.6457718' WHERE  `guid`=2115; -- Onyxien
UPDATE `creature` SET `position_x`='-1631.826', `position_y`='5246.303', `position_z`='-40.77067', `orientation`='1.169371' WHERE  `guid`=12235; -- Malfas
UPDATE `creature` SET `position_x`='-1622.21', `position_y`='5248.128', `position_z`='-40.72327', `orientation`='2.251475' WHERE  `guid`=12234; -- Jorus
UPDATE `creature` SET `position_x`='-1617.014', `position_y`='5264.892', `position_z`='-40.69825', `orientation`='3.211406' WHERE  `guid`=12236; -- Barthamus

-- Delete Ambient Minions of Terokk. They are tempspawns after completing a quest
DELETE FROM creature WHERE id =22380;

