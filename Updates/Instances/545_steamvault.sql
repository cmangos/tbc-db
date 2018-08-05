/* DBScriptData
DBName: Coilfang Reservoir - The Steamvault
DBScriptName: instance_steam_vault
DB%Complete: 85
DBComment:
* get correct spawn points for gathering gameobjects
* Dreghood Slave Post RP Event - Movement
* Endboss Open Door, Group which stands infront of door should move out from there, should not be static spawned infront of door
EndDBScriptData */

SET @CGUID := 5450000; -- creatures
SET @OGUID := 5450000; -- gameobjects
SET @PGUID := 48400; -- pools

-- =========
-- CREATURES
-- =========

INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(@CGUID+31, 1, -78.2618, -233.397, -19.0738, 100, 0, 0),
(@CGUID+31, 2, -62.7014, -220.65, -18.573, 100, 0, 0),
(@CGUID+31, 3, -46.1952, -214.954, -18.5513, 100, 5000, 0),
(@CGUID+31, 4, -62.7014, -220.65, -18.573, 100, 0, 0),
(@CGUID+31, 5, -78.2618, -233.397, -19.0738, 100, 0, 0),
(@CGUID+31, 6, -90.451, -257.779, -11.7885, 100, 0, 0),
(@CGUID+31, 7, -90.472, -265.172, -9.5625, 100, 0, 0),
(@CGUID+31, 8, -91.9829, -255.49, -12.5682, 100, 0, 0),
(@CGUID+34, 1, -91.3785, -333.891, -7.7673, 100, 0, 0),
(@CGUID+34, 2, -89.9023, -288.181, -7.7673, 100, 0, 0),
(@CGUID+34, 3, -91.3785, -333.891, -7.7673, 100, 0, 0),
(@CGUID+34, 4, -92.2922, -377.931, -7.7673, 100, 0, 0),
(@CGUID+75, 1, 13.542, -115.249, -22.0705, 100, 0, 0),
(@CGUID+75, 2, -32.8072, -95.2656, -21.5533, 100, 0, 0),
(@CGUID+93, 1, -26.5788, -191.547, -20.4898, 0, 0, 0),
(@CGUID+93, 2, -14.5423, -189.544, -22.9543, 0, 0, 0),
(@CGUID+93, 3, -11.0754, -181.289, -23.6932, 0, 0, 0),
(@CGUID+93, 4, -14.5423, -189.544, -22.9543, 0, 0, 0),
(@CGUID+94, 1, 4.9713, -246.324, -22.8522, 0, 0, 0),
(@CGUID+94, 2, 6.2693, -251.796, -22.8475, 0, 0, 0),
(@CGUID+94, 3, 10.129, -253.121, -22.3659, 0, 0, 0),
(@CGUID+96, 1, 35.5512, -299.639, -10.2368, 100, 0, 0),
(@CGUID+96, 2, 30.4756, -287.165, -16.2907, 100, 0, 0),
(@CGUID+96, 3, 28.2474, -270.832, -22.7606, 100, 0, 0),
(@CGUID+96, 4, 30.4756, -287.165, -16.2907, 100, 0, 0),
(@CGUID+96, 5, 35.5512, -299.639, -10.2368, 100, 0, 0),
(@CGUID+96, 6, 50.7598, -307.041, -8.267, 100, 0, 0),
(@CGUID+98, 1, 27.5185, -255.129, -23.4133, 0, 0, 0),
(@CGUID+98, 2, 21.1476, -258.761, -22.2891, 0, 0, 0),
(@CGUID+98, 3, 19.7411, -264.349, -22.0319, 0, 0, 0),
(@CGUID+98, 4, 21.1476, -258.761, -22.2891, 0, 0, 0),
(@CGUID+99, 1, 56.0804, -133.796, -22.797, 0, 0, 0),
(@CGUID+99, 2, 56.4251, -125.991, -22.7169, 0, 0, 0),
(@CGUID+99, 3, 60.8447, -121.465, -22.6329, 0, 0, 0),
(@CGUID+99, 4, 56.4251, -125.991, -22.7169, 0, 0, 0),
(@CGUID+100, 1, -22.1362, -122.874, -21.9529, 0, 0, 0),
(@CGUID+100, 2, -13.5441, -124.135, -22.1869, 0, 0, 0),
(@CGUID+100, 3, -4.64047, -127.206, -20.804, 0, 0, 0),
(@CGUID+100, 4, -12.2011, -124.506, -21.9001, 0, 0, 0),
(@CGUID+101, 1, 15.2288, -150.811, -22.4946, 0, 0, 0),
(@CGUID+101, 2, 12.8143, -155.522, -22.4669, 0, 0, 0),
(@CGUID+101, 3, 15.2288, -150.811, -22.4946, 0, 0, 0),
(@CGUID+101, 4, 12.7464, -145.281, -22.2508, 0, 0, 0),
(@CGUID+102, 1, 46.5018, -231.685, -22.6482, 0, 0, 0),
(@CGUID+102, 2, 35.2595, -231.411, -22.6496, 0, 0, 0),
(@CGUID+102, 3, 22.9989, -237.749, -22.4104, 0, 0, 0),
(@CGUID+102, 4, 35.2595, -231.411, -22.6496, 0, 0, 0),
(@CGUID+103, 1, 6.90818, -199.481, -22.4455, 0, 0, 0),
(@CGUID+103, 2, 16.1021, -201.6, -22.4224, 0, 0, 0),
(@CGUID+103, 3, 18.9683, -212.379, -22.4753, 0, 0, 0),
(@CGUID+103, 4, 16.1021, -201.6, -22.4224, 0, 0, 0),
(@CGUID+114, 1, -234.942, -210.618, -8.09673, 0, 0, 0),
(@CGUID+114, 2, -235.147, -228.566, -8.12122, 0, 0, 0),
(@CGUID+114, 3, -232.391, -242.796, -7.89337, 0, 0, 0),
(@CGUID+114, 4, -235.147, -228.566, -8.12122, 0, 0, 0),
(@CGUID+114, 5, -234.942, -210.618, -8.09673, 0, 0, 0),
(@CGUID+114, 6, -234.891, -197.95, -7.90526, 0, 0, 0),
(@CGUID+117, 1, -208.792, -261.672, -8.07919, 0, 0, 0),
(@CGUID+117, 2, -219.235, -260.519, -7.988, 0, 0, 0),
(@CGUID+117, 3, -225.141, -256.872, -7.92741, 0, 0, 0),
(@CGUID+117, 4, -230.49, -249.174, -7.86375, 0, 0, 0),
(@CGUID+117, 5, -225.141, -256.872, -7.92741, 0, 0, 0),
(@CGUID+117, 6, -219.235, -260.519, -7.988, 0, 0, 0),
(@CGUID+117, 7, -208.792, -261.672, -8.07919, 0, 0, 0),
(@CGUID+117, 8, -202.299, -261.688, -7.97055, 0, 0, 0),
(@CGUID+157, 1, 22.672, -223.202, -22.536, 0.814135, 0, 0),
(@CGUID+157, 2, 39.0578, -210.222, -22.6133, 0.594223, 0, 0),
(@CGUID+157, 3, 22.1297, -224.366, -22.5328, 4.12852, 0, 0),
(@CGUID+157, 4, 8.45932, -247.386, -23.3366, 4.29345, 0, 0),
(@CGUID+158, 1, 27.0136, -145.039, -22.3968, 4.2748, 0, 0),
(@CGUID+158, 2, 21.4739, -159.21, -22.4082, 4.6832, 0, 0),
(@CGUID+158, 3, 26.7279, -177.709, -22.3997, 5.36256, 0, 0),
(@CGUID+158, 4, 21.8476, -158.618, -22.4052, 1.39002, 0, 0),
(@CGUID+158, 5, 30.8925, -138.629, -22.5491, 0.720856, 0, 0),
(@CGUID+158, 6, 57.7822, -114.87, -22.6239, 0.591266, 0, 0),
(@CGUID+158, 7, 38.5541, -130.114, -22.6439, 3.84281, 0, 0),
(@CGUID+159, 1, 13.0123, -180.845, -22.3747, 5.74062, 0, 0),
(@CGUID+159, 2, 17.6451, -189.086, -22.4312, 4.86726, 0, 0),
(@CGUID+159, 3, 18.475, -205.289, -22.3882, 4.74945, 0, 0),
(@CGUID+159, 4, 17.0985, -188.306, -22.4238, 1.99428, 0, 0),
(@CGUID+159, 5, 9.53988, -180.075, -22.4403, 2.69328, 0, 0),
(@CGUID+159, 6, -7.20501, -173.28, -23.2732, 2.88963, 0, 0),
(@CGUID+159, 7, 2.36385, -176.577, -22.3011, 5.97624, 0, 0);

-- INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(@CGUID+20, 0, 0, 1, 16, 173, 0, NULL), -- Coilfang Engineer
(@CGUID+21, 0, 0, 1, 16, 173, 0, NULL), -- Coilfang Engineer
(@CGUID+22, 0, 0, 1, 16, 173, 0, NULL), -- Coilfang Engineer
(@CGUID+23, 0, 0, 1, 16, 173, 0, NULL), -- Coilfang Engineer
(@CGUID+24, 0, 0, 1, 16, 173, 0, NULL), -- Coilfang Engineer
(@CGUID+25, 0, 0, 1, 16, 173, 0, NULL), -- Coilfang Engineer
(@CGUID+26, 0, 0, 1, 16, 173, 0, NULL), -- Coilfang Engineer
(@CGUID+27, 0, 0, 1, 16, 173, 0, NULL), -- Coilfang Engineer
(@CGUID+28, 0, 0, 1, 16, 173, 0, NULL), -- Coilfang Engineer
(@CGUID+29, 0, 0, 1, 16, 173, 0, NULL), -- Coilfang Engineer
(@CGUID+30, 0, 0, 1, 16, 173, 0, NULL), -- Coilfang Engineer
(@CGUID+45, 0, 0, 1, 16, 173, 0, NULL), -- Dreghood Slave
(@CGUID+46, 0, 0, 1, 16, 173, 0, NULL), -- Dreghood Slave
(@CGUID+47, 0, 0, 1, 16, 173, 0, NULL), -- Dreghood Slave
(@CGUID+49, 0, 0, 0, 16, 30, 0, NULL), -- Dreghood Slave
(@CGUID+50, 0, 0, 0, 16, 30, 0, NULL), -- Dreghood Slave
(@CGUID+51, 0, 0, 1, 16, 173, 0, NULL), -- Dreghood Slave
(@CGUID+52, 0, 0, 1, 16, 173, 0, NULL), -- Dreghood Slave
(@CGUID+53, 0, 0, 1, 16, 173, 0, NULL), -- Dreghood Slave
(@CGUID+54, 0, 0, 1, 16, 173, 0, NULL), -- Dreghood Slave
(@CGUID+55, 0, 0, 1, 16, 173, 0, NULL), -- Dreghood Slave
(@CGUID+56, 0, 0, 0, 16, 378, 0, NULL), -- Dreghood Slave
(@CGUID+57, 0, 0, 1, 16, 173, 0, NULL), -- Dreghood Slave
(@CGUID+58, 0, 0, 1, 16, 173, 0, NULL), -- Dreghood Slave
(@CGUID+59, 0, 0, 0, 16, 378, 0, NULL), -- Dreghood Slave
(@CGUID+121, 0, 0, 0, 16, 69, 0, NULL), -- Steamrigger Mechanic
(@CGUID+122, 0, 0, 0, 16, 69, 0, NULL), -- Steamrigger Mechanic
(@CGUID+123, 0, 0, 0, 16, 69, 0, NULL), -- Steamrigger Mechanic
(@CGUID+172, 0, 0, 1, 16, 173, 0, NULL); -- Coilfang Engineer

REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(17796, 0, 0, 1, 16, 0, 0, '18950'), -- Mekgineer Steamrigger
(17797, 0, 0, 1, 16, 0, 0, '18950'), -- Hydromancer Thespia
(21694, 0, 0, 0, 0, 0, 0, '18950'); -- Bog Overlord

INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(@CGUID+90, @CGUID+91, 1167), -- Coilfang Warrior -> Coilfang Warrior
(@CGUID+92, @CGUID+75, 1679), -- Coilfang Warrior -> Coilfang Siren
(@CGUID+26, @CGUID+100, 1167), -- Coilfang Engineer -> Coilfang Warrior
(@CGUID+27, @CGUID+100, 1167), -- Coilfang Engineer -> Coilfang Warrior
(@CGUID+25, @CGUID+103, 1167), -- Coilfang Engineer -> Coilfang Engineer
(@CGUID+30, @CGUID+103, 1167), -- Coilfang Engineer -> Coilfang Engineer
(@CGUID+173, @CGUID+103, 1167), -- Coilfang Engineer -> Coilfang Engineer
(@CGUID+20, @CGUID+93, 1167), -- Coilfang Engineer -> Coilfang Warrior
(@CGUID+105, @CGUID+93, 1167), -- Coilfang Oracle -> Coilfang Warrior
(@CGUID+172, @CGUID+93, 1167), -- Coilfang Engineer -> Coilfang Warrior
(@CGUID+24, @CGUID+101, 1167), -- Coilfang Engineer -> Coilfang Engineer
(@CGUID+84, @CGUID+101, 1167), -- Coilfang Siren -> Coilfang Engineer
(@CGUID+111, @CGUID+101, 1167), -- Coilfang Oracle -> Coilfang Engineer
(@CGUID+76, @CGUID+94, 1167), -- Coilfang Warrior -> Coilfang Oracle
(@CGUID+106, @CGUID+94, 1167), -- Coilfang Siren -> Coilfang Oracle
(@CGUID+174, @CGUID+94, 1167), -- Coilfang Siren -> Coilfang Oracle
(@CGUID+23, @CGUID+102, 1167), -- Coilfang Engineer -> Coilfang Warrior
(@CGUID+28, @CGUID+102, 1167), -- Coilfang Engineer -> Coilfang Warrior
(@CGUID+85, @CGUID+102, 1167), -- Coilfang Siren -> Coilfang Warrior
(@CGUID+77, @CGUID+96, 1679), -- Coilfang Siren -> Coilfang Warrior
(@CGUID+78, @CGUID+96, 1679), -- Coilfang Siren -> Coilfang Warrior
(@CGUID+86, @CGUID+98, 1167), -- Coilfang Siren -> Coilfang Siren
(@CGUID+87, @CGUID+98, 1167), -- Coilfang Warrior -> Coilfang Warrior
(@CGUID+175, @CGUID+98, 1167), -- Coilfang Warrior -> Coilfang Warrior
(@CGUID+29, @CGUID+99, 1167), -- Coilfang Engineer -> Coilfang Warrior
(@CGUID+113, @CGUID+99, 1167), -- Coilfang Oracle -> Coilfang Warrior
(@CGUID+88, @CGUID+112, 1167), -- Coilfang Siren -> Coilfang Oracle
(@CGUID+89, @CGUID+112, 1167), -- Coilfang Siren -> Coilfang Oracle
(@CGUID+160, @CGUID+157, 1679), -- Steam Surger -> Tidal Surger
(@CGUID+161, @CGUID+157, 1679), -- Steam Surger -> Tidal Surger
(@CGUID+162, @CGUID+157, 1679), -- Steam Surger -> Tidal Surger
(@CGUID+163, @CGUID+157, 1679), -- Steam Surger -> Tidal Surger
(@CGUID+165, @CGUID+158, 1679), -- Steam Surger -> Tidal Surger
(@CGUID+166, @CGUID+158, 1679), -- Steam Surger -> Tidal Surger
(@CGUID+167, @CGUID+158, 1679), -- Steam Surger -> Tidal Surger
(@CGUID+171, @CGUID+158, 1679), -- Steam Surger -> Tidal Surger
(@CGUID+164, @CGUID+159, 1679), -- Steam Surger -> Tidal Surger
(@CGUID+168, @CGUID+159, 1679), -- Steam Surger -> Tidal Surger
(@CGUID+169, @CGUID+159, 1679), -- Steam Surger -> Tidal Surger
(@CGUID+170, @CGUID+159, 1679), -- Steam Surger -> Tidal Surger
(@CGUID+60, @CGUID+61, 1167), -- Coilfang Myrmidon -> Coilfang Myrmidon
(@CGUID+40, @CGUID+97, 1679), -- Coilfang Sorceress -> Coilfang Warrior
(@CGUID+41, @CGUID+97, 1679), -- Coilfang Sorceress -> Coilfang Warrior
(@CGUID+95, @CGUID+31, 1679), -- Coilfang Warrior -> Coilfang Sorceress
(@CGUID+104, @CGUID+31, 1679), -- Coilfang Warrior -> Coilfang Sorceress
(@CGUID+66, @CGUID+34, 1679), -- Coilfang Myrmidon-> Coilfang Sorceress
(@CGUID+67, @CGUID+34, 1679), -- Coilfang Myrmidon-> Coilfang Sorceress
(@CGUID+35, @CGUID+81, 1167), -- Coilfang Sorceress -> Coilfang Siren
(@CGUID+80, @CGUID+81, 1167), -- Coilfang Siren -> Coilfang Siren
(@CGUID+68, @CGUID+81, 1167), -- Coilfang Myrmidon -> Coilfang Siren
(@CGUID+65, @CGUID+64, 1167), -- Coilfang Myrmidon -> Coilfang Myrmidon
(@CGUID+33, @CGUID+64, 1167), -- Coilfang Sorceress -> Coilfang Myrmidon
(@CGUID+79, @CGUID+64, 1167), -- Coilfang Siren -> Coilfang Myrmidon
(@CGUID+49, @CGUID+50, 1167), -- Dreghood Slave -> Dreghood Slave
(@CGUID+56, @CGUID+59, 1167), -- Dreghood Slave -> Dreghood Slave
(@CGUID+57, @CGUID+55, 1167), -- Dreghood Slave -> Dreghood Slave
(@CGUID+58, @CGUID+45, 1167), -- Dreghood Slave -> Dreghood Slave
(@CGUID+46, @CGUID+47, 1167), -- Dreghood Slave -> Dreghood Slave
(@CGUID+52, @CGUID+51, 1167), -- Dreghood Slave -> Dreghood Slave
(@CGUID+53, @CGUID+51, 1167), -- Dreghood Slave -> Dreghood Slave
(@CGUID+54, @CGUID+51, 1167), -- Dreghood Slave -> Dreghood Slave
(@CGUID+115, @CGUID+48, 1167), -- Coilfang Slavemaster -> Dreghood Slave
(@CGUID+116, @CGUID+48, 1167), -- Coilfang Slavemaster -> Dreghood Slave
(@CGUID+136, @CGUID+140, 1167), -- Coilfang Leper -> Coilfang Leper
(@CGUID+137, @CGUID+140, 1167), -- Coilfang Leper -> Coilfang Leper
(@CGUID+138, @CGUID+140, 1167), -- Coilfang Leper -> Coilfang Leper
(@CGUID+139, @CGUID+140, 1167), -- Coilfang Leper -> Coilfang Leper
(@CGUID+141, @CGUID+140, 1167), -- Coilfang Leper -> Coilfang Leper
(@CGUID+142, @CGUID+140, 1167), -- Coilfang Leper -> Coilfang Leper
(@CGUID+143, @CGUID+140, 1167), -- Coilfang Leper -> Coilfang Leper
(@CGUID+144, @CGUID+148, 1167), -- Coilfang Leper -> Coilfang Leper
(@CGUID+145, @CGUID+148, 1167), -- Coilfang Leper -> Coilfang Leper
(@CGUID+146, @CGUID+148, 1167), -- Coilfang Leper -> Coilfang Leper
(@CGUID+147, @CGUID+148, 1167), -- Coilfang Leper -> Coilfang Leper
(@CGUID+149, @CGUID+148, 1167), -- Coilfang Leper -> Coilfang Leper
(@CGUID+150, @CGUID+148, 1167), -- Coilfang Leper -> Coilfang Leper
(@CGUID+151, @CGUID+148, 1167), -- Coilfang Leper -> Coilfang Leper
(@CGUID+21, @CGUID+74, 1167), -- Coilfang Engineer -> Coilfang Myrmidon
(@CGUID+22, @CGUID+74, 1167), -- Coilfang Engineer -> Coilfang Myrmidon
(@CGUID+39, @CGUID+74, 1167), -- Coilfang Sorceress -> Coilfang Myrmidon
(@CGUID+36, @CGUID+69, 1167), -- Coilfang Engineer -> Coilfang Myrmidon
(@CGUID+107, @CGUID+69, 1167), -- Coilfang Engineer -> Coilfang Myrmidon
(@CGUID+176, @CGUID+69, 1167), -- Coilfang Sorceress -> Coilfang Myrmidon
(@CGUID+38, @CGUID+72, 1167), -- Coilfang Sorceress -> Coilfang Myrmidon
(@CGUID+82, @CGUID+72, 1167), -- Coilfang Siren -> Coilfang Myrmidon
(@CGUID+109, @CGUID+72, 1167), -- Coilfang Oracle -> Coilfang Myrmidon
(@CGUID+37, @CGUID+73, 1167), -- Coilfang Sorceress -> Coilfang Myrmidon
(@CGUID+83, @CGUID+73, 1167), -- Coilfang Siren -> Coilfang Myrmidon
(@CGUID+110, @CGUID+73, 1167), -- Coilfang Oracle -> Coilfang Myrmidon
(@CGUID+70, @CGUID+118, 1167), -- Coilfang Myrmidon -> Coilfang Sorceress
(@CGUID+71, @CGUID+118, 1167), -- Coilfang Myrmidon -> Coilfang Sorceress
(@CGUID+108, @CGUID+118, 1167), -- Coilfang Oracle -> Coilfang Sorceress
(@CGUID+121, @CGUID+42, 1167), -- Steamrigger Mechanic -> Mekgineer Steamrigger
(@CGUID+122, @CGUID+42, 1167), -- Steamrigger Mechanic -> Mekgineer Steamrigger
(@CGUID+123, @CGUID+42, 1167), -- Steamrigger Mechanic -> Mekgineer Steamrigger
(@CGUID+125, @CGUID+42, 1167), -- Steamrigger Mechanic -> Mekgineer Steamrigger
(@CGUID+63, @CGUID+62, 1167); -- Coilfang Myrmidon -> Coilfang Myrmidon

