-- Classic [1072]
-- LBRS - Roughshod Pike
-- Omokk's head should always drop
-- Roughshod Pike duplicate removed
DELETE FROM gameobject WHERE guid = 82573;
UPDATE gameobject SET position_x = -34.73237, position_y = -589.6146, position_z = 30.93392, orientation = 0, rotation2 = 0.7253742, rotation3 = 0.6883547 WHERE guid = 82567;
UPDATE gameobject SET position_x = -36.29766, position_y = -589.6169, position_z = 31.01031, orientation = 0, rotation2 = 0.5224981, rotation3 = 0.8526405 WHERE guid = 82568;
UPDATE gameobject SET position_x = -37.10931, position_y = -589.6414, position_z = 30.95476, orientation = 0, rotation2 = 0.6018143, rotation3 = 0.7986361 WHERE guid = 82569;
UPDATE gameobject SET position_x = -35.6387, position_y = -589.6323, position_z = 30.98253, orientation = 0, rotation2 = -0.8338852, rotation3 = 0.5519379 WHERE guid = 82570;
UPDATE gameobject SET position_x = -37.78564, position_y = -589.6395, position_z = 30.99642, orientation = 0, rotation2 = -0.9996567, rotation3 = 0.02620165 WHERE guid = 82571;
UPDATE gameobject SET position_y = -589.6351, position_z = 30.99642, orientation = 0, rotation2 = -0.2923717, rotation3 = 0.9563047 WHERE guid = 82572;
UPDATE creature_loot_template SET ChanceOrQuestChance = 100 WHERE entry = 9196 and item = 12534;

-- Classic [1071]
-- LBRS - Inconspicuous Documents
-- Added more spawnpoints for Inconspicuous Documents in LBRS. These are not always next to Voone.
DELETE FROM gameobject WHERE guid IN (35860, 65973, 66029, 66031);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(35860, 175785, 229, -10.52417, -391.3383, 48.82137, 0, 0, 0, -0.8746195, 0.4848101, 0, 0, 1),
(65973, 175785, 229, -12.27355, -446.6286, -18.64427, 0, 0, 0, 0.9170599, 0.3987495, 0, 0, 1),
(66029, 175785, 229, -18.37604, -299.2709, 31.61826, 0, 0, 0, 0.9996567, 0.02620165, 0, 0, 1),
(66031, 175785, 229, -16.12174, -492.5576, 90.65852, 0, 0, 0, 0.3665009, 0.93041770, 0, 0, 1);
DELETE FROM pool_template WHERE entry = 25484;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25484, 1, 'LBRS - Inconspicuous Documents');
DELETE FROM pool_gameobject_template WHERE id = 175785 OR pool_entry = 25484;
INSERT INTO pool_gameobject_template (id, pool_entry, chance, description) VALUES
(175785, 25484, 0, 'LBRS - Inconspicuous Documents');

-- Classic [1070]
-- LBRS - Warosh
DELETE FROM creature WHERE guid = 56025; -- Free UDB guids reused
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(56025,10799,229,1,0,0,44.49939,-372.6492,48.79031,4.893657,7200,0,0,4120,0,0,2);
UPDATE creature_template SET movementType = 2 WHERE entry = 10799;
DELETE FROM creature_movement_template WHERE entry = 10799;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(10799,1, 49.90298, -402.1319, 48.80593, 0, 0, 0, 0, 0),
(10799,2, 58.41603, -418.7091, 45.02646, 0, 0, 0, 0, 0),
(10799,3, 71.58976, -436.8153, 41.41042, 0, 0, 0, 0, 0),
(10799,4, 78.66329, -463.2451, 35.48121, 0, 0, 0, 0, 0),
(10799,5, 81.10400, -479.9030, 30.86245, 0, 0, 0, 0, 0),
(10799,6, 73.26363, -487.8571, 27.89152, 0, 0, 0, 0, 0),
(10799,7, 54.61135, -489.3818, 28.67157, 0, 0, 0, 0, 0),
(10799,8, 44.71681, -491.0370, 29.58880, 0, 0, 0, 0, 0),
(10799,9, 52.60767, -511.5597, 29.21095, 0, 0, 0, 0, 0),
(10799,10, 50.58394, -533.1805, 26.77670, 0, 0, 0, 0, 0),
(10799,11, 50.20008, -560.1547, 30.55615, 0, 0, 0, 0, 0),
(10799,12, 50.46281, -576.0350, 30.58301, 0, 0, 0, 0, 0),
(10799,13, 39.67855, -579.5101, 31.06995, 0, 0, 0, 0, 0),
(10799,14, 17.70854, -578.2368, 26.56120, 0, 0, 0, 0, 0),
(10799,15, -5.465746, -576.0652, 29.19087, 0, 0, 0, 0, 0),
(10799,16, -27.13421, -574.5060, 29.19087, 0, 0, 0, 0, 0),
(10799,17, -47.66818, -572.6104, 29.19087, 0, 0, 0, 0, 0),
(10799,18, -60.44478, -573.6581, 29.19087, 0, 0, 0, 0, 0),
(10799,19, -43.34514, -571.0668, 29.19087, 0, 0, 0, 0, 0),
(10799,20, -36.48037, -563.5282, 29.19087, 0, 0, 0, 0, 0),
(10799,21, -48.50640, -537.1736, 29.19087, 0, 0, 0, 0, 0),
(10799,22, -36.48037, -563.5282, 29.19087, 0, 0, 0, 0, 0),
(10799,23, -43.34514, -571.0668, 29.19087, 0, 0, 0, 0, 0),
(10799,24, -60.44478, -573.6581, 29.19087, 0, 0, 0, 0, 0),
(10799,25, -47.66818, -572.6104, 29.19087, 0, 0, 0, 0, 0),
(10799,26, -27.13421, -574.5060, 29.19087, 0, 0, 0, 0, 0),
(10799,27, -5.465746, -576.0652, 29.19087, 0, 0, 0, 0, 0),
(10799,28, 17.42213, -578.2202, 26.65305, 0, 0, 0, 0, 0),
(10799,29, 39.67855, -579.5101, 31.06995, 0, 0, 0, 0, 0),
(10799,30, 50.46281, -576.0350, 30.58301, 0, 0, 0, 0, 0),
(10799,31, 50.20008, -560.1547, 30.55615, 0, 0, 0, 0, 0),
(10799,32, 50.54165, -533.7271, 26.73937, 0, 0, 0, 0, 0),
(10799,33, 52.60767, -511.5597, 29.21095, 0, 0, 0, 0, 0),
(10799,34, 44.71681, -491.0370, 29.58880, 0, 0, 0, 0, 0),
(10799,35, 54.37603, -489.4010, 28.65347, 0, 0, 0, 0, 0),
(10799,36, 73.26363, -487.8571, 27.89152, 0, 0, 0, 0, 0),
(10799,37, 81.10400, -479.9030, 30.86245, 0, 0, 0, 0, 0),
(10799,38, 78.66329, -463.2451, 35.48121, 0, 0, 0, 0, 0),
(10799,39, 71.58976, -436.8153, 41.41042, 0, 0, 0, 0, 0),
(10799,40, 58.41603, -418.7091, 45.02646, 0, 0, 0, 0, 0),
(10799,41, 49.90298, -402.1319, 48.80593, 0, 0, 0, 0, 0),
(10799,42, 46.01845, -387.0023, 48.69103, 0, 0, 0, 0, 0);

-- Classic [1069]
-- LBRS - Skitterweb Tunnels
DELETE FROM creature WHERE id IN (10374, 10375, 10376, 10596);
DELETE FROM creature WHERE guid IN (55466, 55472, 55749, 55752, 55757, 55768, 55803, 55805, 55807, 55922, 55946, 55950, 55986, 55987, 55989, 55990, 56020, 56021, 56022, 56023, 56024); -- Free UDB guids reused
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(55466, 10374, 229,  1, 0, 0, -127.297, -520.325, 11.7612, 1.586780, 7200, 0, 0, 8613, 0, 0, 2),
(55472, 10376, 229,  1, 0, 0, -138.318, -468.999, 13.8768, 0.206570, 7200, 2, 0, 9156, 0, 0, 1),
(55749, 10374, 229,  1, 0, 0, -138.318, -468.999, 13.8768, 0.206570, 7200, 2, 0, 8613, 0, 0, 1),
(55752, 10374, 229,  1, 0, 0, -143.059, -478.358, 12.8284, 0.798163, 7200, 2, 0, 8613, 0, 0, 1),
(55757, 10374, 229,  1, 0, 0, -115.997, -546.753, 2.13922, 5.827920, 7200, 2, 0, 8613, 0, 0, 1),
(55768, 10374, 229,  1, 0, 0, -109.584, -558.254, 5.97215, 5.016080, 7200, 2, 0, 8613, 0, 0, 1),
(55803, 10374, 229,  1, 0, 0, -139.079, -543.960, 7.28465, 1.544500, 7200, 2, 0, 8613, 0, 0, 1),
(55805, 10374, 229,  1, 0, 0, -146.663, -538.030, 7.51950, 2.933440, 7200, 2, 0, 8613, 0, 0, 1),
(55807, 10375, 229,  1, 0, 0, -136.728, -474.423, 12.8312, 2.082020, 7200, 3, 0, 2699, 0, 0, 1),
(55922, 10375, 229,  1, 0, 0, -142.430, -473.287, 14.7701, 0.926899, 7200, 3, 0, 2699, 0, 0, 1),
(55946, 10375, 229,  1, 0, 0, -138.021, -483.627, 11.5026, 4.643740, 7200, 3, 0, 2699, 0, 0, 1),
(55950, 10375, 229,  1, 0, 0, -144.252, -486.798, 12.2607, 3.249650, 7200, 3, 0, 2699, 0, 0, 1),
(55986, 10375, 229,  1, 0, 0, -104.987, -548.240, 2.40518, 4.187700, 7200, 3, 0, 2699, 0, 0, 1),
(55987, 10375, 229,  1, 0, 0, -103.748, -553.987, 4.86079, 4.825850, 7200, 3, 0, 2699, 0, 0, 1),
(55989, 10375, 229,  1, 0, 0, -110.213, -551.456, 3.32568, 4.707060, 7200, 3, 0, 2699, 0, 0, 1),
(55990, 10375, 229,  1, 0, 0, -116.352, -553.506, 4.88814, 5.401010, 7200, 3, 0, 2699, 0, 0, 1),
(56020, 10375, 229,  1, 0, 0, -135.254, -538.651, 7.12265, 7.144860, 7200, 3, 0, 2699, 0, 0, 1),
(56021, 10375, 229,  1, 0, 0, -141.288, -537.482, 6.93766, 5.602510, 7200, 3, 0, 2699, 0, 0, 1),
(56022, 10375, 229,  1, 0, 0, -147.480, -544.562, 7.88285, 1.102460, 7200, 3, 0, 2699, 0, 0, 1),
(56023, 10375, 229,  1, 0, 0, -139.028, -532.190, 6.68119, 2.221220, 7200, 3, 0, 2699, 0, 0, 1),
(56024, 10596, 229,  1, 0, 0, -135.51, -565.850, 10.1700, 0.670000, 1000000, 2, 0, 23688, 0, 0, 1);
DELETE FROM creature_movement WHERE id = 55466;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(55466, 1, -127.151, -511.369, 11.3636, 0, 0, 0, 0, 0),
(55466, 2, -127.429, -493.976, 11.3567, 0, 0, 0, 0, 0),
(55466, 3, -127.005, -504.143, 11.3607, 0, 0, 0, 0, 0),
(55466, 4, -126.588, -516.658, 11.7612, 0, 0, 0, 0, 0),
(55466, 5, -126.609, -520.664, 11.7612, 0, 0, 0, 0, 0),
(55466, 6, -122.625, -521.096, 11.7612, 0, 0, 0, 0, 0),
(55466, 7, -116.240, -521.575, 11.0583, 0, 0, 0, 0, 0),
(55466, 8, -104.837, -520.382, 10.8036, 0, 0, 0, 0, 0),
(55466, 9, -116.714, -521.250, 11.0689, 0, 0, 0, 0, 0),
(55466, 10, -125.462, -520.888, 11.7612, 0, 0, 0, 0, 0),
(55466, 11, -127.024, -530.692, 11.3652, 0, 0, 0, 0, 0),
(55466, 12, -126.508, -540.155, 11.3652, 0, 0, 0, 0, 0),
(55466, 13, -126.758, -552.192, 11.3652, 0, 0, 0, 0, 0),
(55466, 14, -127.207, -540.946, 11.3652, 0, 0, 0, 0, 0),
(55466, 15, -126.976, -530.475, 11.3652, 0, 0, 0, 0, 0),
(55466, 16, -127.018, -521.193, 11.7612, 0, 0, 0, 0, 0),
(55466, 17, -130.026, -520.442, 11.7612, 0, 0, 0, 0, 0),
(55466, 18, -136.242, -520.639, 11.3496, 0, 0, 0, 0, 0),
(55466, 19, -141.835, -520.482, 11.3498, 0, 0, 0, 0, 0),
(55466, 20, -133.624, -520.864, 11.3495, 0, 0, 0, 0, 0),
(55466, 21, -127.177, -520.906, 11.7612, 0, 0, 0, 0, 0);
DELETE FROM pool_creature WHERE guid IN (55472, 55749) OR pool_entry = 25483;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(55472, 25483, 10, 'LBRS - Crystal Fang / Spire Spider'),
(55749, 25483, 90, 'LBRS - Crystal Fang / Spire Spider');
DELETE FROM pool_template WHERE entry = 25483;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25483, 1, 'LBRS - Crystal Fang / Spire Spider');
UPDATE creature_template SET MinLevel = 57, Family = 3, UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 3, PowerMultiplier = 1, DamageMultiplier = 3.7, ArmorMultiplier = 1, MinMeleeDmg = 73.4, MaxMeleeDmg = 99.3, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3435, MeleeAttackPower = 242, RangedAttackPower = 25, MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 10374;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, Family = 3, UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, PowerMultiplier = 1, DamageMultiplier = 3.7, MinMeleeDmg = 77.9, MaxMeleeDmg = 103.4, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 10376;
UPDATE creature_template SET Family = 3, UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, PowerMultiplier = 1, DamageMultiplier = 5.7, MinMeleeDmg = 76.4, MaxMeleeDmg = 101.3, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 248, RangedAttackPower = 25, MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 10596;
UPDATE creature_template SET UnitFlags = 32768, CreatureTypeFlags = 73, SpeedWalk = 1, DamageMultiplier = 1.5, MinMeleeDmg = 70.5, MaxMeleeDmg = 95.4, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3327, MeleeAttackPower = 234, RangedAttackPower = 23, MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 10375;

