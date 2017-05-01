-- Delete duplicate creatures
DELETE FROM creature WHERE guid IN(68492,68923,68494,68925,68493,68924,101254);

-- Fix some incorrect models
UPDATE creature_model_info SET modelid_other_gender=0 WHERE modelid=18552; -- Anchorite Nindumen should always be male
UPDATE creature_model_info SET modelid_other_gender=0 WHERE modelid=18568; -- Aldor Neophytes should never have a blood elf model

-- Fix spawntime
UPDATE creature SET spawntimesecsmin=240, spawntimesecsmax=240 WHERE id IN(19337,19153,19390);
-- Update spawnpoints
-- Aldor Marksman (Entry: 19337)
UPDATE creature SET position_x=-1802.312, position_y=5625.468, position_z=130.8952, orientation=1.223965, MovementType=2 WHERE guid=68927;
UPDATE creature SET position_x=-1805.615, position_y=5617.316, position_z=130.8952, orientation=1.252924, MovementType=2 WHERE guid=68928;
UPDATE creature SET position_x=-1789.205, position_y=5624.502, position_z=130.8952, orientation=1.89208, MovementType=2 WHERE guid=68926;
UPDATE creature SET position_x=-1801.109, position_y=5631.858, position_z=130.8952, orientation=1.280214, MovementType=2 WHERE guid=68929;

-- Aldor Neophyte (Entry: 19153)
UPDATE creature SET position_x=-1794.191, position_y=5612.863, position_z=130.8952, orientation=1.082882, MovementType=2 WHERE guid=68496;
UPDATE creature SET position_x=-1805.95, position_y=5622.243, position_z=130.8952, orientation=1.180748, MovementType=2 WHERE guid=68497;
UPDATE creature SET position_x=-1799.056, position_y=5611.717, position_z=130.8952, orientation=1.288655, MovementType=2 WHERE guid=68498;
UPDATE creature SET position_x=-1793.721, position_y=5629.261, position_z=130.8952, orientation=1.290115, MovementType=2 WHERE guid=68495;

-- Mounted Neophyte (Entry: 19390)
UPDATE creature SET position_x=-1801.896, position_y=5620.681, position_z=130.8917, orientation=1.370655, MovementType=2 WHERE guid=69139;
UPDATE creature SET position_x=-1803.715, position_y=5612.847, position_z=130.8732, orientation=1.185027, MovementType=2 WHERE guid=69136;
UPDATE creature SET position_x=-1797.213, position_y=5626.55, position_z=130.8866, orientation=1.334945, MovementType=2 WHERE guid=69137;
UPDATE creature SET position_x=-1793.791, position_y=5622.994, position_z=130.8904, orientation=1.315446, MovementType=2 WHERE guid=69138;

-- Position and orientation for two Neophyte Combatants (Entry: 19161)
UPDATE creature SET position_x=-1915.987, position_y=5842.37, position_z=130.3535, orientation=5.811946 WHERE guid=68537;
UPDATE creature SET position_x=-1903.086, position_y=5848.502, position_z=130.355, orientation=4.380776 WHERE guid=68538;

DELETE FROM dbscripts_on_creature_movement WHERE id IN(1933701,1933702);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,comments) VALUES
(1933701,0,32,1,'Aldor Rise Event - Pause Waypoint Movement'),
(1933702,0,18,500,'Aldor Rise Event - Despawn after 500ms');

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1933703,1933704);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(1933703,0,35,5,17,0,0,0,0,0,0,0,0,0,0,0,'Aldor Marksman - Throw AI Event A'),
(1933704,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'Mounted Neophyte - Pause Waypoints'),
(1933704,20,32,0,0,19346,20,0,0,0,0,0,0,0,0,0,'Harbinger Erothem - Unpause Waypoints');

-- Pathing for  Entry: 19337 'UDB FORMAT' 
SET @GUID := 68926;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,-1778.192,5672.22,129.078,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,-1766.971,5693.268,127.6051,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,-1762.069,5702.74,126.6575,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,4,-1760.947,5718.916,126.5379,500,1933701,0,0,0,0,0,0,0,1.256637,0,0),
(@GUID,5,-1805.025,5747.444,129.0192,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,6,-1818.657,5751.554,130.3697,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,7,-1847.988,5759.828,130.026,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,8,-1877.931,5798.328,130.8274,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,9,-1905.221,5838.242,129.3154,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,10,-1919.433,5866.676,133.2731,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,11,-1940.906,5910.238,146.1888,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,12,-1953.396,5940.021,154.9521,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,13,-1960.283,5957.376,159.7179,1000,1933702,0,0,0,0,0,0,0,100,0,0);