REPLACE INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(17917, 545, 17797, 1159, 0), -- Coilfang Water Elemental -> Hydromancer Thespia
(17954, 545, 17798, 1188, 0); -- Naga Distiller -> Warlord Kalithresh

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `DeathState`, `MovementType`) VALUES
(@CGUID+1, 1420, 545, 3, -262.525, -113.918, -8.67041, 3.05088, 7200, 7200, 0, 0, 0, 0), -- Toad
(@CGUID+2, 1420, 545, 3, -216.565, -197.439, -8.04946, 5.28343, 7200, 7200, 0, 0, 0, 0), -- Toad
(@CGUID+3, 2914, 545, 3, -70.6138, -229.981, -18.7681, 0.474586, 7200, 7200, 0, 0, 0, 0), -- Snake
(@CGUID+4, 6827, 545, 3, -26.5702, -215.418, -18.8375, 0.493595, 7200, 7200, 0, 0, 0, 0), -- Crab
(@CGUID+5, 6827, 545, 3, -325.333, -171.233, -7.75556, 6.25685, 7200, 7200, 0, 0, 0, 0), -- Crab
(@CGUID+6, 6827, 545, 3, -317.986, -117.752, -8.03972, 0.648916, 7200, 7200, 0, 0, 0, 0), -- Crab
(@CGUID+7, 6827, 545, 3, -151.492, -298.575, -7.46021, 5.46138, 7200, 7200, 0, 0, 0, 0), -- Crab
(@CGUID+8, 6827, 545, 3, -101.585, -372.526, -7.76734, 5.54416, 7200, 7200, 0, 0, 0, 0), -- Crab
(@CGUID+9, 6827, 545, 3, 26.4827, -287.977, -15.9617, 2.47385, 7200, 7200, 0, 0, 0, 0), -- Crab
(@CGUID+10, 6827, 545, 3, 12.6403, -137.365, -22.0557, 0.961134, 7200, 7200, 0, 0, 0, 0), -- Crab
(@CGUID+11, 6827, 545, 3, -46.577, -112.818, -21.5944, 1.26996, 7200, 7200, 0, 0, 0, 0), -- Crab
(@CGUID+12, 6827, 545, 3, 62.7675, -101.6, -22.622, 0.628443, 7200, 7200, 0, 0, 0, 0), -- Crab
(@CGUID+13, 6827, 545, 3, -9.51185, -196.141, -21.7782, 1.78868, 7200, 7200, 0, 0, 0, 0), -- Crab
(@CGUID+14, 13321, 545, 3, -53.6108, -347.554, -7.76734, 0.262889, 7200, 7200, 0, 0, 0, 0), -- Frog
(@CGUID+15, 13321, 545, 3, -104.389, -289.505, -7.76734, 2.22236, 7200, 7200, 0, 0, 0, 0), -- Frog
(@CGUID+16, 13321, 545, 3, -44.2573, -144.941, -21.3057, 3.25217, 7200, 7200, 0, 0, 0, 0), -- Frog
(@CGUID+17, 13321, 545, 3, 51.3485, -116.825, -22.6146, 5.68531, 7200, 7200, 0, 0, 0, 0), -- Frog
(@CGUID+18, 13321, 545, 3, 63.9801, -153.132, -20.449, 5.06374, 7200, 7200, 0, 0, 0, 0), -- Frog
(@CGUID+19, 13321, 545, 3, 44.0567, -206.39, -22.6313, 3.57371, 7200, 7200, 0, 0, 0, 0), -- Frog
(@CGUID+20, 17721, 545, 3, -13.8918, -179.746, -22.5681, 3.19395, 7200, 7200, 0, 0, 0, 0), -- Coilfang Engineer
(@CGUID+21, 17721, 545, 3, -53.704102, -390.522003, -7.768300, 3.645800, 7200, 7200, 0, 0, 0, 0), -- Coilfang Engineer		// probably missing movement
(@CGUID+22, 17721, 545, 3, -12.393900, -378.725006, -7.768500, 6.009900, 7200, 7200, 0, 0, 0, 0), -- Coilfang Engineer 		// probably missing movement
(@CGUID+23, 17721, 545, 3, 29.0264, -239.563, -22.6156, 5.2709, 7200, 7200, 0, 0, 0, 0), -- Coilfang Engineer
(@CGUID+24, 17721, 545, 3, 8.40569, -147.05, -21.8826, 3.87463, 7200, 7200, 0, 0, 0, 0), -- Coilfang Engineer
(@CGUID+25, 17721, 545, 3, 14.2811, -213.334, -22.3567, 3.4383, 7200, 7200, 0, 0, 0, 0), -- Coilfang Engineer
(@CGUID+26, 17721, 545, 3, -5.29896, -131.391, -21.1734, 4.81711, 7200, 7200, 0, 0, 0, 0), -- Coilfang Engineer
(@CGUID+27, 17721, 545, 3, -21.9336, -126.73, -21.7157, 4.93928, 7200, 7200, 0, 0, 0, 0), -- Coilfang Engineer
(@CGUID+28, 17721, 545, 3, 45.6033, -236.226, -22.5299, 4.90438, 7200, 7200, 0, 0, 0, 0), -- Coilfang Engineer
(@CGUID+29, 17721, 545, 3, 59.8831, -131.581, -22.6599, 5.8294, 7200, 7200, 0, 0, 0, 0), -- Coilfang Engineer
(@CGUID+30, 17721, 545, 3, 8.37782, -204.823, -22.3658, 4.27606, 7200, 7200, 0, 0, 0, 0), -- Coilfang Engineer
(@CGUID+31, 17722, 545, 3, -88.2888, -256.126, -12.1919, 1.29613, 7200, 7200, 0, 0, 0, 2), -- Coilfang Sorceress
(@CGUID+32, 17378, 545, 3, -301.149719, -143.960693, -8.230363, 5.819746, 86400, 86400, 10, 0, 0, 1), -- Swamp Gas
(@CGUID+33, 17722, 545, 3, -110.899, -330.512, -7.6599, 6.16101, 7200, 7200, 0, 0, 0, 0), -- Coilfang Sorceress
(@CGUID+34, 17722, 545, 3, -91.611298, -372.019012, -7.767300, 1.623500, 7200, 7200, 0, 0, 0, 2), -- Coilfang Sorceress
(@CGUID+35, 17722, 545, 3, -60.7232, -318.851, -7.67224, 2.80998, 7200, 7200, 0, 0, 0, 0), -- Coilfang Sorceress
(@CGUID+36, 17722, 545, 3, -102.955, -409.951, -7.66501, 1.50928, 7200, 7200, 0, 0, 0, 0), -- Coilfang Sorceress
(@CGUID+37, 17722, 545, 3, -106.786, -505.77, 8.31102, 1.3439, 7200, 7200, 0, 0, 0, 0), -- Coilfang Sorceress
(@CGUID+38, 17722, 545, 3, -82.8905, -510.07, 8.35653, 1.88496, 7200, 7200, 0, 0, 0, 0), -- Coilfang Sorceress
(@CGUID+39, 17722, 545, 3, -45.0691, -361.249, -7.38681, 2.40855, 7200, 7200, 0, 0, 0, 0), -- Coilfang Sorceress
(@CGUID+40, 17722, 545, 3, -85.8321, -276.48, -7.67224, 1.5708, 7200, 7200, 0, 0, 0, 0), -- Coilfang Sorceress
(@CGUID+41, 17722, 545, 3, -94.5917, -277.669, -7.67224, 1.39626, 7200, 7200, 0, 0, 0, 0), -- Coilfang Sorceress
(@CGUID+42, 17796, 545, 3, -330.083, -121.506, -7.98512, 5.06145, 86400, 86400, 0, 0, 0, 0), -- Mekgineer Steamrigger
(@CGUID+43, 17797, 545, 3, 88.3971, -316.111, -7.78743, 3.03687, 86400, 86400, 0, 0, 0, 0), -- Hydromancer Thespia
(@CGUID+44, 17798, 545, 3, -95.4188, -552.031, 8.27027, 1.44862, 86400, 86400, 0, 0, 0, 0), -- Warlord Kalithresh
(@CGUID+45, 17799, 545, 3, -218.676, -239.394, -7.91658, 0.523599, 7200, 7200, 0, 0, 0, 0), -- Dreghood Slave
(@CGUID+46, 17799, 545, 3, -219.655, -234.762, -7.94058, 1.97222, 7200, 7200, 0, 0, 0, 0), -- Dreghood Slave
(@CGUID+47, 17799, 545, 3, -223.27, -232.322, -7.94317, 0.191986, 7200, 7200, 0, 0, 0, 0), -- Dreghood Slave
(@CGUID+48, 17799, 545, 3, -235.776, -189.595, -6.33245, 3.01942, 7200, 7200, 0, 0, 0, 0), -- Dreghood Slave
(@CGUID+49, 17799, 545, 3, -209.454, -266.228, -8.00466, 5.63741, 7200, 7200, 0, 0, 0, 0), -- Dreghood Slave
(@CGUID+50, 17799, 545, 3, -206.161, -268.93, -7.9983, 2.60054, 7200, 7200, 0, 0, 0, 0), -- Dreghood Slave
(@CGUID+51, 17799, 545, 3, -251.138, -230.641, -7.94669, 2.86234, 7200, 7200, 0, 0, 0, 0), -- Dreghood Slave
(@CGUID+52, 17799, 545, 3, -253.681, -233.512, -7.88687, 1.71042, 7200, 7200, 0, 0, 0, 0), -- Dreghood Slave
(@CGUID+53, 17799, 545, 3, -255.897, -235.144, -7.85494, 2.6529, 7200, 7200, 0, 0, 0, 0), -- Dreghood Slave
(@CGUID+54, 17799, 545, 3, -256.31, -238.535, -7.77721, 2.1293, 7200, 7200, 0, 0, 0, 0), -- Dreghood Slave
(@CGUID+55, 17799, 545, 3, -240.237, -267.888, -7.68922, 5.0091, 7200, 7200, 0, 0, 0, 0), -- Dreghood Slave
(@CGUID+56, 17799, 545, 3, -236.979, -263.096, -7.71983, 5.67232, 7200, 7200, 0, 0, 0, 0), -- Dreghood Slave
(@CGUID+57, 17799, 545, 3, -235.532, -268.635, -7.70069, 3.59538, 7200, 7200, 0, 0, 0, 0), -- Dreghood Slave
(@CGUID+58, 17799, 545, 3, -213.91, -241.29, -7.94406, 1.98968, 7200, 7200, 0, 0, 0, 0), -- Dreghood Slave
(@CGUID+59, 17799, 545, 3, -233.483, -264.914, -7.73545, 2.82743, 7200, 7200, 0, 0, 0, 0), -- Dreghood Slave
(@CGUID+60, 17800, 545, 3, -40.8796, -207.862, -18.2856, 0.15708, 7200, 7200, 0, 0, 0, 0), -- Coilfang Myrmidon
(@CGUID+61, 17800, 545, 3, -36.6156, -216.919, -18.2239, 0.907571, 7200, 7200, 0, 0, 0, 0), -- Coilfang Myrmidon
(@CGUID+62, 17800, 545, 3, -171.739, -285.048, -7.67224, 5.07891, 7200, 7200, 0, 0, 0, 0), -- Coilfang Myrmidon
(@CGUID+63, 17800, 545, 3, -158.789, -283.035, -7.67224, 4.76475, 7200, 7200, 0, 0, 0, 0), -- Coilfang Myrmidon
(@CGUID+64, 17800, 545, 3, -104.194, -325.127, -7.63158, 6.17846, 7200, 7200, 0, 0, 0, 0), -- Coilfang Myrmidon
(@CGUID+65, 17800, 545, 3, -102.674, -342.241, -7.29451, 0.017453, 7200, 7200, 0, 0, 0, 0), -- Coilfang Myrmidon
(@CGUID+66, 17800, 545, 3, -97.552284, -371.982819, -7.767300, 1.588200, 7200, 7200, 0, 0, 0, 0), -- Coilfang Myrmidon
(@CGUID+67, 17800, 545, 3, -85.647491, -370.234100, -7.767300, 1.588200, 7200, 7200, 0, 0, 0, 0), -- Coilfang Myrmidon
(@CGUID+68, 17800, 545, 3, -52.6073, -324.759, -7.67224, 5.72468, 7200, 7200, 0, 0, 0, 0), -- Coilfang Myrmidon
(@CGUID+69, 17800, 545, 3, -94.9473, -410.061, -7.62566, 1.51825, 7200, 7200, 0, 0, 0, 0), -- Coilfang Myrmidon
(@CGUID+70, 17800, 545, 3, -92.7277, -465.559, 7.94653, 1.53589, 7200, 7200, 0, 0, 0, 0), -- Coilfang Myrmidon
(@CGUID+71, 17800, 545, 3, -98.2649, -465.493, 7.94481, 1.48353, 7200, 7200, 0, 0, 0, 0), -- Coilfang Myrmidon
(@CGUID+72, 17800, 545, 3, -82.7854, -499.969, 8.34669, 2.07694, 7200, 7200, 0, 0, 0, 0), -- Coilfang Myrmidon
(@CGUID+73, 17800, 545, 3, -106.787, -497.928, 8.27913, 1.09956, 7200, 7200, 0, 0, 0, 0), -- Coilfang Myrmidon
(@CGUID+74, 17800, 545, 3, -57.5115, -376.588, -7.28116, 2.46091, 7200, 7200, 0, 0, 0, 0), -- Coilfang Myrmidon
(@CGUID+75, 17801, 545, 3, -4.40099, -96.1165, -21.9227, 6.16785, 7200, 7200, 0, 0, 0, 2), -- Coilfang Siren
(@CGUID+76, 17801, 545, 3, 1.51287, -250.445, -21.5411, 6.14356, 7200, 7200, 0, 0, 0, 0), -- Coilfang Siren
(@CGUID+77, 17801, 545, 3, 56.8631, -310.419, -7.83755, 3.36815, 7200, 7200, 0, 0, 0, 0), -- Coilfang Siren
(@CGUID+78, 17801, 545, 3, 58.9988, -310.076, -7.84055, 1.5261, 7200, 7200, 0, 0, 0, 0), -- Coilfang Siren
(@CGUID+79, 17801, 545, 3, -109.493, -336.353, -7.54947, 5.91667, 7200, 7200, 0, 0, 0, 0), -- Coilfang Siren
(@CGUID+80, 17801, 545, 3, -60.4984, -326.608, -7.67224, 3.08923, 7200, 7200, 0, 0, 0, 0), -- Coilfang Siren
(@CGUID+81, 17801, 545, 3, -53.8197, -334.368, -6.27059, 3.22886, 7200, 7200, 0, 0, 0, 0), -- Coilfang Siren
(@CGUID+82, 17801, 545, 3, -77.0849, -503.804, 8.39567, 2.04204, 7200, 7200, 0, 0, 0, 0), -- Coilfang Siren
(@CGUID+83, 17801, 545, 3, -113.321, -494.133, 8.28791, 0.715585, 7200, 7200, 0, 0, 0, 0), -- Coilfang Siren
(@CGUID+84, 17801, 545, 3, 9.52063, -150.597, -22.0447, 0.191986, 7200, 7200, 0, 0, 0, 0), -- Coilfang Siren
(@CGUID+85, 17801, 545, 3, 37.1922, -236.629, -22.6735, 2.73729, 7200, 7200, 0, 0, 0, 0), -- Coilfang Siren
(@CGUID+86, 17801, 545, 3, 27.0156, -260.473, -22.8049, 2.44346, 7200, 7200, 0, 0, 0, 0), -- Coilfang Siren
(@CGUID+87, 17801, 545, 3, 29.0596, -256.632, -23.2494, 3.38594, 7200, 7200, 0, 0, 0, 0), -- Coilfang Siren
(@CGUID+88, 17801, 545, 3, 29.8738, -165.19, -22.3645, 1.32645, 7200, 7200, 0, 0, 0, 0), -- Coilfang Siren
(@CGUID+89, 17801, 545, 3, 35.8755, -157.314, -22.5641, 3.50811, 7200, 7200, 0, 0, 0, 0), -- Coilfang Siren
(@CGUID+90, 17802, 545, 3, -6.48203, -63.7094, -19.8397, 1.29154, 7200, 7200, 0, 0, 0, 0), -- Coilfang Warrior
(@CGUID+91, 17802, 545, 3, 2.06713, -64.1362, -19.8397, 2.05949, 7200, 7200, 0, 0, 0, 0), -- Coilfang Warrior
(@CGUID+92, 17802, 545, 3, -6.110524, -98.653229, -22.213076, 2.548590, 7200, 7200, 0, 0, 0, 0), -- Coilfang Warrior
(@CGUID+93, 17802, 545, 3, -26.5788, -191.547, -20.4898, 0.164899, 7200, 7200, 0, 0, 0, 2), -- Coilfang Warrior
(@CGUID+94, 17802, 545, 3, 4.9713, -246.324, -22.8522, 1.80373, 7200, 7200, 0, 0, 0, 2), -- Coilfang Warrior
(@CGUID+95, 17802, 545, 3, -91.9829, -255.49, -12.5306, 1.40694, 7200, 7200, 0, 0, 0, 0), -- Coilfang Warrior
(@CGUID+96, 17802, 545, 3, 56.2594, -308.776, -7.85218, 2.13917, 7200, 7200, 0, 0, 0, 2), -- Coilfang Warrior
(@CGUID+97, 17802, 545, 3, -89.8517, -279.44, -7.67224, 1.62316, 7200, 7200, 0, 0, 0, 0), -- Coilfang Warrior
(@CGUID+98, 17802, 545, 3, 27.5185, -255.129, -23.4133, 4.31844, 7200, 7200, 0, 0, 0, 2), -- Coilfang Warrior
(@CGUID+99, 17802, 545, 3, 56.0804, -133.796, -22.797, 0.797309, 7200, 7200, 0, 0, 0, 2), -- Coilfang Warrior
(@CGUID+100, 17802, 545, 3, -22.1362, -122.874, -21.9529, 2.78933, 7200, 7200, 0, 0, 0, 2), -- Coilfang Warrior
(@CGUID+101, 17802, 545, 3, 15.2288, -150.811, -22.4946, 1.32075, 7200, 7200, 0, 0, 0, 2), -- Coilfang Warrior
(@CGUID+102, 17802, 545, 3, 46.5018, -231.685, -22.6482, 0.548994, 7200, 7200, 0, 0, 0, 2), -- Coilfang Warrior
(@CGUID+103, 17802, 545, 3, 6.90818, -199.481, -22.4455, 1.81985, 7200, 7200, 0, 0, 0, 2), -- Coilfang Warrior
(@CGUID+104, 17802, 545, 3, -82.443901, -255.903000, -11.995400, 1.560000, 7200, 7200, 0, 0, 0, 0), -- Coilfang Warrior
(@CGUID+105, 17803, 545, 3, -18.0986, -184.997, -21.9355, 2.30574, 7200, 7200, 0, 0, 0, 0), -- Coilfang Oracle
(@CGUID+106, 17803, 545, 3, 2.57794, -255.504, -21.6858, 0.785398, 7200, 7200, 0, 0, 0, 0), -- Coilfang Oracle
(@CGUID+107, 17803, 545, 3, -90.9528, -410.272, -7.55273, 1.50851, 7200, 7200, 0, 0, 0, 0), -- Coilfang Oracle
(@CGUID+108, 17803, 545, 3, -102.606, -472.039, 8.11505, 1.5708, 7200, 7200, 0, 0, 0, 0), -- Coilfang Oracle
(@CGUID+109, 17803, 545, 3, -75.2059, -496.923, 8.35148, 2.32129, 7200, 7200, 0, 0, 0, 0), -- Coilfang Oracle
(@CGUID+110, 17803, 545, 3, -114.302, -503.693, 8.30481, 0.855211, 7200, 7200, 0, 0, 0, 0), -- Coilfang Oracle
(@CGUID+111, 17803, 545, 3, 10.7306, -154.933, -22.2425, 6.10865, 7200, 7200, 0, 0, 0, 0), -- Coilfang Oracle
(@CGUID+112, 17803, 545, 3, 33.4427, -161.195, -22.4778, 2.33874, 7200, 7200, 0, 0, 0, 0), -- Coilfang Oracle
(@CGUID+113, 17803, 545, 3, 60.4544, -126.52, -22.7117, 1.28386, 7200, 7200, 0, 0, 0, 0), -- Coilfang Oracle
(@CGUID+114, 17805, 545, 3, -234.942, -210.618, -8.09673, 1.76213, 7200, 7200, 0, 0, 0, 2), -- Coilfang Slavemaster
(@CGUID+115, 17805, 545, 3, -238.007, -193.135, -6.90072, 1.09956, 7200, 7200, 0, 0, 0, 0), -- Coilfang Slavemaster
(@CGUID+116, 17805, 545, 3, -232.861, -192.246, -6.54962, 2.46091, 7200, 7200, 0, 0, 0, 0), -- Coilfang Slavemaster
(@CGUID+117, 17805, 545, 3, -208.792, -261.672, -8.07919, 3.0316, 7200, 7200, 0, 0, 0, 2), -- Coilfang Slavemaster
(@CGUID+118, 17722, 545, 3, -87.5288, -471.939, 8.0284, 1.51825, 7200, 7200, 0, 0, 0, 0), -- Coilfang Sorceress
(@CGUID+119, 17917, 545, 3, 90.0419, -326.115, -7.78746, 3.00197, 7200, 7200, 0, 0, 0, 0), -- Coilfang Water Elemental
(@CGUID+120, 17917, 545, 3, 91.3224, -306.508, -7.78735, 3.21141, 7200, 7200, 0, 0, 0, 0), -- Coilfang Water Elemental
(@CGUID+121, 17951, 545, 3, -335.545, -122.596, -7.93522, 0.506145, 7200, 7200, 0, 0, 0, 0), -- Steamrigger Mechanic
(@CGUID+122, 17951, 545, 3, -325.385, -120.199, -7.97289, 3.83972, 7200, 7200, 0, 0, 0, 0), -- Steamrigger Mechanic
(@CGUID+123, 17951, 545, 3, -328.561, -126.069, -8.01361, 1.8675, 7200, 7200, 0, 0, 0, 0), -- Steamrigger Mechanic
(@CGUID+124, 17951, 545, 3, -348.497, -161.719, -7.66667, 3.32255, 7200, 7200, 0, 0, 0, 0), -- Steamrigger Mechanic
(@CGUID+125, 17951, 545, 3, -331.162, -112.213, -7.66667, 3.32255, 7200, 7200, 0, 0, 0, 0), -- Steamrigger Mechanic
(@CGUID+126, 17954, 545, 3, -106.371, -459.976, 7.80131, 0.296706, 7200, 7200, 0, 0, 0, 0), -- Naga Distiller
(@CGUID+127, 17954, 545, 3, -83.6271, -461.426, 7.83904, 5.91667, 7200, 7200, 0, 0, 0, 0), -- Naga Distiller
(@CGUID+128, 17954, 545, 3, -112.472, -486.254, 8.27487, 5.28835, 7200, 7200, 0, 0, 0, 0), -- Naga Distiller
(@CGUID+129, 17954, 545, 3, -77.5747, -488.595, 8.29564, 0.069813, 7200, 7200, 0, 0, 0, 0), -- Naga Distiller
(@CGUID+130, 17954, 545, 3, -75.9159, -522.248, 8.32067, 5.65487, 7200, 7200, 0, 0, 0, 0), -- Naga Distiller
(@CGUID+131, 17954, 545, 3, -114.718, -519.863, 8.28457, 4.36332, 7200, 7200, 0, 0, 0, 0), -- Naga Distiller
(@CGUID+132, 17954, 545, 3, -107.059, -543.903, 8.27027, 5.89921, 7200, 7200, 0, 0, 0, 0), -- Naga Distiller
(@CGUID+133, 17954, 545, 3, -80.7551, -550.946, 8.27027, 3.80482, 7200, 7200, 0, 0, 0, 0), -- Naga Distiller
(@CGUID+134, 17954, 545, 3, -96.2409, -571.375, 8.27027, 2.3911, 7200, 7200, 0, 0, 0, 0), -- Naga Distiller
(@CGUID+135, 20926, 545, 3, -95.6283, -434.863, 17.8886, 0.959931, 7200, 7200, 0, 0, 0, 0), -- Invisible Stalker Coilfang Doors
(@CGUID+136, 21338, 545, 3, -286.844, -157.181, -7.36798, 3.23769, 7200, 7200, 5, 0, 0, 1), -- Coilfang Leper
(@CGUID+137, 21338, 545, 3, -293.385, -155.586, -7.75556, 0.85847, 7200, 7200, 5, 0, 0, 1), -- Coilfang Leper
(@CGUID+138, 21338, 545, 3, -290.275, -145.399, -7.86179, 0.0669908, 7200, 7200, 5, 0, 0, 1), -- Coilfang Leper
(@CGUID+139, 21338, 545, 3, -288.253, -149.218, -7.78847, 2.81878, 7200, 7200, 5, 0, 0, 1), -- Coilfang Leper
(@CGUID+140, 21338, 545, 3, -297.178, -152.096, -8.02476, 4.35982, 7200, 7200, 5, 0, 0, 1), -- Coilfang Leper
(@CGUID+141, 21338, 545, 3, -304.555, -154.87, -8.0049, 4.27636, 7200, 7200, 5, 0, 0, 1), -- Coilfang Leper
(@CGUID+142, 21338, 545, 3, -297.841, -158.345, -7.75556, 1.70389, 7200, 7200, 5, 0, 0, 1), -- Coilfang Leper
(@CGUID+143, 21338, 545, 3, -299.613, -144.559, -8.09161, 5.90719, 7200, 7200, 5, 0, 0, 1), -- Coilfang Leper
(@CGUID+144, 21338, 545, 3, -299.119, -128.542, -8.05811, 5.42465, 7200, 7200, 5, 0, 0, 1), -- Coilfang Leper
(@CGUID+145, 21338, 545, 3, -295.569, -122.412, -7.83299, 1.34031, 7200, 7200, 5, 0, 0, 1), -- Coilfang Leper
(@CGUID+146, 21338, 545, 3, -308.078, -120.606, -8.07807, 0.847794, 7200, 7200, 5, 0, 0, 1), -- Coilfang Leper
(@CGUID+147, 21338, 545, 3, -305.368, -124.744, -8.19377, 1.29576, 7200, 7200, 5, 0, 0, 1), -- Coilfang Leper
(@CGUID+148, 21338, 545, 3, -298.253, -116.181, -7.89239, 4.48321, 7200, 7200, 5, 0, 0, 1), -- Coilfang Leper
(@CGUID+149, 21338, 545, 3, -306.886, -105.965, -7.75556, 5.52654, 7200, 7200, 5, 0, 0, 1), -- Coilfang Leper
(@CGUID+150, 21338, 545, 3, -303.585, -117.138, -7.94818, 4.48116, 7200, 7200, 5, 0, 0, 1), -- Coilfang Leper
(@CGUID+151, 21338, 545, 3, -290.203, -117.944, -7.75556, 5.05645, 7200, 7200, 5, 0, 0, 1), -- Coilfang Leper
(@CGUID+152, 21694, 545, 3, -43.7803, -110.442, -21.9972, 4.45116, 7200, 7200, 10, 0, 0, 1), -- Bog Overlord
(@CGUID+153, 21694, 545, 3, -60.9828, -147.004, -19.9231, 0.985508, 7200, 7200, 10, 0, 0, 1), -- Bog Overlord
(@CGUID+154, 21694, 545, 3, 56.3718, -98.6007, -22.6198, 2.4217, 7200, 7200, 10, 0, 0, 1), -- Bog Overlord
(@CGUID+155, 21694, 545, 3, 55.3701, -200.278, -22.6254, 1.25781, 7200, 7200, 10, 0, 0, 1), -- Bog Overlord
(@CGUID+156, 21694, 545, 3, 70.3268, -149.641, -19.411, 4.45116, 7200, 7200, 10, 0, 0, 1), -- Bog Overlord
(@CGUID+157, 21695, 545, 3, 8.45414, -247.872, -23.3512, 4.11733, 7200, 7200, 0, 0, 0, 2), -- Tidal Surger
(@CGUID+158, 21695, 545, 3, 39.1165, -129.825, -22.6993, 3.05338, 7200, 7200, 0, 0, 0, 2), -- Tidal Surger
(@CGUID+159, 21695, 545, 3, 1.50336, -176.132, -22.3626, 6.0399, 7200, 7200, 0, 0, 0, 2), -- Tidal Surger
(@CGUID+160, 21696, 545, 3, 6.8201, -250.286, -23.0829, 4.11733, 7200, 7200, 0, 0, 0, 0), -- Steam Surger
(@CGUID+161, 21696, 545, 3, 10.9861, -249.484, -22.8298, 4.11924, 7200, 7200, 0, 0, 0, 0), -- Steam Surger
(@CGUID+162, 21696, 545, 3, 10.1835, -245.318, -23.3071, 4.11733, 7200, 7200, 0, 0, 0, 0), -- Steam Surger
(@CGUID+163, 21696, 545, 3, 6.01744, -246.12, -23.2013, 4.11732, 7200, 7200, 0, 0, 0, 0), -- Steam Surger
(@CGUID+164, 21696, 545, 3, -0.890754, -175.418, -22.7894, 6.043, 7200, 7200, 0, 0, 0, 0), -- Steam Surger
(@CGUID+165, 21696, 545, 3, 38.8399, -126.107, -22.5762, 3.19601, 7200, 7200, 0, 0, 0, 0), -- Steam Surger
(@CGUID+166, 21696, 545, 3, 38.7364, -133.644, -22.7193, 3.16067, 7200, 7200, 0, 0, 0, 0), -- Steam Surger
(@CGUID+167, 21696, 545, 3, 42.1832, -130.057, -22.7953, 3.06617, 7200, 7200, 0, 0, 0, 0), -- Steam Surger
(@CGUID+168, 21696, 545, 3, 2.8464, -176.441, -22.2902, 6.01672, 7200, 7200, 0, 0, 0, 0), -- Steam Surger
(@CGUID+169, 21696, 545, 3, -0.120366, -177.978, -22.8696, 6.17575, 7200, 7200, 0, 0, 0, 0), -- Steam Surger
(@CGUID+170, 21696, 545, 3, 0.480689, -173.217, -22.1396, 6.06815, 7200, 7200, 0, 0, 0, 0), -- Steam Surger
(@CGUID+171, 21696, 545, 3, 38.0048, -130.149, -22.6247, 3.12253, 7200, 7200, 0, 0, 0, 0), -- Steam Surger
(@CGUID+172, 17721, 545, 3, -27.3369, -186.119, -20.7097, 1.2739, 7200, 7200, 0, 0, 0, 0), -- Coilfang Engineer
(@CGUID+173, 17803, 545, 3, 13.2024, -207.325, -22.4309, 3.7751, 7200, 7200, 0, 0, 0, 0), -- Coilfang Oracle
(@CGUID+174, 17801, 545, 3, 6.76, -258.085, -21.704, 1.7255, 7200, 7200, 0, 0, 0, 0), -- Coilfang Siren
(@CGUID+175, 17803, 545, 3, 25.2177, -263.697, -22.4006, 2.44346, 7200, 7200, 0, 0, 0, 0), -- Coilfang Oracle
(@CGUID+176, 17800, 545, 3, -99.159, -409.866, -7.62566, 1.51825, 7200, 7200, 0, 0, 0, 0), -- Coilfang Myrmidon
(@CGUID+177, 17378, 545, 3, -248.287613, -87.243134, -7.755547, 4.457122, 86400, 86400, 10, 0, 0, 1); -- Swamp Gas