-- Classic [1067]
-- Dustwallow Marsh - Brackenwall 
UPDATE creature SET modelid = 0, position_x = -3175.54, position_y = -2868.45, position_z = 34.8193, orientation = 1.963480, spawndist = 0, MovementType = 2 WHERE guid = 8479;
UPDATE creature SET modelid = 0, position_x = -3138.59, position_y = -2928.90, position_z = 34.5513, orientation = 1.649140, spawndist = 0 WHERE guid = 24050;
UPDATE creature SET modelid = 0, position_x = -3095.63, position_y = -2871.48, position_z = 34.1132, orientation = 0.204674, spawndist = 0, MovementType = 2 WHERE guid = 30450;
DELETE FROM creature_movement WHERE id IN (8479, 24050, 30450);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(8479, 1, -3180.15, -2857.3, 35.9913, 0, 0, 0, 0, 0),
(8479, 2, -3176.94, -2844.8, 35.2267, 0, 0, 0, 0, 0),
(8479, 3, -3170.16, -2833.04, 34.6933, 0, 0, 0, 0, 0),
(8479, 4, -3160.74, -2825.33, 34.3194, 0, 0, 0, 0, 0),
(8479, 5, -3170.16, -2833.04, 34.6933, 0, 0, 0, 0, 0),
(8479, 6, -3176.94, -2844.8, 35.2267, 0, 0, 0, 0, 0),
(8479, 7, -3180.15, -2857.3, 35.9913, 0, 0, 0, 0, 0),
(8479, 8, -3177.65, -2866.58, 35.3351, 0, 0, 0, 0, 0),
(24050, 1, -3140.23, -2907.91, 34.3162, 0, 0, 0, 0, 0),
(24050, 2, -3141.59, -2888.42, 33.9922, 0, 0, 0, 0, 0),
(24050, 3, -3139.52, -2875.64, 34.761, 0, 0, 0, 0, 0),
(24050, 4, -3137.37, -2864.11, 34.7546, 0, 0, 0, 0, 0),
(24050, 5, -3131.76, -2857.62, 34.9704, 0, 0, 0, 0, 0),
(24050, 6, -3122.09, -2848.02, 34.8454, 0, 0, 0, 0, 0),
(24050, 7, -3111.08, -2839.94, 34.3261, 0, 0, 0, 0, 0),
(24050, 8, -3098.52, -2827.34, 34.363, 0, 0, 0, 0, 0),
(24050, 9, -3104.83, -2842.1, 34.3349, 0, 0, 0, 0, 0),
(24050, 10, -3110.89, -2851.87, 34.8088, 0, 0, 0, 0, 0),
(24050, 11, -3118.15, -2869.64, 34.953, 0, 0, 0, 0, 0),
(24050, 12, -3118.79, -2878.74, 35.078, 0, 0, 0, 0, 0),
(24050, 13, -3123.36, -2885.75, 34.828, 0, 0, 0, 0, 0),
(24050, 14, -3128.95, -2889.75, 34.578, 0, 0, 0, 0, 0),
(24050, 15, -3129.52, -2902.29, 34.116, 0, 0, 0, 0, 0),
(24050, 16, -3128.31, -2913.81, 34.3355, 0, 0, 0, 0, 0),
(30450, 1, -3081.79, -2868.61, 34.6922, 0, 0, 0, 0, 0),
(30450, 2, -3074.66, -2870.62, 35.5564, 0, 0, 0, 0, 0),
(30450, 3, -3068.83, -2878.9, 39.7268, 0, 0, 0, 0, 0),
(30450, 4, -3075.73, -2879.89, 35.0886, 0, 0, 0, 0, 0),
(30450, 5, -3082.28, -2878.8, 34.1155, 0, 0, 0, 0, 0),
(30450, 6, -3090.32, -2882.07, 34.8022, 0, 0, 0, 0, 0),
(30450, 7, -3094.6, -2885.3, 35.1155, 0, 0, 0, 0, 0),
(30450, 8, -3099.95, -2890.04, 34.6797, 0, 0, 0, 0, 0),
(30450, 9, -3101.65, -2898.47, 34.4566, 0, 0, 0, 0, 0),
(30450, 10, -3100.24, -2912.59, 36.0703, 0, 0, 0, 0, 0),
(30450, 11, -3096.2, -2918.31, 40.525, 0, 0, 0, 0, 0),
(30450, 12, -3092.2, -2921.99, 42.586, 0, 0, 0, 0, 0),
(30450, 13, -3095.92, -2918.65, 40.525, 0, 0, 0, 0, 0),
(30450, 14, -3100.24, -2912.59, 36.0703, 0, 0, 0, 0, 0),
(30450, 15, -3101.64, -2898.68, 34.453, 0, 0, 0, 0, 0),
(30450, 16, -3099.95, -2890.04, 34.6797, 0, 0, 0, 0, 0),
(30450, 17, -3094.6, -2885.3, 35.1155, 0, 0, 0, 0, 0),
(30450, 18, -3090.32, -2882.07, 34.8022, 0, 0, 0, 0, 0),
(30450, 19, -3082.28, -2878.8, 34.1155, 0, 0, 0, 0, 0),
(30450, 20, -3075.73, -2879.89, 35.0886, 0, 0, 0, 0, 0),
(30450, 21, -3068.83, -2878.9, 39.7268, 0, 0, 0, 0, 0),
(30450, 22, -3074.66, -2870.62, 35.5564, 0, 0, 0, 0, 0),
(30450, 23, -3081.79, -2868.61, 34.6922, 0, 0, 0, 0, 0),
(30450, 24, -3089.66, -2871.72, 33.9905, 0, 0, 0, 0, 0);

