-- Add static spawns of the Four Dragons in Ogri'la and script spawning them from their respective eggs

-- Involved Gameobjects:
-- 185929 -- Dragonkin Nest 01
-- 185930 -- Dragonkin Nest 02
-- 185931 -- Dragonkin Nest 03
-- 185932 -- Obsidia's Egg
-- 185933 -- Apexis Shard 01
-- 185934 -- Apexis Shard 02
-- 185935 -- Dragon Egg Aura
-- 185936 -- Rivendark's Egg
-- 185937 -- Furywing's Egg
-- 185938 -- Insidion's Egg

-- 23282 -- Obsidia
-- 23061 -- Rivendark
-- 23261 -- Furywing
-- 23281 -- Insidion

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001532 AND 2000001533;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001532, 'The %s screams out for its father.', 431, 2, 0, 0, 'Black Dragon Whelpling (Entry: 23364)'),
(2000001533, 'The %s screams out for its mother.', 431, 2, 0, 0, 'Black Dragon Whelpling (Entry: 23364)');

DELETE FROM npc_text WHERE ID IN(10931,10932);
INSERT INTO npc_text (ID, text0_0, prob0) VALUES
(10931, 'The egg appears resilient as an egg of the Black Dragonflight rightfully should.  Perhaps if you were to place a great many apexis shards next to it, their vibrations would cause it to crack open?', 1), -- BroadcastID 21413
(10932, 'The egg appears resilient as an egg of the Black Dragonflight rightfully should.  Perhaps if you were to place a great many apexis shards next to it, their vibrations would cause it to crack open?$B$BToo bad that you don''t appear to have the thirty-five apexis shards necessary to do the job.', 1); -- BroadcastID 21414

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2336401,2336402);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2336401,0,20,1,7,0,0,0,0,0,0,0,0,'Black Dragon Whelpling - Random Movement',0,0,0,0),
(2336401,0,0,0,0,0,2000001533,0,0,0,0,0,0,'Black Dragon Whelpling - The %s screams out for its mother.',0,0,0,0),
(2336402,0,20,1,7,0,0,0,0,0,0,0,0,'Black Dragon Whelpling - Random Movement',0,0,0,0),
(2336402,0,0,0,0,0,2000001532,0,0,0,0,0,0,'Black Dragon Whelpling - The %s screams out for its father.',0,0,0,0);

-- =======================================
-- Static Dragon Spawns
-- =======================================
-- Obsidia
SET @OBSIDIA := 160761;
DELETE FROM creature WHERE id IN(23282);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(@OBSIDIA,23282,530,1,0,0,2011.635,7213.343,497.217,0,720,720,0,0,0,0,0,2); -- Guesswork spawnpoint
DELETE FROM creature_addon WHERE guid=@OBSIDIA;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(@OBSIDIA, 0, 0, 1, 16, 0, 0, '39991');
DELETE FROM creature_movement_template WHERE entry=23282 AND pathId=0;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23282,0,1,2060.906,7215.117,497.217,0,0,100),
(23282,0,2,2108.562,7202.19,497.217,0,0,100),
(23282,0,3,2155.718,7186.682,497.217,0,0,100),
(23282,0,4,2203.214,7175.341,497.217,0,0,100),
(23282,0,5,2251.974,7163.645,497.217,0,0,100),
(23282,0,6,2296.347,7152.57,497.217,0,0,100),
(23282,0,7,2344.651,7140.987,497.217,0,0,100),
(23282,0,8,2390.756,7121.327,497.217,0,0,100),
(23282,0,9,2434.685,7100.816,497.217,0,0,100),
(23282,0,10,2478.158,7077.784,497.217,0,0,100),
(23282,0,11,2526.485,7064.317,497.217,0,0,100),
(23282,0,12,2575.898,7061.908,497.217,0,0,100),
(23282,0,13,2622.531,7072.705,497.217,0,0,100),
(23282,0,14,2670.904,7085.049,497.217,0,0,100),
(23282,0,15,2714.95,7108.402,497.217,0,0,100),
(23282,0,16,2752.929,7140.256,497.217,0,0,100),
(23282,0,17,2774.979,7184.975,497.217,0,0,100),
(23282,0,18,2766.883,7233.411,497.217,0,0,100),
(23282,0,19,2733.921,7269.038,497.217,0,0,100),
(23282,0,20,2688.745,7276.647,497.217,0,0,100),
(23282,0,21,2641.17,7259.363,497.217,0,0,100),
(23282,0,22,2596.13,7239.193,497.217,0,0,100),
(23282,0,23,2548.462,7226.164,497.217,0,0,100),
(23282,0,24,2501.603,7211.375,497.217,0,0,100),
(23282,0,25,2453.109,7199.985,497.217,0,0,100),
(23282,0,26,2405.11,7192.809,497.217,0,0,100),
(23282,0,27,2359.491,7177.669,497.217,0,0,100),
(23282,0,28,2311.116,7166.881,497.217,0,0,100),
(23282,0,29,2263.858,7179.789,497.217,0,0,100),
(23282,0,30,2226.364,7212.38,497.217,0,0,100),
(23282,0,31,2194.03,7250.321,497.217,0,0,100),
(23282,0,32,2156.122,7281.983,497.217,0,0,100),
(23282,0,33,2110.342,7290.641,497.217,0,0,100),
(23282,0,34,2062.148,7291.457,497.217,0,0,100),
(23282,0,35,2015.348,7307.772,497.217,0,0,100),
(23282,0,36,1968.224,7323.248,497.217,0,0,100),
(23282,0,37,1920.119,7326.569,497.217,0,0,100),
(23282,0,38,1872.024,7314.75,497.217,0,0,100),
(23282,0,39,1835.109,7281.126,497.217,0,0,100),
(23282,0,40,1814.26,7236.677,497.217,0,0,100),
(23282,0,41,1833.944,7191.116,497.217,0,0,100),
(23282,0,42,1874.707,7163.787,497.217,0,0,100),
(23282,0,43,1923.187,7167.382,497.217,0,0,100),
(23282,0,44,1967.367,7190.948,497.217,0,0,100),
(23282,0,45,2011.635,7213.343,497.217,0,0,100);

-- Rivendark
SET @RIVENDARK := @OBSIDIA+1;
DELETE FROM creature WHERE id IN(23061);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(@RIVENDARK,23061,530,1,0,0,2289.827,7195.027,456.3163,0,720,720,0,0,0,0,0,2); -- Guesswork spawnpoint
DELETE FROM creature_addon WHERE guid=@RIVENDARK;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(@RIVENDARK, 0, 0, 1, 16, 0, 0, '39991');
DELETE FROM creature_movement_template WHERE entry=23061 AND pathId=0;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23061,0,1,2337.886,7189.831,456.3163,0,0,100),
(23061,0,2,2386.932,7187.457,456.3163,0,0,100),
(23061,0,3,2435.933,7188.446,456.3163,0,0,100),
(23061,0,4,2478.515,7197.97,456.3163,0,0,100),
(23061,0,5,2526.873,7207.8,456.3163,0,0,100),
(23061,0,6,2573.822,7222.369,456.3163,0,0,100),
(23061,0,7,2619.859,7240.869,456.3163,0,0,100),
(23061,0,8,2664.406,7261.086,456.3163,0,0,100),
(23061,0,9,2711.646,7272.884,456.3163,0,0,100),
(23061,0,10,2758.449,7257.396,456.3163,0,0,100),
(23061,0,11,2780.501,7213.077,456.3163,0,0,100),
(23061,0,12,2774.115,7164.366,456.3163,0,0,100),
(23061,0,13,2744.989,7125.341,456.3163,0,0,100),
(23061,0,14,2707.228,7092.516,456.3163,0,0,100),
(23061,0,15,2662.87,7071.396,456.3163,0,0,100),
(23061,0,16,2614.202,7058.205,456.3163,0,0,100),
(23061,0,17,2565.214,7055.036,456.3163,0,0,100),
(23061,0,18,2517.21,7065.706,456.3163,0,0,100),
(23061,0,19,2474.075,7089.085,456.3163,0,0,100),
(23061,0,20,2427.137,7104.748,456.3163,0,0,100),
(23061,0,21,2379.089,7117.869,456.3163,0,0,100),
(23061,0,22,2330.584,7126.79,456.3163,0,0,100),
(23061,0,23,2281.2,7132.034,456.3163,0,0,100),
(23061,0,24,2232.036,7133.086,456.3163,0,0,100),
(23061,0,25,2183.115,7133.605,456.3163,0,0,100),
(23061,0,26,2134.004,7136.209,456.3163,0,0,100),
(23061,0,27,2087.928,7153.797,456.3163,0,0,100),
(23061,0,28,2054.119,7190.436,456.3163,0,0,100),
(23061,0,29,2011.547,7215.84,456.3163,0,0,100),
(23061,0,30,1963.165,7227.477,456.3163,0,0,100),
(23061,0,31,1917.536,7208.638,456.3163,0,0,100),
(23061,0,32,1871.091,7190.205,456.3163,0,0,100),
(23061,0,33,1822.86,7181.092,456.3163,0,0,100),
(23061,0,34,1773.846,7182.697,456.3163,0,0,100),
(23061,0,35,1740.096,7217.581,456.3163,0,0,100),
(23061,0,36,1733.909,7266.909,456.3163,0,0,100),
(23061,0,37,1766.788,7300.085,456.3163,0,0,100),
(23061,0,38,1814.62,7311.39,456.3163,0,0,100),
(23061,0,39,1863.869,7315.841,456.3163,0,0,100),
(23061,0,40,1912.882,7313.702,456.3163,0,0,100),
(23061,0,41,1960.546,7303.177,456.3163,0,0,100),
(23061,0,42,2007.862,7288.891,456.3163,0,0,100),
(23061,0,43,2054.941,7271.104,456.3163,0,0,100),
(23061,0,44,2100.885,7252.252,456.3163,0,0,100),
(23061,0,45,2147.988,7235.721,456.3163,0,0,100),
(23061,0,46,2194.88,7221.169,456.3163,0,0,100),
(23061,0,47,2241.2,7205.493,456.3163,0,0,100),
(23061,0,48,2289.827,7195.027,456.3163,0,0,100);

-- Furywing
SET @FURYWING := @RIVENDARK+1;
DELETE FROM creature WHERE id IN(23261);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(@FURYWING,23261,530,1,0,0,4045.906,4914.185,361.6122,0,720,720,0,0,0,0,0,2); -- Guesswork spawnpoint
DELETE FROM creature_addon WHERE guid=@FURYWING;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(@FURYWING, 0, 0, 1, 16, 0, 0, '39991');
DELETE FROM creature_movement_template WHERE entry=23261 AND pathId=0;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23261,0,1,4057.027,4962.768,361.6122,0,0,100),
(23261,0,2,4053.204,5011.8,361.6122,0,0,100),
(23261,0,3,4052.461,5060.954,361.6122,0,0,100),
(23261,0,4,4053.653,5109.912,361.6122,0,0,100),
(23261,0,5,4053.258,5158.959,361.6122,0,0,100),
(23261,0,6,4049.445,5207.944,361.6122,0,0,100),
(23261,0,7,4041.675,5251.514,361.6122,0,0,100),
(23261,0,8,4038.728,5300.967,361.6122,0,0,100),
(23261,0,9,4040.509,5349.667,361.6122,0,0,100),
(23261,0,10,4043.063,5398.793,361.6122,0,0,100),
(23261,0,11,4046.146,5447.843,361.6122,0,0,100),
(23261,0,12,4053.927,5496.794,361.6122,0,0,100),
(23261,0,13,4068.869,5542.623,361.6122,0,0,100),
(23261,0,14,4066.99,5591.751,361.6122,0,0,100),
(23261,0,15,4053.57,5639.865,361.6122,0,0,100),
(23261,0,16,4037.272,5686.933,361.6122,0,0,100),
(23261,0,17,4014.018,5730.717,361.6122,0,0,100),
(23261,0,18,3988.543,5772.893,361.6122,0,0,100),
(23261,0,19,3966.263,5816.788,361.6122,0,0,100),
(23261,0,20,3947.238,5862.563,361.6122,0,0,100),
(23261,0,21,3928.407,5908.814,361.6122,0,0,100),
(23261,0,22,3932.787,5957.499,361.6122,0,0,100),
(23261,0,23,3947.278,6004.664,361.6122,0,0,100),
(23261,0,24,3929.282,6050.737,361.6122,0,0,100),
(23261,0,25,3881.024,6060.043,361.6122,0,0,100),
(23261,0,26,3834.01,6043.278,361.6122,0,0,100),
(23261,0,27,3812.438,5999.016,361.6122,0,0,100),
(23261,0,28,3804.87,5950.092,361.6122,0,0,100),
(23261,0,29,3829.84,5907.245,361.6122,0,0,100),
(23261,0,30,3858.821,5867.786,361.6122,0,0,100),
(23261,0,31,3889.904,5828.427,361.6122,0,0,100),
(23261,0,32,3920.985,5789.043,361.6122,0,0,100),
(23261,0,33,3948.723,5748.274,361.6122,0,0,100),
(23261,0,34,3971.718,5704.241,361.6122,0,0,100),
(23261,0,35,3983.515,5656.17,361.6122,0,0,100),
(23261,0,36,3991.102,5608.377,361.6122,0,0,100),
(23261,0,37,3994.897,5559.08,361.6122,0,0,100),
(23261,0,38,3994.368,5510.287,361.6122,0,0,100),
(23261,0,39,3995.173,5461.3,361.6122,0,0,100),
(23261,0,40,3996.762,5412.009,361.6122,0,0,100),
(23261,0,41,3998.803,5363.445,361.6122,0,0,100),
(23261,0,42,3991.569,5314.28,361.6122,0,0,100),
(23261,0,43,3970.132,5269.343,361.6122,0,0,100),
(23261,0,44,3953.141,5222.129,361.6122,0,0,100),
(23261,0,45,3937.266,5175.009,361.6122,0,0,100),
(23261,0,46,3922.605,5128.044,361.6122,0,0,100),
(23261,0,47,3921.251,5079.438,361.6122,0,0,100),
(23261,0,48,3923.928,5031.543,361.6122,0,0,100),
(23261,0,49,3926.664,4982.022,361.6122,0,0,100),
(23261,0,50,3939.91,4934.325,361.6122,0,0,100),
(23261,0,51,3965.696,4892.085,361.6122,0,0,100),
(23261,0,52,4006.357,4883.666,361.6122,0,0,100),
(23261,0,53,4045.906,4914.185,361.6122,0,0,100);