-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID+1, 181270, 545, 3, -64.5367, -152.412, -19.9231, 0, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Felweed
(@OGUID+2, 181270, 545, 3, -205.8169, -103.2433, -7.755558, 3.490667, 0, 0, -0.984807, 0.1736523, 86400, 86400, 100, 1), -- Felweed
(@OGUID+3, 181275, 545, 3, 58.56668, -204.1229, -22.61328, 3.368496, 0, 0, -0.9935713, 0.1132084, 86400, 86400, 100, 1), -- Ragveil
(@OGUID+4, 181275, 545, 3, -310.133, -206.103, -7.75550, 1.78283, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Ragveil
(@OGUID+5, 181276, 545, 3, 58.5667, -204.123, -22.6133, 0, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Flame Cap
(@OGUID+6, 181276, 545, 3, -310.133, -206.103, -7.75550, 1.78283, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Flame Cap
(@OGUID+7, 181278, 545, 3, -313.275, -107.529, -7.75556, 0, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Ancient Lichen
(@OGUID+8, 181278, 545, 3, -220.6068, -186.4473, -5.346097, 4.921829, 0, 0, -0.6293201, 0.7771462, 86400, 86400, 100, 1), -- Ancient Lichen
(@OGUID+9, 181278, 545, 3, -131.4314, -328.5607, -67.64109, 4.206246, 0, 0, -0.8616285, 0.5075394, 86400, 86400, 100, 1), -- Ancient Lichen
(@OGUID+10, 181278, 545, 3, 6.921429, -271.4437, -18.83184, 1.727875, 0, 0, 0.7604055, 0.6494485, 86400, 86400, 100, 1), -- Ancient Lichen
(@OGUID+11, 181278, 545, 3, 68.2781, -149.73, -19.6815, 0.959931, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Ancient Lichen
(@OGUID+12, 181278, 545, 3, -239.538, -182.361, -5.6323, 4.5277, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Ancient Lichen
(@OGUID+13, 181278, 545, 3, -245.752, -163.171, -2.66641, -0.733038, 0, 0, 0, 1, 86400, 86400, 100, 1), -- Ancient Lichen
(@OGUID+14, 181278, 545, 3, -49.1663, -143.161, -20.2431, 1.93731, 0, 0, 0, 1, 86400, 86400, 100, 1), -- Ancient Lichen
(@OGUID+15, 181278, 545, 3, -314.814, -184.551, -7.7555, 2.0499, 0, 0, 0, 1, 86400, 86400, 100, 1), -- Ancient Lichen
(@OGUID+16, 181278, 545, 3, -349.615, -136.071, -7.7555, 6.0004, 0, 0, 0.861629, -0.507538, 86400, 86400, 100, 1), -- Ancient Lichen
(@OGUID+17, 181555, 545, 3, 44.922, -270.041, -21.8391, 0, 0, 0, 0, 0, 86400, 86400, 255, 1), -- Fel Iron Deposit
(@OGUID+18, 181555, 545, 3, -363.7592, -135.723, -7.755558, 3.68265, 0, 0, -0.9636297, 0.267241, 86400, 86400, 255, 1), -- Fel Iron Deposit
(@OGUID+19, 181555, 545, 3, -339.412, -196.926, -5.72056, 2.54818, 0, 0, 0, 1, 86400, 86400, 255, 1), -- Fel Iron Deposit
(@OGUID+20, 181555, 545, 3, 86.1048, -183.557, -22.0548, 0.95993, 0, 0, 0, 1, 86400, 86400, 255, 1), -- Fel Iron Deposit
(@OGUID+21, 181555, 545, 3, -200.365, -120.999, -5.93056, 6.23211, 0, 0, 0, 1, 86400, 86400, 255, 1), -- Fel Iron Deposit
(@OGUID+22, 181555, 545, 3, 6.10486, -229.5263, -22.17201, 5.340709, 0, 0, -0.45399, 0.8910068, 86400, 86400, 255, 1), -- Fel Iron Deposit
(@OGUID+23, 181556, 545, 3, -287.925, -192.021, -7.75556, 0, 0, 0, 0, 0, 86400, 86400, 255, 1), -- Adamantite Deposit
(@OGUID+24, 181556, 545, 3, 84.6738, -148.302, -21.0814, 0, 0, 0, 0, 0, 86400, 86400, 255, 1), -- Adamantite Deposit
(@OGUID+25, 181556, 545, 3, 4.75688, -278.016, -8.36647, -0.401426, 0, 0, 0, 0, 86400, 86400, 255, 1), -- Adamantite Deposit
(@OGUID+26, 181556, 545, 3, -53.29605, -175.5877, -20.02813, 2.617989, 0, 0, 0.9659252, 0.2588213, 86400, 86400, 255, 1), -- Adamantite Deposit
(@OGUID+27, 181556, 545, 3, -388.828, -157.54, -7.75556, -0.95993, 0, 0, 0, 1, 86400, 86400, 255, 1), -- Adamantite Deposit
(@OGUID+28, 181556, 545, 3, -364.5042, -85.856, -7.755558, 0.9250238, 0, 0, 0.4461975, 0.8949345, 86400, 86400, 255, 1), -- Adamantite Deposit
(@OGUID+29, 181569, 545, 3, -262.843262, -188.583099, -7.792260, 4.492467, 0, 0, 0, 1, 86400, 86400, 255, 1), -- Rich Adamantite Deposit
(@OGUID+30, 182197, 545, 3, 19.60388, -304.9137, -66.1715, 6.108654, 0, 0, -0.08715534, 0.9961947, 86400, 86400, 100, 1), -- Arcane Container
(@OGUID+31, 181556, 545, 3, -262.843262, -188.583099, -7.792260, 4.492467, 0, 0, 0, 1, 86400, 86400, 255, 1), -- Adamantite Deposit
(@OGUID+32, 181569, 545, 3, 4.75688, -278.016, -8.36647, -0.401426, 0, 0, 0, 0, 86400, 86400, 255, 1), -- Rich Adamantite Deposit
(@OGUID+33, 181569, 545, 3, -53.29605, -175.5877, -20.02813, 2.617989, 0, 0, 0.9659252, 0.2588213, 86400, 86400, 255, 1), -- Rich Adamantite Deposit
(@OGUID+34, 183049, 545, 3, -95.55837, -437.6247, 4.946238, 3.141593, 0, 0, -1, 0, 180, 180, 100, 1), -- Main Chambers Door
(@OGUID+35, 184125, 545, 3, 98.81569, -316.3364, -6.683962, 4.799657, 0, 0, -0.6755896, 0.7372779, 0, 0, 0, 1), -- Main Chambers Access Panel
(@OGUID+36, 184126, 545, 3, -332.35, -117.1587, -6.707662, 0.2617982, 0, 0, 0.1305256, 0.9914449, 0, 0, 0, 1), -- Main Chambers Access Panel
(@OGUID+37, 184201, 545, 3, -23.7936, 4.42258, -2.84397, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Instance_Portal_Difficulty_0
(@OGUID+38, 184202, 545, 3, -23.7936, 4.42258, -2.84397, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Instance_Portal_Difficulty_1
(@OGUID+39, 184940, 545, 3, 39.4951, -244.041, -22.8052, -2.00713, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Bound Adamantite Chest
(@OGUID+40, 184940, 545, 3, -153.188, -275.258, -7.77509, 2.89725, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Bound Adamantite Chest
(@OGUID+41, 184940, 545, 3, 61.6757, -128.676, -22.7164, 2.70526, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Bound Adamantite Chest
(@OGUID+42, 184941, 545, 3, 4.36841, -259.654, -21.6164, 0, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Solid Adamantite Chest
(@OGUID+43, 184941, 545, 3, -54.5296, -320.914, -7.76734, 0, 0, 0, 0, 0, 86400, 86400, 100, 1); -- Solid Adamantite Chest

-- ======
-- EVENTS
-- ======

-- INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
-- INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
-- INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES

-- =======
-- POOLING
-- =======

INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES
(@PGUID+26, @PGUID+25, 0, 'Adamantite Deposit / Rich Adamantite Deposit - Pool 1'),
(@PGUID+27, @PGUID+25, 0, 'Adamantite Deposit / Rich Adamantite Deposit - Pool 2'),
(@PGUID+28, @PGUID+25, 0, 'Adamantite Deposit / Rich Adamantite Deposit - Pool 3');

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(@PGUID+1, 1, 'Steamvault - Swamp Gas (17378)'),
(@PGUID+20, 2, 'Steamvault - Master Chest Pool'),
(@PGUID+21, 1, 'Steamvault - Felweed (181270)'),
(@PGUID+22, 1, 'Steamvault - Ragveil / Flame Cap - Pool 1'),
(@PGUID+23, 1, 'Steamvault - Ragveil / Flame Cap - Pool 2'),
(@PGUID+24, 4, 'Steamvault - Ancient Lichen (181278)'),
(@PGUID+25, 6, 'Steamvault - Master Mineral Pool'),
(@PGUID+26, 1, 'Steamvault - Adamantite Deposit / Rich Adamantite Deposit - Pool 1'),
(@PGUID+27, 1, 'Steamvault - Adamantite Deposit / Rich Adamantite Deposit - Pool 2'),
(@PGUID+28, 1, 'Steamvault - Adamantite Deposit / Rich Adamantite Deposit - Pool 3');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@CGUID+6, @PGUID+1, 0, 'Steamvault - Crab (6827)'),
(@CGUID+32, @PGUID+1, 0, 'Steamvault - Swamp Gas (17378)'),
(@CGUID+177, @PGUID+1, 0, 'Steamvault - Swamp Gas (17378)');

-- INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@OGUID+1, @PGUID+21, 0, 'Steamvault - Felweed (181270)'),
(@OGUID+2, @PGUID+21, 0, 'Steamvault - Felweed (181270)'),
(@OGUID+3, @PGUID+22, 0, 'Steamvault - Ragveil (181275)'),
(@OGUID+4, @PGUID+23, 0, 'Steamvault - Ragveil (181275)'),
(@OGUID+5, @PGUID+22, 0, 'Steamvault - Flame Cap (181276)'),
(@OGUID+6, @PGUID+23, 0, 'Steamvault - Flame Cap (181276)'),
(@OGUID+7, @PGUID+24, 0, 'Steamvault - Ancient Lichen (181278)'),
(@OGUID+8, @PGUID+24, 0, 'Steamvault - Ancient Lichen (181278)'),
(@OGUID+9, @PGUID+24, 0, 'Steamvault - Ancient Lichen (181278)'),
(@OGUID+10, @PGUID+24, 0, 'Steamvault - Ancient Lichen (181278)'),
(@OGUID+11, @PGUID+24, 0, 'Steamvault - Ancient Lichen (181278)'),
(@OGUID+12, @PGUID+24, 0, 'Steamvault - Ancient Lichen (181278)'),
(@OGUID+13, @PGUID+24, 0, 'Steamvault - Ancient Lichen (181278)'),
(@OGUID+14, @PGUID+24, 0, 'Steamvault - Ancient Lichen (181278)'),
(@OGUID+15, @PGUID+24, 0, 'Steamvault - Ancient Lichen (181278)'),
(@OGUID+16, @PGUID+24, 0, 'Steamvault - Ancient Lichen (181278)'),
(@OGUID+17, @PGUID+25, 0, 'Steamvault - Fel Iron Deposit (181555)'),
(@OGUID+18, @PGUID+25, 0, 'Steamvault - Fel Iron Deposit (181555)'),
(@OGUID+19, @PGUID+25, 0, 'Steamvault - Fel Iron Deposit (181555)'),
(@OGUID+20, @PGUID+25, 0, 'Steamvault - Fel Iron Deposit (181555)'),
(@OGUID+21, @PGUID+25, 0, 'Steamvault - Fel Iron Deposit (181555)'),
(@OGUID+22, @PGUID+25, 0, 'Steamvault - Fel Iron Deposit (181555)'),
(@OGUID+23, @PGUID+25, 0, 'Steamvault - Adamantite Deposit (181556)'),
(@OGUID+24, @PGUID+25, 0, 'Steamvault - Adamantite Deposit (181556)'),
(@OGUID+25, @PGUID+27, 0, 'Steamvault - Adamantite Deposit (181556) - Pool 2'),
(@OGUID+26, @PGUID+28, 0, 'Steamvault - Adamantite Deposit (181556) - Pool 3'),
(@OGUID+27, @PGUID+25, 0, 'Steamvault - Adamantite Deposit (181556)'),
(@OGUID+28, @PGUID+25, 0, 'Steamvault - Adamantite Deposit (181556)'),
(@OGUID+29, @PGUID+26, 0, 'Steamvault - Rich Adamantite Deposit (181569) - Pool 1'),
(@OGUID+31, @PGUID+26, 0, 'Steamvault - Adamantite Deposit (181556) - Pool 1'),
(@OGUID+32, @PGUID+27, 0, 'Steamvault - Rich Adamantite Deposit (181569) - Pool 2'),
(@OGUID+33, @PGUID+28, 0, 'Steamvault - Rich Adamantite Deposit (181569) - Pool 3'),
(@OGUID+39, @PGUID+20, 0, 'Steamvault - Bound Adamantite Chest (184940)'),
(@OGUID+40, @PGUID+20, 0, 'Steamvault - Bound Adamantite Chest (184940)'),
(@OGUID+41, @PGUID+20, 0, 'Steamvault - Bound Adamantite Chest (184940)'),
(@OGUID+42, @PGUID+20, 0, 'Steamvault - Solid Adamantite Chest (184941)'),
(@OGUID+43, @PGUID+20, 0, 'Steamvault - Solid Adamantite Chest (184941)');

-- INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES

-- =========
-- DBSCRIPTS
-- =========

-- INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
-- INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES


