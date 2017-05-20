-- Pathing for  Entry: 19162 'UDB FORMAT' 
UPDATE `creature` SET `MovementType`=2, `spawndist`=0 WHERE `guid`=68559;
DELETE FROM `creature_movement` WHERE `id`=68559;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(68559,1,-1971.272,5246.029,-43.66053,0,0,0),
(68559,2,-1938.741,5230.817,-44.29489,0,0,0),
(68559,3,-1914.707,5216.594,-47.64558,0,0,0),
(68559,4,-1892.062,5205.756,-49.84676,0,0,0),
(68559,5,-1874.478,5190.601,-50.70343,0,0,0),
(68559,6,-1889.939,5184.358,-47.79593,0,0,0),
(68559,7,-1909.237,5174.798,-40.20918,0,0,0),
(68559,8,-1930.571,5176.271,-40.20918,0,0,0),
(68559,9,-1949.204,5174.263,-40.20918,0,0,0),
(68559,10,-1973.466,5190.693,-40.20918,0,0,0),
(68559,11,-1983.119,5203.233,-42.5836,0,0,0),
(68559,12,-1991.463,5220.295,-44.28505,0,0,0),
(68559,13,-2004.157,5230.49,-44.93502,0,0,0),
(68559,14,-2023.656,5235.983,-43.87561,0,0,0),
(68559,15,-2047.948,5251.585,-39.8586,0,0,0),
(68559,16,-2062.025,5280.688,-38.46484,0,0,0),
(68559,17,-2044.511,5298.059,-38.90862,0,0,0),
(68559,18,-2037.18,5297.292,-38.98505,0,0,0),
(68559,19,-2012.094,5256.791,-44.69251,0,0,0);

-- This one should only be at the soup kitchen while the event is running.
UPDATE `creature` SET `position_x`=-1990.34, `position_y`=5182.772, `position_z`=-40.20918, `orientation`=1.204277, `MovementType`=2, `spawndist`=0 WHERE `guid`=68558;
DELETE FROM `creature_movement` WHERE `id`=68558;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(68558,1,-1990.34,5182.772,-40.20918,500,2,1.204277),
(68558,2,-1971.296,5208.073,-44.83416,0,0,0),
(68558,3,-1959.054,5219.249,-46.72676,0,0,0),
(68558,4,-1934.495,5226.018,-44.90169,0,0,0),
(68558,5,-1932.629,5227.989,-43.7804,500,2,100);
-- Add return path

-- For creature GUID 68560. Started by script
DELETE FROM `creature_movement_template` WHERE `entry`=19162;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19162,1,1,-1948.781,5172.326,-40.20918,0,0,0),
(19162,2,1,-1953.118,5182.277,-40.20918,0,0,0),
(19162,3,1,-1951.219,5206.953,-47.5035,0,0,0),
(19162,4,1,-1937.34,5215.381,-47.54671,0,0,0),
(19162,5,1,-1928.857,5219.073,-46.83961,0,0,0),
(19162,6,1,-1927.44,5225.338,-44.63172,500,2,100),
(19162,7,1,-1937.06,5173.81,-40.2092,500,1916201,100);
-- Add return path

DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=1916201;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1916201,0,20,5,0,0,0,0,0,0,0,8,'Lost one Refugee - Random Movement',0,0,0,0);