-- Pathing for  Entry: 19337 'UDB FORMAT' 
SET @GUID := 68927;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,-1778.924,5684.255,128.6094,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,-1774.905,5693.274,127.4006,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,-1769.585,5705.978,126.5997,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,4,-1764.969,5720.305,126.5379,500,1933701,0,0,0,0,0,0,0,100,0,0),
(@GUID,5,-1805.117,5747.341,129.0174,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,6,-1818.58,5751.302,130.3988,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,7,-1847.911,5759.562,129.9737,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,8,-1877.834,5798.227,130.8274,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,9,-1905.556,5838.596,130.067,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,10,-1914.649,5856.992,130.6617,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,11,-1927.649,5883.567,138.3701,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,12,-1947.301,5926.932,150.9453,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,13,-1959.64,5957.695,159.6718,1000,1933702,0,0,0,0,0,0,0,100,0,0);

-- Pathing for  Entry: 19337 'UDB FORMAT' 
SET @GUID := 68928;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,-1793.88,5652.471,130.1004,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,-1779.501,5695.789,127.6154,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,-1776.145,5706.066,126.6637,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,4,-1768.914,5721.589,126.5378,500,1933701,0,0,0,0,0,0,0,1.256637,0,0),
(@GUID,5,-1804.953,5747.503,129.0089,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,6,-1818.504,5751.568,130.295,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,7,-1847.755,5759.863,129.9951,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,8,-1877.996,5798.19,130.8274,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,9,-1905.705,5838.524,130.0669,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,10,-1921.163,5870.436,134.4377,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,11,-1938.998,5907.49,145.1379,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,12,-1956.217,5947.585,157.6335,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,13,-1961.288,5959.537,159.8465,1000,1933702,0,0,0,0,0,0,0,100,0,0);

-- Pathing for  Entry: 19337 'UDB FORMAT' 
SET @GUID := 68929;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,-1792.861,5658.528,129.7847,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,-1785.278,5700.292,127.6757,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,-1783.773,5707.17,126.7904,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,4,-1772.672,5722.908,126.5378,500,1933701,0,0,0,0,0,0,0,1.256637,0,0),
(@GUID,5,-1804.878,5747.761,129.0091,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,6,-1818.485,5751.704,130.3592,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,7,-1847.872,5759.825,130.013,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,8,-1878.022,5798.293,130.8274,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,9,-1905.003,5838.45,129.3144,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,10,-1906.835,5840.901,130.032,0,1933703,0,0,0,0,0,0,0,0,0,0),
(@GUID,11,-1914.211,5855.933,130.7464,0,1933703,0,0,0,0,0,0,0,0,0,0),
(@GUID,12,-1925.211,5878.183,136.7464,0,1933703,0,0,0,0,0,0,0,0,0,0),
(@GUID,13,-1933.961,5895.683,141.9964,0,1933703,0,0,0,0,0,0,0,0,0,0),
(@GUID,14,-1942.158,5914.172,147.4706,0,1933703,0,0,0,0,0,0,0,0,0,0),
(@GUID,15,-1950.908,5934.672,153.4706,0,1933703,0,0,0,0,0,0,0,0,0,0),
(@GUID,16,-1961.223,5959.582,159.7202,1000,1933702,0,0,0,0,0,0,0,100,0,0);

-- Pathing for  Entry: 19153 'UDB FORMAT' 
SET @GUID := 68495;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,-1784.805,5658.465,129.6731,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,-1774.039,5693.126,127.7665,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,-1771.261,5701.67,126.707,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,4,-1761.789,5716.161,126.5379,500,1933701,0,0,0,0,0,0,0,1.256637,0,0),
(@GUID,5,-1799.694,5743.764,128.3671,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,6,-1818.525,5751.929,130.4304,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,7,-1847.91,5759.486,130.0354,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,8,-1875.93,5798.658,130.8274,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,9,-1905.644,5838.528,130.1044,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,10,-1922.229,5872.448,135.1535,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,11,-1936.446,5901.069,143.5479,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,12,-1951.226,5934.46,153.33,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,13,-1961.083,5959.479,159.836,1000,1933702,0,0,0,0,0,0,0,100,0,0);

-- Pathing for  Entry: 19153 'UDB FORMAT' 
SET @GUID := 68496;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,-1778.234,5665.451,129.204,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,-1768.006,5693.273,127.4803,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,-1765.01,5701.094,126.6908,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,4,-1765.721,5717.478,126.5379,500,1933701,0,0,0,0,0,0,0,1.256637,0,0),
(@GUID,5,-1805.354,5747.04,129.0013,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,6,-1818.63,5751.352,130.3179,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,7,-1847.956,5759.682,130.0179,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,8,-1877.96,5798.33,130.8274,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,9,-1905.211,5838.223,129.3155,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,10,-1919.392,5866.708,133.2638,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,11,-1935.306,5898.228,142.689,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,12,-1951.051,5934.496,153.5496,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,13,-1960.873,5959.505,159.7293,1000,1933702,0,0,0,0,0,0,0,100,0,0);