-- Insidion
SET @INSIDION := @FURYWING+1;
DELETE FROM creature WHERE id IN(23281);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(@INSIDION,23281,530,1,0,0,3893.824,6067.054,392.508,0,720,720,0,0,0,0,0,2); -- Guesswork spawnpoint
DELETE FROM creature_addon WHERE guid=@INSIDION;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(@INSIDION, 0, 0, 1, 16, 0, 0, '39991');
DELETE FROM creature_movement_template WHERE entry=23281 AND pathId=0;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23281,0,1,3925.47,6029.505,392.508,0,0,100),
(23281,0,2,3938.969,5981.242,392.508,0,0,100),
(23281,0,3,3942.934,5932.118,392.508,0,0,100),
(23281,0,4,3955.206,5884.467,392.508,0,0,100),
(23281,0,5,3972.291,5837.08,392.508,0,0,100),
(23281,0,6,3993.946,5792.933,392.508,0,0,100),
(23281,0,7,4011.205,5746.188,392.508,0,0,100),
(23281,0,8,4020.963,5697.282,392.508,0,0,100),
(23281,0,9,4024.18,5648.017,392.508,0,0,100),
(23281,0,10,4026.596,5599.415,392.508,0,0,100),
(23281,0,11,4026.855,5550.054,392.508,0,0,100),
(23281,0,12,4026.858,5501.142,392.508,0,0,100),
(23281,0,13,4028.336,5452.068,392.508,0,0,100),
(23281,0,14,4030.597,5403.513,392.508,0,0,100),
(23281,0,15,4030.422,5354.291,392.508,0,0,100),
(23281,0,16,4034.891,5305.034,392.508,0,0,100),
(23281,0,17,4036.909,5256.313,392.508,0,0,100),
(23281,0,18,4039.6,5207.396,392.508,0,0,100),
(23281,0,19,4042.617,5158.384,392.508,0,0,100),
(23281,0,20,4044.138,5109.405,392.508,0,0,100),
(23281,0,21,4055.733,5061.048,392.508,0,0,100),
(23281,0,22,4074.656,5019.068,392.508,0,0,100),
(23281,0,23,4073.899,4970.121,392.508,0,0,100),
(23281,0,24,4055.595,4924.227,392.508,0,0,100),
(23281,0,25,4016.135,4893.173,392.508,0,0,100),
(23281,0,26,3967.711,4893.434,392.508,0,0,100),
(23281,0,27,3942.15,4936.806,392.508,0,0,100),
(23281,0,28,3939.926,4985.966,392.508,0,0,100),
(23281,0,29,3958.472,5027.593,392.508,0,0,100),
(23281,0,30,3976.41,5068.929,392.508,0,0,100),
(23281,0,31,3989.599,5110.748,392.508,0,0,100),
(23281,0,32,3983.435,5153.637,392.508,0,0,100),
(23281,0,33,3962.459,5197.795,392.508,0,0,100),
(23281,0,34,3957.357,5246.866,392.508,0,0,100),
(23281,0,35,3971.213,5293.969,392.508,0,0,100),
(23281,0,36,3995.193,5327.172,392.508,0,0,100),
(23281,0,37,4003.43,5376.967,392.508,0,0,100),
(23281,0,38,3993.081,5424.277,392.508,0,0,100),
(23281,0,39,3989.172,5470.557,392.508,0,0,100),
(23281,0,40,3989.757,5519.641,392.508,0,0,100),
(23281,0,41,3989.628,5568.551,392.508,0,0,100),
(23281,0,42,3982.742,5617.76,392.508,0,0,100),
(23281,0,43,3975.153,5662.205,392.508,0,0,100),
(23281,0,44,3965.205,5708.474,392.508,0,0,100),
(23281,0,45,3938.43,5750.992,392.508,0,0,100),
(23281,0,46,3908.248,5785.253,392.508,0,0,100),
(23281,0,47,3875.189,5821.697,392.508,0,0,100),
(23281,0,48,3839.975,5853.03,392.508,0,0,100),
(23281,0,49,3805.808,5886.931,392.508,0,0,100),
(23281,0,50,3774.81,5922.067,392.508,0,0,100),
(23281,0,51,3750.263,5965.65,392.508,0,0,100),
(23281,0,52,3733.887,6012.814,392.508,0,0,100),
(23281,0,53,3737.204,6050.023,392.508,0,0,100),
(23281,0,54,3759.749,6085.06,392.508,0,0,100),
(23281,0,55,3848.757,6088.41,392.508,0,0,100),
(23281,0,56,3893.824,6067.054,392.508,0,0,100);