-- Classic [1066]
-- Added support for Dark Coffer event in Blackrock Depths
-- Added missing GO (portraits and nameplates) and put them into pools
-- Fixed texts on nameplates GOs
-- Added script to spawn Dark Keepers NPCs (one per instance)
-- Added waypoints for one of the Dark Keeper
-- Prevent exploit of the Dark Coffer
-- Various fixes: flags, factions, respawn time...
-- Added missing GO spawns (Dark Keeper Nameplate and Dark Keeper Portrait)
-- Fixed spawn time
DELETE FROM gameobject WHERE guid IN (66033, 66038, 66065, 66116, 66117, 66118, 66119, 66120, 66123, 66124);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(66033, 164820, 230, 831.54, -339.529, -46.682, 0.802851, 0, 0, 0.390731, 0.920505, 3 * 60 * 60 * 1000, 100, 1),
(66038, 164821, 230, 831.54, -339.529, -46.682, 0.802851, 0, 0, 0.390731, 0.920505, 3 * 60 * 60 * 1000, 100, 1),
(66065, 164822, 230, 831.54, -339.529, -46.682, 0.802851, 0, 0, 0.390731, 0.920505, 3 * 60 * 60 * 1000, 100, 1),
(66116, 164823, 230, 831.54, -339.529, -46.682, 0.802851, 0, 0, 0.390731, 0.920505, 3 * 60 * 60 * 1000, 100, 1),
(66117, 164824, 230, 831.54, -339.529, -46.682, 0.802851, 0, 0, 0.390731, 0.920505, 3 * 60 * 60 * 1000, 100, 1),
(66118, 164818, 230, 831.471, -339.58, -46.7698, 0.820305, 0, 0, 0.398749, 0.91706, 3 * 60 * 60 * 1000, 100, 1),
(66119, 161456, 230, 831.471, -339.58, -46.7698, 0.820305, 0, 0, 0.398749, 0.91706, 3 * 60 * 60 * 1000, 100, 1),
(66120, 161457, 230, 831.471, -339.58, -46.7698, 0.820305, 0, 0, 0.398749, 0.91706, 3 * 60 * 60 * 1000, 100, 1),
(66123, 161458, 230, 831.471, -339.58, -46.7698, 0.820305, 0, 0, 0.398749, 0.91706, 3 * 60 * 60 * 1000, 100, 1),
(66124, 161459, 230, 831.471, -339.58, -46.7698, 0.820305, 0, 0, 0.398749, 0.91706, 3 * 60 * 60 * 1000, 100, 1);
UPDATE gameobject SET spawntimesecs = 3 * 60 * 60 * 1000 WHERE id IN (164825, 164819);
-- Fixed wrong flags for some of the Dark Keeper Nameplate
UPDATE gameobject_template SET flags = 0 WHERE entry IN (164820, 164821, 164822, 164823, 164824, 164825);
-- Group all the GOs into pools and pools of pools to have only one Dark Keeper per instance
DELETE FROM pool_gameobject WHERE guid IN (66033, 66038, 66065, 66116, 66117, 66118, 66119, 66120, 66123, 66124, 43130, 43131);
INSERT INTO pool_gameobject VALUES
(43130, 25485, 100 ,'Dark Keeper Nameplate'),
(43131, 25485, 100 ,'Dark Keeper Nameplate'),
(66033, 25486, 100, 'Dark Keeper Nameplate'),
(66119, 25486, 100, 'Dark Keeper Nameplate'),
(66038, 25487, 100, 'Dark Keeper Nameplate'),
(66120, 25487, 100, 'Dark Keeper Nameplate'),
(66065, 25488, 100, 'Dark Keeper Nameplate'),
(66123, 25488, 100, 'Dark Keeper Nameplate'),
(66116, 25489, 100, 'Dark Keeper Nameplate'),
(66124, 25489, 100, 'Dark Keeper Nameplate'),
(66117, 25490, 100, 'Dark Keeper Nameplate'),
(66118, 25490, 100, 'Dark Keeper Nameplate');
DELETE FROM pool_pool WHERE pool_id BETWEEN 25485 AND 25490;
INSERT INTO pool_pool VALUES
(25485, 25491, 0, 'Dark Keeper Nameplate'),
(25486, 25491, 0, 'Dark Keeper Nameplate'),
(25487, 25491, 0, 'Dark Keeper Nameplate'),
(25488, 25491, 0, 'Dark Keeper Nameplate'),
(25489, 25491, 0, 'Dark Keeper Nameplate'),
(25490, 25491, 0, 'Dark Keeper Nameplate');
DELETE FROM pool_template WHERE entry BETWEEN 25485 AND 25491;
INSERT INTO pool_template VALUES
(25485, 2, 'Dark Keeper Nameplate'),
(25486, 2, 'Dark Keeper Nameplate'),
(25487, 2, 'Dark Keeper Nameplate'),
(25488, 2, 'Dark Keeper Nameplate'),
(25489, 2, 'Dark Keeper Nameplate'),
(25490, 2, 'Dark Keeper Nameplate'),
(25491, 1, 'MASTER - Dark Keeper Nameplate');
-- Fixed the name plate texts which were using wrong text or bad line breaks
UPDATE page_text SET text = 'Vorfalk Irongourd$B$BVorfalk works the store room of the Grim Guzzler, and his sacrifice to the Dark Keepers runs deep.$B$BMay his spirit hold strong.' WHERE entry = 1431;
UPDATE page_text SET text = 'Bethek Stormbrow$B$BBethek\'s wanderings take him deep within Blackrock. The secrets of the mountain beckon him.$B$BMay his spirit never falter.' WHERE entry = 1432;
UPDATE page_text SET text = 'Uggel Hammerhand$B$BUggel is a skilled and solemn chiseler, and when not burdened with the dark key, his hands shape great works in the Hall of Crafting.' WHERE entry = 1433;
UPDATE page_text SET text = 'Zimrel Darktooth$B$BWhen the madness of the dark key takes hold of Zimrel, only the screams of the dying can soothe him.$B$BFor his sacrifice, he will always have a bench above the arena.  May our blood sports temper the rage in his heart.' WHERE entry = 1434;
UPDATE page_text SET text = 'Ofgut Stonefist$B$BThose fallen before Dark Keeper Ofgut\'s hammer cannot be counted.$B$BThe soldiers of the West Garrison bow in awe as he passes.  For who among them can look into the eyes of Ofgut and see the secrets the dark key whispers?.' WHERE entry = 1435;
UPDATE page_text SET text = 'Pelver Deepstomp$B$BDark Keeper Pelver is our most honored disciple.  He has borne the key for longer than any, and it has cost him dearly.  When he is called for his burden, he is guarded in the Domicile.$B$BHis sacrifice is cherished, and he will remain in our hearts for many years... after the darkness takes him.' WHERE entry = 1436;
-- Added script for each Dark Keeper portrait in order to spawn the respective Dark Keeper NPC and his guards
DELETE FROM dbscripts_on_go_template_use WHERE id IN (161456, 161457, 161458, 161459, 164818, 164819);
INSERT INTO dbscripts_on_go_template_use VALUES
(161456, 1, 10, 9437, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 815.276, -168.652, -49.6699, 6.23083, 'Spawn Dark Keeper Vorfalk and his guards'),
(161456, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 816.276, -167.652, -49.6699, 5.58505, 'Spawn Dark Keeper Vorfalk and his guards'),
(161456, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 817.276, -166.652, -49.6699, 4.88692, 'Spawn Dark Keeper Vorfalk and his guards'),
(161458, 1, 10, 9439, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 901.537, -359.291, -49.908, 3.31613, 'Spawn Dark Keeper Uggel and his guards'),
(161458, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 903.295, -356.783, -49.8522, 3.68264, 'Spawn Dark Keeper Uggel and his guards'),
(161458, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 902.896, -361.966, -50.0812, 2.74017, 'Spawn Dark Keeper Uggel and his guards'),
(161459, 1, 10, 9441, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 549.701, -214.474, -36.8893, 0.331613, 'Spawn Dark Keeper Zimrel and his guards'),
(161459, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 549.796, -217.958, -36.8654, 0.890118, 'Spawn Dark Keeper Zimrel and his guards'),
(161459, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 548.083, -212.932, -36.8628, 6.26573, 'Spawn Dark Keeper Zimrel and his guards'),
(164818, 1, 10, 9442, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 679.491, -7.79026, -59.9754, 1.8326, 'Spawn Dark Keeper Ofgut and his guards'),
(164818, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 680.491, -6.79026, -59.9754, 2.18166, 'Spawn Dark Keeper Ofgut and his guards'),
(164818, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 681.491, -5.79026, -59.9754, 2.58309, 'Spawn Dark Keeper Ofgut and his guards'),
(164819, 1, 10, 9443, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 802.755, -245.25, -43.2198, 2.93215, 'Spawn Dark Keeper Pelver and his guards'),
(164819, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 805.289, -243.172, -43.2198, 3.42085, 'Spawn Dark Keeper Pelver and his guards'),
(164819, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 801.935, -248.841, -43.2198, 1.95477, 'Spawn Dark Keeper Pelver and his guards'),
(161457, 1, 10, 9438, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 862.461, -309.724, -49.8757, 3.85883, 'Spawn Dark Keeper Bethek and his guards'),
(161457, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 863.219, -305.041, -49.8751, 3.68264, 'Spawn Dark Keeper Bethek and his guards'),
(161457, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 860.947, -302.54, -49.8787, 4.04916, 'Spawn Dark Keeper Bethek and his guards'),
(161457, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 864.232, -303.735, -49.8527, 3.735, 'Spawn Dark Keeper Bethek and his guards'),
(161457, 1, 10, 9445, 3 * 60 * 60 * 1000, 0, 0, 0, 0, 0, 0, 0, 862.676, -301.922, -49.8527, 3.9619, 'Spawn Dark Keeper Bethek and his guards');
-- Made Dark Coffer (GO 160845) usable by players only once they have open the Dark Coffer Door (GO 174565) 
DELETE FROM dbscripts_on_go_template_use WHERE id = 174565;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(174565, 0, 27, 0x08, 0, 160845, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- Fixed spawn time of GO 160836 (Relic Coffer): they were respawning in 10 min, making them easily exploitable
UPDATE gameobject SET spawntimesecs = 3 * 60 * 60 * 1000 WHERE id = 160836;
-- Fixed faction and movement of the Dark Keepers: they are Dark Iron Dwarves and not wolves.
-- Only NPC 9438 (Dark Keeper Bethek) should move (WP movement)
UPDATE creature_template SET FactionAlliance = 54, FactionHorde = 54, MovementType = 0 WHERE Entry IN (9437, 9445, 9439, 9441, 9442, 9443);
UPDATE creature_template SET FactionAlliance = 54, FactionHorde = 54, MovementType = 2 WHERE Entry = 9438;
UPDATE creature_template SET EquipmentTemplateId = 5517 WHERE Entry = 9445;
-- Waypoints for NPC 9438 (Dark Keeper Bethek)
-- He will now spawn in the back of the player using the Nameplate and kick his/her ass
DELETE FROM creature_movement_template WHERE entry = 9438;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(9438, 1, 855.505, -309.724, -50.1398, 0, 0, 0, 0, 0),
(9438, 2, 847.214, -316.912, -50.2843, 0, 0, 0, 0, 0),
(9438, 3, 842.652, -321.334, -50.2848, 0, 0, 0, 0, 0),
(9438, 4, 839.316, -324.232, -50.6638, 0, 0, 0, 0, 0),
(9438, 5, 833.983, -329.089, -50.6638, 0, 0, 0, 0, 0),
(9438, 6, 822.84, -339.999, -50.1851, 0, 0, 0, 0, 0),
(9438, 7, 810.483, -350.225, -50.5781, 0, 0, 0, 0, 0),
(9438, 8, 806.646, -353.272, -50.1957, 0, 0, 0, 0, 0),
(9438, 9, 806.646, -353.272, -50.1957, 0, 0, 0.715585, 0, 0);
-- Linked Dark Guards with Dark Keeper Bethek: aggro and follow
DELETE FROM creature_linking_template WHERE entry = 9445;
INSERT INTO creature_linking_template VALUES
(9445, 230, 9438, 515, 20);

-- Classic [1064]
-- Added missing lore in quest 3701 
-- Added missing lore text to GOs 153556 (Thaurissan Relic) in Burning Steppes
-- Grz3s: 8887 must be around to send whisper
DELETE FROM dbscripts_on_go_use WHERE id IN (4511, 4512, 4538, 4539, 4540, 4594, 4611, 6782, 6786, 6797, 6811, 6845, 6848, 4542, 4513, 4514, 4515, 4541, 4612, 6770, 6784, 6793, 6802, 6841, 6847, 6853);
INSERT INTO dbscripts_on_go_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4511, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7716.94, -2033.14, 133.439, 0, ''),
(4511, 2, 0, 0, 0, 8887, 10, 3, 2000000544, 2000000545, 2000000546, 2000000547, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4512, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7766.91, -2013.52, 135.337, 0, ''),
(4512, 2, 0, 0, 0, 8887, 10, 3, 2000000545, 2000000546, 2000000547, 2000000548, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4538, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7793.7, -1961.65, 134.118, 0, ''),
(4538, 2, 0, 0, 0, 8887, 10, 3, 2000000546, 2000000547, 2000000548, 2000000549, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4539, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7891.04, -2188.15, 133.436, 0, ''),
(4539, 2, 0, 0, 0, 8887, 10, 3, 2000000547, 2000000548, 2000000549, 2000000550, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4540, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7779.31, -1855.2, 134.131, 0, ''),
(4540, 2, 0, 0, 0, 8887, 10, 3, 2000000548, 2000000549, 2000000550, 2000000551, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4594, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7835.78, -2067.96, 136.252, 0, ''),
(4594, 2, 0, 0, 0, 8887, 10, 3, 2000000549, 2000000550, 2000000551, 2000000544, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4611, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7800.4, -1900.31, 135.089, 0, ''),
(4611, 2, 0, 0, 0, 8887, 10, 3, 2000000550, 2000000551, 2000000544, 2000000545, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6782, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7844.55, -1945.58, 137.301, 0, ''),
(6782, 2, 0, 0, 0, 8887, 10, 3, 2000000551, 2000000544, 2000000545, 2000000546, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6786, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7725.99, -2125.54, 133.439, 0, ''),
(6786, 2, 0, 0, 0, 8887, 10, 3, 2000000544, 2000000545, 2000000546, 2000000547, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6797, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7741.42, -1948.2, 136.462, 0, ''),
(6797, 2, 0, 0, 0, 8887, 10, 3, 2000000545, 2000000546, 2000000547, 2000000548, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6811, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7774.49, -2235, 134.134, 0, ''),
(6811, 2, 0, 0, 0, 8887, 10, 3, 2000000546, 2000000547, 2000000548, 2000000549, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6845, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7804.24, -2103.44, 133.439, 0, ''),
(6845, 2, 0, 0, 0, 8887, 10, 3, 2000000547, 2000000548, 2000000549, 2000000550, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6848, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7892.84, -2144.82, 120.545, 0, ''),
(6848, 2, 0, 0, 0, 8887, 10, 3, 2000000548, 2000000549, 2000000550, 2000000551, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4542, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7888.89, -2004.36, 135.828, 0, ''),
(4542, 2, 0, 0, 0, 8887, 10, 3, 2000000549, 2000000550, 2000000551, 2000000544, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4513, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7820.68, -2203.07, 133.439, 0, ''),
(4513, 2, 0, 0, 0, 8887, 10, 3, 2000000550, 2000000551, 2000000544, 2000000545, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4514, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7715.64, -1846.73, 135.942, 0, ''),
(4514, 2, 0, 0, 0, 8887, 10, 3, 2000000551, 2000000544, 2000000545, 2000000546, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4515, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7884.96, -2246.48, 136.311, 0, ''),
(4515, 2, 0, 0, 0, 8887, 10, 3, 2000000544, 2000000545, 2000000546, 2000000547, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4541, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7741.91, -2292.93, 136.29, 0, ''),
(4541, 2, 0, 0, 0, 8887, 10, 3, 2000000545, 2000000546, 2000000547, 2000000548, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4612, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7748.03, -2078.4, 133.439, 0, ''),
(4612, 2, 0, 0, 0, 8887, 10, 3, 2000000546, 2000000547, 2000000548, 2000000549, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6770, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7843.89, -1992.06, 139.809, 0, ''),
(6770, 2, 0, 0, 0, 8887, 10, 3, 2000000547, 2000000548, 2000000549, 2000000550, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6784, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7775.43, -2313.51, 137.082, 0, ''),
(6784, 2, 0, 0, 0, 8887, 10, 3, 2000000548, 2000000549, 2000000550, 2000000551, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6793, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7793.45, -1804.18, 132.184, 0, ''),
(6793, 2, 0, 0, 0, 8887, 10, 3, 2000000549, 2000000550, 2000000551, 2000000544, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6802, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7710.73, -2178.15, 131.896, 0, ''),
(6802, 2, 0, 0, 0, 8887, 10, 3, 2000000550, 2000000551, 2000000544, 2000000545, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6841, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7828.93, -2265.71, 137.186, 0, ''),
(6841, 2, 0, 0, 0, 8887, 10, 3, 2000000551, 2000000544, 2000000545, 2000000546, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6847, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7693.64, -2387.06, 147.656, 0, ''),
(6847, 2, 0, 0, 0, 8887, 10, 3, 2000000544, 2000000545, 2000000546, 2000000547, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6853, 1, 10, 8887, 5000, 0, 0, 0, 0, 0, 0, 0, -7757.94, -2159.73, 133.439, 0, ''),
(6853, 2, 0, 0, 0, 8887, 10, 3, 2000000545, 2000000546, 2000000547, 2000000548, 0, 0, 0, 0, 'Thaurissan relic - random whisper');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000544 AND 2000000551;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000544, 'You will perish here. <Your mind fills with visions of chaos and destruction.>', 0, 4, 0, 0, NULL),
(2000000545, 'Leave this place. <The relic emits a white hot arc of flame. A memory has been gained: A lone Dark Iron dwarf is surrounded by seven corpses, kneeling before a monolith of flame.>', 0, 4, 0, 0, NULL),
(2000000546, 'Defiler... you will be punished for this incursion. <A symbol of flame radiates from the relic before it crumbles to the earth.>', 0, 4, 0, 0, NULL),
(2000000547, 'Help us, outsider. <The relic crumbles to dust. A vision of eight Dark Iron dwarves performing some sort of ritual fills your head.>', 0, 4, 0, 0, NULL),
(2000000548, 'Your existence is acknowledged. <The relic turns to dust. Your head throbs with newfound wisdom. Something evil lurks in the heart of the mountain.>', 0, 4, 0, 0, NULL),
(2000000549, 'Leave this place. <The relic emits a white hot arc of flame. A memory has been gained: A lone Dark Iron dwarf is surrounded by seven corpses, kneeling before a monolith of flame.>', 0, 4, 0, 0, NULL),
(2000000550, 'He cannot be defeated. <The relic burns to nothing. The memories it held are now your own. This city was destroyed by a being not of this world.>', 0, 4, 0, 0, NULL),
(2000000551, 'Do not taint these ruins, mortal. <You are engulfed in a blinding flash of light. A creature composed entirely of flame is the only thing you can remember seeing.>', 0, 4, 0, 0, NULL);