-- Pathing for  Entry: 19153 'UDB FORMAT' 
SET @GUID := 68497;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,-1789.24,5662.555,129.5341,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,-1780.067,5696.582,127.5762,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,-1769.853,5718.849,126.5378,500,1933701,0,0,0,0,0,0,0,1.256637,0,0),
(@GUID,4,-1805.037,5747.24,129.0394,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,5,-1818.508,5751.78,130.4208,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,6,-1847.834,5759.917,129.9873,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,7,-1878.02,5798.321,130.8274,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,8,-1905.249,5838.511,129.3172,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,9,-1925.208,5878.073,136.7362,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,10,-1940.732,5910.264,146.1952,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,11,-1953.372,5939.98,154.951,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,12,-1961.003,5959.447,159.6558,1000,1933702,0,0,0,0,0,0,0,100,0,0);

-- Pathing for  Entry: 19153 'UDB FORMAT' 
SET @GUID := 68498;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,-1781.275,5680.161,128.7741,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,-1777.585,5694.561,127.4906,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,-1774.258,5707.771,126.5959,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,4,-1773.632,5720.067,126.5378,500,1933701,0,0,0,0,0,0,0,1.256637,0,0),
(@GUID,5,-1805.071,5747.335,129.0273,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,6,-1818.452,5751.487,130.2789,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,7,-1847.887,5759.892,129.9956,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,8,-1878.064,5798.131,130.8274,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,9,-1905.234,5838.334,129.3159,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,10,-1919.258,5866.711,133.2353,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,11,-1927.707,5883.394,138.2336,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,12,-1942.684,5914.093,147.3178,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,13,-1956.121,5947.675,157.485,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,14,-1960.855,5959.668,159.7002,1000,1933702,0,0,0,0,0,0,0,100,0,0);

-- Pathing for  Entry: 19390 'UDB FORMAT' 
SET @GUID := 69136;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,-1778.341,5667.918,129.2888,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,-1775.337,5672.026,129.0581,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,-1766.249,5693.59,127.4126,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,4,-1763.865,5710.114,126.5379,500,1933704,0,0,0,0,0,0,0,1.256637,0,0),
(@GUID,5,-1805.013,5747.344,129.0313,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,6,-1818.55,5751.653,130.3539,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,7,-1847.982,5759.604,130.0266,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,8,-1877.98,5798.273,130.8274,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,9,-1905.126,5838.433,129.3155,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,10,-1919.692,5866.61,133.3939,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,11,-1927.87,5883.484,138.3213,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,12,-1946.719,5923.85,149.9217,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,13,-1956.332,5947.493,157.6469,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,14,-1961.106,5959.487,159.758,1000,1933702,0,0,0,0,0,0,0,100,0,0);

-- Pathing for  Entry: 19390 'UDB FORMAT' 
SET @GUID := 69137;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,-1785.906,5669.068,129.1966,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,-1776.566,5693.338,127.6255,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,-1775.374,5695.572,126.9875,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,4,-1767.61,5711.361,126.5379,500,1933701,0,0,0,0,0,0,0,1.256637,0,0),
(@GUID,5,-1805.204,5747.251,129.044,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,6,-1818.681,5751.421,130.3778,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,7,-1847.774,5759.517,130.0284,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,8,-1877.92,5798.194,130.8274,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,9,-1905.113,5838.43,129.3176,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,10,-1919.543,5866.666,133.4483,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,11,-1936.283,5901.04,143.5694,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,12,-1951.494,5934.388,153.4136,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,13,-1960.96,5959.598,159.7436,1000,1933702,0,0,0,0,0,0,0,100,0,0);

-- Pathing for  Entry: 19390 'UDB FORMAT' 
SET @GUID := 69138;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,-1777.945,5675.802,128.944,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,-1773.947,5693.288,127.4558,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,-1771.643,5712.873,126.5378,500,1933701,0,0,0,0,0,0,0,1.256637,0,0),
(@GUID,4,-1804.982,5747.594,129.0388,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,5,-1818.473,5751.58,130.2556,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,6,-1847.81,5759.847,129.9849,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,7,-1877.841,5798.348,130.8274,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,8,-1905.289,5838.466,129.3148,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,9,-1919.597,5866.672,133.2798,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,10,-1935.219,5898.25,142.5467,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,11,-1953.283,5939.861,154.9822,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,12,-1961.159,5959.6,159.8344,1000,1933702,0,0,0,0,0,0,0,100,0,0);

-- Pathing for  Entry: 19390 'UDB FORMAT' 
SET @GUID := 69139;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,-1793.423,5661.188,129.6791,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,-1779.951,5695.966,127.6695,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,-1775.664,5713.868,126.5378,500,1933701,0,0,0,0,0,0,0,100,0,0),
(@GUID,4,-1805.241,5746.8,129.0061,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,5,-1818.651,5751.343,130.2397,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,6,-1847.748,5759.356,129.995,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,7,-1877.981,5798.265,130.8274,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,8,-1905.227,5838.397,129.3174,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,9,-1919.316,5866.584,133.3087,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,10,-1933.803,5896.036,141.8348,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,11,-1947.612,5926.974,150.8345,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,12,-1960.673,5959.615,159.679,1000,1933702,0,0,0,0,0,0,0,100,0,0);

