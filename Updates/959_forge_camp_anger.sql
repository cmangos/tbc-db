-- Doomforge Attendant c.19961
DELETE FROM `creature_movement` WHERE `id` IN(SELECT guid FROM creature WHERE id=19961);
DELETE FROM `creature_template_addon` WHERE `entry`=19961;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id=19961);
DELETE FROM creature WHERE id=19961;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(160652,19961,530,1,0,0,3015.552,4815.864,284.6985,3.717551,300,300,0,0,0,0,0,2),
(160653,19961,530,1,0,0,2892.083,4759.429,278.1962,6.230825,300,300,0,0,0,0,0,2),
(160654,19961,530,1,0,0,3015.691,4815.709,284.6985,1.047198,300,300,0,0,0,0,0,2),
(160655,19961,530,1,0,0,3015.684,4816.207,284.6985,4.118977,300,300,0,0,0,0,0,2),
(160656,19961,530,1,0,0,3016.101,4817.27,285.9265,3.961897,300,300,0,0,0,0,0,2),
(160657,19961,530,1,0,0,2944.593,4789.739,282.8492,4.101524,300,300,0,0,0,0,0,2),
(160658,19961,530,1,0,0,2985.281,4760.728,285.2068,3.543018,300,300,0,0,0,0,0,0);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(160658, 0, 0, 1, 16, 173, 0, NULL);

INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(160652,1,3015.552,4815.864,284.6985,4000,1996103,100),
(160652,2,2996.9,4813.777,282.9825,0,0,100),
(160652,3,2976.62,4817.843,277.9461,0,0,100),
(160652,4,2949.463,4820.414,278.8403,0,0,100),
(160652,5,2929.416,4820.159,277.3577,0,0,100),
(160652,6,2905.603,4822.176,277.6217,0,0,100),
(160652,7,2885.614,4824.758,280.5938,0,0,100),
(160652,8,2868.547,4824.417,283.0903,0,0,100),
(160652,9,2860.606,4821.674,282.9789,0,0,100),
(160652,10,2862.432,4819.816,282.8539,1000,1996104,100);

INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(160653,1,2893.726,4759.465,277.9531,18000,1996102,100),
(160653,2,2893.019,4778.047,277.7068,0,0,100),
(160653,3,2892.133,4779.987,277.6349,18000,1996102,100),
(160653,4,2890.121,4759.996,278.5725,0,0,100);

INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(160654,1,3015.691,4815.709,284.6985,4000,1996103,100),
(160654,2,2998.593,4818.99,283.6732,0,0,100),
(160654,3,2981.128,4832.636,277.8858,0,0,100),
(160654,4,2972.401,4840.749,277.9881,0,0,100),
(160654,5,2964.357,4860.709,278.5197,0,0,100),
(160654,6,2962.122,4867.397,277.5305,1000,1996104,100);

INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(160655,1,3015.684,4816.207,284.6985,4000,1996103,100),
(160655,2,3000.309,4808.081,284.3883,0,0,100),
(160655,3,2978.839,4809.474,279.2328,0,0,100),
(160655,4,2961.7,4822.538,277.7203,0,0,100),
(160655,5,2941.73,4841.146,278.156,0,0,100),
(160655,6,2925.086,4851.333,277.977,0,0,100),
(160655,7,2924.086,4845.893,279.0797,1000,1996104,100);

INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(160656,1,3016.101,4817.27,285.9265,4000,1996103,100),
(160656,2,3000.309,4808.081,284.3883,0,0,100),
(160656,3,2978.839,4809.474,279.2328,0,0,100),
(160656,4,2963.006,4791.282,283.0743,0,0,100),
(160656,5,2962.565,4778.198,283.5175,0,0,100),
(160656,6,2971.709,4767.985,285.5767,0,0,100),
(160656,7,2973.149,4762.982,285.4333,1000,1996104,100);

INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(160657,1,2953.472,4780.935,282.8387,10000,1996101,100),
(160657,2,2948.297,4764.063,284.6717,0,0,100),
(160657,3,2941.578,4765.844,283.3498,0,0,100),
(160657,4,2942.383,4768.623,282.893,10000,1996101,100),
(160657,5,2930.749,4780.53,282.5346,0,0,100),
(160657,6,2933.162,4779.713,282.6778,10000,1996101,100),
(160657,7,2939.701,4792.821,282.9147,0,0,100),
(160657,8,2945.003,4789.116,282.8387,10000,1996101,100);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1996101 AND 1996104;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1996101,0,25,1,0,0,0,0,0,0,0,0,0,'Doomforge Attendant - Run On',0,0,0,0),
(1996101,0,1,173,0,0,0,0,0,0,0,0,0,'Doomforge Attendant - STATE_WORK',0,0,0,0),
(1996101,8,1,0,0,0,0,0,0,0,0,0,0,'Doomforge Attendant - ONESHOT_NONE',0,0,0,0),

(1996102,0,1,173,0,0,0,0,0,0,0,0,0,'Doomforge Attendant - STATE_WORK',0,0,0,0),
(1996102,16,1,0,0,0,0,0,0,0,0,0,0,'Doomforge Attendant - ONESHOT_NONE',0,0,0,0),

