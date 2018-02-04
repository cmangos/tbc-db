-- Completely respawn Tomb of Lights creatures in Terokkar. Add missing spawns, pooling, movement, emotes, equipment.

-- Clear out all data
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id IN(21368,21370,21405));
DELETE FROM creature_movement WHERE id IN(SELECT guid FROM creature WHERE id IN(21368,21370,21405));
DELETE FROM creature WHERE id IN(21368,21370,21405);

-- Some spawns have a pickaxe instead of their normal weapon
DELETE FROM creature_equip_template WHERE entry IN(71305,71306,71307) AND equipentry1 IN(1910,1903);
INSERT INTO creature_equip_template (entry,equipentry1,equipentry2,equipentry3) VALUES
(71305,1910,29419,0), -- Plunderer
(71306,1910,0,0), -- Nethermancer
(71307,1903,0,0); -- Arcanist


-- Use variables to make pool grouping easier
SET @PN_PLUNDERER := 152974;
SET @APN_PLUNDERER := @PN_PLUNDERER + 31;
SET @P_PLUNDERER := @APN_PLUNDERER + 1;

SET @PN_NETHERMANCER := @P_PLUNDERER + 2;
SET @APN_NETHERMANCER := @PN_NETHERMANCER + 31;
SET @AN_NETHERMANCER := @APN_NETHERMANCER + 1;

SET @APN_ARCANIST := @AN_NETHERMANCER + 2;
SET @AN_ARCANIST := @APN_ARCANIST + 1;
SET @A_ARCANIST := @AN_ARCANIST + 2;

-- Plunderer/Nethermancer (PN)
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(@PN_PLUNDERER + 0, 21368, 530, 1, 0, 0, -3019.49, 4582.65, -19.4354, 3.87317, 600, 600, 15, 0, 5715, 0, 0, 1),
(@PN_NETHERMANCER + 0, 21370, 530, 1, 0, 0, -3019.49, 4582.65, -19.4354, 3.87317, 600, 600, 15, 0, 4572, 2705, 0, 1),

(@PN_PLUNDERER + 1, 21368, 530, 1, 0, 0, -2950.7, 4583.66, -20.5774, 3.20111, 600, 600, 15, 0, 5715, 0, 0, 1),
(@PN_NETHERMANCER + 1, 21370, 530, 1, 0, 0, -2950.7, 4583.66, -20.5774, 3.20111, 600, 600, 15, 0, 4572, 2705, 0, 1),

(@PN_PLUNDERER + 2, 21368, 530, 1, 0, 0, -3002.11, 4544.92, -22.0097, 3.54302, 600, 600, 0, 0, 5715, 0, 0, 2),
(@PN_NETHERMANCER + 2, 21370, 530, 1, 0, 0, -3002.11, 4544.92, -22.0097, 3.54302, 600, 600, 0, 0, 4572, 2705, 0, 2),

(@PN_PLUNDERER + 3, 21368, 530, 1, 0, 0, -3023.36, 4492.54, -42.9473, 0.488692, 600, 600, 0, 0, 5715, 0, 0, 2),
(@PN_NETHERMANCER + 3, 21370, 530, 1, 0, 0, -3023.36, 4492.54, -42.9473, 0.488692, 600, 600, 0, 0, 4572, 2705, 0, 2),

(@PN_PLUNDERER + 4, 21368, 530, 1, 0, 0, -2933.38, 4497.69, -42.8638, 2.40855, 600, 600, 0, 0, 5715, 0, 0, 0),
(@PN_NETHERMANCER + 4, 21370, 530, 1, 0, 0, -2933.38, 4497.69, -42.8638, 2.40855, 600, 600, 0, 0, 4572, 2705, 0, 0),

(@PN_PLUNDERER + 5, 21368, 530, 1, 0, 0, -2983.54, 4488.91, -20.4148, 5.01445, 600, 600, 15, 0, 5715, 0, 0, 1),
(@PN_NETHERMANCER + 5, 21370, 530, 1, 0, 0, -2983.54, 4488.91, -20.4148, 5.01445, 600, 600, 15, 0, 4572, 2705, 0, 1),

(@PN_PLUNDERER + 6, 21368, 530, 1, 0, 0, -2979.37, 4484.05, -40.9355, 1.8675, 600, 600, 0, 0, 5715, 0, 0, 0),
(@PN_NETHERMANCER + 6, 21370, 530, 1, 0, 0, -2979.37, 4484.05, -40.9355, 1.8675, 600, 600, 0, 0, 4572, 2705, 0, 0),

(@PN_PLUNDERER + 7, 21368, 530, 1, 0, 0, -2982.77, 4502.73, -41.0171, 0.034853, 600, 600, 0, 0, 5715, 0, 0, 2),
(@PN_NETHERMANCER + 7, 21370, 530, 1, 0, 0, -2982.77, 4502.73, -41.0171, 0.034853, 600, 600, 0, 0, 4572, 2705, 0, 2),

(@PN_PLUNDERER + 8, 21368, 530, 1, 0, 71305, -2914.41, 4498.79, -42.8626, 2.49582, 600, 600, 0, 0, 5715, 0, 0, 2),
(@PN_NETHERMANCER + 8, 21370, 530, 1, 0, 71306, -2914.41, 4498.79, -42.8626, 2.49582, 600, 600, 0, 0, 4572, 2705, 0, 2),

(@PN_PLUNDERER + 9, 21368, 530, 1, 0, 0, -2909.13, 4512.35, -42.8629, 4.4855, 600, 600, 0, 0, 5715, 0, 0, 0),
(@PN_NETHERMANCER + 9, 21370, 530, 1, 0, 0, -2909.13, 4512.35, -42.8629, 4.4855, 600, 600, 0, 0, 4572, 2705, 0, 0),

(@PN_PLUNDERER + 10, 21368, 530, 1, 0, 0, -2927.11, 4515.07, -17.8413, 4.53153, 600, 600, 15, 0, 5715, 0, 0, 1),
(@PN_NETHERMANCER + 10, 21370, 530, 1, 0, 0, -2927.11, 4515.07, -17.8413, 4.53153, 600, 600, 15, 0, 4572, 2705, 0, 1),

(@PN_PLUNDERER + 11, 21368, 530, 1, 0, 0, -2963.31, 4385.23, -49.1448, 3.19395, 600, 600, 0, 0, 5715, 0, 0, 0),
(@PN_NETHERMANCER + 11, 21370, 530, 1, 0, 0, -2963.31, 4385.23, -49.1448, 3.19395, 600, 600, 0, 0, 4572, 2705, 0, 0),

(@PN_PLUNDERER + 12, 21368, 530, 1, 0, 71305, -2982.67, 4395.81, -49.1447, 5.67232, 600, 600, 0, 0, 5715, 0, 0, 2),
(@PN_NETHERMANCER + 12, 21370, 530, 1, 0, 71306, -2982.67, 4395.81, -49.1447, 5.67232, 600, 600, 0, 0, 4572, 2705, 0, 2),

(@PN_PLUNDERER + 13, 21368, 530, 1, 0, 0, -3035.76, 4571.8, -20.9817, 0.363669, 600, 600, 15, 0, 5715, 0, 0, 1),
(@PN_NETHERMANCER + 13, 21370, 530, 1, 0, 0, -3035.76, 4571.8, -20.9817, 0.363669, 600, 600, 15, 0, 4572, 2705, 0, 1),

(@PN_PLUNDERER + 14, 21368, 530, 1, 0, 0, -3009.69, 4555.82, -21.8611, 3.57792, 600, 600, 0, 0, 5715, 0, 0, 0),
(@PN_NETHERMANCER + 14, 21370, 530, 1, 0, 0, -3009.69, 4555.82, -21.8611, 3.57792, 600, 600, 0, 0, 4572, 2705, 0, 0),

(@PN_PLUNDERER + 15, 21368, 530, 1, 0, 0, -3008.6, 4533.05, -22.3311, 3.49066, 600, 600, 0, 0, 5715, 0, 0, 0),
(@PN_NETHERMANCER + 15, 21370, 530, 1, 0, 0, -3008.6, 4533.05, -22.3311, 3.49066, 600, 600, 0, 0, 4572, 2705, 0, 0),

(@PN_PLUNDERER + 16, 21368, 530, 1, 0, 0, -3025.48, 4524.77, -22.1956, 0.143364, 600, 600, 15, 0, 5715, 0, 0, 1),
(@PN_NETHERMANCER + 16, 21370, 530, 1, 0, 0, -3025.48, 4524.77, -22.1956, 0.143364, 600, 600, 15, 0, 4572, 2705, 0, 1),

(@PN_PLUNDERER + 17, 21368, 530, 1, 0, 0, -2979.45, 4565.3, -22.3714, 3.05117, 600, 600, 15, 0, 5715, 0, 0, 1),
(@PN_NETHERMANCER + 17, 21370, 530, 1, 0, 0, -2979.45, 4565.3, -22.3714, 3.05117, 600, 600, 15, 0, 4572, 2705, 0, 1),

(@PN_PLUNDERER + 18, 21368, 530, 1, 0, 0, -2943.78, 4546, -20.5497, 1.98069, 600, 600, 15, 0, 5715, 0, 0, 1),
(@PN_NETHERMANCER + 18, 21370, 530, 1, 0, 0, -2943.78, 4546, -20.5497, 1.98069, 600, 600, 15, 0, 4572, 2705, 0, 1),

(@PN_PLUNDERER + 19, 21368, 530, 1, 0, 0, -3025.88, 4545.56, -21.7133, 3.11768, 600, 600, 15, 0, 5715, 0, 0, 1),
(@PN_NETHERMANCER + 19, 21370, 530, 1, 0, 0, -3025.88, 4545.56, -21.7133, 3.11768, 600, 600, 15, 0, 4572, 2705, 0, 1),

(@PN_PLUNDERER + 20, 21368, 530, 1, 0, 0, -2940.84, 4560.67, -20.5392, 3.99002, 600, 600, 15, 0, 5715, 0, 0, 1),
(@PN_NETHERMANCER + 20, 21370, 530, 1, 0, 0, -2940.84, 4560.67, -20.5392, 3.99002, 600, 600, 15, 0, 4572, 2705, 0, 1),

(@PN_PLUNDERER + 21, 21368, 530, 1, 0, 0, -3019.64, 4508.14, -42.8644, 0.645772, 600, 600, 0, 0, 5715, 0, 0, 0),
(@PN_NETHERMANCER + 21, 21370, 530, 1, 0, 0, -3019.64, 4508.14, -42.8644, 0.645772, 600, 600, 0, 0, 4572, 2705, 0, 0),

(@PN_PLUNDERER + 22, 21368, 530, 1, 0, 0, -3024.01, 4490.48, -21.4584, 3.82883, 600, 600, 15, 0, 5715, 0, 0, 1),
(@PN_NETHERMANCER + 22, 21370, 530, 1, 0, 0, -3024.01, 4490.48, -21.4584, 3.82883, 600, 600, 15, 0, 4572, 2705, 0, 1),

(@PN_PLUNDERER + 23, 21368, 530, 1, 0, 0, -2968.8, 4484.21, -40.9351, 1.53589, 600, 600, 0, 0, 5715, 0, 0, 0),
(@PN_NETHERMANCER + 23, 21370, 530, 1, 0, 0, -2968.8, 4484.21, -40.9351, 1.53589, 600, 600, 0, 0, 4572, 2705, 0, 0),

(@PN_PLUNDERER + 24, 21368, 530, 1, 0, 0, -2966.41, 4502.65, -41.016, 3.17901, 600, 600, 0, 0, 5715, 0, 0, 2),
(@PN_NETHERMANCER + 24, 21370, 530, 1, 0, 0, -2966.41, 4502.65, -41.016, 3.17901, 600, 600, 0, 0, 4572, 2705, 0, 2),

(@PN_PLUNDERER + 25, 21368, 530, 1, 0, 0, -2918.23, 4508.99, -42.9468, 4.96277, 600, 600, 0, 0, 5715, 0, 0, 2),
(@PN_NETHERMANCER + 25, 21370, 530, 1, 0, 0, -2918.23, 4508.99, -42.9468, 4.96277, 600, 600, 0, 0, 4572, 2705, 0, 2),