-- Classic [1062]
-- DM:N - Stomper Kreeg and Guard Mol'dar
DELETE FROM creature_movement WHERE id IN (138185, 138184);
UPDATE creature SET position_x = 491.2311, position_y = 97.38786, position_z = -2.500396, orientation = 4.031711, currentwaypoint = 0, MovementType = 0 WHERE guid = 138185;
UPDATE creature SET position_x = 410.7114, position_y = -3.150411, position_z = -24.55797, orientation = 5.288348, spawndist = 3, currentwaypoint = 0, MovementType = 1 WHERE guid = 138184;

-- Classic [1061]
-- Mauraudon - Deeprot Tangler 
UPDATE creature SET modelid = 0, position_x = 753.899, position_y = -478.24, position_z = -52.9061, orientation = 5.36458, spawndist = 0, MovementType = 2 WHERE guid = 55090;
UPDATE creature SET modelid = 0, position_x = 807.818, position_y = -373.907, position_z = -59.0394, orientation = 4.50135, spawndist = 0, MovementType = 2 WHERE guid = 54362;
UPDATE creature SET modelid = 0, position_x = 712.483, position_y = -340.126, position_z = 51.8134, orientation = 4.2224, spawndist = 0, MovementType = 2 WHERE guid = 54682;
DELETE FROM creature_movement WHERE id IN (55090, 54362, 54682);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(55090, 1, 763.721, -491.101, -52.9628, 0, 0, 0, 0, 0),
(55090, 2, 771.351, -514.9, -52.809, 0, 0, 0, 0, 0),
(55090, 3, 778.083, -526.269, -50.1292, 0, 0, 0, 0, 0),
(55090, 4, 795.591, -531.922, -46.8029, 0, 0, 0, 0, 0),
(55090, 5, 806.335, -516.47, -41.7183, 0, 0, 0, 0, 0),
(55090, 6, 803.93, -498.025, -40.1386, 0, 0, 0, 0, 0),
(55090, 7, 790.813, -490.499, -39.9062, 0, 0, 0, 0, 0),
(55090, 8, 775.956, -484.787, -40.554, 0, 0, 0, 0, 0),
(55090, 9, 771, -468.174, -41.1924, 0, 0, 0, 0, 0),
(55090, 10, 748.947, -467.97, -38.6926, 0, 0, 0, 0, 0),
(55090, 11, 733.283, -472.854, -40.6056, 0, 0, 0, 0, 0),
(55090, 12, 732.63, -485.955, -41.1771, 0, 0, 0, 0, 0),
(55090, 13, 737.17, -503.406, -41.0881, 0, 0, 0, 0, 0),
(55090, 14, 731.663, -522.193, -41.3618, 0, 0, 0, 0, 0),
(55090, 15, 743.795, -546.76, -33.0687, 0, 0, 0, 0, 0),
(55090, 16, 761.255, -559.478, -32.9473, 0, 0, 0, 0, 0),
(55090, 17, 770.305, -540.82, -36.2739, 0, 0, 0, 0, 0),
(55090, 18, 761.255, -559.478, -32.9473, 0, 0, 0, 0, 0),
(55090, 19, 743.795, -546.76, -33.0687, 0, 0, 0, 0, 0),
(55090, 20, 731.642, -522.264, -41.3582, 0, 0, 0, 0, 0),
(55090, 21, 737.17, -503.406, -41.0881, 0, 0, 0, 0, 0),
(55090, 22, 732.63, -485.955, -41.1771, 0, 0, 0, 0, 0),
(55090, 23, 733.283, -472.854, -40.6056, 0, 0, 0, 0, 0),
(55090, 24, 748.947, -467.97, -38.6926, 0, 0, 0, 0, 0),
(55090, 25, 771, -468.174, -41.1924, 0, 0, 0, 0, 0),
(55090, 26, 775.956, -484.787, -40.554, 0, 0, 0, 0, 0),
(55090, 27, 790.813, -490.499, -39.9062, 0, 0, 0, 0, 0),
(55090, 28, 803.93, -498.025, -40.1386, 0, 0, 0, 0, 0),
(55090, 29, 806.335, -516.47, -41.7183, 0, 0, 0, 0, 0),
(55090, 30, 795.591, -531.922, -46.8029, 0, 0, 0, 0, 0),
(55090, 31, 778.083, -526.269, -50.1292, 0, 0, 0, 0, 0),
(55090, 32, 771.351, -514.9, -52.809, 0, 0, 0, 0, 0),
(55090, 33, 763.721, -491.101, -52.9628, 0, 0, 0, 0, 0),
(55090, 34, 745.018, -470.13, -52.932, 0, 0, 0, 0, 0),
(54362, 1, 802.307, -399.631, -58.6786, 0, 0, 0, 0, 0),
(54362, 2, 794.326, -424.056, -53.7634, 0, 0, 0, 0, 0),
(54362, 3, 804.861, -435.457, -54.3872, 0, 0, 0, 0, 0),
(54362, 4, 828.242, -447.366, -56.3251, 0, 0, 0, 0, 0),
(54362, 5, 863.367, -424.879, -52.4803, 0, 0, 0, 0, 0),
(54362, 6, 880.127, -407.996, -51.9375, 0, 0, 0, 0, 0),
(54362, 7, 881.719, -383.418, -52.0587, 0, 0, 0, 0, 0),
(54362, 8, 870.876, -356.302, -51.9569, 0, 0, 0, 0, 0),
(54362, 9, 847.458, -345.491, -52.0496, 0, 0, 0, 0, 0),
(54362, 10, 826.787, -344.677, -51.8641, 0, 0, 0, 0, 0),
(54362, 11, 808.003, -347.446, -51.7879, 0, 0, 0, 0, 0),
(54362, 12, 775.91, -328.178, -50.0448, 0, 0, 0, 0, 0),
(54362, 13, 756.83, -326.607, -51.5775, 0, 0, 0, 0, 0),
(54362, 14, 775.91, -328.178, -50.0448, 0, 0, 0, 0, 0),
(54362, 15, 808.003, -347.446, -51.7879, 0, 0, 0, 0, 0),
(54362, 16, 826.787, -344.677, -51.8641, 0, 0, 0, 0, 0),
(54362, 17, 847.458, -345.491, -52.0496, 0, 0, 0, 0, 0),
(54362, 18, 870.876, -356.302, -51.9569, 0, 0, 0, 0, 0),
(54362, 19, 881.719, -383.418, -52.0587, 0, 0, 0, 0, 0),
(54362, 20, 880.127, -407.996, -51.9375, 0, 0, 0, 0, 0),
(54362, 21, 863.367, -424.879, -52.4803, 0, 0, 0, 0, 0),
(54362, 22, 828.242, -447.366, -56.3251, 0, 0, 0, 0, 0),
(54362, 23, 804.861, -435.457, -54.3872, 0, 0, 0, 0, 0),
(54362, 24, 794.326, -424.056, -53.7634, 0, 0, 0, 0, 0),
(54362, 25, 802.307, -399.631, -58.6786, 0, 0, 0, 0, 0),
(54362, 26, 806.3, -374.526, -59.1968, 0, 0, 0, 0, 0),
(54682, 1, 704.78, -354.567, -52.0194, 0, 0, 0, 0, 0),
(54682, 2, 688.518, -374.707, -52.0337, 0, 0, 0, 0, 0),
(54682, 3, 664.968, -367.766, -52.0194, 0, 0, 0, 0, 0),
(54682, 4, 653.587, -356.119, -52.0194, 0, 0, 0, 0, 0),
(54682, 5, 632.64, -350.617, -52.0194, 0, 0, 0, 0, 0),
(54682, 6, 619.242, -351.718, -52.0194, 0, 0, 0, 0, 0),
(54682, 7, 605.31, -377.231, -52.0194, 0, 0, 0, 0, 0),
(54682, 8, 618.102, -353.072, -52.0194, 0, 0, 0, 0, 0),
(54682, 9, 646.418, -346.681, -52.0194, 0, 0, 0, 0, 0),
(54682, 10, 656.121, -333.659, -52.0194, 0, 0, 0, 0, 0),
(54682, 11, 642.682, -309.279, -52.0213, 0, 0, 0, 0, 0),
(54682, 12, 636.873, -290.451, -52.4324, 0, 0, 0, 0, 0),
(54682, 13, 633.122, -257.915, -53.0354, 0, 0, 0, 0, 0),
(54682, 14, 631.546, -229.03, -59.214, 0, 0, 0, 0, 0),
(54682, 15, 632.252, -273.576, -53.5685, 0, 0, 0, 0, 0),
(54682, 16, 639.393, -299.352, -52.0207, 0, 0, 0, 0, 0),
(54682, 17, 649.654, -322.972, -52.0194, 0, 0, 0, 0, 0),
(54682, 18, 662.256, -329.124, -52.0194, 0, 0, 0, 0, 0),
(54682, 19, 675.187, -326.388, -52.0826, 0, 0, 0, 0, 0),
(54682, 20, 692.328, -322.362, -52.0194, 0, 0, 0, 0, 0),
(54682, 21, 709.139, -325.213, -51.851, 0, 0, 0, 0, 0),
(54682, 22, 692.328, -322.362, -52.0194, 0, 0, 0, 0, 0),
(54682, 23, 675.211, -326.383, -52.0797, 0, 0, 0, 0, 0),
(54682, 24, 662.4, -329.094, -52.0194, 0, 0, 0, 0, 0),
(54682, 25, 649.654, -322.972, -52.0194, 0, 0, 0, 0, 0),
(54682, 26, 639.393, -299.352, -52.0207, 0, 0, 0, 0, 0),
(54682, 27, 632.252, -273.576, -53.5685, 0, 0, 0, 0, 0),
(54682, 28, 631.546, -229.03, -59.214, 0, 0, 0, 0, 0),
(54682, 29, 633.122, -257.915, -53.0354, 0, 0, 0, 0, 0),
(54682, 30, 636.835, -290.33, -52.5084, 0, 0, 0, 0, 0),
(54682, 31, 642.682, -309.279, -52.0213, 0, 0, 0, 0, 0),
(54682, 32, 656.121, -333.659, -52.0194, 0, 0, 0, 0, 0),
(54682, 33, 646.418, -346.681, -52.0194, 0, 0, 0, 0, 0),
(54682, 34, 618.102, -353.072, -52.0194, 0, 0, 0, 0, 0),
(54682, 35, 605.31, -377.231, -52.0194, 0, 0, 0, 0, 0),
(54682, 36, 619.242, -351.718, -52.0194, 0, 0, 0, 0, 0),
(54682, 37, 632.64, -350.617, -52.0194, 0, 0, 0, 0, 0),
(54682, 38, 653.587, -356.119, -52.0194, 0, 0, 0, 0, 0),
(54682, 39, 664.968, -367.766, -52.0194, 0, 0, 0, 0, 0),
(54682, 40, 688.518, -374.707, -52.0337, 0, 0, 0, 0, 0),
(54682, 41, 704.78, -354.567, -52.0194, 0, 0, 0, 0, 0),
(54682, 42, 714.44, -332.152, -51.7661, 0, 0, 0, 0, 0);

