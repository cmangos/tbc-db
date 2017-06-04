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

-- -1870.212,5477.063,-12.34477,0.9773844
-- -1867.284,5477.182,-12.34477,2.321288