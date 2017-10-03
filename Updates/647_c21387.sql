-- Wyrmcult Blackwhelp c.21387
-- ------------------------

-- Delete duplicate Wyrmcult Blackwhelps
DELETE FROM creature WHERE guid IN(74868,74869) AND id=21387;

-- Add missing aura
UPDATE creature_template_addon SET auras='37637' WHERE entry=21387;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id=21387); -- Delete guid addons

-- Movement
UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=74861;
DELETE FROM `creature_movement` WHERE `id`=74861;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(74861,1,3158.087,7066.084,162.3643,0,0,0),
(74861,2,3150.553,7064.421,160.6627,0,0,0),
(74861,3,3151.321,7057.668,160.5568,0,0,0),
(74861,4,3156.008,7055.809,161.179,0,0,0),
(74861,5,3159.171,7049.014,161.5031,0,0,0),
(74861,6,3164.025,7048.178,161.8312,0,0,0),
(74861,7,3167.25,7058.153,162.7948,0,0,0),
(74861,8,3164.179,7064.132,162.596,0,0,0);

UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=74862;
DELETE FROM `creature_movement` WHERE `id`=74862;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(74862,1,3096.926,7154.57,151.3612,0,0,0),
(74862,2,3094.346,7143.98,150.9015,0,0,0),
(74862,3,3093.423,7139.573,150.5751,0,0,0),
(74862,4,3099.317,7136.887,151.2121,0,0,0),
(74862,5,3104.35,7143.906,152.3372,0,0,0),
(74862,6,3105.126,7152.683,152.3442,0,0,0),
(74862,7,3103.315,7158.249,152.0032,0,0,0);

UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=74863;
DELETE FROM `creature_movement` WHERE `id`=74863;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(74863,1,3127.989,7095.903,154.6151,0,0,0),
(74863,2,3133.851,7091.749,154.7679,0,0,0),
(74863,3,3136.795,7098.143,155.2303,0,0,0),
(74863,4,3132.71,7107.659,155.1866,0,0,0),
(74863,5,3126.078,7107.747,154.7337,0,0,0),
(74863,6,3120.339,7109.649,154.519,0,0,0),
(74863,7,3117.182,7119.692,153.6535,0,0,0);

UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=74864;
DELETE FROM `creature_movement` WHERE `id`=74864;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(74864,1,3133.973,7047.124,163.8014,0,0,0),
(74864,2,3119.902,7036.346,163.7642,0,0,0),
(74864,3,3111.795,7039.784,162.975,0,0,0),
(74864,4,3123.146,7051.22,162.1702,0,0,0),
(74864,5,3130.09,7059.153,162.9237,0,0,0),
(74864,6,3129.48,7064.506,162.6991,0,0,0),
(74864,7,3137.42,7054.647,163.6379,0,0,0);

UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=74865;
DELETE FROM `creature_movement` WHERE `id`=74865;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(74865,1,3119.5,7068.104,161.1193,0,0,0),
(74865,2,3111.229,7065.733,160.5734,0,0,0),
(74865,3,3105.764,7072.639,159.8291,0,0,0),
(74865,4,3111.882,7076.262,160.5054,0,0,0),
(74865,5,3116.841,7080.848,161.7031,0,0,0),
(74865,6,3126.26,7072.975,162.5558,0,0,0),
(74865,7,3126.567,7068.726,162.3663,0,0,0);

UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=74866;
DELETE FROM `creature_movement` WHERE `id`=74866;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(74866,1,3055.41,7093.514,155.6845,0,0,0),
(74866,2,3051.039,7103.654,154.3815,0,0,0),
(74866,3,3045.704,7109.913,153.3638,0,0,0),
(74866,4,3027.255,7116.909,153.2676,0,0,0),
(74866,5,3036.519,7118.765,154.1006,0,0,0),
(74866,6,3044.428,7118.029,153.1701,0,0,0),
(74866,7,3052.593,7117.615,151.6419,0,0,0),
(74866,8,3059.759,7109.428,152.159,0,0,0),
(74866,9,3060.94,7100.395,153.5372,0,0,0),
(74866,10,3062.028,7095.147,154.7711,0,0,0);

UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=74867;
DELETE FROM `creature_movement` WHERE `id`=74867;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(74867,1,3180.292,7002.188,161.4111,0,0,0),
(74867,2,3173.356,7013.968,163.1194,0,0,0),
(74867,3,3167.3,7015.622,162.2978,0,0,0),
(74867,4,3160.38,7014.342,161.7253,0,0,0),
(74867,5,3155.09,7007.275,162.7313,0,0,0),
(74867,6,3151.4,6998.844,162.1143,0,0,0),
(74867,7,3157.805,6992.316,163.4708,0,0,0),
(74867,8,3165.529,6992.924,164.4756,0,0,0),
(74867,9,3174.589,6993.56,161.9874,0,0,0);