(1996103,0,25,1,0,0,0,0,0,0,0,0,0,'Doomforge Attendant - Run On',0,0,0,0),
(1996103,0,15,35502,0,0,0,0,0,0,20736,5,7,'Doomforge Attendant - Force Blade''s Edge - Legion - Invis Bunny - Cast Legion Teleport Target',0,0,0,0),
(1996103,3,14,35502,0,0,0,0,0,0,20736,5,7,'Doomforge Attendant - Force Blade''s Edge - Legion - Invis Bunny - Remove Aura Legion Teleport Target',0,0,0,0),

(1996104,0,1,173,0,0,0,0,0,0,0,0,0,'Doomforge Attendant - STATE_WORK',0,0,0,0),
(1996104,0,20,0,0,0,0,0,0,0,0,0,0,'Doomforge Attendant - Set Idle Movement',0,0,0,0);

-- Doomforge Engineer c.19960
DELETE FROM `creature_movement` WHERE `id` IN(SELECT guid FROM creature WHERE id=19960);
DELETE FROM creature WHERE id=19960;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(160659,19960,530,1,0,0,2845.001,4847.93,278.4095,0.04838523,300,300,0,0,0,0,0,2),
(160660,19960,530,1,0,0,2961.818,4750.848,284.9344,2.634684,300,300,0,0,0,0,0,2),
(160661,19960,530,1,0,0,2903.634,4764.08,277.7476,0.9722307,300,300,0,0,0,0,0,2),
(160662,19960,530,1,0,0,2956.953,4827.598,277.5942,2.876706,300,300,0,0,0,0,0,2),
(160663,19960,530,1,0,0,2990.904,4797.877,278.9279,1.281536,300,300,0,0,0,0,0,2);

INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(160659,1,2867.767,4860.206,278.7422,10000,0,100),
(160659,2,2882.606,4863.446,277.7609,0,0,100),
(160659,3,2888.355,4866.515,278.8393,10000,0,100),
(160659,4,2884.927,4828.33,279.9164,0,0,100),
(160659,5,2880.426,4821.342,282.62,10000,0,100),
(160659,6,2880.329,4840.316,277.5849,0,0,100),
(160659,7,2845.681,4856.004,278.0449,10000,0,100),
(160659,8,2861.66,4848.736,279.0749,0,0,100);

INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(160660,1,2929.183,4768.96,284.3584,0,0,100),
(160660,2,2914.163,4783.219,279.8585,0,0,100),
(160660,3,2899.761,4791.89,278.758,0,0,100),
(160660,4,2895.066,4789.424,278.2599,13000,1996101,100),
(160660,5,2914.437,4754.469,278.7028,0,0,100),
(160660,6,2906.337,4752.063,278.1696,10000,0,100),
(160660,7,2913.667,4777.334,279.2909,0,0,100),
(160660,8,2944.35,4764.955,283.7337,0,0,100),
(160660,9,2967.11,4758.485,284.9379,10000,0,100);

INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(160661,1,2913.211,4778.135,279.1815,0,0,100),
(160661,2,2918.808,4788.151,280.7053,0,0,100),
(160661,3,2937.23,4783.717,282.8387,13000,1996101,100),
(160661,4,2912.959,4783.194,279.8524,0,0,100),
(160661,5,2902.08,4762.599,277.7338,13000,1996101,100);

INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(160662,1,2938.139,4864.687,276.0607,0,0,100),
(160662,2,2945.344,4866.231,276.6652,10000,0,100),
(160662,3,2974.182,4848.341,277.7274,0,0,100),
(160662,4,2982.239,4851.374,277.8763,10000,0,100),
(160662,5,2970.286,4819.514,278.5108,0,0,100),
(160662,6,2959.114,4821.473,277.5208,0,0,100),
(160662,7,2961.351,4827.726,277.6288,10000,0,100),
(160662,8,2931.107,4834.599,278.8214,10000,0,100);

INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(160663,1,2995.645,4813.833,282.6029,0,0,100),
(160663,2,3002.092,4813.683,283.8779,10000,0,100),
(160663,3,3004.088,4821.933,284.6076,0,0,100),
(160663,4,3010.77,4829.289,284.4557,10000,0,100),
(160663,5,2986.03,4814.185,280.2498,0,0,100),
(160663,6,2967.562,4799.309,281.536,0,0,100),
(160663,7,2959.775,4793.428,282.7282,10000,0,100),
(160663,8,2977.916,4803.039,279.0631,0,0,100),
(160663,9,2982.647,4795.662,277.7968,10000,0,100);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=1996101;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1996101,0,1,28,0,0,0,0,0,0,0,0,0,'Doomforge Engineer - STATE_WORK_SHEATHED',0,0,0,0),
(1996101,9,1,0,0,0,0,0,0,0,0,0,0,'Doomforge Engineer - ONESHOT_NONE',0,0,0,0);

-- Anger Guard c.16952
-- All spawns correct already and they have no movement

UPDATE creature_template SET InhabitType=7 WHERE entry=22422; -- Blade's Edge - Legion - Anger Camp - Invis Bunny