-- Classic [1060]
-- Maraudon - Putridus Shadowstalker ...
UPDATE creature SET modelid = 0, position_x = 837.646, position_y = -346.113, position_z = -52.0496, orientation = 0.163293, spawndist = 0, MovementType = 2 WHERE guid = 54767;
UPDATE creature SET modelid = 0, position_x = 788.881, position_y = -336.129, position_z = -50.4012, orientation = 2.12786, spawndist = 0, MovementType = 2 WHERE guid = 54721;
UPDATE creature SET modelid = 0, position_x = 617.64, position_y = -223.231, position_z = -61.1964, orientation = 5.81495, spawndist = 0 WHERE guid = 54733;
DELETE FROM creature_movement WHERE id IN (54721, 54767, 54733);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(54721, 1, 784.514, -329.119, -50.0284, 0, 0, 0, 0, 0),
(54721, 2, 764.984, -324.438, -51.5668, 0, 0, 0, 0, 0),
(54721, 3, 749.575, -337.565, -50.711, 0, 0, 0, 0, 0),
(54721, 4, 726.619, -332.595, -50.9028, 0, 0, 0, 0, 0),
(54721, 5, 710.256, -333.295, -51.8757, 0, 0, 0, 0, 0),
(54721, 6, 689.742, -330.869, -52.1619, 0, 0, 0, 0, 0),
(54721, 7, 674.977, -327.453, -52.1277, 0, 0, 0, 0, 0),
(54721, 8, 664.431, -341.292, -52.4921, 0, 0, 0, 0, 0),
(54721, 9, 674.977, -327.453, -52.1277, 0, 0, 0, 0, 0),
(54721, 10, 689.742, -330.869, -52.1619, 0, 0, 0, 0, 0),
(54721, 11, 710.256, -333.295, -51.8757, 0, 0, 0, 0, 0),
(54721, 12, 726.619, -332.595, -50.9028, 0, 0, 0, 0, 0),
(54721, 13, 749.332, -337.513, -50.7263, 0, 0, 0, 0, 0),
(54721, 14, 764.902, -324.507, -51.5706, 0, 0, 0, 0, 0),
(54721, 15, 784.514, -329.119, -50.0284, 0, 0, 0, 0, 0),
(54721, 16, 792.5, -339.12, -51.1177, 0, 0, 0, 0, 0),
(54767, 1, 869.798, -340.816, -50.5748, 0, 0, 0, 0, 0),
(54767, 2, 882.282, -377.741, -52.0554, 0, 0, 0, 0, 0),
(54767, 3, 886.861, -419.037, -52.3727, 0, 0, 0, 0, 0),
(54767, 4, 886.861, -419.037, -52.3727, 0, 0, 0, 0, 0),
(54767, 5, 882.282, -377.741, -52.0554, 0, 0, 0, 0, 0),
(54767, 6, 869.798, -340.816, -50.5748, 0, 0, 0, 0, 0),
(54767, 7, 829.586, -349.214, -52.0311, 0, 0, 0, 0, 0),
(54733, 1, 629.567, -229.285, -59.0616, 0, 0, 0, 0, 0),
(54733, 2, 630.475, -251.076, -52.8189, 0, 0, 0, 0, 0),
(54733, 3, 635.491, -278.567, -53.5015, 0, 0, 0, 0, 0),
(54733, 4, 642.036, -307.16, -52.0211, 0, 0, 0, 0, 0),
(54733, 5, 644.665, -314.411, -52.0764, 0, 0, 0, 0, 0),
(54733, 6, 652.222, -324.701, -52.0194, 0, 0, 0, 0, 0),
(54733, 7, 650.916, -339.38, -52.0194, 0, 0, 0, 0, 0),
(54733, 8, 631.083, -348.107, -52.0194, 0, 0, 0, 0, 0),
(54733, 9, 618.584, -352.651, -52.0194, 0, 0, 0, 0, 0),
(54733, 10, 615.864, -362.478, -52.0194, 0, 0, 0, 0, 0),
(54733, 11, 601.241, -383.172, -52.0194, 0, 0, 0, 0, 0),
(54733, 12, 615.727, -362.671, -52.0194, 0, 0, 0, 0, 0),
(54733, 13, 618.584, -352.651, -52.0194, 0, 0, 0, 0, 0),
(54733, 14, 631.083, -348.107, -52.0194, 0, 0, 0, 0, 0);

-- Classic [1059]
-- correct map for 165554 (Heart of the Mountain) in Blackrock Depths.
UPDATE gameobject SET map = 230 WHERE guid = 93892;

-- Classic [1057]
-- Wandering Eye of Kilrogg
-- UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, HealthMultiplier = 0.1, ArmorMultiplier = 1, MinLevelHealth = 305, MaxLevelHealth = 305, MinMeleeDmg = 103.9, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3791, MeleeAttackPower = 252, RangedAttackPower = 26, MinLootGold = 0, MaxLootGold = 0, MovementType = 1 WHERE Entry = 14386; 

