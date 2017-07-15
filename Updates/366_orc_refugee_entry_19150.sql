-- Remove addons. Stand states should be randomized
DELETE FROM creature_addon WHERE guid IN(68479,68480,68481,68482);
DELETE FROM creature_template_addon WHERE entry=19144;

-- Missing spawns
DELETE FROM creature WHERE guid IN(151509,151510);
INSERT INTO creature (guid, id, map, spawnmask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(151509,19150,530,1,0,0,-1870.212,5477.063,-12.34477,0.9773844,300,300,0,0,6400,0,0,0),
(151510,19150,530,1,0,0,-1867.284,5477.182,-12.34477,2.321288,300,300,0,0,6400,0,0,0);

-- Relocate existing spawns to the same guid range
UPDATE `creature` SET `guid`=151511 WHERE `guid`=68479 AND `id`=19150;
UPDATE `creature` SET `guid`=151512 WHERE `guid`=68480 AND `id`=19150;
UPDATE `creature` SET `guid`=151513, `MovementType`=2,`spawndist`=0 WHERE `guid`=68481 AND `id`=19150;
UPDATE `creature` SET `guid`=151514, `position_x`=-1727.175, `position_y`=5276.094, `position_z`=-40.20918, `orientation`=5.288348, `MovementType`=2, `spawndist`=0 WHERE `guid`=68482 AND `id`=19150;

-- Pooling at Spymistress Mehlisah Highcrown
DELETE FROM pool_creature WHERE guid IN(151509,151510);
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(151509, 104, 0, 'Orc Refugee at Spymistress Mehlisah Highcrown'),
(151510, 105, 0, 'Orc Refugee at Spymistress Mehlisah Highcrown');

-- Addon for orc at Refugee Caravan
DELETE FROM `creature_addon` WHERE `guid`=151512;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(151512, 0, 1, 1, 16, 0, 0, NULL);


-- Pathing for  Entry: 19150 'UDB FORMAT' 
DELETE FROM `creature_movement` WHERE `id`=151513;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(151513,1,-1738.253,5239.01,-49.52922,0,0,0),
(151513,2,-1753.457,5259.475,-40.20918,0,0,0),
(151513,3,-1777.285,5251.141,-40.20918,0,0,0),
(151513,4,-1781.114,5230.833,-45.88293,0,0,0),
(151513,5,-1793.114,5220.676,-48.83832,0,0,0),
(151513,6,-1807.634,5216.122,-46.77752,0,0,0),
(151513,7,-1823.6,5215.81,-41.52951,0,0,0),
(151513,8,-1838.272,5212.268,-40.20918,0,0,0),
(151513,9,-1862.211,5223.447,-40.20918,0,0,0),
(151513,10,-1891.917,5221.811,-46.22883,0,0,0),
(151513,11,-1862.211,5223.447,-40.20918,0,0,0),
(151513,12,-1838.272,5212.268,-40.20918,0,0,0),
(151513,13,-1823.6,5215.81,-41.52951,0,0,0),
(151513,14,-1807.634,5216.122,-46.77752,0,0,0),
(151513,15,-1793.114,5220.676,-48.83832,0,0,0),
(151513,16,-1781.114,5230.833,-45.88293,0,0,0),
(151513,17,-1777.285,5251.141,-40.20918,0,0,0),
(151513,18,-1753.457,5259.475,-40.20918,0,0,0),
(151513,19,-1738.253,5239.01,-49.52922,0,0,0),
(151513,20,-1724.574,5235.167,-50.46606,0,0,0),
(151513,21,-1701.509,5247.913,-49.62231,0,0,0),
(151513,22,-1725.438,5273.714,-40.20918,0,0,0),
(151513,23,-1701.509,5247.913,-49.62231,0,0,0),
(151513,24,-1724.574,5235.167,-50.46606,0,0,0);

-- Should only be at the soup kitchen while the event is running.
DELETE FROM `creature_movement` WHERE `id`=151514;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
-- To kitchen
(151514,1,-1727.175,5276.094,-40.20918,500,1915001,5.288348),
(151514,2,-1743.104,5265.377,-40.20918,0,0,0),
(151514,3,-1755.205,5248.055,-40.20918,0,0,0),
(151514,4,-1772.216,5242.507,-40.20918,0,0,0),
(151514,5,-1786.207,5229.498,-47.10994,0,0,0),
(151514,6,-1806.299,5223.9,-45.35332,0,0,0),
(151514,7,-1827.67,5217.583,-40.41649,0,0,0),
(151514,8,-1841.556,5198.459,-43.07298,0,0,0),
(151514,9,-1855.024,5176.454,-48.17921,0,0,0),
(151514,10,-1877.369,5188.83,-50.57867,0,0,0),
(151514,11,-1902.808,5214.768,-48.60621,0,10,0),

-- At kitchen
(151514,12,-1910.953,5224.428,-45.45106,500,7,100),

-- From kitchen
(151514,13,-1883.114,5214.616,-45.82743,0,0,0),
(151514,14,-1867.016,5221.33,-40.20918,0,0,0),
(151514,15,-1851.91,5221.754,-38.04537,0,0,0),
(151514,16,-1844.161,5217.744,-38.04538,0,0,0),
(151514,17,-1824.238,5212.982,-41.65744,0,0,0),
(151514,18,-1810.258,5233.539,-42.10093,0,0,0),
(151514,19,-1793.421,5247.145,-40.20918,0,0,0),
(151514,20,-1769.859,5242.901,-40.20918,0,0,0),
(151514,21,-1756.912,5246.548,-40.20918,0,0,0),
(151514,22,-1745.085,5260.75,-40.20918,0,0,0),
(151514,23,-1724.028,5271.72,-40.20918,0,0,0),
(151514,24,-1727.175,5276.094,-40.20918,0,0,0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1915001);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1915001,0,35,6,0,0,0,0,0,0,0,0,0,'Orc Refugee - Send AI Event 6 to Self',0,0,0,0),
(1915001,0,32,1,0,0,0,0,0,0,0,0,0,'Orc Refugee - Pause Waypoint Movement',0,0,0,0);