-- =======================================
-- Obsidia Spawning
-- =======================================
DELETE FROM gameobject WHERE id BETWEEN 185929 AND 185938;
SET @OBSIDIA_NEST := 160195;
SET @OBSIDIA_APEXIS := @OBSIDIA_NEST+5;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
-- 185929 -- Dragonkin Nest 01
(@OBSIDIA_NEST+0,185929,530,1,2426.718,7001.632,367.3455,5.93412,0,0,-0.1736479,0.9848078,720,720,100,1),
-- 185930 -- Dragonkin Nest 02
(@OBSIDIA_NEST+1,185930,530,1,2429.291,6998.494,367.4137,6.003934,0,0,-0.1391726,0.9902682,720,720,100,1),
-- 185931 -- Dragonkin Nest 03
(@OBSIDIA_NEST+2,185931,530,1,2423.913,6999.493,367.486,0.01745246,0,0,0.00872612,0.9999619,720,720,100,1),
-- 185932 -- Obsidia's Egg
(@OBSIDIA_NEST+3,185932,530,1,2426.795,7001.645,367.5722,1.727875,0,0,0.7604055,0.6494485,720,720,100,1),
-- 185933 -- Apexis Shard 01
(@OBSIDIA_APEXIS+0,185933,530,1,2425.663,7002.485,367.8742,3.38594,0,0,-0.9925461,0.12187,-180,-180,100,1),
(@OBSIDIA_APEXIS+1,185933,530,1,2427.443,7003.11,367.3218,1.117009,0,0,0.5299187,0.8480484,-180,-180,100,1),
(@OBSIDIA_APEXIS+2,185933,530,1,2425.72,7000.896,367.3727,4.136433,0,0,-0.8788166,0.4771597,-180,-180,100,1),
(@OBSIDIA_APEXIS+3,185933,530,1,2428.467,7001.334,367.3673,1.448622,0,0,0.6626196,0.7489561,-180,-180,100,1),
-- 185934 -- Apexis Shard 02
(@OBSIDIA_APEXIS+4,185934,530,1,2428.107,7002.519,367.3572,4.398232,0,0,-0.8090162,0.5877863,-180,-180,100,1),
(@OBSIDIA_APEXIS+5,185934,530,1,2425.589,7001.744,367.3536,1.483528,0,0,0.6755896,0.7372779,-180,-180,100,1),
(@OBSIDIA_APEXIS+6,185934,530,1,2426.652,7000.543,367.3926,2.617989,0,0,0.9659252,0.2588213,-180,-180,100,1),
(@OBSIDIA_APEXIS+7,185934,530,1,2427.908,7000.823,367.9793,3.839725,0,0,-0.9396925,0.3420205,-180,-180,100,1),
-- 185935 -- Dragon Egg Aura
(@OBSIDIA_NEST+4,185935,530,1,2426.79,7001.717,367.8,2.705255,0,0,0.9762955,0.2164421,720,720,100,1);
-- 185936 -- Rivendark's Egg
-- 185937 -- Furywing's Egg
-- 185938 -- Insidion's Egg