(@PN_PLUNDERER + 26, 21368, 530, 1, 0, 0, -2966.38, 4436.66, -47.2112, 1.97222, 600, 600, 0, 0, 5715, 0, 0, 0),
(@PN_NETHERMANCER + 26, 21370, 530, 1, 0, 0, -2966.38, 4436.66, -47.2112, 1.97222, 600, 600, 0, 0, 4572, 2705, 0, 0),

(@PN_PLUNDERER + 27, 21368, 530, 1, 0, 0, -2979.82, 4436.79, -47.2117, 1.13446, 600, 600, 0, 0, 5715, 0, 0, 0),
(@PN_NETHERMANCER + 27, 21370, 530, 1, 0, 0, -2979.82, 4436.79, -47.2117, 1.13446, 600, 600, 0, 0, 4572, 2705, 0, 0),

(@PN_PLUNDERER + 28, 21368, 530, 1, 0, 0, -3046.47, 4506.84, -42.8623, 2.75762, 600, 600, 0, 0, 5715, 0, 0, 0),
(@PN_NETHERMANCER + 28, 21370, 530, 1, 0, 0, -3046.47, 4506.84, -42.8623, 2.75762, 600, 600, 0, 0, 4572, 2705, 0, 0),

(@PN_PLUNDERER + 29, 21368, 530, 1, 0, 0, -2985.302, 4418.012, -47.21365, 0.1396263, 600, 600, 0, 0, 5715, 0, 0, 0),
(@PN_NETHERMANCER + 29, 21370, 530, 1, 0, 0, -2985.302, 4418.012, -47.21365, 0.1396263, 600, 600, 0, 0, 4572, 2705, 0, 0),

(@PN_PLUNDERER + 30, 21368, 530, 1, 0, 0, -3036.31, 4493.82, -42.8625, 0.872665, 600, 600, 0, 0, 5715, 0, 0, 0),
(@PN_NETHERMANCER + 30, 21370, 530, 1, 0, 0, -3036.31, 4493.82, -42.8625, 0.872665, 600, 600, 0, 0, 4572, 2705, 0, 0),

-- Arcanist/Plunderer/Nethermancer (APN)
(@APN_ARCANIST + 0, 21405, 530, 1, 0, 0, -2959.81, 4415.41, -47.297, 4.11898, 600, 600, 0, 0, 4402, 6299, 0, 2),
(@APN_PLUNDERER + 0, 21368, 530, 1, 0, 0, -2959.81, 4415.41, -47.297, 4.11898, 600, 600, 0, 0, 5715, 0, 0, 2),
(@APN_NETHERMANCER + 0, 21370, 530, 1, 0, 0, -2959.81, 4415.41, -47.297, 4.11898, 600, 600, 0, 0, 4572, 2705, 0, 2),

-- Arcanist/Nethermancer (AN)
(@AN_ARCANIST + 0, 21405, 530, 1, 0, 0, -2980.4, 4356.25, -49.1436, 1.36136, 600, 600, 0, 0, 4402, 6299, 0, 0),
(@AN_NETHERMANCER + 0, 21370, 530, 1, 0, 0, -2980.4, 4356.25, -49.1436, 1.36136, 600, 600, 0, 0, 4572, 2705, 0, 0),

(@AN_ARCANIST + 1, 21405, 530, 1, 0, 0, -2975.32, 4377.66, -49.1435, 0.610865, 600, 600, 0, 0, 4402, 6299, 0, 0),
(@AN_NETHERMANCER + 1, 21370, 530, 1, 0, 0, -2975.32, 4377.66, -49.1435, 0.610865, 600, 600, 0, 0, 4572, 2705, 0, 0),

-- Plunderer (P)
(@P_PLUNDERER + 0, 21368, 530, 1, 0, 71305, -3059.57, 4500.37, -42.8611, 3.36848, 600, 600, 0, 0, 5715, 0, 0, 2),
(@P_PLUNDERER + 1, 21368, 530, 1, 0, 71305, -2889.88, 4504.51, -42.8615, 0.05236, 600, 600, 0, 0, 5715, 0, 0, 2),

-- Arcanist (A)
(@A_ARCANIST + 0, 21405, 530, 1, 0, 0, -2974.41, 4483.26, -41.0208, 1.55728, 600, 600, 0, 0, 4402, 6299, 0, 2),
(@A_ARCANIST + 1, 21405, 530, 1, 0, 71307, -2968.24, 4322.62, -48.6488, 0.191986, 600, 600, 0, 0, 4402, 6299, 0, 2),
(@A_ARCANIST + 2, 21405, 530, 1, 0, 0, -2961.47, 4357.33, -49.144, 3.01942, 600, 600, 0, 0, 4402, 6299, 0, 0),
(@A_ARCANIST + 3, 21405, 530, 1, 0, 71307, -2961.55, 4330.03, -48.7706, 2.37638, 600, 600, 0, 0, 4402, 6299, 0, 2),
(@A_ARCANIST + 4, 21405, 530, 1, 0, 71307, -2982.25, 4328.53, -48.6488, 2.07694, 600, 600, 0, 0, 4402, 6299, 0, 2),
(@A_ARCANIST + 5, 21405, 530, 1, 0, 0, -2971.51, 4349.16, -49.2277, 4.72984, 600, 600, 0, 0, 4402, 6299, 0, 2);

DELETE FROM pool_template WHERE entry BETWEEN 477 AND 510;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(477,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 0'),
(478,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 1'),
(479,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 2'),
(480,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 3'),
(481,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 4'),
(482,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 5'),
(483,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 6'),
(484,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 7'),
(485,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 8'),
(486,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 9'),
(487,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 10'),
(488,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 11'),
(489,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 12'),
(490,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 13'),
(491,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 14'),
(492,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 15'),
(493,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 16'),
(494,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 17'),
(495,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 18'),
(496,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 19'),
(497,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 20'),
(498,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 21'),
(499,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 22'),
(500,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 23'),
(501,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 24'),
(502,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 25'),
(503,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 26'),
(504,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 27'),
(505,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 28'),
(506,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 29'),
(507,1,'Tomb of Lights, Terokkar Forest - Ethereal Plunderer/Nethermancer 30'),

(508,1,'Tomb of Lights, Terokkar Forest - Ethereal Arcanist/Plunderer/Nethermancer 0'),

(509,1,'Tomb of Lights, Terokkar Forest - Ethereal Arcanist/Nethermancer 0'),
(510,1,'Tomb of Lights, Terokkar Forest - Ethereal Arcanist/Nethermancer 1');

DELETE FROM pool_creature WHERE pool_entry BETWEEN 477 AND 510;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(@PN_PLUNDERER + 0,477,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 0'),
(@PN_NETHERMANCER + 0,477,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 0'),

(@PN_PLUNDERER + 1,478,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 1'),
(@PN_NETHERMANCER + 1,478,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 1'),

(@PN_PLUNDERER + 2,479,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 2'),
(@PN_NETHERMANCER + 2,479,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 2'),

(@PN_PLUNDERER + 3,480,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 3'),
(@PN_NETHERMANCER + 3,480,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 3'),

(@PN_PLUNDERER + 4,481,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 4'),
(@PN_NETHERMANCER + 4,481,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 4'),

(@PN_PLUNDERER + 5,482,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 5'),
(@PN_NETHERMANCER + 5,482,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 5'),

(@PN_PLUNDERER + 6,483,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 6'),
(@PN_NETHERMANCER + 6,483,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 6'),

(@PN_PLUNDERER + 7,484,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 7'),
(@PN_NETHERMANCER + 7,484,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 7'),

(@PN_PLUNDERER + 8,485,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 8'),
(@PN_NETHERMANCER + 8,485,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 8'),

(@PN_PLUNDERER + 9,486,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 9'),
(@PN_NETHERMANCER + 9,486,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 9'),

(@PN_PLUNDERER + 10,487,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 10'),
(@PN_NETHERMANCER + 10,487,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 10'),

(@PN_PLUNDERER + 11,488,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 11'),
(@PN_NETHERMANCER + 11,488,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 11'),

(@PN_PLUNDERER + 12,489,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 12'),
(@PN_NETHERMANCER + 12,489,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 12'),

(@PN_PLUNDERER + 13,490,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 13'),
(@PN_NETHERMANCER + 13,490,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 13'),

(@PN_PLUNDERER + 14,491,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 14'),
(@PN_NETHERMANCER + 14,491,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 14'),

(@PN_PLUNDERER + 15,492,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 15'),
(@PN_NETHERMANCER + 15,492,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 15'),

(@PN_PLUNDERER + 16,493,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 16'),
(@PN_NETHERMANCER + 16,493,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 16'),

(@PN_PLUNDERER + 17,494,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 17'),
(@PN_NETHERMANCER + 17,494,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 17'),

(@PN_PLUNDERER + 18,495,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 18'),
(@PN_NETHERMANCER + 18,495,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 18'),

(@PN_PLUNDERER + 19,496,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 19'),
(@PN_NETHERMANCER + 19,496,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 19'),

(@PN_PLUNDERER + 20,497,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 20'),
(@PN_NETHERMANCER + 20,497,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 20'),

(@PN_PLUNDERER + 21,498,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 21'),
(@PN_NETHERMANCER + 21,498,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 21'),

(@PN_PLUNDERER + 22,499,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 22'),
(@PN_NETHERMANCER + 22,499,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 22'),

(@PN_PLUNDERER + 23,500,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 23'),
(@PN_NETHERMANCER + 23,500,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 23'),

(@PN_PLUNDERER + 24,501,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 24'),
(@PN_NETHERMANCER + 24,501,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 24'),

(@PN_PLUNDERER + 25,502,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 25'),
(@PN_NETHERMANCER + 25,502,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 25'),

(@PN_PLUNDERER + 26,503,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 26'),
(@PN_NETHERMANCER + 26,503,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 26'),

(@PN_PLUNDERER + 27,504,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 27'),
(@PN_NETHERMANCER + 27,504,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 27'),

(@PN_PLUNDERER + 28,505,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 28'),
(@PN_NETHERMANCER + 28,505,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 28'),

(@PN_PLUNDERER + 29,506,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 29'),
(@PN_NETHERMANCER + 29,506,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 29'),

(@PN_PLUNDERER + 30,507,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Plunderer 30'),
(@PN_NETHERMANCER + 30,507,0,'Tomb of Lights, Terokkar Forest - (PN) Ethereal Nethermancer 30'),

(@APN_ARCANIST + 0,508,0,'Tomb of Lights, Terokkar Forest - (APN) Ethereal Arcanist 0'),
(@APN_PLUNDERER + 0,508,0,'Tomb of Lights, Terokkar Forest - (APN) Ethereal Plunderer 0'),
(@APN_NETHERMANCER + 0,508,0,'Tomb of Lights, Terokkar Forest - (APN) Ethereal Nethermancer 0'),

(@AN_ARCANIST + 0,509,0,'Tomb of Lights, Terokkar Forest - (AN) Ethereal Arcanist 0'),
(@AN_NETHERMANCER + 0,509,0,'Tomb of Lights, Terokkar Forest - (AN) Ethereal Nethermancer 0'),

(@AN_ARCANIST + 1,510,0,'Tomb of Lights, Terokkar Forest - (AN) Ethereal Arcanist 1'),
(@AN_NETHERMANCER + 1,510,0,'Tomb of Lights, Terokkar Forest - (AN) Ethereal Nethermancer 1');

INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@A_ARCANIST + 1,1,-2968.24,4322.62,-48.6488,20000,2140503,0.191986),

(@A_ARCANIST + 0,1,-2974.076,4472.688,-43.53877,0,0,0),
(@A_ARCANIST + 0,2,-2973.7,4461.94,-47.29405,0,0,0),
(@A_ARCANIST + 0,3,-2973.368,4453.034,-47.32663,10000,0,100),
(@A_ARCANIST + 0,4,-2973.843,4462.271,-47.29394,0,0,0),
(@A_ARCANIST + 0,5,-2974.268,4472.057,-43.91417,0,0,0),
(@A_ARCANIST + 0,6,-2974.452,4480.319,-41.02041,0,0,0),
(@A_ARCANIST + 0,7,-2974.352,4487.704,-41.01979,10000,0,100),
(@A_ARCANIST + 0,8,-2974.099,4481.442,-41.02006,0,0,0),

(@A_ARCANIST + 3,1,-2960.143,4328.683,-48.73212,13500,2140501,1.343904),
(@A_ARCANIST + 3,2,-2980.485,4345.246,-48.73212,10500,2140502,3.961897),

(@A_ARCANIST + 4,1,-2982.25,4328.53,-48.6488,19000,2140504,2.07694),

(@A_ARCANIST + 5,1,-2973.462,4359.417,-49.22758,0,0,0),
(@A_ARCANIST + 5,2,-2976.693,4360.535,-49.2276,7000,0,100),
(@A_ARCANIST + 5,3,-2967.99,4360.259,-49.22748,0,0,0),
(@A_ARCANIST + 5,4,-2965.793,4360.385,-49.22729,5000,0,100),
(@A_ARCANIST + 5,5,-2971.51,4349.16,-49.22775,6000,0,4.729842),

(@APN_ARCANIST + 0,1,-2959.806,4415.414,-47.29695,10000,0,4.118977),
(@APN_ARCANIST + 0,2,-2966.716,4417.077,-47.29696,0,0,0),
(@APN_ARCANIST + 0,3,-2972.165,4417.016,-47.29697,0,0,0),
(@APN_ARCANIST + 0,4,-2972.589,4411.802,-47.29697,0,0,0),
(@APN_ARCANIST + 0,5,-2974.413,4407.527,-49.22936,0,0,0),
(@APN_ARCANIST + 0,6,-2977.014,4394.907,-49.22819,0,0,0),
(@APN_ARCANIST + 0,7,-2977.873,4395.115,-49.22815,10000,0,100),
(@APN_ARCANIST + 0,8,-2976.438,4391.595,-49.22807,0,0,0),
(@APN_ARCANIST + 0,9,-2970.398,4386.676,-49.22811,0,0,0),
(@APN_ARCANIST + 0,10,-2968.541,4386.475,-49.22792,10000,0,100),
(@APN_ARCANIST + 0,11,-2968.813,4383.113,-49.2271,0,0,0),
(@APN_ARCANIST + 0,12,-2971.916,4380.502,-49.22764,10000,0,100),
(@APN_ARCANIST + 0,13,-2973.532,4383.669,-49.22791,0,0,0),
(@APN_ARCANIST + 0,14,-2975.818,4387.586,-49.2279,0,0,0),
(@APN_ARCANIST + 0,15,-2979.027,4392.669,-49.22839,10000,0,100),
(@APN_ARCANIST + 0,16,-2975.842,4399.017,-49.22848,0,0,0),
(@APN_ARCANIST + 0,17,-2974.251,4408.204,-49.22945,0,0,0),
(@APN_ARCANIST + 0,18,-2973.025,4411.331,-47.29698,0,0,0),
(@APN_ARCANIST + 0,19,-2972.636,4417.947,-47.29698,0,0,0),
(@APN_ARCANIST + 0,20,-2973.347,4431.066,-47.29597,10000,0,100),
(@APN_ARCANIST + 0,21,-2972.921,4423.422,-47.297,0,0,0),
(@APN_ARCANIST + 0,22,-2969.339,4420.958,-47.297,0,0,0),
(@APN_ARCANIST + 0,23,-2963.934,4419.231,-47.29694,0,0,0),

(@APN_PLUNDERER + 0,1,-2959.806,4415.414,-47.29695,10000,0,4.118977),
(@APN_PLUNDERER + 0,2,-2966.716,4417.077,-47.29696,0,0,0),
(@APN_PLUNDERER + 0,3,-2972.165,4417.016,-47.29697,0,0,0),
(@APN_PLUNDERER + 0,4,-2972.589,4411.802,-47.29697,0,0,0),
(@APN_PLUNDERER + 0,5,-2974.413,4407.527,-49.22936,0,0,0),
(@APN_PLUNDERER + 0,6,-2977.014,4394.907,-49.22819,0,0,0),
(@APN_PLUNDERER + 0,7,-2977.873,4395.115,-49.22815,10000,0,100),
(@APN_PLUNDERER + 0,8,-2976.438,4391.595,-49.22807,0,0,0),
(@APN_PLUNDERER + 0,9,-2970.398,4386.676,-49.22811,0,0,0),
(@APN_PLUNDERER + 0,10,-2968.541,4386.475,-49.22792,10000,0,100),
(@APN_PLUNDERER + 0,11,-2968.813,4383.113,-49.2271,0,0,0),
(@APN_PLUNDERER + 0,12,-2971.916,4380.502,-49.22764,10000,0,100),
(@APN_PLUNDERER + 0,13,-2973.532,4383.669,-49.22791,0,0,0),
(@APN_PLUNDERER + 0,14,-2975.818,4387.586,-49.2279,0,0,0),
(@APN_PLUNDERER + 0,15,-2979.027,4392.669,-49.22839,10000,0,100),
(@APN_PLUNDERER + 0,16,-2975.842,4399.017,-49.22848,0,0,0),
(@APN_PLUNDERER + 0,17,-2974.251,4408.204,-49.22945,0,0,0),
(@APN_PLUNDERER + 0,18,-2973.025,4411.331,-47.29698,0,0,0),
(@APN_PLUNDERER + 0,19,-2972.636,4417.947,-47.29698,0,0,0),
(@APN_PLUNDERER + 0,20,-2973.347,4431.066,-47.29597,10000,0,100),
(@APN_PLUNDERER + 0,21,-2972.921,4423.422,-47.297,0,0,0),
(@APN_PLUNDERER + 0,22,-2969.339,4420.958,-47.297,0,0,0),
(@APN_PLUNDERER + 0,23,-2963.934,4419.231,-47.29694,0,0,0),

(@APN_NETHERMANCER + 0,1,-2959.806,4415.414,-47.29695,10000,0,4.118977),
(@APN_NETHERMANCER + 0,2,-2966.716,4417.077,-47.29696,0,0,0),
(@APN_NETHERMANCER + 0,3,-2972.165,4417.016,-47.29697,0,0,0),
(@APN_NETHERMANCER + 0,4,-2972.589,4411.802,-47.29697,0,0,0),
(@APN_NETHERMANCER + 0,5,-2974.413,4407.527,-49.22936,0,0,0),
(@APN_NETHERMANCER + 0,6,-2977.014,4394.907,-49.22819,0,0,0),
(@APN_NETHERMANCER + 0,7,-2977.873,4395.115,-49.22815,10000,0,100),
(@APN_NETHERMANCER + 0,8,-2976.438,4391.595,-49.22807,0,0,0),
(@APN_NETHERMANCER + 0,9,-2970.398,4386.676,-49.22811,0,0,0),
(@APN_NETHERMANCER + 0,10,-2968.541,4386.475,-49.22792,10000,0,100),
(@APN_NETHERMANCER + 0,11,-2968.813,4383.113,-49.2271,0,0,0),
(@APN_NETHERMANCER + 0,12,-2971.916,4380.502,-49.22764,10000,0,100),
(@APN_NETHERMANCER + 0,13,-2973.532,4383.669,-49.22791,0,0,0),
(@APN_NETHERMANCER + 0,14,-2975.818,4387.586,-49.2279,0,0,0),
(@APN_NETHERMANCER + 0,15,-2979.027,4392.669,-49.22839,10000,0,100),
(@APN_NETHERMANCER + 0,16,-2975.842,4399.017,-49.22848,0,0,0),
(@APN_NETHERMANCER + 0,17,-2974.251,4408.204,-49.22945,0,0,0),
(@APN_NETHERMANCER + 0,18,-2973.025,4411.331,-47.29698,0,0,0),
(@APN_NETHERMANCER + 0,19,-2972.636,4417.947,-47.29698,0,0,0),
(@APN_NETHERMANCER + 0,20,-2973.347,4431.066,-47.29597,10000,0,100),
(@APN_NETHERMANCER + 0,21,-2972.921,4423.422,-47.297,0,0,0),
(@APN_NETHERMANCER + 0,22,-2969.339,4420.958,-47.297,0,0,0),
(@APN_NETHERMANCER + 0,23,-2963.934,4419.231,-47.29694,0,0,0),

(@PN_PLUNDERER + 25,1,-2919.178,4512.687,-42.94701,10000,0,4.468043),
(@PN_PLUNDERER + 25,2,-2918.233,4508.99,-42.94683,0,0,0),
(@PN_PLUNDERER + 25,3,-2917.999,4504.874,-42.94632,0,0,0),
(@PN_PLUNDERER + 25,4,-2917.556,4502.161,-42.94686,10000,0,2.617994),
(@PN_PLUNDERER + 25,5,-2921.485,4502.197,-42.9472,0,0,0),
(@PN_PLUNDERER + 25,6,-2926.366,4502.769,-42.94767,0,0,0),
(@PN_PLUNDERER + 25,7,-2930.978,4502.772,-42.94807,0,0,0),
(@PN_PLUNDERER + 25,8,-2934.929,4502.901,-42.94842,0,0,0),
(@PN_PLUNDERER + 25,9,-2933.963,4501.469,-42.94822,10000,0,100),
(@PN_PLUNDERER + 25,10,-2931.804,4503.509,-42.94756,0,0,0),
(@PN_PLUNDERER + 25,11,-2929.03,4505.703,-42.94719,0,0,0),
(@PN_PLUNDERER + 25,12,-2920.781,4510.378,-42.94705,0,0,0),

(@PN_NETHERMANCER + 25,1,-2919.178,4512.687,-42.94701,10000,0,4.468043),
(@PN_NETHERMANCER + 25,2,-2918.233,4508.99,-42.94683,0,0,0),
(@PN_NETHERMANCER + 25,3,-2917.999,4504.874,-42.94632,0,0,0),
(@PN_NETHERMANCER + 25,4,-2917.556,4502.161,-42.94686,10000,0,2.617994),
(@PN_NETHERMANCER + 25,5,-2921.485,4502.197,-42.9472,0,0,0),
(@PN_NETHERMANCER + 25,6,-2926.366,4502.769,-42.94767,0,0,0),
(@PN_NETHERMANCER + 25,7,-2930.978,4502.772,-42.94807,0,0,0),
(@PN_NETHERMANCER + 25,8,-2934.929,4502.901,-42.94842,0,0,0),
(@PN_NETHERMANCER + 25,9,-2933.963,4501.469,-42.94822,10000,0,100),
(@PN_NETHERMANCER + 25,10,-2931.804,4503.509,-42.94756,0,0,0),
(@PN_NETHERMANCER + 25,11,-2929.03,4505.703,-42.94719,0,0,0),
(@PN_NETHERMANCER + 25,12,-2920.781,4510.378,-42.94705,0,0,0),

(@PN_PLUNDERER + 24,1,-2961.254,4502.67,-41.01624,0,0,0),
(@PN_PLUNDERER + 24,2,-2951.452,4503.03,-41.01626,0,0,0),
(@PN_PLUNDERER + 24,3,-2947.676,4503.156,-41.01624,0,0,0),
(@PN_PLUNDERER + 24,4,-2944.021,4503.454,-42.94859,0,0,0),
(@PN_PLUNDERER + 24,5,-2937.952,4507.444,-42.9479,0,0,0),
(@PN_PLUNDERER + 24,6,-2932.943,4510.971,-42.9472,0,0,0),
(@PN_PLUNDERER + 24,7,-2933.004,4510.928,-42.94721,10000,0,0.7330383),
(@PN_PLUNDERER + 24,8,-2940.013,4504.311,-42.9482,0,0,0),
(@PN_PLUNDERER + 24,9,-2951.317,4503.02,-41.01625,0,0,0),
(@PN_PLUNDERER + 24,10,-2963.739,4502.75,-41.01623,0,0,0),
(@PN_PLUNDERER + 24,11,-2966.413,4502.65,-41.01597,10000,0,100),

(@PN_NETHERMANCER + 24,1,-2961.254,4502.67,-41.01624,0,0,0),
(@PN_NETHERMANCER + 24,2,-2951.452,4503.03,-41.01626,0,0,0),
(@PN_NETHERMANCER + 24,3,-2947.676,4503.156,-41.01624,0,0,0),
(@PN_NETHERMANCER + 24,4,-2944.021,4503.454,-42.94859,0,0,0),
(@PN_NETHERMANCER + 24,5,-2937.952,4507.444,-42.9479,0,0,0),
(@PN_NETHERMANCER + 24,6,-2932.943,4510.971,-42.9472,0,0,0),
(@PN_NETHERMANCER + 24,7,-2933.004,4510.928,-42.94721,10000,0,0.7330383),
(@PN_NETHERMANCER + 24,8,-2940.013,4504.311,-42.9482,0,0,0),
(@PN_NETHERMANCER + 24,9,-2951.317,4503.02,-41.01625,0,0,0),
(@PN_NETHERMANCER + 24,10,-2963.739,4502.75,-41.01623,0,0,0),
(@PN_NETHERMANCER + 24,11,-2966.413,4502.65,-41.01597,10000,0,100),

(@PN_PLUNDERER + 3,1,-3023.276,4492.452,-42.94734,10000,0,0.4886922),
(@PN_PLUNDERER + 3,2,-3021.815,4495.476,-42.94705,0,0,0),
(@PN_PLUNDERER + 3,3,-3020.558,4500.43,-42.94714,0,0,0),
(@PN_PLUNDERER + 3,4,-3018.145,4505.671,-42.94735,0,0,0),
(@PN_PLUNDERER + 3,5,-3018.145,4505.671,-42.94735,10000,0,5.358161),
(@PN_PLUNDERER + 3,6,-3023.747,4504.313,-42.94706,0,0,0),
(@PN_PLUNDERER + 3,7,-3032.228,4497.5,-42.94646,10000,0,1.064651),
(@PN_PLUNDERER + 3,8,-3033.29,4499.834,-42.94598,0,0,0),
(@PN_PLUNDERER + 3,9,-3040.82,4502.44,-42.94621,0,0,0),
(@PN_PLUNDERER + 3,10,-3049.482,4502.496,-42.94488,0,0,0),
(@PN_PLUNDERER + 3,11,-3049.437,4503.818,-42.945,0,0,0),
(@PN_PLUNDERER + 3,12,-3049.437,4503.818,-42.945,10000,0,4.869469),
(@PN_PLUNDERER + 3,13,-3048.719,4502.148,-42.94501,0,0,0),
(@PN_PLUNDERER + 3,14,-3029.474,4500.306,-42.94634,0,0,0),
(@PN_PLUNDERER + 3,15,-3026.008,4495.455,-42.94684,0,0,0),
(@PN_PLUNDERER + 3,16,-3023.276,4492.452,-42.94734,0,0,0),

(@PN_NETHERMANCER + 3,1,-3023.276,4492.452,-42.94734,10000,0,0.4886922),
(@PN_NETHERMANCER + 3,2,-3021.815,4495.476,-42.94705,0,0,0),
(@PN_NETHERMANCER + 3,3,-3020.558,4500.43,-42.94714,0,0,0),
(@PN_NETHERMANCER + 3,4,-3018.145,4505.671,-42.94735,0,0,0),
(@PN_NETHERMANCER + 3,5,-3018.145,4505.671,-42.94735,10000,0,5.358161),
(@PN_NETHERMANCER + 3,6,-3023.747,4504.313,-42.94706,0,0,0),
(@PN_NETHERMANCER + 3,7,-3032.228,4497.5,-42.94646,10000,0,1.064651),
(@PN_NETHERMANCER + 3,8,-3033.29,4499.834,-42.94598,0,0,0),
(@PN_NETHERMANCER + 3,9,-3040.82,4502.44,-42.94621,0,0,0),
(@PN_NETHERMANCER + 3,10,-3049.482,4502.496,-42.94488,0,0,0),
(@PN_NETHERMANCER + 3,11,-3049.437,4503.818,-42.945,0,0,0),
(@PN_NETHERMANCER + 3,12,-3049.437,4503.818,-42.945,10000,0,4.869469),
(@PN_NETHERMANCER + 3,13,-3048.719,4502.148,-42.94501,0,0,0),
(@PN_NETHERMANCER + 3,14,-3029.474,4500.306,-42.94634,0,0,0),
(@PN_NETHERMANCER + 3,15,-3026.008,4495.455,-42.94684,0,0,0),
(@PN_NETHERMANCER + 3,16,-3023.276,4492.452,-42.94734,0,0,0),

(@PN_PLUNDERER + 7,1,-3001.496,4501.961,-41.0162,0,0,0),
(@PN_PLUNDERER + 7,2,-3004.757,4501.894,-42.94894,0,0,0),
(@PN_PLUNDERER + 7,3,-3013.642,4498.995,-42.94764,0,0,0),
(@PN_PLUNDERER + 7,4,-3011.118,4493.282,-42.94755,0,0,0),
(@PN_PLUNDERER + 7,5,-3011.118,4493.282,-42.94755,10000,0,0.5061455),
(@PN_PLUNDERER + 7,6,-3005.024,4501.688,-42.94891,0,0,0),
(@PN_PLUNDERER + 7,7,-3001.997,4502.056,-41.0163,0,0,0),
(@PN_PLUNDERER + 7,8,-2982.766,4502.728,-41.01794,10000,0,100),

(@PN_NETHERMANCER + 7,1,-3001.496,4501.961,-41.0162,0,0,0),
(@PN_NETHERMANCER + 7,2,-3004.757,4501.894,-42.94894,0,0,0),
(@PN_NETHERMANCER + 7,3,-3013.642,4498.995,-42.94764,0,0,0),
(@PN_NETHERMANCER + 7,4,-3011.118,4493.282,-42.94755,0,0,0),
(@PN_NETHERMANCER + 7,5,-3011.118,4493.282,-42.94755,10000,0,0.5061455),
(@PN_NETHERMANCER + 7,6,-3005.024,4501.688,-42.94891,0,0,0),
(@PN_NETHERMANCER + 7,7,-3001.997,4502.056,-41.0163,0,0,0),
(@PN_NETHERMANCER + 7,8,-2982.766,4502.728,-41.01794,10000,0,100),

(@PN_PLUNDERER + 2,1,-3002.162,4544.917,-22.00186,10000,0,3.543018),
(@PN_PLUNDERER + 2,2,-2992.176,4545.202,-21.53619,0,0,0),
(@PN_PLUNDERER + 2,3,-2984.184,4545.182,-27.6564,0,0,0),
(@PN_PLUNDERER + 2,4,-2976.224,4545.548,-31.34925,0,0,0),
(@PN_PLUNDERER + 2,5,-2976.043,4543.086,-31.34925,0,0,0),
(@PN_PLUNDERER + 2,6,-2975.608,4532.905,-37.80955,0,0,0),
(@PN_PLUNDERER + 2,7,-2975.148,4521.489,-41.02005,10000,0,100),
(@PN_PLUNDERER + 2,8,-2975.608,4532.905,-37.80955,0,0,0),
(@PN_PLUNDERER + 2,9,-2976.043,4543.086,-31.34925,0,0,0),
(@PN_PLUNDERER + 2,10,-2976.224,4545.548,-31.34925,0,0,0),
(@PN_PLUNDERER + 2,11,-2984.372,4545.075,-27.51032,0,0,0),
(@PN_PLUNDERER + 2,12,-2992.15,4544.696,-21.54735,0,0,0),
(@PN_PLUNDERER + 2,13,-3002.162,4544.917,-22.00186,0,0,0),

(@PN_NETHERMANCER + 2,1,-3002.162,4544.917,-22.00186,10000,0,3.543018),
(@PN_NETHERMANCER + 2,2,-2992.176,4545.202,-21.53619,0,0,0),
(@PN_NETHERMANCER + 2,3,-2984.184,4545.182,-27.6564,0,0,0),
(@PN_NETHERMANCER + 2,4,-2976.224,4545.548,-31.34925,0,0,0),
(@PN_NETHERMANCER + 2,5,-2976.043,4543.086,-31.34925,0,0,0),
(@PN_NETHERMANCER + 2,6,-2975.608,4532.905,-37.80955,0,0,0),
(@PN_NETHERMANCER + 2,7,-2975.148,4521.489,-41.02005,10000,0,100),
(@PN_NETHERMANCER + 2,8,-2975.608,4532.905,-37.80955,0,0,0),
(@PN_NETHERMANCER + 2,9,-2976.043,4543.086,-31.34925,0,0,0),
(@PN_NETHERMANCER + 2,10,-2976.224,4545.548,-31.34925,0,0,0),
(@PN_NETHERMANCER + 2,11,-2984.372,4545.075,-27.51032,0,0,0),
(@PN_NETHERMANCER + 2,12,-2992.15,4544.696,-21.54735,0,0,0),
(@PN_NETHERMANCER + 2,13,-3002.162,4544.917,-22.00186,0,0,0),

(@PN_PLUNDERER + 12,13,-2982.67,4395.81,-49.1447,18000,2136801,5.67232),
(@PN_NETHERMANCER + 12,13,-2982.67,4395.81,-49.1447,18000,2136801,5.67232),

(@P_PLUNDERER + 0,13,-3059.57,4500.37,-42.8611,19000,2136802,3.36848),

(@P_PLUNDERER + 1,13,-2889.88,4504.51,-42.8615,17000,2136803,0.05236),

(@PN_PLUNDERER + 8,13,-2914.41,4498.79,-42.8626,16000,2136804,2.49582),
(@PN_NETHERMANCER + 8,13,-2914.41,4498.79,-42.8626,16000,2136804,2.49582);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 2140501 AND 2140504;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2140501,5,1,173,0,0,0,0,0,0,0,0,0,'Ethereal Arcanist - STATE_WORK',0,0,0,0),
(2140501,13,1,0,0,0,0,0,0,0,0,0,0,'Ethereal Arcanist - ONESHOT_NONE',0,0,0,0),

(2140502,4,1,173,0,0,0,0,0,0,0,0,0,'Ethereal Arcanist - STATE_WORK',0,0,0,0),
(2140502,10,1,0,0,0,0,0,0,0,0,0,0,'Ethereal Arcanist - ONESHOT_NONE',0,0,0,0),

(2140503,0,1,173,0,0,0,0,0,0,0,0,0,'Ethereal Arcanist - STATE_WORK',0,0,0,0),
(2140503,9,1,0,0,0,0,0,0,0,0,0,0,'Ethereal Arcanist - ONESHOT_NONE',0,0,0,0),

(2140504,0,1,173,0,0,0,0,0,0,0,0,0,'Ethereal Arcanist - STATE_WORK',0,0,0,0),
(2140504,12,1,0,0,0,0,0,0,0,0,0,0,'Ethereal Arcanist - ONESHOT_NONE',0,0,0,0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 2136801 AND 2136804;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2136801,0,1,173,0,0,0,0,0,0,0,0,0,'Ethereal Plunderer - STATE_WORK',0,0,0,0),
(2136801,11,1,0,0,0,0,0,0,0,0,0,0,'Ethereal Plunderer - ONESHOT_NONE',0,0,0,0),

(2136802,0,1,173,0,0,0,0,0,0,0,0,0,'Ethereal Plunderer - STATE_WORK',0,0,0,0),
(2136802,12,1,0,0,0,0,0,0,0,0,0,0,'Ethereal Plunderer - ONESHOT_NONE',0,0,0,0),

(2136803,0,1,173,0,0,0,0,0,0,0,0,0,'Ethereal Plunderer - STATE_WORK',0,0,0,0),
(2136803,8,1,0,0,0,0,0,0,0,0,0,0,'Ethereal Plunderer - ONESHOT_NONE',0,0,0,0),

(2136804,0,1,173,0,0,0,0,0,0,0,0,0,'Ethereal Plunderer - STATE_WORK',0,0,0,0),
(2136804,10,1,0,0,0,0,0,0,0,0,0,0,'Ethereal Plunderer - ONESHOT_NONE',0,0,0,0);