-- Classic [1056]
-- Quest: A Terrible Purpose
-- The item "Nature's Whisper" will be mailed to players who complete this quest. 
DELETE FROM dbscripts_on_quest_end WHERE id = 8287;
INSERT INTO dbscripts_on_quest_end (id, command, datalong, datalong2, dataint, comments) VALUES
(8287, 38, 110, 0, 86400, 'Send Mail on QuestReward');
UPDATE quest_template SET RewMailTemplateId = 0, RewMailDelaySecs = 0, CompleteScript = 8287 WHERE entry = 8287;

-- Classic [1053]
-- BRD - Redundant NPCs 
-- Should be summoned by AT-Script 1786.
DELETE FROM creature WHERE guid IN (91106, 91107);
DELETE FROM creature_addon WHERE guid IN (91106, 91107);

-- Classic [1052]
-- BRD - Fineous Darkvire - 47631
UPDATE creature SET modelid = 0, position_x = 960.0227, position_y = -340.8864, position_z = -71.45806, orientation = 5.654867, MovementType = 2 WHERE guid = 47631;
UPDATE creature_template SET movementType = 2 WHERE entry = 9056;
DELETE FROM creature_movement WHERE id = 47631;
DELETE FROM creature_movement_template WHERE entry = 9056;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(9056, 1, 975.1074, -354.1521, -69.12189, 0, 0, 0, 0, 0),
(9056, 2, 984.4438, -363.9444, -65.90663, 0, 0, 0, 0, 0),
(9056, 3, 984.3798, -372.8271, -66.40864, 0, 0, 0, 0, 0),
(9056, 4, 976.4786, -381.1849, -63.92666, 0, 0, 0, 0, 0),
(9056, 5, 962.8773, -395.4465, -60.83775, 0, 0, 0, 0, 0),
(9056, 6, 950.4175, -408.5885, -57.13513, 0, 0, 0, 0, 0),
(9056, 7, 941.7361, -417.3307, -55.03955, 0, 0, 0, 0, 0),
(9056, 8, 931.4461, -413.3182, -55.3833, 0, 0, 0, 0, 0),
(9056, 9, 923.4091, -403.9856, -51.10405, 0, 0, 0, 0, 0),
(9056, 10, 914.4991, -394.1788, -49.44118, 3000, 0, 0, 0, 0),
(9056, 11, 905.6043, -403.5466, -48.72953, 0, 0, 0, 0, 0),
(9056, 12, 905.6043, -403.5466, -48.72953, 15000, 905601, 4.39823, 0, 0),
(9056, 13, 912.6644, -392.947, -49.27441, 0, 0, 0, 0, 0),
(9056, 14, 918.4413, -398.0002, -49.63673, 0, 0, 0, 0, 0),
(9056, 15, 926.4142, -407.2958, -52.62156, 0, 0, 0, 0, 0),
(9056, 16, 930.0383, -418.3499, -55.38773, 0, 0, 0, 0, 0),
(9056, 17, 930.1507, -424.8481, -55.86452, 0, 0, 0, 0, 0),
(9056, 18, 927.5943, -433.7152, -56.52362, 0, 0, 0, 0, 0),
(9056, 19, 927.5943, -433.7152, -56.52362, 15000, 905602, 4.049164, 0, 0),
(9056, 20, 936.1234, -427.9398, -56.10722, 0, 0, 0, 0, 0),
(9056, 21, 939.6413, -426.6046, -55.76141, 0, 0, 0, 0, 0),
(9056, 22, 944.4061, -426.6593, -54.99844, 0, 0, 0, 0, 0),
(9056, 23, 946.326, -428.0528, -54.6023, 0, 0, 0, 0, 0),
(9056, 24, 946.326, -428.0528, -54.6023, 3000, 905603, 0.1570796, 0, 0),
(9056, 25, 943.7764, -418.105, -54.94675, 0, 0, 0, 0, 0),
(9056, 26, 947.0441, -410.4389, -55.96638, 0, 0, 0, 0, 0),
(9056, 27, 955.1072, -403.4389, -59.51071, 0, 0, 0, 0, 0),
(9056, 28, 961.6575, -396.6303, -60.83775, 0, 0, 0, 0, 0),
(9056, 29, 968.2845, -389.0584, -60.83775, 0, 0, 0, 0, 0),
(9056, 30, 978.0145, -379.6125, -64.63842, 0, 0, 0, 0, 0),
(9056, 31, 986.5466, -370.8159, -66.56243, 90000, 905604, 0, 0, 0),
(9056, 32, 974.0306, -355.6249, -69.1521, 0, 0, 0, 0, 0),
(9056, 33, 967.597, -349.4773, -71.39046, 0, 0, 0, 0, 0),
(9056, 34, 963.2667, -343.7354, -71.73941, 210000, 0, 0, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (905601, 905602, 905603, 905604);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(905601, 3, 1, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fineous Darkvire - state_usestanding_nosheathe'),
(905601, 13, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fineous Darkvire - oneshot_none'),
(905602, 3, 1, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fineous Darkvire - state_work'),
(905602, 13, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fineous Darkvire - oneshot_none'),
(905603, 1, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fineous Darkvire - oneshot_kneel'),
(905604, 0, 20, 1, 3, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Fineous Darkvire - movementtype_random'),
(905604, 90, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fineous Darkvire - movementtype_waypoint'); 

-- Classic [1051]
-- BRD - Weapon Technician - 47294
UPDATE creature SET modelid = 0, position_x = 753.3763, position_y = 41.77242, position_z = -53.55002, orientation = 3.071779, spawndist = 0, MovementType = 2 WHERE guid = 47294;
DELETE FROM creature_movement WHERE id = 47294;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(47294, 1, 764.5972, 45.60373, -53.73522, 0, 0, 0, 0, 0),
(47294, 2, 774.8519, 60.06964, -53.67472, 0, 0, 0, 0, 0),
(47294, 3, 774.8519, 60.06964, -53.67472, 7000, 892001, 2.251475, 0, 0),
(47294, 4, 784.5489, 54.02416, -53.73522, 0, 0, 0, 0, 0),
(47294, 5, 785.1476, 35.85176, -53.69954, 0, 0, 0, 0, 0),
(47294, 6, 776.2892, 27.4625, -53.6479, 20000, 0, 0, 0, 0),
(47294, 7, 783.7801, 14.00154, -53.69062, 0, 0, 0, 0, 0),
(47294, 8, 786.7015, -12.90366, -53.69477, 0, 0, 0, 0, 0),
(47294, 9, 784.7334, -32.3172, -53.71082, 0, 0, 0, 0, 0),
(47294, 10, 784.6624, -39.48956, -53.74002, 0, 0, 0, 0, 0),
(47294, 11, 781.2883, -46.3105, -53.74668, 60000, 0, 0, 0, 0),
(47294, 12, 778.1983, -33.92217, -53.73601, 0, 0, 0, 0, 0),
(47294, 13, 783.9739, -27.30031, -53.69369, 0, 0, 0, 0, 0),
(47294, 14, 762.94, 8.657146, -53.70293, 0, 0, 0, 0, 0),
(47294, 15, 761.0406, 41.19921, -53.69276, 0, 0, 0, 0, 0),
(47294, 16, 753.7232, 41.79961, -53.63493, 25000, 0, 0, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 892001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(892001, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'Weapon Technician - state_usestanding'),
(892001, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'Weapon Technician - oneshot_none');

-- Classic [1050]
-- BRD - Weapon Technician - 90591
UPDATE creature SET modelid = 0, position_x = 771.2347, position_y = 54.82289, position_z = -53.72943, orientation = 3.631114, spawndist = 0, MovementType = 2 WHERE guid = 90591;
DELETE FROM creature_movement WHERE id = 90591;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(90591, 1, 762.993, 50.43193, -53.71109, 0, 0, 0, 0, 0),
(90591, 2, 761.4188, 29.33115, -53.62895, 0, 0, 0, 0, 0),
(90591, 3, 762.9675, 9.711073, -53.70116, 0, 0, 0, 0, 0),
(90591, 4, 769.3185, -3.635589, -53.72075, 0, 0, 0, 0, 0),
(90591, 5, 777.6145, -18.19811, -53.69268, 0, 0, 0, 0, 0),
(90591, 6, 792.4933, -18.67612, -53.638, 0, 0, 0, 0, 0),
(90591, 7, 802.6974, -9.927484, -53.67644, 0, 0, 0, 0, 0),
(90591, 8, 803.8586, 12.95672, -53.67821, 0, 0, 0, 0, 0),
(90591, 9, 803.3323, 36.05414, -53.6515, 0, 0, 0, 0, 0),
(90591, 10, 788.0638, 46.94962, -53.71598, 0, 0, 0, 0, 0),
(90591, 11, 773.9392, 57.17932, -53.70298, 0, 0, 0, 0, 0);

-- Classic [1049]
-- BRD - Weapon Technician - 90810
UPDATE creature SET modelid = 0, position_x =  808.8599, position_y = -36.32873, position_z = -53.71901, orientation = 2.305541, spawndist = 0, MovementType = 2 WHERE guid = 90810;
DELETE FROM creature_movement WHERE id = 90810;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(90810, 1, 795.791, -21.86399, -53.65269, 0, 0, 0, 0, 0),
(90810, 2, 802.4556, -8.263514, -53.68124, 0, 0, 0, 0, 0),
(90810, 3, 798.2274, 7.701714, -53.70551, 0, 0, 0, 0, 0),
(90810, 4, 781.1216, 8.112905, -53.70006, 0, 0, 0, 0, 0),
(90810, 5, 777.2592, 21.72934, -53.67865, 0, 0, 0, 0, 0),
(90810, 6, 761.2012, 22.35078, -53.64519, 0, 0, 0, 0, 0),
(90810, 7, 762.3487, 41.59404, -53.70325, 0, 0, 0, 0, 0),
(90810, 8, 799.3561, 43.34861, -53.67487, 0, 0, 0, 0, 0),
(90810, 9, 803.8307, 32.75117, -53.63648, 0, 0, 0, 0, 0),
(90810, 10, 799.3561, 43.34861, -53.67487, 0, 0, 0, 0, 0),
(90810, 11, 762.3487, 41.59404, -53.70325, 0, 0, 0, 0, 0),
(90810, 12, 761.2012, 22.35078, -53.64519, 0, 0, 0, 0, 0),
(90810, 13, 777.2592, 21.72934, -53.67865, 0, 0, 0, 0, 0),
(90810, 14, 781.1216, 8.112905, -53.70006, 0, 0, 0, 0, 0),
(90810, 15, 798.2274, 7.701714, -53.70551, 0, 0, 0, 0, 0),
(90810, 16, 802.4556, -8.263514, -53.68124, 0, 0, 0, 0, 0),
(90810, 17, 795.791, -21.86399, -53.65269, 0, 0, 0, 0, 0),
(90810, 18, 813.2817, -40.84308, -53.73804, 0, 0, 0, 0, 0);

-- Classic [1048]
-- BRD - Warbringer Construct - 47716
UPDATE creature SET position_x = 953.696, position_y = -333.891, position_z = -71.658, orientation = 5.45262, spawndist = 0 WHERE guid = 47716;
DELETE FROM creature_movement WHERE id = 47716;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(47716, 1, 966.938, -348.388, -71.7394, 0, 0, 0, 0, 0),
(47716, 2, 983.848, -364.54, -65.9521, 0, 0, 0, 0, 0),
(47716, 3, 971.354, -385.583, -61.7422, 0, 0, 0, 0, 0),
(47716, 4, 959.036, -399.658, -60.8377, 0, 0, 0, 0, 0),
(47716, 5, 941.767, -415.445, -55.1021, 0, 0, 0, 0, 0),
(47716, 6, 918.571, -399.838, -49.4846, 0, 0, 0, 0, 0),
(47716, 7, 899.659, -377.061, -49.9357, 0, 0, 0, 0, 0),
(47716, 8, 918.571, -399.838, -49.4846, 0, 0, 0, 0, 0),
(47716, 9, 941.767, -415.445, -55.1021, 0, 0, 0, 0, 0),
(47716, 10, 959.036, -399.658, -60.8377, 0, 0, 0, 0, 0),
(47716, 11, 971.295, -385.683, -61.6674, 0, 0, 0, 0, 0),
(47716, 12, 983.899, -364.589, -65.9473, 0, 0, 0, 0, 0),
(47716, 13, 967.006, -348.462, -71.711, 0, 0, 0, 0, 0),
(47716, 14, 951.51, -331.141, -71.7394, 0, 0, 0, 0, 0); 

-- Classic [1047]
-- BRD - Blazing Fireguard - 47795
UPDATE creature SET modelid = 0, position_x = 543.279, position_y = 31.168, position_z = -70.6287, spawndist = 0 WHERE guid = 47795;
DELETE FROM creature_movement WHERE id = 47795;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(47795, 1, 559.336, 25.6248, -70.9375, 0, 0, 0, 0, 0),
(47795, 2, 585.917, 30.7769, -71.5727, 0, 0, 0, 0, 0),
(47795, 3, 593.018, 17.1292, -72.0339, 0, 0, 0, 0, 0),
(47795, 4, 574.099, 8.61546, -70.391, 0, 0, 0, 0, 0),
(47795, 5, 558.878, 15.2068, -70.477, 0, 0, 0, 0, 0),
(47795, 6, 543.641, 12.3111, -70.38, 0, 0, 0, 0, 0),
(47795, 7, 532.831, 13.9816, -70.7128, 0, 0, 0, 0, 0),
(47795, 8, 527.879, 24.4454, -70.8921, 0, 0, 0, 0, 0),
(47795, 9, 541.627, 30.8387, -70.7471, 0, 0, 0, 0, 0); 

-- Classic [1046]
-- BRD - Blazing Fireguard - 47793
UPDATE creature SET modelid = 0, position_x = 698.705, position_y = -112.313, position_z = -71.5597, orientation = 2.35222, spawndist = 0, MovementType = 2 WHERE guid = 47793;
DELETE FROM creature_movement WHERE id = 47793;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(47793, 1, 676.798, -90.2307, -71.3314, 0, 0, 0, 0, 0),
(47793, 2, 648.377, -55.4042, -73.2871, 0, 0, 0, 0, 0),
(47793, 3, 633.829, -22.9795, -73.2442, 0, 0, 0, 0, 0),
(47793, 4, 615.686, 24.084, -73.6782, 0, 0, 0, 0, 0),
(47793, 5, 637.238, 62.4306, -73.2463, 0, 0, 0, 0, 0),
(47793, 6, 658.546, 104.195, -73.2762, 0, 0, 0, 0, 0),
(47793, 7, 656.38, 138.719, -73.314, 0, 0, 0, 0, 0),
(47793, 8, 666.779, 156.764, -73.2472, 0, 0, 0, 0, 0),
(47793, 9, 670.164, 186.106, -72.2097, 0, 0, 0, 0, 0),
(47793, 10, 666.779, 156.764, -73.2472, 0, 0, 0, 0, 0),
(47793, 11, 656.38, 138.719, -73.314, 0, 0, 0, 0, 0),
(47793, 12, 658.546, 104.195, -73.2762, 0, 0, 0, 0, 0),
(47793, 13, 637.238, 62.4306, -73.2463, 0, 0, 0, 0, 0),
(47793, 14, 615.686, 24.084, -73.6782, 0, 0, 0, 0, 0),
(47793, 15, 633.829, -22.9795, -73.2442, 0, 0, 0, 0, 0),
(47793, 16, 648.268, -55.2706, -73.3191, 0, 0, 0, 0, 0),
(47793, 17, 676.798, -90.2307, -71.3314, 0, 0, 0, 0, 0),
(47793, 18, 697.865, -114.558, -71.6739, 0, 0, 0, 0, 0);

-- Classic [1045]
-- BRD - Blazing Fireguard - 45868 
UPDATE creature SET modelid = 0, position_x = 722.875, position_y = 171.915, position_z = -71.9736, orientation = 4.0795, spawndist = 0 WHERE guid = 45868;
DELETE FROM creature_movement WHERE id = 45868;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(45868, 1, 709.072, 153.098, -72.1472, 0, 0, 0, 0, 0),
(45868, 2, 684.26, 141.267, -73.0777, 0, 0, 0, 0, 0),
(45868, 3, 672.939, 126.329, -73.3347, 0, 0, 0, 0, 0),
(45868, 4, 646.748, 121.308, -73.2764, 0, 0, 0, 0, 0),
(45868, 5, 626.573, 87.8224, -73.245, 0, 0, 0, 0, 0),
(45868, 6, 615.804, 54.5907, -73.2435, 0, 0, 0, 0, 0),
(45868, 7, 626.423, 31.1992, -73.9867, 0, 0, 0, 0, 0),
(45868, 8, 641.05, -2.70842, -73.2486, 0, 0, 0, 0, 0),
(45868, 9, 654.979, -23.1092, -73.2679, 0, 0, 0, 0, 0),
(45868, 10, 661.686, -38.4629, -73.3256, 0, 0, 0, 0, 0),
(45868, 11, 688.575, -56.3307, -72.5608, 0, 0, 0, 0, 0),
(45868, 12, 723.935, -91.0813, -71.6334, 0, 0, 0, 0, 0),
(45868, 13, 688.575, -56.3307, -72.5608, 0, 0, 0, 0, 0),
(45868, 14, 661.686, -38.4629, -73.3256, 0, 0, 0, 0, 0),
(45868, 15, 654.979, -23.1092, -73.2679, 0, 0, 0, 0, 0),
(45868, 16, 641.05, -2.70842, -73.2486, 0, 0, 0, 0, 0),
(45868, 17, 626.423, 31.1992, -73.9867, 0, 0, 0, 0, 0),
(45868, 18, 615.804, 54.5907, -73.2435, 0, 0, 0, 0, 0),
(45868, 19, 626.573, 87.8224, -73.245, 0, 0, 0, 0, 0),
(45868, 20, 646.748, 121.308, -73.2764, 0, 0, 0, 0, 0),
(45868, 21, 672.939, 126.329, -73.3347, 0, 0, 0, 0, 0),
(45868, 22, 684.26, 141.267, -73.0777, 0, 0, 0, 0, 0),
(45868, 23, 709.072, 153.098, -72.1472, 0, 0, 0, 0, 0),
(45868, 24, 723.607, 172.848, -72.049, 0, 0, 0, 0, 0);

-- Classic [1044]
-- BRD - Fireguard - 47836
UPDATE creature SET modelid = 0, position_x = 614.934, position_y = -57.1995, position_z = -59.9881, orientation = 2.23727, spawndist = 0 WHERE guid = 47836;
DELETE FROM creature_movement WHERE id = 47836;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(47836, 1, 608.582, -49.123, -60.0567, 0, 0, 0, 0, 0),
(47836, 2, 583.026, -48.0046, -60.0359, 0, 0, 0, 0, 0),
(47836, 3, 569.448, -59.0047, -60.0201, 0, 0, 0, 0, 0),
(47836, 4, 575.228, -61.9547, -60.0105, 0, 0, 0, 0, 0),
(47836, 5, 595.55, -62.0733, -52.0719, 0, 0, 0, 0, 0),
(47836, 6, 595.334, -81.3019, -45.4656, 0, 0, 0, 0, 0),
(47836, 7, 594.804, -104.408, -45.4327, 0, 0, 0, 0, 0),
(47836, 8, 595.334, -81.3019, -45.4656, 0, 0, 0, 0, 0),
(47836, 9, 595.55, -62.0733, -52.0719, 0, 0, 0, 0, 0),
(47836, 10, 575.228, -61.9547, -60.0105, 0, 0, 0, 0, 0),
(47836, 11, 569.448, -59.0047, -60.0201, 0, 0, 0, 0, 0),
(47836, 12, 583.026, -48.0046, -60.0359, 0, 0, 0, 0, 0),
(47836, 13, 608.582, -49.123, -60.0567, 0, 0, 0, 0, 0),
(47836, 14, 619.276, -60.7888, -60.0573, 0, 0, 0, 0, 0);

-- Classic [1043]
-- BRD - Fireguard - 45943
UPDATE creature SET modelid = 0, position_x = 699.724, position_y = -128.184, position_z = -45.6961, orientation = 3.9079, spawndist = 0 WHERE guid = 45943;
DELETE FROM creature_movement WHERE id = 45943;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(45943, 1, 682.134, -145.115, -46.2337, 0, 0, 0, 0, 0),
(45943, 2, 652.99, -131.139, -46.2337, 0, 0, 0, 0, 0),
(45943, 3, 626.382, -119.613, -46.2041, 0, 0, 0, 0, 0),
(45943, 4, 625.212, -88.7561, -45.9408, 0, 0, 0, 0, 0),
(45943, 5, 587.486, -89.0767, -45.4716, 0, 0, 0, 0, 0),
(45943, 6, 582.532, -72.8387, -45.4674, 0, 0, 0, 0, 0),
(45943, 7, 587.486, -89.0767, -45.4716, 0, 0, 0, 0, 0),
(45943, 8, 625.212, -88.7561, -45.9408, 0, 0, 0, 0, 0),
(45943, 9, 626.382, -119.613, -46.2041, 0, 0, 0, 0, 0),
(45943, 10, 652.99, -131.139, -46.2337, 0, 0, 0, 0, 0),
(45943, 11, 682.134, -145.115, -46.2337, 0, 0, 0, 0, 0),
(45943, 12, 700.327, -127.72, -45.7609, 0, 0, 0, 0, 0);

-- Classic [1042]
-- BRD - Fireguard Destroyer - 90728
UPDATE creature SET modelid = 0, position_x = 754.091, position_y = -73.9451, position_z = -46.2159, orientation = 0.84735, spawndist = 0 WHERE guid = 90728;
DELETE FROM creature_movement WHERE id = 90728;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(90728, 1, 761.283, -65.8021, -46.2337, 0, 0, 0, 0, 0),
(90728, 2, 762.053, -59.3832, -46.2337, 0, 0, 0, 0, 0),
(90728, 3, 740.873, -15.4984, -46.2337, 0, 0, 0, 0, 0),
(90728, 4, 733.056, -6.43943, -46.1815, 0, 0, 0, 0, 0),
(90728, 5, 710.789, -8.89487, -45.9405, 0, 0, 0, 0, 0),
(90728, 6, 706.555, 13.0863, -45.5852, 0, 0, 0, 0, 0),
(90728, 7, 710.562, 22.7446, -45.4594, 0, 0, 0, 0, 0),
(90728, 8, 696.138, 34.8861, -45.467, 0, 0, 0, 0, 0),
(90728, 9, 691.576, 46.4976, -45.467, 0, 0, 0, 0, 0),
(90728, 10, 696.138, 34.8861, -45.467, 0, 0, 0, 0, 0),
(90728, 11, 710.562, 22.7446, -45.4594, 0, 0, 0, 0, 0),
(90728, 12, 706.555, 13.0863, -45.5852, 0, 0, 0, 0, 0),
(90728, 13, 710.789, -8.89487, -45.9405, 0, 0, 0, 0, 0),
(90728, 14, 733.056, -6.43943, -46.1815, 0, 0, 0, 0, 0),
(90728, 15, 740.873, -15.4984, -46.2337, 0, 0, 0, 0, 0),
(90728, 16, 762.053, -59.3832, -46.2337, 0, 0, 0, 0, 0),
(90728, 17, 761.283, -65.8021, -46.2337, 0, 0, 0, 0, 0),
(90728, 18, 747.48, -80.9312, -46.2337, 0, 0, 0, 0, 0);

-- Classic [1041]
-- BRD - Fireguard Destroyer - 47738
UPDATE creature SET modelid = 0, position_x = 562.103, position_y = -282.939, position_z = -43.1013, orientation = 0.00912, spawndist = 0, MovementType = 2 WHERE guid = 47738;
DELETE FROM creature_movement WHERE id = 47738;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(47738, 1, 595.023, -282.501, -43.1034, 0, 0, 0, 0, 0),
(47738, 2, 633.051, -282.096, -43.2186, 0, 0, 0, 0, 0),
(47738, 3, 653.19, -284.079, -43.1904, 0, 0, 0, 0, 0),
(47738, 4, 688.829, -280.882, -43.1993, 0, 0, 0, 0, 0),
(47738, 5, 724.116, -276.83, -42.8501, 0, 0, 0, 0, 0),
(47738, 6, 688.829, -280.882, -43.1993, 0, 0, 0, 0, 0),
(47738, 7, 653.19, -284.079, -43.1904, 0, 0, 0, 0, 0),
(47738, 8, 633.051, -282.096, -43.2186, 0, 0, 0, 0, 0),
(47738, 9, 595.023, -282.501, -43.1034, 0, 0, 0, 0, 0),
(47738, 10, 560.518, -281.275, -43.1014, 0, 0, 0, 0, 0);

-- Classic [1040]
-- BRD - Blazing Fireguard - 90828 
UPDATE creature SET modelid = 0, position_x = 861.324, position_y = -258.804, position_z = -49.8696, orientation = 4.42832, spawndist = 0, MovementType = 2 WHERE guid = 90828;
DELETE FROM creature_movement WHERE id = 90828;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(90828, 1, 854.438, -282.389, -49.934, 0, 0, 0, 0, 0),
(90828, 2, 861.951, -299.681, -49.936, 0, 0, 0, 0, 0),
(90828, 3, 871.463, -303.62, -49.936, 0, 0, 0, 0, 0),
(90828, 4, 883.993, -313.336, -49.936, 0, 0, 0, 0, 0),
(90828, 5, 898.929, -313.426, -49.936, 0, 0, 0, 0, 0),
(90828, 6, 896.321, -334.966, -49.7995, 0, 0, 0, 0, 0),
(90828, 7, 894.078, -359.278, -49.9362, 0, 0, 0, 0, 0),
(90828, 8, 896.321, -334.966, -49.7995, 0, 0, 0, 0, 0),
(90828, 9, 898.929, -313.426, -49.936, 0, 0, 0, 0, 0),
(90828, 10, 883.993, -313.336, -49.936, 0, 0, 0, 0, 0),
(90828, 11, 871.463, -303.62, -49.936, 0, 0, 0, 0, 0),
(90828, 12, 861.951, -299.681, -49.936, 0, 0, 0, 0, 0),
(90828, 13, 854.474, -282.47, -49.936, 0, 0, 0, 0, 0),
(90828, 14, 860.654, -258.971, -49.971, 0, 0, 0, 0, 0);

-- Classic [1039]
-- Maraudon - Spirit of Maraudos
UPDATE creature SET modelid = 0, position_x = 736.248, position_y = -456.79, position_z = -52.8932, orientation = 5.40292, spawndist = 0, currentwaypoint = 0, MovementType = 2 WHERE id = 12242;
UPDATE creature_template SET movementType = 2 WHERE entry = 12242;
DELETE FROM creature_movement WHERE id = 12242;
DELETE FROM creature_movement_template WHERE entry = 12242;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(12242,1, 755.9363, -480.6198, -52.90856, 0, 0, 0, 0, 0),
(12242,2, 769.3544, -505.1759, -52.85908, 0, 0, 0, 0, 0),
(12242,3, 784.3037, -508.379, -53.0263, 0, 0, 0, 0, 0),
(12242,4, 801.0869, -492.0177, -53.81177, 0, 0, 0, 0, 0),
(12242,5, 814.9312, -484.2513, -55.0167, 0, 0, 0, 0, 0),
(12242,6, 822.5286, -461.7411, -56.28494, 0, 0, 0, 0, 0),
(12242,7, 828.3035, -448.5358, -56.35105, 0, 0, 0, 0, 0),
(12242,8, 793.596, -424.0394, -53.79723, 0, 0, 0, 0, 0),
(12242,9, 829.3204, -448.1856, -56.35316, 0, 0, 0, 0, 0),
(12242,10, 862.0096, -424.002, -52.43996, 0, 0, 0, 0, 0),
(12242,11, 886.9448, -405.5167, -52.09523, 0, 0, 0, 0, 0),
(12242,12, 880.3082, -369.967, -52.04964, 0, 0, 0, 0, 0),
(12242,13, 856.7214, -349.8064, -52.04964, 0, 0, 0, 0, 0),
(12242,14, 826.5951, -346.6646, -51.92785, 0, 0, 0, 0, 0),
(12242,15, 807.8654, -346.475, -51.7706, 0, 0, 0, 0, 0),
(12242,16, 775.6643, -328.4655, -50.0463, 0, 0, 0, 0, 0),
(12242,17, 756.8548, -327.6703, -51.55397, 0, 0, 0, 0, 0),
(12242,18, 745.7422, -340.5418, -50.73648, 0, 0, 0, 0, 0),
(12242,19, 718.0483, -329.1714, -51.41955, 0, 0, 0, 0, 0),
(12242,20, 704.3214, -351.085, -52.00996, 0, 0, 0, 0, 0),
(12242,21, 690.3201, -374.0625, -52.06044, 0, 0, 0, 0, 0),
(12242,22, 655.8417, -358.8916, -52.05203, 0, 0, 0, 0, 0),
(12242,23, 642.3574, -347.1523, -52.01936, 0, 0, 0, 0, 0),
(12242,24, 620.6495, -351.6401, -52.01936, 0, 0, 0, 0, 0),
(12242,25, 608.4368, -379.101, -52.01936, 0, 0, 0, 0, 0),
(12242,26, 620.1765, -351.2938, -52.01936, 0, 0, 0, 0, 0),
(12242,27, 650.0255, -343.3729, -52.01936, 0, 0, 0, 0, 0),
(12242,28, 646.0782, -315.0015, -52.0653, 0, 0, 0, 0, 0),
(12242,29, 634.4776, -286.2214, -52.94971, 0, 0, 0, 0, 0),
(12242,30, 633.8284, -260.07, -53.10785, 0, 0, 0, 0, 0),
(12242,31, 629.4022, -228.5276, -59.41068, 0, 0, 0, 0, 0),
(12242,32, 633.8284, -260.07, -53.10785, 0, 0, 0, 0, 0),
(12242,33, 634.4776, -286.2214, -52.94971, 0, 0, 0, 0, 0),
(12242,34, 646.0782, -315.0015, -52.0653, 0, 0, 0, 0, 0),
(12242,35, 650.0255, -343.3729, -52.01936, 0, 0, 0, 0, 0),
(12242,36, 620.1765, -351.2938, -52.01936, 0, 0, 0, 0, 0),
(12242,37, 608.4368, -379.101, -52.01936, 0, 0, 0, 0, 0),
(12242,38, 620.6495, -351.6401, -52.01936, 0, 0, 0, 0, 0),
(12242,39, 642.3574, -347.1523, -52.01936, 0, 0, 0, 0, 0),
(12242,40, 655.8417, -358.8916, -52.05203, 0, 0, 0, 0, 0),
(12242,41, 690.3201, -374.0625, -52.06044, 0, 0, 0, 0, 0),
(12242,42, 704.3214, -351.085, -52.00996, 0, 0, 0, 0, 0),
(12242,43, 718.0483, -329.1714, -51.41955, 0, 0, 0, 0, 0),
(12242,44, 745.7422, -340.5418, -50.73648, 0, 0, 0, 0, 0),
(12242,45, 756.8548, -327.6703, -51.55397, 0, 0, 0, 0, 0),
(12242,46, 775.6643, -328.4655, -50.0463, 0, 0, 0, 0, 0),
(12242,47, 807.8654, -346.475, -51.7706, 0, 0, 0, 0, 0),
(12242,48, 826.327, -346.6367, -51.91992, 0, 0, 0, 0, 0),
(12242,49, 856.7214, -349.8064, -52.04964, 0, 0, 0, 0, 0),
(12242,50, 880.3082, -369.967, -52.04964, 0, 0, 0, 0, 0),
(12242,51, 886.9448, -405.5167, -52.09523, 0, 0, 0, 0, 0),
(12242,52, 862.0096, -424.002, -52.43996, 0, 0, 0, 0, 0),
(12242,53, 829.3204, -448.1856, -56.35316, 0, 0, 0, 0, 0),
(12242,54, 793.596, -424.0394, -53.79723, 0, 0, 0, 0, 0),
(12242,55, 828.3035, -448.5358, -56.35105, 0, 0, 0, 0, 0),
(12242,56, 822.5286, -461.7411, -56.28494, 0, 0, 0, 0, 0),
(12242,57, 814.9387, -484.2289, -55.03092, 0, 0, 0, 0, 0),
(12242,58, 801.0869, -492.0177, -53.81177, 0, 0, 0, 0, 0),
(12242,59, 784.3037, -508.379, -53.0263, 0, 0, 0, 0, 0),
(12242,60, 769.3544, -505.1759, -52.85908, 0, 0, 0, 0, 0),
(12242,61, 755.9363, -480.6198, -52.90856, 0, 0, 0, 0, 0),
(12242,62, 736.6956, -455.5942, -52.88465, 0, 0, 0, 0, 0);