-- Obsidia's Egg (Entry: 185932)
DELETE FROM `gossip_menu` WHERE `entry`=8685;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8685, 10931, 0, 467),
(8685, 10932, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=8685;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(8685, 0, 0, 'Place 35 Apexis Shards near the dragon egg to crack it open.', 1, 0, -1, 0, 868501, 0, 0, NULL, 467);

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN(868501);
INSERT INTO `dbscripts_on_gossip` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(868501,0,15,41035,0,0,0,0,0,0,0,0,2,'Obsidia''s Egg - Make player cast Four Dragons: Force Cast - Obsidia',0,0,0,0),
(868501,0,40,0,0,0,0,0,0,0,0,0,0,'Obsidia''s Egg - Despawn Self',0,0,0,0),
(868501,0,40,0,0,0,0,0,0,0,185935,3,7,'Obsidia''s Egg - Despawn Dragon Egg Aura',0,0,0,0);

DELETE FROM `dbscripts_on_event` WHERE `id` IN(15005);
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(15005,0,18,0,0,0,0,0,0,0,23282,@OBSIDIA,23,'Despawn Static Obsidia',0,0,0,0),
(15005,0,10,23282,720000,1,0,0,0,0,0,0,0,'Obsidia - Summon',2424.975,6933.425,409.5501,1.43117),
(15005,0,10,23364,300000,1,1,0,0,0,0,0,0,'Black Dragon Whelpling - Summon',2426.954,7001.479,367.3824,0),
(15005,0,9,@OBSIDIA_APEXIS+0,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 01',0,0,0,0),
(15005,0,9,@OBSIDIA_APEXIS+1,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 01',0,0,0,0),
(15005,0,9,@OBSIDIA_APEXIS+2,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 01',0,0,0,0),
(15005,0,9,@OBSIDIA_APEXIS+3,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 01',0,0,0,0),
(15005,0,9,@OBSIDIA_APEXIS+4,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 02',0,0,0,0),
(15005,0,9,@OBSIDIA_APEXIS+5,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 02',0,0,0,0),
(15005,0,9,@OBSIDIA_APEXIS+6,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 02',0,0,0,0),
(15005,0,9,@OBSIDIA_APEXIS+7,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 02',0,0,0,0);

-- Obsidia
DELETE FROM creature_movement_template WHERE entry=23282 AND pathId=1;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23282,1,1,2426.225,6977.056,368.7894,1000,2328201,100);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2328201);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2328201,0,32,1,0,0,0,0,0,0,0,0,0,'Obsidia - Pause Waypoints',0,0,0,0),
(2328201,0,35,5,0,0,0,0,0,0,0,0,0,'Obsidia - Send AI Event 5 (A) to Self',0,0,0,0),

(2328201,0,35,5,0,0,0,0,0,0,23364,30,7,'Obsidia - Black Dragon Whelpling Send AI Event 5 (A) to Self',0,0,0,0),

(2328201,0,40,0,0,0,0,0,0,0,185933,@OBSIDIA_APEXIS+0,23,'Obsidia - Despawn Apexis Shard 01',0,0,0,0),
(2328201,0,40,0,0,0,0,0,0,0,185933,@OBSIDIA_APEXIS+1,23,'Obsidia - Despawn Apexis Shard 01',0,0,0,0),
(2328201,0,40,0,0,0,0,0,0,0,185933,@OBSIDIA_APEXIS+2,23,'Obsidia - Despawn Apexis Shard 01',0,0,0,0),
(2328201,0,40,0,0,0,0,0,0,0,185933,@OBSIDIA_APEXIS+3,23,'Obsidia - Despawn Apexis Shard 01',0,0,0,0),
(2328201,0,40,0,0,0,0,0,0,0,185934,@OBSIDIA_APEXIS+4,23,'Obsidia - Despawn Apexis Shard 02',0,0,0,0),
(2328201,0,40,0,0,0,0,0,0,0,185934,@OBSIDIA_APEXIS+5,23,'Obsidia - Despawn Apexis Shard 02',0,0,0,0),
(2328201,0,40,0,0,0,0,0,0,0,185934,@OBSIDIA_APEXIS+6,23,'Obsidia - Despawn Apexis Shard 02',0,0,0,0),
(2328201,0,40,0,0,0,0,0,0,0,185934,@OBSIDIA_APEXIS+7,23,'Obsidia - Despawn Apexis Shard 02',0,0,0,0),

(2328201,0,40,0,0,0,0,0,0,0,185929,@OBSIDIA_NEST+0,23,'Obsidia - Despawn Dragonkin Nest 01',0,0,0,0),
(2328201,0,40,0,0,0,0,0,0,0,185930,@OBSIDIA_NEST+1,23,'Obsidia - Despawn Dragonkin Nest 02',0,0,0,0),
(2328201,0,40,0,0,0,0,0,0,0,185931,@OBSIDIA_NEST+2,23,'Obsidia - Despawn Dragonkin Nest 03',0,0,0,0);

-- Black Dragon Whelpling
DELETE FROM creature_movement_template WHERE entry=23364;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23364,1,1,2426.954,7001.479,367.3824,1000,2336401,0); -- Mother

-- -------------------------------------------------------------------------------------------
-- =======================================
-- Rivendark Spawning
-- =======================================
SET @RIVENDARK_NEST := @OBSIDIA_APEXIS+8;
SET @RIVENDARK_APEXIS := @RIVENDARK_NEST+5;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
-- 185929 -- Dragonkin Nest 01
(@RIVENDARK_NEST+0,185929,530,1,2064.722,7372.715,370.805,5.93412,0,0,-0.1736479,0.9848078,720,720,100,1),
-- 185930 -- Dragonkin Nest 02
(@RIVENDARK_NEST+1,185930,530,1,2068.751,7374.342,371.0581,6.178466,0,0,-0.05233574,0.9986296,720,720,100,1),
-- 185931 -- Dragonkin Nest 03
(@RIVENDARK_NEST+2,185931,530,1,2065.042,7375.885,371.0228,0.01745246,0,0,0.00872612,0.9999619,720,720,100,1),
-- 185932 -- Obsidia's Egg
-- 185933 -- Apexis Shard 01
(@RIVENDARK_APEXIS+0,185933,530,1,2063.296,7371.967,370.849,4.852017,0,0,-0.6560583,0.7547102,-180,-180,100,1),
(@RIVENDARK_APEXIS+1,185933,530,1,2065.642,7371.525,370.7909,1.117009,0,0,0.5299187,0.8480484,-180,-180,100,1),
(@RIVENDARK_APEXIS+2,185933,530,1,2064.214,7373.821,370.952,3.33359,0,0,-0.9953957,0.09585124,-180,-180,100,1),
(@RIVENDARK_APEXIS+3,185933,530,1,2066.107,7373.351,370.8445,2.042035,0,0,0.8526402,0.5224986,-180,-180,100,1),
-- 185934 -- Apexis Shard 02
(@RIVENDARK_APEXIS+4,185934,530,1,2063.746,7371.389,370.8094,2.373644,0,0,0.9271832,0.3746083,-180,-180,100,1),
(@RIVENDARK_APEXIS+5,185934,530,1,2063.335,7373.158,370.9651,1.483528,0,0,0.6755896,0.7372779,-180,-180,100,1),
(@RIVENDARK_APEXIS+6,185934,530,1,2065.147,7373.63,370.8522,6.021387,0,0,-0.1305256,0.9914449,-180,-180,100,1),
(@RIVENDARK_APEXIS+7,185934,530,1,2066.408,7372.39,371.5862,3.839725,0,0,-0.9396925,0.3420205,-180,-180,100,1),
-- 185935 -- Dragon Egg Aura
(@RIVENDARK_NEST+3,185935,530,1,2064.824,7372.755,371.0631,2.705255,0,0,0.9762955,0.2164421,720,720,100,1),
-- 185936 -- Rivendark's Egg
(@RIVENDARK_NEST+4,185936,530,1,2064.691,7372.693,371.1594,1.727875,0,0,0.7604055,0.6494485,720,720,100,1);
-- 185937 -- Furywing's Egg
-- 185938 -- Insidion's Egg

-- Rivendark's Egg (Entry: 185936)
DELETE FROM `gossip_menu` WHERE `entry`=8689;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8689, 10931, 0, 467),
(8689, 10932, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=8689;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(8689, 0, 0, 'Place 35 Apexis Shards near the dragon egg to crack it open.', 1, 0, -1, 0, 868901, 0, 0, NULL, 467);

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN(868901);
INSERT INTO `dbscripts_on_gossip` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(868901,0,15,41044,0,0,0,0,0,0,0,0,2,'Rivendark''s Egg - Make player cast Four Dragons: Force Cast - Rivendark',0,0,0,0),
(868901,0,40,0,0,0,0,0,0,0,0,0,0,'Rivendark''s Egg - Despawn Self',0,0,0,0),
(868901,0,40,0,0,0,0,0,0,0,185935,3,7,'Rivendark''s Egg - Despawn Dragon Egg Aura',0,0,0,0);

DELETE FROM `dbscripts_on_event` WHERE `id` IN(15004);
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(15004,0,18,0,0,0,0,0,0,0,23061,@RIVENDARK,23,'Despawn Static Rivendark',0,0,0,0),
(15004,0,10,23061,720000,1,0,0,0,0,0,0,0,'Rivendark - Summon',2069.213,7445.969,406.4469,4.694936),
(15004,0,10,23364,300000,2,1,0,0,0,0,0,0,'Black Dragon Whelpling - Summon',2064.728,7372.577,370.8877,4.29351),
(15004,0,9,@RIVENDARK_APEXIS+0,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 01',0,0,0,0),
(15004,0,9,@RIVENDARK_APEXIS+1,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 01',0,0,0,0),
(15004,0,9,@RIVENDARK_APEXIS+2,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 01',0,0,0,0),
(15004,0,9,@RIVENDARK_APEXIS+3,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 01',0,0,0,0),
(15004,0,9,@RIVENDARK_APEXIS+4,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 02',0,0,0,0),
(15004,0,9,@RIVENDARK_APEXIS+5,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 02',0,0,0,0),
(15004,0,9,@RIVENDARK_APEXIS+6,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 02',0,0,0,0),
(15004,0,9,@RIVENDARK_APEXIS+7,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 02',0,0,0,0);

-- Rivendark
DELETE FROM creature_movement_template WHERE entry=23061 AND pathId=1;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23061,1,1,2066.223,7389.763,372.3586,1000,2306101,100);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2306101);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2306101,0,32,1,0,0,0,0,0,0,0,0,0,'Rivendark - Pause Waypoints',0,0,0,0),
(2306101,0,35,5,0,0,0,0,0,0,0,0,0,'Rivendark - Send AI Event 5 (A) to Self',0,0,0,0),

(2306101,0,35,5,0,0,0,0,0,0,23364,30,7,'Rivendark - Black Dragon Whelpling Send AI Event 5 (A) to Self',0,0,0,0),

(2306101,0,40,0,0,0,0,0,0,0,185933,@RIVENDARK_APEXIS+0,23,'Rivendark - Despawn Apexis Shard 01',0,0,0,0),
(2306101,0,40,0,0,0,0,0,0,0,185933,@RIVENDARK_APEXIS+1,23,'Rivendark - Despawn Apexis Shard 01',0,0,0,0),
(2306101,0,40,0,0,0,0,0,0,0,185933,@RIVENDARK_APEXIS+2,23,'Rivendark - Despawn Apexis Shard 01',0,0,0,0),
(2306101,0,40,0,0,0,0,0,0,0,185933,@RIVENDARK_APEXIS+3,23,'Rivendark - Despawn Apexis Shard 01',0,0,0,0),
(2306101,0,40,0,0,0,0,0,0,0,185934,@RIVENDARK_APEXIS+4,23,'Rivendark - Despawn Apexis Shard 02',0,0,0,0),
(2306101,0,40,0,0,0,0,0,0,0,185934,@RIVENDARK_APEXIS+5,23,'Rivendark - Despawn Apexis Shard 02',0,0,0,0),
(2306101,0,40,0,0,0,0,0,0,0,185934,@RIVENDARK_APEXIS+6,23,'Rivendark - Despawn Apexis Shard 02',0,0,0,0),
(2306101,0,40,0,0,0,0,0,0,0,185934,@RIVENDARK_APEXIS+7,23,'Rivendark - Despawn Apexis Shard 02',0,0,0,0),

(2306101,0,40,0,0,0,0,0,0,0,185929,@RIVENDARK_NEST+0,23,'Rivendark - Despawn Dragonkin Nest 01',0,0,0,0),
(2306101,0,40,0,0,0,0,0,0,0,185930,@RIVENDARK_NEST+1,23,'Rivendark - Despawn Dragonkin Nest 02',0,0,0,0),
(2306101,0,40,0,0,0,0,0,0,0,185931,@RIVENDARK_NEST+2,23,'Rivendark - Despawn Dragonkin Nest 03',0,0,0,0);

-- Black Dragon Whelpling
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23364,2,1,2064.728,7372.577,370.8877,1000,2336402,2.373648); -- Father

-- -------------------------------------------------------------------------------------------
-- =======================================
-- Furywing Spawning
-- =======================================
SET @FURYWING_NEST := @RIVENDARK_APEXIS+8;
SET @FURYWING_APEXIS := @FURYWING_NEST+5;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
-- 185929 -- Dragonkin Nest 01
(@FURYWING_NEST+0,185929,530,1,3891.085,5227.132,269.86,5.340709,0,0,-0.45399,0.8910068,720,720,100,1),
-- 185930 -- Dragonkin Nest 02
(@FURYWING_NEST+1,185930,530,1,3887.606,5227.255,270.1835,2.757613,0,0,0.9816265,0.1908124,720,720,100,1),
-- 185931 -- Dragonkin Nest 03
(@FURYWING_NEST+2,185931,530,1,3889.194,5223.552,269.8534,0.01745246,0,0,0.00872612,0.9999619,720,720,100,1),
-- 185932 -- Obsidia's Egg
-- 185933 -- Apexis Shard 01
(@FURYWING_APEXIS+0,185933,530,1,3892.388,5225.979,269.7591,0.157079,0,0,0.07845879,0.9969174,-180,-180,100,1),
(@FURYWING_APEXIS+1,185933,530,1,3891.742,5228.529,269.888,1.117009,0,0,0.5299187,0.8480484,-180,-180,100,1),
(@FURYWING_APEXIS+2,185933,530,1,3890.006,5226.129,269.8769,5.742135,0,0,-0.2672377,0.9636307,-180,-180,100,1),
(@FURYWING_APEXIS+3,185933,530,1,3890.007,5227.709,269.9311,3.647741,0,0,-0.9681473,0.2503814,-180,-180,100,1),
-- 185934 -- Apexis Shard 02
(@FURYWING_APEXIS+4,185934,530,1,3891.181,5225.736,269.8051,3.211419,0,0,-0.9993906,0.03490613,-180,-180,100,1),
(@FURYWING_APEXIS+5,185934,530,1,3890.781,5228.408,269.9258,0.1047193,0,0,0.05233574,0.9986296,-180,-180,100,1),
(@FURYWING_APEXIS+6,185934,530,1,3892.724,5227.35,269.7918,4.991644,0,0,-0.6018143,0.7986361,-180,-180,100,1),
(@FURYWING_APEXIS+7,185934,530,1,3890.063,5226.986,269.8891,1.815142,0,0,0.7880106,0.6156617,-180,-180,100,1),
-- 185935 -- Dragon Egg Aura
(@FURYWING_NEST+3,185935,530,1,3891.392,5227.12,270.0784,2.705255,0,0,0.9762955,0.2164421,720,720,100,1),
-- 185936 -- Rivendark's Egg
-- 185937 -- Furywing's Egg
(@FURYWING_NEST+4,185937,530,1,3891.273,5227.049,270.0936,3.752462,0,0,-0.9537163,0.3007079,720,720,100,1);
-- 185938 -- Insidion's Egg

-- Furywing's Egg (Entry: 185936)
DELETE FROM `gossip_menu` WHERE `entry`=8690;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8690, 10931, 0, 467),
(8690, 10932, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=8690;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(8690, 0, 0, 'Place 35 Apexis Shards near the dragon egg to crack it open.', 1, 0, -1, 0, 869001, 0, 0, NULL, 467);

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN(869001);
INSERT INTO `dbscripts_on_gossip` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(869001,0,15,41050,0,0,0,0,0,0,0,0,2,'Furywing''s Egg - Make player cast Four Dragons: Force Cast - Furywing',0,0,0,0),
(869001,0,40,0,0,0,0,0,0,0,0,0,0,'Furywing''s Egg - Despawn Self',0,0,0,0),
(869001,0,40,0,0,0,0,0,0,0,185935,3,7,'Furywing''s Egg - Despawn Dragon Egg Aura',0,0,0,0);

DELETE FROM `dbscripts_on_event` WHERE `id` IN(15003);
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(15003,0,18,0,0,0,0,0,0,0,23261,@FURYWING,23,'Despawn Static Furywing',0,0,0,0),
(15003,0,10,23261,720000,1,0,0,0,0,0,0,0,'Furywing - Summon',3824.138,5245.131,334.0981,6.021386),
(15003,0,10,23364,300000,3,1,0,0,0,0,0,0,'Black Dragon Whelpling - Summon',3891.426,5227.029,269.9281,0.2094395),
(15003,0,9,@FURYWING_APEXIS+0,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 01',0,0,0,0),
(15003,0,9,@FURYWING_APEXIS+1,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 01',0,0,0,0),
(15003,0,9,@FURYWING_APEXIS+2,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 01',0,0,0,0),
(15003,0,9,@FURYWING_APEXIS+3,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 01',0,0,0,0),
(15003,0,9,@FURYWING_APEXIS+4,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 02',0,0,0,0),
(15003,0,9,@FURYWING_APEXIS+5,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 02',0,0,0,0),
(15003,0,9,@FURYWING_APEXIS+6,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 02',0,0,0,0),
(15003,0,9,@FURYWING_APEXIS+7,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 02',0,0,0,0);

-- Furywing
DELETE FROM creature_movement_template WHERE entry=23261 AND pathId=1;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23261,1,1,3873.236,5230.207,271.5318,1000,2326101,100);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2326101);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2326101,0,32,1,0,0,0,0,0,0,0,0,0,'Furywing - Pause Waypoints',0,0,0,0),
(2326101,0,35,5,0,0,0,0,0,0,0,0,0,'Furywing - Send AI Event 5 (A) to Self',0,0,0,0),

(2326101,0,35,5,0,0,0,0,0,0,23364,30,7,'Furywing - Black Dragon Whelpling Send AI Event 5 (A) to Self',0,0,0,0),

(2326101,0,40,0,0,0,0,0,0,0,185933,@FURYWING_APEXIS+0,23,'Furywing - Despawn Apexis Shard 01',0,0,0,0),
(2326101,0,40,0,0,0,0,0,0,0,185933,@FURYWING_APEXIS+1,23,'Furywing - Despawn Apexis Shard 01',0,0,0,0),
(2326101,0,40,0,0,0,0,0,0,0,185933,@FURYWING_APEXIS+2,23,'Furywing - Despawn Apexis Shard 01',0,0,0,0),
(2326101,0,40,0,0,0,0,0,0,0,185933,@FURYWING_APEXIS+3,23,'Furywing - Despawn Apexis Shard 01',0,0,0,0),
(2326101,0,40,0,0,0,0,0,0,0,185934,@FURYWING_APEXIS+4,23,'Furywing - Despawn Apexis Shard 02',0,0,0,0),
(2326101,0,40,0,0,0,0,0,0,0,185934,@FURYWING_APEXIS+5,23,'Furywing - Despawn Apexis Shard 02',0,0,0,0),
(2326101,0,40,0,0,0,0,0,0,0,185934,@FURYWING_APEXIS+6,23,'Furywing - Despawn Apexis Shard 02',0,0,0,0),
(2326101,0,40,0,0,0,0,0,0,0,185934,@FURYWING_APEXIS+7,23,'Furywing - Despawn Apexis Shard 02',0,0,0,0),

(2326101,0,40,0,0,0,0,0,0,0,185929,@FURYWING_NEST+0,23,'Furywing - Despawn Dragonkin Nest 01',0,0,0,0),
(2326101,0,40,0,0,0,0,0,0,0,185930,@FURYWING_NEST+1,23,'Furywing - Despawn Dragonkin Nest 02',0,0,0,0),
(2326101,0,40,0,0,0,0,0,0,0,185931,@FURYWING_NEST+2,23,'Furywing - Despawn Dragonkin Nest 03',0,0,0,0);

-- Black Dragon Whelpling
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23364,3,1,3891.426,5227.029,269.9281,1000,2336401,0.2094395); -- Mother

-- -------------------------------------------------------------------------------------------
-- =======================================
-- Insidion Spawning
-- =======================================
SET @INSIDION_NEST := @FURYWING_APEXIS+8;
SET @INSIDION_APEXIS := @INSIDION_NEST+5;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
-- 185929 -- Dragonkin Nest 01
(@INSIDION_NEST+0,185929,530,1,4143.111,5441.569,274.2603,0.7504908,0,0,0.3665009,0.9304177,720,720,100,1),
-- 185930 -- Dragonkin Nest 02
(@INSIDION_NEST+1,185930,530,1,4146.502,5443.785,274.3741,4.76475,0,0,-0.6883545,0.7253745,720,720,100,1),
-- 185931 -- Dragonkin Nest 03
(@INSIDION_NEST+2,185931,530,1,4142.845,5437.991,274.2668,2.216565,0,0,0.8949337,0.4461992,720,720,100,1),
-- 185932 -- Obsidia's Egg
-- 185933 -- Apexis Shard 01
(@INSIDION_APEXIS+0,185933,530,1,4144.66,5441.737,274.1924,3.38594,0,0,-0.9925461,0.12187,-180,-180,100,1),
(@INSIDION_APEXIS+1,185933,530,1,4143.334,5440.28,274.215,6.021387,0,0,-0.1305256,0.9914449,-180,-180,100,1),
(@INSIDION_APEXIS+2,185933,530,1,4141.61,5441.492,274.5971,4.485497,0,0,-0.782608,0.6225148,-180,-180,100,1),
(@INSIDION_APEXIS+3,185933,530,1,4143.421,5443.045,274.2368,2.879789,0,0,0.9914446,0.1305283,-180,-180,100,1),
-- 185934 -- Apexis Shard 02
(@INSIDION_APEXIS+4,185934,530,1,4144.145,5442.343,274.2103,5.899214,0,0,-0.1908083,0.9816273,-180,-180,100,1),
(@INSIDION_APEXIS+5,185934,530,1,4144.202,5440.893,274.1925,4.01426,0,0,-0.9063072,0.4226195,-180,-180,100,1),
(@INSIDION_APEXIS+6,185934,530,1,4142.298,5440.813,274.2836,2.478367,0,0,0.9455185,0.3255684,-180,-180,100,1),
(@INSIDION_APEXIS+7,185934,530,1,4142.252,5442.658,274.2881,1.047198,0,0,0.5,0.8660254,-180,-180,100,1),
-- 185935 -- Dragon Egg Aura
(@INSIDION_NEST+3,185935,530,1,4143.147,5441.582,274.5854,2.705255,0,0,0.9762955,0.2164421,720,720,100,1),
-- 185936 -- Rivendark's Egg
-- 185937 -- Furywing's Egg
-- 185938 -- Insidion's Egg
(@INSIDION_NEST+4,185938,530,1,4143.158,5441.745,274.5032,1.727875,0,0,0.7604055,0.6494485,720,720,100,1);

-- Insidion's Egg (Entry: 185938)
DELETE FROM `gossip_menu` WHERE `entry`=8691;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(8691, 10931, 0, 467),
(8691, 10932, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=8691;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(8691, 0, 0, 'Place 35 Apexis Shards near the dragon egg to crack it open.', 1, 0, -1, 0, 869101, 0, 0, NULL, 467);

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN(869101);
INSERT INTO `dbscripts_on_gossip` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(869101,0,15,41052,0,0,0,0,0,0,0,0,2,'Insidion''s Egg - Make player cast Four Dragons: Force Cast - Insidion',0,0,0,0),
(869101,0,40,0,0,0,0,0,0,0,0,0,0,'Insidion''s Egg - Despawn Self',0,0,0,0),
(869101,0,40,0,0,0,0,0,0,0,185935,3,7,'Insidion''s Egg - Despawn Dragon Egg Aura',0,0,0,0);

DELETE FROM `dbscripts_on_event` WHERE `id` IN(15002);
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(15002,0,18,0,0,0,0,0,0,0,23281,@INSIDION,23,'Despawn Static Insidion',0,0,0,0),
(15002,0,10,23281,720000,1,0,0,0,0,0,0,0,'Insidion - Summon',4220.437,5412.868,327.1262,2.775074),
(15002,0,10,23364,300000,4,1,0,0,0,0,0,0,'Black Dragon Whelpling - Summon',4143.135,5441.645,274.3446,2.373648),
(15002,0,9,@INSIDION_APEXIS+0,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 01',0,0,0,0),
(15002,0,9,@INSIDION_APEXIS+1,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 01',0,0,0,0),
(15002,0,9,@INSIDION_APEXIS+2,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 01',0,0,0,0),
(15002,0,9,@INSIDION_APEXIS+3,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 01',0,0,0,0),
(15002,0,9,@INSIDION_APEXIS+4,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 02',0,0,0,0),
(15002,0,9,@INSIDION_APEXIS+5,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 02',0,0,0,0),
(15002,0,9,@INSIDION_APEXIS+6,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 02',0,0,0,0),
(15002,0,9,@INSIDION_APEXIS+7,180,0,0,0,0,0,0,0,0,'Respawn Apexis Shard 02',0,0,0,0);

-- Insidion
DELETE FROM creature_movement_template WHERE entry=23281 AND pathId=1;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23281,1,1,4155.961,5435.81,274.7537,1000,2328101,100);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2328101);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2328101,0,32,1,0,0,0,0,0,0,0,0,0,'Insidion - Pause Waypoints',0,0,0,0),
(2328101,0,35,5,0,0,0,0,0,0,0,0,0,'Insidion - Send AI Event 5 (A) to Self',0,0,0,0),

(2328101,0,35,5,0,0,0,0,0,0,23364,30,7,'Insidion - Black Dragon Whelpling Send AI Event 5 (A) to Self',0,0,0,0),

(2328101,0,40,0,0,0,0,0,0,0,185933,@INSIDION_APEXIS+0,23,'Insidion - Despawn Apexis Shard 01',0,0,0,0),
(2328101,0,40,0,0,0,0,0,0,0,185933,@INSIDION_APEXIS+1,23,'Insidion - Despawn Apexis Shard 01',0,0,0,0),
(2328101,0,40,0,0,0,0,0,0,0,185933,@INSIDION_APEXIS+2,23,'Insidion - Despawn Apexis Shard 01',0,0,0,0),
(2328101,0,40,0,0,0,0,0,0,0,185933,@INSIDION_APEXIS+3,23,'Insidion - Despawn Apexis Shard 01',0,0,0,0),
(2328101,0,40,0,0,0,0,0,0,0,185934,@INSIDION_APEXIS+4,23,'Insidion - Despawn Apexis Shard 02',0,0,0,0),
(2328101,0,40,0,0,0,0,0,0,0,185934,@INSIDION_APEXIS+5,23,'Insidion - Despawn Apexis Shard 02',0,0,0,0),
(2328101,0,40,0,0,0,0,0,0,0,185934,@INSIDION_APEXIS+6,23,'Insidion - Despawn Apexis Shard 02',0,0,0,0),
(2328101,0,40,0,0,0,0,0,0,0,185934,@INSIDION_APEXIS+7,23,'Insidion - Despawn Apexis Shard 02',0,0,0,0),

(2328101,0,40,0,0,0,0,0,0,0,185929,@INSIDION_NEST+0,23,'Insidion - Despawn Dragonkin Nest 01',0,0,0,0),
(2328101,0,40,0,0,0,0,0,0,0,185930,@INSIDION_NEST+1,23,'Insidion - Despawn Dragonkin Nest 02',0,0,0,0),
(2328101,0,40,0,0,0,0,0,0,0,185931,@INSIDION_NEST+2,23,'Insidion - Despawn Dragonkin Nest 03',0,0,0,0);

-- Black Dragon Whelpling
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23364,4,1,4143.135,5441.645,274.3446,1000,2336402,2.373648); -- Father

-- Relay used in acid to respawn static spawn on temp-spawn despawn or death
DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN (10125 AND 10132) AND command=41;
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10125,0,41,0,0,0,0,0,0,0,23282,@OBSIDIA,87,'Respawn Static Obsidia',0,0,0,0),
(10126,7,41,0,0,0,0,0,0,0,23282,@OBSIDIA,87,'Respawn Static Obsidia (7s delay)',0,0,0,0),
(10127,0,41,0,0,0,0,0,0,0,23061,@RIVENDARK,87,'Respawn Static Rivendark',0,0,0,0),
(10128,7,41,0,0,0,0,0,0,0,23061,@RIVENDARK,87,'Respawn Static Rivendark (7s delay)',0,0,0,0),
(10129,0,41,0,0,0,0,0,0,0,23261,@FURYWING,87,'Respawn Static Furywing',0,0,0,0),
(10130,7,41,0,0,0,0,0,0,0,23261,@FURYWING,87,'Respawn Static Furywing (7s delay)',0,0,0,0),
(10131,0,41,0,0,0,0,0,0,0,23281,@INSIDION,87,'Respawn Static Insidion',0,0,0,0),
(10132,7,41,0,0,0,0,0,0,0,23281,@INSIDION,87,'Respawn Static Insidion (7s delay)',0,0,0,0);

