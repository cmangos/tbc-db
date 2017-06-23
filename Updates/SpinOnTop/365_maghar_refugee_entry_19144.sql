-- Remove addons. Stand states should be randomized
DELETE FROM creature_addon WHERE guid IN(68465,68466,68467,96667);
DELETE FROM creature_template_addon WHERE entry=19144;

-- Missing spawns
DELETE FROM creature WHERE guid=151504;
INSERT INTO creature (guid, id, map, spawnmask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(151504,19144,530,1,0,0,-1870.212,5477.063,-12.34477,0.9773844,300,300,0,0,6100,0,0,0);

-- Relocate existing spawns to the same guid range
UPDATE `creature` SET `guid`=151505, spawntimesecsmin=300, spawntimesecsmax=300, modelid=0, position_x=-1867.284, position_y=5477.182, position_z=-12.34477, orientation=2.321288 WHERE `guid`=96667 AND `id`=19144; -- Normalize spawntime and modelid
UPDATE `creature` SET `guid`=151506, position_x=-1610.705, position_y=5345.501, position_z=-40.20918, orientation=5.318808, MovementType=1, spawndist=5 WHERE `guid`=68465 AND `id`=19144;
UPDATE `creature` SET `guid`=151507, position_x=-1622.22, position_y=5347.756, position_z=-40.20918, MovementType=2, spawndist=0 WHERE `guid`=68467 AND `id`=19144;
UPDATE `creature` SET `guid`=151508, MovementType=2, spawndist=0 WHERE `guid`=68466 AND `id`=19144;

-- Pooling at Spymistress Mehlisah Highcrown
DELETE FROM pool_creature WHERE guid IN(151504,151505);
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(151504, 104, 0, 'Maghar Refugee at Spymistress Mehlisah Highcrown'),
(151505, 105, 0, 'Maghar Refugee at Spymistress Mehlisah Highcrown');


-- Pathing for  Entry: 19144 'UDB FORMAT' 
DELETE FROM `creature_movement` WHERE `id`=151507;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(151507,1,-1622.22,5347.756,-40.20918,500,1914401,5.550147),
(151507,2,-1636.581,5304.6,-40.20918,0,0,0),
(151507,3,-1643.458,5282.309,-41.18183,0,0,0),
(151507,4,-1656.824,5273.861,-43.01165,0,0,0),
(151507,5,-1684.264,5250.724,-51.4207,0,0,0),
(151507,6,-1713.102,5219.824,-49.37544,0,0,0),
(151507,7,-1740.18,5202.647,-41.05328,0,0,0),
(151507,8,-1755.893,5184.438,-40.20918,0,0,0),
(151507,9,-1785.943,5171.701,-40.20918,0,0,0),
(151507,10,-1802.324,5170.343,-41.47198,0,0,0),
(151507,11,-1827.98,5168.217,-48.69007,0,0,0),
(151507,12,-1844.449,5169.197,-47.33143,0,0,0),
(151507,13,-1865.427,5167.586,-49.37098,0,0,0),
(151507,14,-1880.727,5186.796,-49.93195,0,0,0),
(151507,15,-1892.633,5202.694,-49.97176,0,0,0),
(151507,16,-1906.578,5208.201,-48.6908,0,0,0),
(151507,17,-1916.773,5211.828,-47.92274,0,0,0),

(151507,18,-1918.672,5215.128,-47.81287,3197000,10,100),

(151507,19,-1875.128,5187.833,-50.70343,0,0,0),
(151507,20,-1849.336,5169.315,-47.11171,0,0,0),
(151507,21,-1832.168,5164.893,-47.86367,0,0,0),
(151507,22,-1800.548,5169.1,-40.73396,0,0,0),
(151507,23,-1783.614,5173.041,-40.20918,0,0,0),
(151507,24,-1738.759,5188.382,-40.20918,0,0,0),
(151507,25,-1712.112,5183.194,-40.20918,0,0,0),
(151507,26,-1689.918,5199.679,-47.92977,0,0,0),
(151507,27,-1657.552,5226.853,-45.39747,0,0,0),
(151507,28,-1631.944,5250.383,-40.93432,0,0,0),
(151507,29,-1625.36,5291.995,-40.43608,0,0,0),
(151507,30,-1623.593,5312.18,-40.20918,0,0,0),
(151507,31,-1619.565,5332.471,-40.20918,0,0,0),
(151507,32,-1622.22,5347.756,-40.20918,0,0,0);

DELETE FROM `creature_movement` WHERE `id`=151508;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(151508,1,-1599.19,5339.23,-40.1258,500,1914402,2.51327);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1914401);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1914401,0,35,6,0,0,0,0,0,0,0,0,0,'Maghar Refugee - Send AI Event 6 to Self',0,0,0,0),
(1914401,0,32,1,0,0,0,0,0,0,0,0,0,'Maghar Refugee - Pause Waypoint Movement',0,0,0,0),

(1914402,0,35,6,0,0,0,0,0,0,0,0,0,'Maghar Refugee - Send AI Event 6 to Self',0,0,0,0),
(1914402,0,20,0,0,0,0,0,0,0,0,0,0,'Maghar Refugee - Set Idle Movement',0,0,0,0);

