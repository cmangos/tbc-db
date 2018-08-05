/* DBScriptData
DBName: Zul'Aman
DBScriptName: instance_zulaman
DB%Complete: 50
DBComment:
* alot correct creature spawn/movement data missing
EndDBScriptData */

SET @CGUID := 5680000; -- creatures
SET @OGUID := 5680000; -- gameobjects
SET @PGUID := 49900; -- pools

-- =========
-- CREATURES
-- =========

INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(@CGUID+69, 1, -195.1887, 1319.176, 1.353913, 100, 0, 0), 
(@CGUID+69, 2, -194.7753, 1288.607, 1.478035, 100, 0, 0), 
(@CGUID+69, 3, -195.1887, 1319.176, 1.353913, 100, 0, 0), 
(@CGUID+69, 4, -194.7753, 1288.607, 1.478035, 100, 0, 0), 
(@CGUID+69, 5, -199.9926, 1259.637, 1.181962, 100, 0, 0), 
(@CGUID+69, 6, -191.1317, 1241.622, 0.7102828, 100, 0, 0), 
(@CGUID+69, 7, -148.2395, 1214.866, 0.9919434, 100, 0, 0), 
(@CGUID+69, 8, -135.5854, 1173.052, 0.1290283, 100, 0, 0), 
(@CGUID+69, 9, -141.5868, 1124.066, 0.1249994, 100, 0, 0), 
(@CGUID+69, 10, -153.2677, 1218.847, 3.023193, 100, 0, 0), 
(@CGUID+69, 11, -163.541, 1238.021, 1.875, 100, 0, 0), 
(@CGUID+69, 12, -182.968, 1245.258, 2.638261, 100, 0, 0), 
(@CGUID+69, 13, -198.5412, 1252.48, 0.5489058, 100, 0, 0), 
(@CGUID+69, 14, -200.3488, 1263.651, 1.302935, 100, 0, 0), 
(@CGUID+69, 15, -196.0485, 1276.635, 1.288582, 100, 0, 0), 
(@CGUID+69, 16, -194.7303, 1299.047, 1.715461, 100, 0, 0), 
(@CGUID+69, 17, -195.2259, 1319.58, 1.362702, 100, 0, 0), 
(@CGUID+69, 18, -197.6909, 1338.085, 0.1685638, 100, 0, 0), 
(@CGUID+69, 19, -207.5255, 1358.867, -0.005558491, 100, 0, 0), 
(@CGUID+69, 20, -208.0637, 1379.98, 0.008210659, 100, 0, 0), 
(@CGUID+69, 21, -207.2668, 1356.247, -0.005558491, 100, 0, 0), 
(@CGUID+69, 22, -197.7613, 1336.673, 0.3465424, 100, 0, 0), 
(@CGUID+69, 23, -195.1887, 1319.176, 1.353913, 100, 0, 0), 
(@CGUID+69, 24, -194.7753, 1288.607, 1.478035, 100, 0, 0), 
(@CGUID+69, 25, -199.9926, 1259.637, 1.181962, 100, 0, 0), 
(@CGUID+69, 26, -191.1317, 1241.622, 0.7102828, 100, 0, 0), 
(@CGUID+69, 27, -170.5444, 1241.329, 1.623613, 100, 0, 0), 
(@CGUID+69, 28, -148.2395, 1214.866, 0.9919434, 100, 0, 0), 
(@CGUID+69, 29, -141.0575, 1192.832, 0.125, 100, 0, 0), 
(@CGUID+69, 30, -135.5854, 1173.052, 0.1290283, 100, 0, 0), 
(@CGUID+69, 31, -141.5868, 1124.066, 0.1249994, 100, 0, 0), 
(@CGUID+69, 32, -135.0329, 1192.962, 0.125, 100, 0, 0), 
(@CGUID+69, 33, -153.2677, 1218.847, 3.023193, 100, 0, 0), 
(@CGUID+69, 34, -163.541, 1238.021, 1.875, 100, 0, 0), 
(@CGUID+69, 35, -182.968, 1245.258, 2.638261, 100, 0, 0), 
(@CGUID+69, 36, -198.5412, 1252.48, 0.5489058, 100, 0, 0), 
(@CGUID+69, 37, -200.3488, 1263.651, 1.302935, 100, 0, 0), 
(@CGUID+69, 38, -196.0485, 1276.635, 1.288582, 100, 0, 0), 
(@CGUID+69, 39, -194.7303, 1299.047, 1.715461, 100, 0, 0), 
(@CGUID+69, 40, -195.5829, 1284.55, 1.439343, 100, 0, 0), 
(@CGUID+69, 41, -187.3113, 1291.892, 2.203377, 100, 0, 0), 
(@CGUID+69, 42, -190.7698, 1288.822, 1.862958, 100, 0, 0), 

(@CGUID+70, 1, -136.4357, 1188.629, 0.125, 100, 0, 0), 
(@CGUID+70, 2, -130.6683, 1163.229, 0.5926514, 100, 0, 0), 
(@CGUID+70, 3, -138.8937, 1149.043, 0.1249832, 100, 0, 0), 
(@CGUID+70, 4, -134.65, 1118.2, 0.5295404, 100, 0, 0), 
(@CGUID+70, 5, -201.9863, 1194.44, -0.2621117, 100, 0, 0), 
(@CGUID+70, 6, -192.125, 1214.88, 0.6278254, 100, 0, 0), 
(@CGUID+70, 7, -177.1632, 1235.759, 0.9326949, 100, 0, 0), 
(@CGUID+70, 8, -142.5536, 1206.907, 1.04834, 100, 0, 0), 
(@CGUID+70, 9, -136.4357, 1188.629, 0.125, 100, 0, 0), 
(@CGUID+70, 10, -130.6683, 1163.229, 0.5926514, 100, 0, 0), 
(@CGUID+70, 11, -138.8937, 1149.043, 0.1249832, 100, 0, 0), 
(@CGUID+70, 12, -134.65, 1118.2, 0.5295404, 100, 0, 0), 
(@CGUID+70, 13, -152.4376, 1100.244, 0.3881829, 100, 0, 0), 
(@CGUID+70, 14, -174.2288, 1083.737, 0.08392616, 100, 0, 0), 
(@CGUID+70, 15, -187.5354, 1094.549, 1.733951, 100, 0, 0), 
(@CGUID+70, 16, -203.6665, 1117.767, 0.02158606, 100, 0, 0), 
(@CGUID+70, 17, -215.368, 1135.62, -1.786696, 100, 0, 0), 
(@CGUID+70, 18, -215.9582, 1155.653, -1.911696, 100, 0, 0), 
(@CGUID+70, 19, -206.436, 1177.694, -0.5679001, 100, 0, 0), 
(@CGUID+70, 20, -201.9863, 1194.44, -0.2621117, 100, 0, 0), 
(@CGUID+70, 21, -192.125, 1214.88, 0.6278254, 100, 0, 0), 
(@CGUID+70, 22, -177.1632, 1235.759, 0.9326949, 100, 0, 0), 
(@CGUID+70, 23, -142.5536, 1206.907, 1.04834, 100, 0, 0), 
(@CGUID+70, 24, -136.4357, 1188.629, 0.125, 100, 0, 0), 
(@CGUID+70, 25, -130.6683, 1163.229, 0.5926514, 100, 0, 0), 
(@CGUID+70, 26, -138.8937, 1149.043, 0.1249832, 100, 0, 0), 
(@CGUID+70, 27, -134.65, 1118.2, 0.5295404, 100, 0, 0), 
(@CGUID+70, 28, -152.4376, 1100.244, 0.3881829, 100, 0, 0), 
(@CGUID+70, 29, -174.2288, 1083.737, 0.08392616, 100, 0, 0), 
(@CGUID+70, 30, -187.5354, 1094.549, 1.733951, 100, 0, 0), 
(@CGUID+70, 31, -203.6665, 1117.767, 0.02158606, 100, 0, 0), 
(@CGUID+70, 32, -215.368, 1135.62, -1.786696, 100, 0, 0), 
(@CGUID+70, 33, -215.9582, 1155.653, -1.911696, 100, 0, 0), 
(@CGUID+70, 34, -206.436, 1177.694, -0.5679001, 100, 0, 0), 
(@CGUID+70, 35, -201.9863, 1194.44, -0.2621117, 100, 0, 0), 
(@CGUID+70, 36, -192.125, 1214.88, 0.6278254, 100, 0, 0), 
(@CGUID+70, 37, -177.1632, 1235.759, 0.9326949, 100, 0, 0), 
(@CGUID+70, 38, -185.7401, 1223.79, 0.8591486, 100, 0, 0), 
(@CGUID+70, 39, -185.7401, 1223.79, 0.8591486, 100, 0, 0), 

(@CGUID+76, 1, -173.1074, 1214.088, 0.1278254, 100, 0, 0), 
(@CGUID+76, 2, -180.9727, 1223.825, 0.9563166, 100, 0, 0);

-- INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(@CGUID+24, 0, 0, 1, 16, 0, 0, NULL), -- World Trigger (Not Immune PC)
(@CGUID+25, 0, 0, 1, 16, 0, 0, NULL), -- World Trigger (Not Immune PC)
(@CGUID+26, 0, 0, 1, 16, 0, 0, NULL), -- World Trigger (Not Immune PC)
(@CGUID+27, 0, 0, 1, 16, 0, 0, NULL), -- World Trigger (Not Immune PC)
(@CGUID+28, 0, 0, 1, 16, 0, 0, NULL), -- World Trigger
(@CGUID+29, 0, 0, 1, 16, 0, 0, NULL), -- World Trigger
(@CGUID+30, 0, 0, 1, 16, 0, 0, NULL), -- World Trigger
(@CGUID+31, 0, 0, 1, 16, 0, 0, NULL), -- World Trigger
(@CGUID+32, 0, 0, 1, 16, 0, 0, NULL), -- World Trigger
(@CGUID+33, 0, 0, 1, 16, 0, 0, NULL), -- World Trigger
(@CGUID+34, 0, 0, 1, 16, 0, 0, NULL), -- World Trigger
(@CGUID+35, 0, 0, 1, 16, 0, 0, NULL), -- World Trigger
(@CGUID+36, 0, 0, 1, 16, 0, 0, NULL), -- World Trigger
(@CGUID+37, 0, 0, 1, 16, 0, 0, NULL), -- World Trigger
(@CGUID+38, 0, 0, 1, 16, 0, 0, NULL), -- World Trigger
(@CGUID+39, 0, 0, 1, 16, 0, 0, NULL), -- World Trigger (Large AOI)
(@CGUID+65, 0, 0, 0, 16, 0, 0, NULL), -- Amani'shi Scout
(@CGUID+66, 0, 1, 1, 16, 0, 0, NULL), -- Amani'shi Scout
(@CGUID+67, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Scout
(@CGUID+68, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Scout
(@CGUID+69, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Scout
(@CGUID+70, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Scout
(@CGUID+71, 0, 0, 0, 16, 0, 0, '42350'), -- Amani'shi Scout
(@CGUID+72, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Scout
(@CGUID+73, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Scout
(@CGUID+74, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Scout
(@CGUID+75, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Scout
(@CGUID+76, 0, 0, 0, 16, 0, 0, '42177'), -- Amani'shi Scout
(@CGUID+77, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Scout
(@CGUID+78, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Scout
(@CGUID+79, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Scout
(@CGUID+80, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Scout
-- (@CGUID+81, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Reinforcement
-- (@CGUID+82, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Reinforcement
-- (@CGUID+83, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Reinforcement
-- (@CGUID+84, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Reinforcement
-- (@CGUID+85, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Reinforcement
-- (@CGUID+86, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Reinforcement
-- (@CGUID+87, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Reinforcement
-- (@CGUID+88, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Reinforcement
-- (@CGUID+89, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Reinforcement
-- (@CGUID+90, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Reinforcement
-- (@CGUID+91, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Reinforcement
(@CGUID+92, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Flame Caster
(@CGUID+93, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Flame Caster
(@CGUID+94, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Flame Caster
(@CGUID+95, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Flame Caster
(@CGUID+96, 0, 3, 1, 16, 0, 0, NULL), -- Amani'shi Flame Caster
(@CGUID+97, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Flame Caster
(@CGUID+98, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Flame Caster
(@CGUID+99, 0, 0, 0, 16, 0, 0, NULL), -- Amani'shi Flame Caster
(@CGUID+100, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Flame Caster
(@CGUID+101, 0, 0, 0, 16, 0, 0, NULL), -- Amani'shi Flame Caster
(@CGUID+102, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Flame Caster
(@CGUID+103, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Flame Caster
(@CGUID+104, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+105, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+106, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+107, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+108, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+109, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+110, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+111, 0, 0, 0, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+112, 0, 0, 0, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+113, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+114, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+115, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+116, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+117, 0, 0, 0, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+118, 0, 0, 0, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+119, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+120, 0, 1, 1, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+121, 0, 0, 0, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+122, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+123, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+124, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+125, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+126, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+127, 0, 1, 1, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+128, 0, 0, 0, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+129, 0, 0, 0, 16, 0, 0, '18950'), -- Amani'shi Guardian
(@CGUID+130, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+131, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+132, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+133, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+134, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+135, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+136, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+137, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+138, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+139, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+140, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+141, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+142, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+143, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+144, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+145, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+146, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+147, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+148, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+149, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+150, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+151, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+152, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+153, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+154, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+155, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+156, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+157, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+158, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+159, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+160, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+161, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+162, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+163, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+164, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+165, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+166, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+167, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+168, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+169, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+170, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+171, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+172, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+173, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+174, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+175, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+176, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+177, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+178, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+179, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+180, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+181, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+182, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+183, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+184, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+185, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman Exterior InvisMan
(@CGUID+193, 0, 7, 1, 16, 0, 0, '42726'), -- Tanzar
(@CGUID+259, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Savage
(@CGUID+260, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Savage
(@CGUID+261, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Savage
(@CGUID+262, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Savage
(@CGUID+263, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Savage
(@CGUID+264, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Savage
(@CGUID+265, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Savage
(@CGUID+266, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Savage
(@CGUID+314, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Handler
(@CGUID+315, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Handler
(@CGUID+316, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Handler
(@CGUID+317, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Handler
(@CGUID+318, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Handler
(@CGUID+319, 0, 1, 1, 16, 0, 0, '18950'), -- Amani'shi Handler
(@CGUID+320, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Handler
(@CGUID+321, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Handler
(@CGUID+322, 0, 0, 1, 16, 0, 0, '18950'); -- Amani'shi Handler

REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(23542, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Axe Thrower
(23574, 0, 0, 1, 16, 0, 0, NULL), -- Akil'zon
(23576, 0, 0, 1, 16, 0, 0, NULL), -- Nalorakk
(23577, 0, 0, 1, 16, 0, 0, NULL), -- Halazzi
(23578, 0, 0, 1, 16, 0, 0, NULL), -- Jan'alai
(23580, 22467, 0, 1, 16, 0, 0, NULL), -- Amani'shi Warbringer
(23581, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Medicine Man
(23582, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Tribesman
(23584, 0, 0, 1, 16, 0, 0, NULL), -- Amani Bear
(23774, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Trainer
(23790, 0, 0, 1, 0, 0, 0, NULL), -- Tanzar
(23807, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman - Bear God Invisman
(23813, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman - Dragonhawk God Invisman
(23814, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman - Eagle God Invisman
(23815, 0, 0, 1, 16, 0, 0, NULL), -- Zul'Aman - Lynx God Invisman
(23817, 0, 0, 1, 16, 0, 0, NULL), -- Dragonhawk Egg
(23834, 0, 0, 1, 16, 0, 0, NULL), -- Amani Dragonhawk
(23877, 0, 0, 1, 0, 0, 0, '42466'), -- Amani Lynx Spirit
(23878, 0, 0, 1, 0, 0, 0, '42466'), -- Amani Bear Spirit
(23879, 0, 0, 1, 0, 0, 0, '42466'), -- Amani Dragonhawk Spirit
(23880, 0, 0, 1, 0, 0, 0, '42466'), -- Amani Eagle Spirit
(23897, 0, 0, 1, 16, 0, 0, '42716'), -- Zungam
(23999, 0, 0, 0, 0, 0, 0, NULL), -- Harkor
(24001, 0, 0, 1, 0, 0, 0, NULL), -- Ashli
(24024, 0, 0, 1, 0, 0, 0, NULL), -- Kraz
(24043, 0, 0, 0, 0, 0, 0, '18950 16380'), -- Amani Lynx
(24047, 0, 0, 1, 16, 0, 0, NULL), -- Amani Crocolisk
(24059, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Beast Tamer
(24064, 0, 0, 1, 16, 0, 0, NULL), -- Amani Lynx Cub
(24175, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Lookout
(24179, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Wind Walker
(24180, 0, 0, 1, 16, 0, 0, '18950'), -- Amani'shi Protector
(24217, 0, 0, 1, 16, 0, 0, NULL), -- Amani Bear Mount
(24312, 0, 0, 1, 16, 0, 0, NULL), -- Dragonhawk Egg
(24325, 0, 0, 1, 16, 0, 0, NULL), -- Eagle Troll Spawn Target
(24358, 0, 0, 1, 16, 0, 0, NULL), -- Harrison Jones
(24363, 0, 0, 1, 16, 0, 0, NULL), -- Hex Lord Malacrass
(24396, 0, 0, 1, 16, 0, 0, NULL), -- Forest Frog
(24530, 0, 0, 1, 16, 0, 0, NULL), -- Amani Elder Lynx
(24549, 0, 0, 1, 16, 0, 0, NULL), -- Amani'shi Tempest
(25173, 0, 0, 1, 16, 0, 0, NULL); -- Zul'Aman Door Trigger

-- INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES

REPLACE INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(23598, 568, 23578, 4096, 0), -- Amani Dragonhawk Hatchling -> Jan'alai
(23817, 568, 23578, 4, 0), -- Dragonhawk Egg -> Jan'alai
(23818, 568, 23578, 4112, 0), -- Amani'shi Hatcher -> Jan'alai
(24143, 568, 23577, 4096, 0), -- Spirit of the Lynx -> Halazzi
(24240, 568, 24239, 3, 0), -- Alyson Antille -> Hex Lord Malacrass
(24241, 568, 24239, 3, 0), -- Thurg -> Hex Lord Malacrass
(24242, 568, 24239, 3, 0), -- Slither -> Hex Lord Malacrass
(24243, 568, 24239, 3, 0), -- Lord Raadan -> Hex Lord Malacrass
(24244, 568, 24239, 3, 0), -- Gazakroth -> Hex Lord Malacrass
(24245, 568, 24239, 3, 0), -- Fenstalker -> Hex Lord Malacrass
(24246, 568, 24239, 3, 0), -- Darkheart -> Hex Lord Malacrass
(24247, 568, 24239, 3, 0), -- Koragg -> Hex Lord Malacrass
(24504, 568, 23578, 4112, 0), -- Amani'shi Hatcher -> Jan'alai
(24858, 568, 23574, 4112, 0); -- Soaring Eagle -> Akil'zon

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `DeathState`, `MovementType`) VALUES
(@CGUID+1, 1412, 568, 1, 43.882, 1356.5, 9.27985, 5.18073, 7200, 7200, 15, 0, 0, 1), -- Squirrel
(@CGUID+2, 1412, 568, 1, 161.995, 1394.99, 5.89833, 0.362198, 7200, 7200, 15, 0, 0, 1), -- Squirrel
(@CGUID+3, 1412, 568, 1, 69.0605, 1374.56, -3.80553, 5.2771, 7200, 7200, 15, 0, 0, 1), -- Squirrel
(@CGUID+4, 1412, 568, 1, -223.361, 1422.71, 0.008211, 5.91084, 7200, 7200, 15, 0, 0, 1), -- Squirrel
(@CGUID+5, 1412, 568, 1, 184.991, 1178.33, 2.055, 2.98865, 7200, 7200, 15, 0, 0, 1), -- Squirrel
(@CGUID+6, 1412, 568, 1, -201.169, 1310.07, 1.4539, 5.77058, 7200, 7200, 15, 0, 0, 1), -- Squirrel
(@CGUID+7, 1412, 568, 1, -193.244, 1216.61, 0.627825, 5.0293, 7200, 7200, 15, 0, 0, 1), -- Squirrel
(@CGUID+8, 1412, 568, 1, 50.0498, 1422.87, 1.07552, 0.925025, 7200, 7200, 15, 0, 0, 1), -- Squirrel
(@CGUID+9, 1412, 568, 1, -229.353, 1425.05, 0.94149, 0.488692, 7200, 7200, 15, 0, 0, 1), -- Squirrel
(@CGUID+10, 1412, 568, 1, 55.5945, 1428.36, 1.0813, 4.24265, 7200, 7200, 15, 0, 0, 1), -- Squirrel
(@CGUID+11, 14881, 568, 1, 169.649, 1722.02, 42.0216, 4.39576, 7200, 7200, 5, 0, 0, 1), -- Spider
(@CGUID+12, 14881, 568, 1, 167.257, 1656.94, 42.0216, 2.35211, 7200, 7200, 0, 0, 0, 0), -- Spider
(@CGUID+13, 14881, 568, 1, 169.011, 1698.04, 42.0216, 5.64277, 7200, 7200, 5, 0, 0, 1), -- Spider
(@CGUID+14, 14881, 568, 1, 85.6123, 1726.32, 42.0215, 2.93348, 7200, 7200, 5, 0, 0, 1), -- Spider
(@CGUID+15, 14881, 568, 1, 162.76, 1697.51, 42.1049, 3.28122, 7200, 7200, 0, 0, 0, 0), -- Spider
(@CGUID+16, 14881, 568, 1, 105.415, 1660.29, 42.0216, 0.682085, 7200, 7200, 5, 0, 0, 1), -- Spider
(@CGUID+17, 14881, 568, 1, 90.1453, 1727.29, 42.0215, 3.45978, 7200, 7200, 5, 0, 0, 1), -- Spider
(@CGUID+18, 14881, 568, 1, 91.6916, 1725.1, 42.0215, 2.8154, 7200, 7200, 5, 0, 0, 1), -- Spider
(@CGUID+19, 14881, 568, 1, 66.6136, 1692.46, 42.0215, 3.01154, 7200, 7200, 5, 0, 0, 1), -- Spider
(@CGUID+20, 14881, 568, 1, 99.9732, 1669.12, 42.0216, 5.83846, 7200, 7200, 5, 0, 0, 1), -- Spider
(@CGUID+21, 14881, 568, 1, 96.2507, 1661.01, 42.0216, 1.96371, 7200, 7200, 5, 0, 0, 1), -- Spider
(@CGUID+22, 14881, 568, 1, 73.3515, 1684.77, 42.0215, 0.79049, 7200, 7200, 5, 0, 0, 1), -- Spider
(@CGUID+23, 14881, 568, 1, 104.595, 1659.01, 42.0216, 5.65418, 7200, 7200, 5, 0, 0, 1), -- Spider
(@CGUID+24, 21252, 568, 1, -33.8969, 1122.81, 18.7948, 1.58825, 7200, 7200, 0, 0, 0, 0), -- World Trigger (Not Immune PC)
(@CGUID+25, 21252, 568, 1, -53.6238, 1150.03, 18.7886, 0, 7200, 7200, 0, 0, 0, 0), -- World Trigger (Not Immune PC)
(@CGUID+26, 21252, 568, 1, -33.4373, 1177.73, 18.7947, 4.66003, 7200, 7200, 0, 0, 0, 0), -- World Trigger (Not Immune PC)
(@CGUID+27, 21252, 568, 1, -10.2896, 1149.98, 18.7947, 3.14159, 7200, 7200, 0, 0, 0, 0), -- World Trigger (Not Immune PC)
(@CGUID+28, 22515, 568, 1, 117.27, 1289.97, -1.66894, 5.96903, 7200, 7200, 0, 0, 0, 0), -- World Trigger
(@CGUID+29, 22515, 568, 1, -80.6288, 1150.35, 5.67736, 5.61996, 7200, 7200, 0, 0, 0, 0), -- World Trigger
(@CGUID+30, 22515, 568, 1, -112.116, 1159.57, 0.083333, 3.56047, 7200, 7200, 0, 0, 0, 0), -- World Trigger
(@CGUID+31, 22515, 568, 1, -173.463, 1212.12, 0.174226, 0.383972, 7200, 7200, 0, 0, 0, 0), -- World Trigger
(@CGUID+32, 22515, 568, 1, -178.349, 1350.27, -0.023093, 5.46288, 7200, 7200, 0, 0, 0, 0), -- World Trigger
(@CGUID+33, 22515, 568, 1, -177.929, 1274.98, 1.5615, 0.436332, 7200, 7200, 0, 0, 0, 0), -- World Trigger
(@CGUID+34, 22515, 568, 1, -185.469, 1292.65, 1.96368, 2.05949, 7200, 7200, 0, 0, 0, 0), -- World Trigger
(@CGUID+35, 22515, 568, 1, -166.024, 1191.63, 0.925669, 2.80998, 7200, 7200, 0, 0, 0, 0), -- World Trigger
(@CGUID+36, 22515, 568, 1, -114.455, 1125.79, 0.083333, 3.33358, 7200, 7200, 0, 0, 0, 0), -- World Trigger
(@CGUID+37, 22515, 568, 1, -127.524, 1167.95, 0.760725, 2.56563, 7200, 7200, 0, 0, 0, 0), -- World Trigger
(@CGUID+38, 22515, 568, 1, -195.533, 1357.58, 0.427896, 2.58309, 7200, 7200, 0, 0, 0, 0), -- World Trigger
(@CGUID+39, 22517, 568, 1, 370.78, 1119.51, 5.78472, 3.87463, 7200, 7200, 0, 0, 0, 0), -- World Trigger (Large AOI)
(@CGUID+40, 23542, 568, 1, 17.3455, 1418.6, 11.9475, 6.02139, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Axe Thrower
(@CGUID+41, 23542, 568, 1, -53.39, 1422.76, 27.367, 6.17846, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Axe Thrower
(@CGUID+42, 23574, 568, 1, 376.353, 1407.34, 75.5313, 3.45575, 259200, 259200, 0, 0, 0, 0), -- Akil'zon
(@CGUID+43, 23576, 568, 1, 16.9616, 1414.6, 11.9265, 6.23082, 259200, 259200, 0, 0, 0, 0), -- Nalorakk
(@CGUID+44, 23577, 568, 1, 370.257, 1135.74, 6.54913, 4.76475, 259200, 259200, 0, 0, 0, 0), -- Halazzi
(@CGUID+45, 23578, 568, 1, -18.6421, 1150.46, 18.7947, 3.19395, 259200, 259200, 0, 0, 0, 0), -- Jan'alai
(@CGUID+46, 23580, 568, 1, -84.733, 1375.83, 40.8849, 1.41372, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Warbringer
(@CGUID+47, 23580, 568, 1, -76.1125, 1375.98, 40.8471, 1.67552, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Warbringer
(@CGUID+48, 23580, 568, 1, -84.5659, 1315.04, 41.201, 4.85202, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Warbringer
(@CGUID+49, 23580, 568, 1, -75.9265, 1315.24, 41.3016, 4.60767, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Warbringer
(@CGUID+50, 23581, 568, 1, 111.804, 1420.38, -1.2412, 3.02403, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Medicine Man
(@CGUID+51, 23581, 568, 1, -50.7096, 1423.47, 27.4899, 6.17846, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Medicine Man
(@CGUID+52, 23581, 568, 1, -71.6538, 1315.07, 41.3016, 4.4855, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Medicine Man
(@CGUID+53, 23581, 568, 1, -88.9147, 1314.97, 41.1013, 4.97419, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Medicine Man
(@CGUID+54, 23581, 568, 1, 132.874, 1410.11, -4.91132, 0.345519, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Medicine Man
(@CGUID+55, 23582, 568, 1, 19.0948, 1420.57, 11.973, 5.8294, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Tribesman
(@CGUID+56, 23582, 568, 1, 14.5413, 1411.64, 11.982, 0.017453, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Tribesman
(@CGUID+57, 23582, 568, 1, -53.3283, 1416.59, 27.3666, 0.017453, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Tribesman
(@CGUID+58, 23582, 568, 1, -50.7764, 1415.72, 27.4538, 0, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Tribesman
(@CGUID+59, 23584, 568, 1, -7.98126, 1482.39, 9.37306, 5.54282, 7200, 7200, 5, 0, 0, 1), -- Amani Bear
(@CGUID+60, 23584, 568, 1, -18.8911, 1488.05, 13.9981, 0.540604, 7200, 7200, 5, 0, 0, 1), -- Amani Bear
(@CGUID+61, 23584, 568, 1, -60.8165, 1485.24, 17.9836, 2.65171, 7200, 7200, 5, 0, 0, 1), -- Amani Bear
(@CGUID+62, 23584, 568, 1, -46.7586, 1474.11, 13.3586, 5.76827, 7200, 7200, 5, 0, 0, 1), -- Amani Bear
(@CGUID+63, 23584, 568, 1, 26.6786, 1463.02, 1.69598, 4.8852, 7200, 7200, 5, 0, 0, 1), -- Amani Bear
(@CGUID+64, 23584, 568, 1, 20.6921, 1482.15, 3.15478, 1.65682, 7200, 7200, 5, 0, 0, 1), -- Amani Bear
(@CGUID+65, 23586, 568, 1, -186.455, 1323.15, -0.033457, 4.11898, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Scout
(@CGUID+66, 23586, 568, 1, -198.805, 1227.37, 1.09097, 1.32645, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Scout
(@CGUID+67, 23586, 568, 1, -179.821, 1347.53, -0.020919, 0.148083, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Scout
(@CGUID+68, 23586, 568, 1, -207.987, 1376.99, 0.006258, 1.59629, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Scout
(@CGUID+69, 23586, 568, 1, -197.946, 1325.93, 1.25821, 1.76407, 7200, 7200, 0, 0, 0, 2), -- Amani'shi Scout
(@CGUID+70, 23586, 568, 1, -134.575, 1189.24, 0.125, 1.69314, 7200, 7200, 0, 0, 0, 2), -- Amani'shi Scout
(@CGUID+71, 23586, 568, 1, -143.626, 1144.37, 0.202364, 6.02139, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Scout
(@CGUID+72, 23586, 568, 1, -200.669, 1253.68, 1.28333, 1.86412, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Scout
(@CGUID+73, 23586, 568, 1, -170.374, 1239.39, 1.66798, 2.73909, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Scout
(@CGUID+74, 23586, 568, 1, -212.178, 1161.06, -1.58448, 1.10716, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Scout
(@CGUID+75, 23586, 568, 1, -154.766, 1196.84, 0.125, 0.829683, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Scout
(@CGUID+76, 23586, 568, 1, -171.875, 1213.34, 0.127825, 3.7951, 7200, 7200, 0, 0, 0, 2), -- Amani'shi Scout
(@CGUID+77, 23586, 568, 1, -195.518, 1285.67, 1.43967, 1.51203, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Scout
(@CGUID+78, 23586, 568, 1, -107.676, 1154.55, 0.083333, 3.94444, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Scout
(@CGUID+79, 23586, 568, 1, -167.522, 1194.68, 0.642452, 5.3058, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Scout
(@CGUID+80, 23586, 568, 1, -117.331, 1121.12, 0.0878, 2.26893, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Scout
-- (@CGUID+81, 23587, 568, 1, -182.005, 1346.86, 0.629187, 5.46288, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Reinforcement
-- (@CGUID+82, 23587, 568, 1, -156.947, 1195.31, 0.25, 0, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Reinforcement
-- (@CGUID+83, 23587, 568, 1, -114.15, 1164.14, 0.738333, 3.56047, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Reinforcement
-- (@CGUID+84, 23587, 568, 1, -107.549, 1161.6, 0.738333, 3.56047, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Reinforcement
-- (@CGUID+85, 23587, 568, 1, -175.816, 1270.45, 1.64483, 0.436332, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Reinforcement
-- (@CGUID+86, 23587, 568, 1, -182.46, 1272.87, 1.64483, 0.436332, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Reinforcement
-- (@CGUID+87, 23587, 568, 1, -181.759, 1353.93, 0.629187, 5.46288, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Reinforcement
-- (@CGUID+88, 23587, 568, 1, -158.279, 1213.58, 0.682461, 1.71346, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Reinforcement
-- (@CGUID+89, 23587, 568, 1, -161.563, 1212.92, 0.193758, 1.81578, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Reinforcement
-- (@CGUID+90, 23587, 568, 1, -161.297, 1190, 1.009, 2.80998, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Reinforcement
-- (@CGUID+91, 23587, 568, 1, -164.396, 1196.36, 1.009, 2.80998, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Reinforcement
(@CGUID+92, 23596, 568, 1, 94.8123, 1158.76, -3.60433, 0.568136, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Flame Caster
(@CGUID+93, 23596, 568, 1, 243.45, 1033.66, 3.55167, 1.8675, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Flame Caster
(@CGUID+94, 23596, 568, 1, -78.6729, 1199.08, 5.63549, 1.16937, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Flame Caster
(@CGUID+95, 23596, 568, 1, 364.306, 1112.51, 5.76931, 2.46091, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Flame Caster
(@CGUID+96, 23596, 568, 1, -86.0985, 1083.58, 1.19911, 6.05629, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Flame Caster
(@CGUID+97, 23596, 568, 1, -177.464, 1159.71, 12.0392, 2.74017, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Flame Caster
(@CGUID+98, 23596, 568, 1, -222.093, 1312.36, 2.4422, 1.64061, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Flame Caster
(@CGUID+99, 23596, 568, 1, -80.9743, 1194.18, 5.6611, 2.28638, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Flame Caster
(@CGUID+100, 23596, 568, 1, -190.82, 1325.56, -0.033457, 3.63029, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Flame Caster
(@CGUID+101, 23596, 568, 1, -82.871, 1147.99, 5.67737, 1.55334, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Flame Caster
(@CGUID+102, 23596, 568, 1, -140.903, 1134.42, 0.167008, 1.22173, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Flame Caster
(@CGUID+103, 23596, 568, 1, 81.7096, 1144.18, 0.197549, 3.3227, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Flame Caster
(@CGUID+104, 23597, 568, 1, 138.816, 1587.09, 43.6489, 4.74729, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+105, 23597, 568, 1, 346.195, 1046.09, 9.59506, 3.14159, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+106, 23597, 568, 1, 338.112, 1051.79, 9.60488, 5.25344, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+107, 23597, 568, 1, 249.004, 1043.29, 3.57493, 1.79769, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+108, 23597, 568, 1, 234.088, 1039.92, 3.55883, 2.11185, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+109, 23597, 568, 1, 254.847, 1025.23, 3.46834, 5.57699, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Guardian
(@CGUID+110, 23597, 568, 1, 243.167, 1032.67, 16.5783, 1.81514, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Guardian
(@CGUID+111, 23597, 568, 1, -83.8267, 1196.94, 5.7285, 5.46288, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+112, 23597, 568, 1, -80.5356, 1197.13, 5.59467, 3.83972, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+113, 23597, 568, 1, 101.955, 1588.22, 43.6776, 4.93928, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+114, 23597, 568, 1, 337.235, 1022.44, 9.60534, 4.5204, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+115, 23597, 568, 1, 327.933, 1030.54, 9.60501, 3.29867, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+116, 23597, 568, 1, 358.713, 1112.35, 5.87011, 0.733038, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+117, 23597, 568, 1, -86.4353, 1150.79, 5.67736, 6.24828, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+118, 23597, 568, 1, -78.7532, 1150.4, 5.49613, 3.07178, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+119, 23597, 568, 1, -195.045, 1323.84, 0.605175, 0.25652, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+120, 23597, 568, 1, -83.8775, 1081.24, 1.01608, 1.65806, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+121, 23597, 568, 1, -82.6712, 1153.38, 5.67735, 4.66003, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+122, 23597, 568, 1, -181.866, 1158.57, 12.0392, 0.977384, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+123, 23597, 568, 1, -181.74, 1164.2, 12.0392, 5.13127, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+124, 23597, 568, 1, -225.5, 1314.84, 1.91045, 5.63741, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+125, 23597, 568, 1, -221.845, 1316.85, 1.17543, 3.89208, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+126, 23597, 568, 1, -130.566, 1137.6, 0.465736, 2.53073, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+127, 23597, 568, 1, -82.1988, 1084.49, 0.972757, 3.7001, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+128, 23597, 568, 1, -133.446, 1147.77, 0.247097, 4.24115, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+129, 23597, 568, 1, -189.317, 1319.33, -0.033457, 1.02974, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Guardian
(@CGUID+130, 23746, 568, 1, 116.743, 1659.94, 42.1049, 1.3439, 7200, 7200, 0, 0, 0, 0), -- Zul'Aman Exterior InvisMan
(@CGUID+131, 23746, 568, 1, 91.4336, 1668.38, 42.1049, 4.79965, 7200, 7200, 0, 0, 0, 0), -- Zul'Aman Exterior InvisMan
(@CGUID+132, 23746, 568, 1, 89.9226, 1678.82, 42.1049, 5.86431, 7200, 7200, 0, 0, 0, 0), -- Zul'Aman Exterior InvisMan
(@CGUID+133, 23746, 568, 1, 117.712, 1402.44, -8.41463, 0.855211, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+134, 23746, 568, 1, 103.892, 1357.14, -24.1421, 3.49066, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+135, 23746, 568, 1, 120.857, 1605.62, 43.5857, 4.13643, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+136, 23746, 568, 1, 58.4526, 1695.63, 47.0572, 3.00197, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+137, 23746, 568, 1, -78.6888, 1164.77, 5.52694, 2.93215, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+138, 23746, 568, 1, 81.8456, 1648.21, 45.8278, 0.959931, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+139, 23746, 568, 1, 342.918, 1150.48, 7.06588, 4.39823, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+140, 23746, 568, 1, 69.9182, 683.547, 57.1529, 4.41568, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+141, 23746, 568, 1, 182.828, 1695.28, 45.7485, 1.62316, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+142, 23746, 568, 1, 305.382, 1467.21, 81.5893, 4.18879, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+143, 23746, 568, 1, 108.12, 659.957, 55.3927, 4.01426, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+144, 23746, 568, 1, 135.517, 720.719, 58.2989, 4.17134, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+145, 23746, 568, 1, 120.172, 1638.11, 42.3568, 6.23082, 7200, 7200, 0, 0, 0, 0), -- Zul'Aman Exterior InvisMan
(@CGUID+146, 23746, 568, 1, 94.9908, 1656.76, 42.1049, 5.88176, 7200, 7200, 0, 0, 0, 0), -- Zul'Aman Exterior InvisMan
(@CGUID+147, 23746, 568, 1, 171.535, 1561.78, 53.7917, 2.05949, 7200, 7200, 0, 0, 0, 0), -- Zul'Aman Exterior InvisMan
(@CGUID+148, 23746, 568, 1, 124.361, 1373.14, -20.883, 0.506145, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+149, 23746, 568, 1, 129.791, 1357.97, -24.0763, 6.0912, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+150, 23746, 568, 1, 115.099, 1245.86, -20.1063, 2.58309, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+151, 23746, 568, 1, 107.344, 1226.04, -23.9391, 0.837758, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+152, 23746, 568, 1, 390.18, 1080, 6.42698, 3.38594, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+153, 23746, 568, 1, 104.313, 1678.46, 45.7201, 0.383972, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+154, 23746, 568, 1, 77.9453, 1651.02, 46.739, 4.31096, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+155, 23746, 568, 1, 120.432, 766.113, 55.1054, 6.26573, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+156, 23746, 568, 1, 130.957, 659.718, 57.0027, 5.41052, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+157, 23746, 568, 1, -74.4201, 1138.56, 5.28276, 0.767945, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+158, 23746, 568, 1, 92.4965, 698.917, 64.2503, 2.32129, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+159, 23746, 568, 1, 383.222, 1152.55, 6.42699, 4.55531, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+160, 23746, 568, 1, 294.015, 1457.98, 81.5893, 3.26377, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+161, 23746, 568, 1, 124.88, 1225.51, -23.9887, 5.98648, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+162, 23746, 568, 1, 108.058, 1371.94, -21.3731, 1.32645, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+163, 23746, 568, 1, 87.4132, 1703.16, 45.5562, 4.74729, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+164, 23746, 568, 1, 110.786, 734.368, 49.4926, 3.28122, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+165, 23746, 568, 1, -80.1067, 1125.27, 5.42039, 3.05433, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+166, 23746, 568, 1, 119.402, 1680.13, 47.6264, 5.68977, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+167, 23746, 568, 1, -149.192, 1350.13, 48.2572, 0.05236, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+168, 23746, 568, 1, -22.2064, 1350.52, 48.2573, 3.9619, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+169, 23746, 568, 1, 179.912, 1657.18, 47.8062, 3.50811, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+170, 23746, 568, 1, 65.665, 1656.89, 51.8595, 5.95157, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+171, 23746, 568, 1, 148.688, 698.372, 67.6114, 1.01229, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+172, 23746, 568, 1, -151.682, 1339.34, 48.2572, 2.80998, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+173, 23746, 568, 1, 108.381, 1632.48, 47.6339, 0.977384, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+174, 23746, 568, 1, 290.516, 1467.13, 81.5893, 5.41052, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+175, 23746, 568, 1, 133.719, 1631.77, 47.752, 4.08407, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+176, 23746, 568, 1, 130.362, 733.863, 49.7089, 4.34587, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+177, 23746, 568, 1, 119.427, 928.836, 64.3938, 4.66003, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+178, 23746, 568, 1, 333.131, 1085.87, 7.72835, 1.44862, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+179, 23746, 568, 1, 63.9015, 1735.93, 47.6881, 5.8294, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+180, 23746, 568, 1, 78.3507, 733.04, 56.7177, 3.4383, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+181, 23746, 568, 1, 341.022, 1310.98, 81.6709, 3.33358, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+182, 23746, 568, 1, 133.822, 1759.53, 47.9103, 1.72788, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+183, 23746, 568, 1, 423.1, 1084.32, 7.31664, 2.54818, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+184, 23746, 568, 1, 81.9872, 1648.87, 47.9493, 1.46608, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+185, 23746, 568, 1, 119.295, 1711.27, 47.2793, 2.04204, 7200, 7200, 5, 0, 0, 1), -- Zul'Aman Exterior InvisMan
(@CGUID+186, 23774, 568, 1, -205.011, 1122.03, -0.553194, 1.89687, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Trainer
(@CGUID+187, 23774, 568, 1, -208.207, 1130.93, -1.72597, 0.452702, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Trainer
(@CGUID+188, 23774, 568, 1, -193.362, 1242.08, 0.651445, 5.67232, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Trainer
(@CGUID+189, 23774, 568, 1, -204.005, 1159.89, -0.738282, 2.41081, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Trainer
(@CGUID+190, 23774, 568, 1, -213.016, 1159.9, -1.69267, 0.785406, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Trainer
(@CGUID+191, 23774, 568, 1, -217.94, 1147.27, -1.9117, 3.02546, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Trainer
(@CGUID+192, 23774, 568, 1, -207.92, 1162.87, -0.997889, 4.66003, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Trainer
(@CGUID+193, 23790, 568, 1, -147.696, 1333.27, 48.2572, 0.820305, 604800, 604800, 0, 0, 0, 0), -- Tanzar
(@CGUID+194, 23807, 568, 1, -80.1, 1366.4, 40.8492, 4.64258, 7200, 7200, 0, 0, 0, 0), -- Zul'Aman - Bear God Invisman
(@CGUID+195, 23813, 568, 1, -51.0977, 1150.07, 18.7896, 3.28122, 7200, 7200, 0, 0, 0, 0), -- Zul'Aman - Dragonhawk God Invisman
(@CGUID+196, 23814, 568, 1, 369.811, 1088.4, 6.59559, 4.76475, 7200, 7200, 0, 0, 0, 0), -- Zul'Aman - Eagle God Invisman
(@CGUID+197, 23815, 568, 1, 375.814, 1137.73, 6.50146, 4.77653, 25, 25, 0, 0, 0, 0), -- Zul'Aman - Lynx God Invisman
(@CGUID+198, 23817, 568, 1, -38.8813, 1084.2, 18.7948, 0.575959, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+199, 23817, 568, 1, -40.7069, 1088.51, 18.7948, 0.017453, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+200, 23817, 568, 1, -38.9577, 1207.25, 18.7947, 4.06662, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+201, 23817, 568, 1, -38.2802, 1088.14, 18.7948, 1.27409, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+202, 23817, 568, 1, -39.536, 1213.3, 18.7947, 5.58505, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+203, 23817, 568, 1, -38.5764, 1218.68, 18.7947, 4.97419, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+204, 23817, 568, 1, -42.8135, 1085.94, 18.7948, 2.04204, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+205, 23817, 568, 1, -37.6035, 1085.87, 18.7948, 0.296706, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+206, 23817, 568, 1, -36.2872, 1218.11, 18.7947, 0.034907, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+207, 23817, 568, 1, -39.7272, 1216.09, 18.7947, 5.58505, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+208, 23817, 568, 1, -39.7956, 1081.47, 18.7948, 2.74017, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+209, 23817, 568, 1, -39.3636, 1209.73, 18.7947, 0.593412, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+210, 23817, 568, 1, -37.3368, 1212.53, 18.7947, 0.314159, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+211, 23817, 568, 1, -41.177, 1084.59, 18.7948, 1.06465, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+212, 23817, 568, 1, -36.4398, 1209.93, 18.7947, 0.331613, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+213, 23817, 568, 1, -40.0005, 1090.55, 18.7948, 1.11701, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+214, 23817, 568, 1, -33.6638, 1087.02, 18.7948, 0.959931, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+215, 23817, 568, 1, -36.2434, 1088.15, 18.7948, 1.72788, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+216, 23817, 568, 1, -31.0391, 1088.33, 18.7948, 2.70526, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+217, 23817, 568, 1, -35.0347, 1084.92, 18.7948, 5.21853, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+218, 23817, 568, 1, -28.4201, 1082.09, 18.7948, 4.01426, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+219, 23817, 568, 1, -30.5146, 1084.72, 18.7948, 1.79769, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+220, 23817, 568, 1, -34.0568, 1082.02, 18.7947, 2.67035, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+221, 23817, 568, 1, -31.6647, 1081.88, 18.7948, 6.17846, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+222, 23817, 568, 1, -33.5926, 1090.16, 18.7948, 5.13127, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+223, 23817, 568, 1, -29.1757, 1090.27, 18.7948, 0.680678, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+224, 23817, 568, 1, -33.1212, 1209.77, 18.7947, 2.77507, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+225, 23817, 568, 1, -28.0851, 1214.22, 18.7947, 3.38594, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+226, 23817, 568, 1, -27.0043, 1211.99, 18.7947, 3.94444, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+227, 23817, 568, 1, -29.8651, 1211.38, 18.7947, 2.94961, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+228, 23817, 568, 1, -29.7244, 1208.43, 18.7947, 4.93928, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+229, 23817, 568, 1, -34.0586, 1207.23, 18.7947, 4.60767, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+230, 23817, 568, 1, -28.0705, 1216.81, 18.7947, 1.39626, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+231, 23817, 568, 1, -30.4304, 1216.39, 18.7947, 4.90438, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+232, 23817, 568, 1, -32.37, 1212.68, 18.7947, 1.0472, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+233, 23817, 568, 1, -32.0784, 1218.55, 18.7947, 5.65487, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+234, 23817, 568, 1, -34.4183, 1213.35, 18.7947, 2.26893, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+235, 23817, 568, 1, -32.7619, 1215.33, 18.7947, 2.80998, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+236, 23817, 568, 1, -26.5745, 1084.44, 18.7948, 2.79253, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+237, 23817, 568, 1, -27.2051, 1087.54, 18.7948, 1.76278, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+238, 23834, 568, 1, -180.205, 1231.06, 0.502825, 5.7607, 7200, 7200, 5, 0, 0, 1), -- Amani Dragonhawk
(@CGUID+239, 23834, 568, 1, -185.765, 1222.8, 1.00283, 4.61955, 7200, 7200, 5, 0, 0, 1), -- Amani Dragonhawk
(@CGUID+240, 23834, 568, 1, -190.126, 1230, 0.627825, 0.155582, 7200, 7200, 5, 0, 0, 1), -- Amani Dragonhawk
(@CGUID+241, 23834, 568, 1, -180.889, 1240.78, 1.77645, 4.42307, 7200, 7200, 5, 0, 0, 1), -- Amani Dragonhawk
(@CGUID+242, 23834, 568, 1, -198.038, 1157.67, -0.133128, 1.9875, 7200, 7200, 5, 0, 0, 1), -- Amani Dragonhawk
(@CGUID+243, 23834, 568, 1, -218.398, 1155.91, -1.9117, 3.07176, 7200, 7200, 5, 0, 0, 1), -- Amani Dragonhawk
(@CGUID+244, 23834, 568, 1, -204.363, 1143.33, -1.4117, 5.09194, 7200, 7200, 5, 0, 0, 1), -- Amani Dragonhawk
(@CGUID+245, 23834, 568, 1, -214.267, 1146.52, -1.9117, 0.585372, 7200, 7200, 5, 0, 0, 1), -- Amani Dragonhawk
(@CGUID+246, 23834, 568, 1, -95.9498, 1111.12, 5.63477, 0.965111, 7200, 7200, 5, 0, 0, 1), -- Amani Dragonhawk
(@CGUID+247, 23834, 568, 1, -90.4841, 1111.62, 5.59396, 0.962558, 7200, 7200, 5, 0, 0, 1), -- Amani Dragonhawk
(@CGUID+248, 23834, 568, 1, -212.318, 1106.67, -0.100973, 1.15832, 7200, 7200, 5, 0, 0, 1), -- Amani Dragonhawk
(@CGUID+249, 23834, 568, 1, -195.346, 1127.15, 0.249147, 2.81606, 7200, 7200, 5, 0, 0, 1), -- Amani Dragonhawk
(@CGUID+250, 23834, 568, 1, -204.952, 1127.64, -1.10097, 1.70847, 7200, 7200, 5, 0, 0, 1), -- Amani Dragonhawk
(@CGUID+251, 23834, 568, 1, -215.168, 1120.53, -1.78481, 6.08606, 7200, 7200, 5, 0, 0, 1), -- Amani Dragonhawk
(@CGUID+252, 23834, 568, 1, -132.169, 1140.14, 0.463024, 5.27626, 7200, 7200, 0, 0, 0, 0), -- Amani Dragonhawk
(@CGUID+253, 23834, 568, 1, -142.093, 1141.8, 0.335745, 2.10754, 7200, 7200, 0, 0, 0, 0), -- Amani Dragonhawk
(@CGUID+254, 23863, 568, 1, 120.132, 664.015, 51.7023, 1.5806, 259200, 259200, 0, 0, 0, 0), -- Zul'jin
(@CGUID+255, 23877, 568, 1, 149.657, 705.75, 45.1948, 3.10669, 604800, 604800, 0, 0, 0, 0), -- Amani Lynx Spirit
(@CGUID+256, 23878, 568, 1, 134.6, 724.341, 45.1947, 4.06662, 604800, 604800, 0, 0, 0, 0), -- Amani Bear Spirit
(@CGUID+257, 23879, 568, 1, 91.133, 705.753, 45.1947, 0.0174533, 604800, 604800, 0, 0, 0, 0), -- Amani Dragonhawk Spirit
(@CGUID+258, 23880, 568, 1, 105.526, 724.926, 45.1947, 5.35816, 604800, 604800, 0, 0, 0, 0), -- Amani Eagle Spirit
(@CGUID+259, 23889, 568, 1, 81.7104, 1515.83, 21.2338, 0.091743, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Savage
(@CGUID+260, 23889, 568, 1, 121.549, 1525.11, 21.2338, 3.13302, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Savage
(@CGUID+261, 23889, 568, 1, 158.714, 1527.86, 21.2338, 0.158039, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Savage
(@CGUID+262, 23889, 568, 1, 102.504, 1523.64, 21.2338, 2.85248, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Savage
(@CGUID+263, 23889, 568, 1, 167.954, 1523.31, 21.2338, 1.51648, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Savage
(@CGUID+264, 23889, 568, 1, 136.024, 1525.09, 21.2338, 6.22001, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Savage
(@CGUID+265, 23889, 568, 1, 83.6504, 1527.7, 21.2338, 6.12353, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Savage
(@CGUID+266, 23889, 568, 1, 160.569, 1514.97, 21.2338, 2.20896, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Savage
(@CGUID+267, 23897, 568, 1, 250.141, 996.782, 10.9915, 2.00713, 7200, 7200, 0, 0, 0, 0), -- Zungam
(@CGUID+268, 23999, 568, 1, 296.225, 1468.35, 81.5893, 5.37561, 604800, 604800, 0, 0, 0, 0), -- Harkor
(@CGUID+269, 24001, 568, 1, 383.776, 1082.97, 6.04766, 1.58825, 604800, 604800, 0, 0, 0, 0), -- Ashli
(@CGUID+270, 24024, 568, 1, -73.8207, 1164.74, 5.28789, 4.59022, 604800, 604800, 0, 0, 0, 0), -- Kraz
(@CGUID+271, 24043, 568, 1, 425.254, 915.918, 1.42904, 4.27095, 7200, 7200, 10, 0, 0, 1), -- Amani Lynx
(@CGUID+272, 24043, 568, 1, 444.624, 919.356, 0.000968, 4.37934, 7200, 7200, 10, 0, 0, 1), -- Amani Lynx
(@CGUID+273, 24043, 568, 1, 444.713, 893.398, 0.424363, 3.86255, 7200, 7200, 10, 0, 0, 1), -- Amani Lynx
(@CGUID+274, 24043, 568, 1, 452.123, 896.927, 0.470437, 3.24056, 7200, 7200, 10, 0, 0, 1), -- Amani Lynx
(@CGUID+275, 24043, 568, 1, 436.483, 980.415, 0.0000249752, 5.43102, 7200, 7200, 10, 0, 0, 1), -- Amani Lynx
(@CGUID+276, 24043, 568, 1, 454.153, 1002.42, 1.26073, 4.1948, 7200, 7200, 10, 0, 0, 1), -- Amani Lynx
(@CGUID+277, 24043, 568, 1, 441.019, 993.681, 0.000042755, 5.43966, 7200, 7200, 10, 0, 0, 1), -- Amani Lynx
(@CGUID+278, 24043, 568, 1, 450.493, 980.478, 0.0602788, 4.5231, 7200, 7200, 10, 0, 0, 1), -- Amani Lynx
(@CGUID+279, 24043, 568, 1, 427.161, 971.316, 1.15931, 5.95802, 7200, 7200, 10, 0, 0, 1), -- Amani Lynx
(@CGUID+280, 24043, 568, 1, 397.144, 897.193, 0.0827273, 3.57592, 7200, 7200, 10, 0, 0, 1), -- Amani Lynx
(@CGUID+281, 24043, 568, 1, 379.562, 879.276, -0.041181, 1.02023, 7200, 7200, 10, 0, 0, 1), -- Amani Lynx
(@CGUID+282, 24043, 568, 1, 398.69, 883.048, 0.000125858, 2.60674, 7200, 7200, 10, 0, 0, 1), -- Amani Lynx
(@CGUID+283, 24043, 568, 1, 440.257, 908.198, 0.000133, 4.06911, 7200, 7200, 0, 0, 0, 0), -- Amani Lynx
(@CGUID+284, 24043, 568, 1, 387.6, 878.136, 0.00522969, 2.37818, 7200, 7200, 10, 0, 0, 1), -- Amani Lynx
(@CGUID+285, 24047, 568, 1, 334.262, 978.604, -2.50742, 5.63074, 7200, 7200, 5, 0, 0, 1), -- Amani Crocolisk
(@CGUID+286, 24047, 568, 1, 317.741, 989.672, -5.39434, 2.02388, 7200, 7200, 5, 0, 0, 1), -- Amani Crocolisk
(@CGUID+287, 24047, 568, 1, 284.695, 1033.79, -3.70402, 0.800363, 7200, 7200, 5, 0, 0, 1), -- Amani Crocolisk
(@CGUID+288, 24047, 568, 1, 298.851, 1023.65, -1.39662, 5.41663, 7200, 7200, 5, 0, 0, 1), -- Amani Crocolisk
(@CGUID+289, 24047, 568, 1, 303.241, 1008.27, -3.27641, 1.64086, 7200, 7200, 5, 0, 0, 1), -- Amani Crocolisk
(@CGUID+290, 24059, 568, 1, 95.7619, 1155.89, -3.16286, 0.533555, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Beast Tamer
(@CGUID+291, 24059, 568, 1, 81.1417, 1147.26, 0.197549, 3.02961, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Beast Tamer
(@CGUID+292, 24064, 568, 1, 248.641, 1084.97, 0.086787, 0.785398, 7200, 7200, 0, 0, 0, 0), -- Amani Lynx Cub
(@CGUID+293, 24064, 568, 1, 148.186, 1125.2, 2.13474, 3.19395, 7200, 7200, 0, 0, 0, 0), -- Amani Lynx Cub
(@CGUID+294, 24064, 568, 1, 169.462, 1130.48, 1.09778, 5.51524, 7200, 7200, 0, 0, 0, 0), -- Amani Lynx Cub
(@CGUID+295, 24064, 568, 1, 172.895, 1120.76, 0.478469, 6.23082, 7200, 7200, 0, 0, 0, 0), -- Amani Lynx Cub
(@CGUID+296, 24064, 568, 1, 155.335, 1130.25, 1.17472, 0.907571, 7200, 7200, 0, 0, 0, 0), -- Amani Lynx Cub
(@CGUID+297, 24064, 568, 1, 247.53, 1128.97, 0.33017, 3.19395, 7200, 7200, 0, 0, 0, 0), -- Amani Lynx Cub
(@CGUID+298, 24064, 568, 1, 221.965, 1130.85, 0.083334, 0.802851, 7200, 7200, 0, 0, 0, 0), -- Amani Lynx Cub
(@CGUID+299, 24064, 568, 1, 171.733, 1138.6, 0.125, 1.58028, 7200, 7200, 5, 0, 0, 1), -- Amani Lynx Cub
(@CGUID+300, 24064, 568, 1, 236.318, 1088.26, 0.083335, 2.16421, 7200, 7200, 0, 0, 0, 0), -- Amani Lynx Cub
(@CGUID+301, 24064, 568, 1, 230.744, 1066.13, 0.178641, 3.87463, 7200, 7200, 0, 0, 0, 0), -- Amani Lynx Cub
(@CGUID+302, 24064, 568, 1, 221.048, 1057.69, 1.68041, 0.907571, 7200, 7200, 0, 0, 0, 0), -- Amani Lynx Cub
(@CGUID+303, 24064, 568, 1, 242.575, 1075.25, 0.340571, 2.54818, 7200, 7200, 0, 0, 0, 0), -- Amani Lynx Cub
(@CGUID+304, 24064, 568, 1, 245.382, 1138.24, 0.083332, 5.16617, 7200, 7200, 0, 0, 0, 0), -- Amani Lynx Cub
(@CGUID+305, 24064, 568, 1, 227.794, 1136.08, 0.083332, 2.35619, 7200, 7200, 0, 0, 0, 0), -- Amani Lynx Cub
(@CGUID+306, 24064, 568, 1, 237.411, 1135.67, 0.083334, 5.86431, 7200, 7200, 0, 0, 0, 0), -- Amani Lynx Cub
(@CGUID+307, 24064, 568, 1, 240.458, 1125.04, 0.083334, 0.802851, 7200, 7200, 0, 0, 0, 0), -- Amani Lynx Cub
(@CGUID+308, 24064, 568, 1, 226.897, 1079.17, 0.083331, 3.82227, 7200, 7200, 0, 0, 0, 0), -- Amani Lynx Cub
(@CGUID+309, 24064, 568, 1, 228.512, 1126.03, 0.083332, 4.01426, 7200, 7200, 0, 0, 0, 0), -- Amani Lynx Cub
(@CGUID+310, 24064, 568, 1, 215.973, 1072.41, 1.2816, 1.69297, 7200, 7200, 0, 0, 0, 0), -- Amani Lynx Cub
(@CGUID+311, 24064, 568, 1, 192.933, 1167.76, 1.29923, 4.41849, 7200, 7200, 5, 0, 0, 1), -- Amani Lynx Cub
(@CGUID+312, 24064, 568, 1, 179.434, 1167.02, 0.549227, 5.63265, 7200, 7200, 5, 0, 0, 1), -- Amani Lynx Cub
(@CGUID+313, 24064, 568, 1, 193.293, 1173.71, 2.04923, 0.358979, 7200, 7200, 5, 0, 0, 1), -- Amani Lynx Cub
(@CGUID+314, 24065, 568, 1, 337.652, 1043.24, 9.60488, 0.872665, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Handler
(@CGUID+315, 24065, 568, 1, 179.738, 1145.42, 0.125, 4.69055, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Handler
(@CGUID+316, 24065, 568, 1, 183.726, 1144.8, 0.125, 4.69055, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Handler
(@CGUID+317, 24065, 568, 1, 372.493, 1044.07, 9.58696, 3.57792, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Handler
(@CGUID+318, 24065, 568, 1, 367.733, 1042.91, 9.58983, 0.034907, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Handler
(@CGUID+319, 24065, 568, 1, 236.597, 1115.74, 0.083333, 1.67552, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Handler
(@CGUID+320, 24065, 568, 1, 221.439, 1138.82, 0.125, 2.53465, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Handler
(@CGUID+321, 24065, 568, 1, 234.628, 1078.93, 0.125, 4.41342, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Handler
(@CGUID+322, 24065, 568, 1, 221.267, 1067.83, 0.375, 1.69092, 7200, 7200, 5, 0, 0, 1), -- Amani'shi Handler
(@CGUID+323, 24138, 568, 1, 273.399, 1054.89, 0.000612732, 5.66519, 7200, 7200, 0, 0, 0, 2), -- Tamed Amani Crocolisk
(@CGUID+324, 24138, 568, 1, 275.893, 1058.4, 0.00207663, 5.66519, 7200, 7200, 0, 0, 0, 2), -- Tamed Amani Crocolisk
(@CGUID+325, 24175, 568, 1, 224.41, 1479.77, 25.9171, 4.7339, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Lookout
(@CGUID+326, 24179, 568, 1, 111.692, 1417.37, -2.47524, 3.02313, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Wind Walker
(@CGUID+327, 24179, 568, 1, 115.513, 1404.04, -7.85024, 1.6843, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Wind Walker
(@CGUID+328, 24180, 568, 1, 306.92, 1383.61, 57.1572, 3.25813, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Protector
(@CGUID+329, 24217, 568, 1, -92.281, 1418.93, 27.3781, 3.10991, 7200, 7200, 0, 0, 0, 0), -- Amani Bear Mount
(@CGUID+330, 24217, 568, 1, -88.112, 1419.37, 27.3781, 2.53874, 7200, 7200, 0, 0, 0, 0), -- Amani Bear Mount
(@CGUID+331, 24217, 568, 1, -94.1759, 1342.15, 40.9046, 1.42279, 7200, 7200, 0, 0, 0, 0), -- Amani Bear Mount
(@CGUID+332, 24217, 568, 1, -98.9552, 1359.19, 40.8913, 2.55043, 7200, 7200, 0, 0, 0, 0), -- Amani Bear Mount
(@CGUID+333, 24239, 568, 1, 117.883, 921.279, 33.8883, 1.5696, 259200, 259200, 0, 0, 0, 0), -- Hex Lord Malacrass
(@CGUID+334, 24312, 568, 1, -204.928, 1136.49, 0.388893, 6.00393, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+335, 24312, 568, 1, -222.574, 1124.88, -0.057337, 1.32645, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+336, 24312, 568, 1, -208.865, 1116.26, 0.377559, 1.20428, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+337, 24312, 568, 1, -209.437, 1115.29, 0.264964, 1.37881, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+338, 24312, 568, 1, -209.218, 1151.03, 0.033993, 1.74533, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+339, 24312, 568, 1, -222.847, 1125.74, -0.132687, 1.90241, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+340, 24312, 568, 1, -225.386, 1153.92, -0.692664, 3.75246, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+341, 24312, 568, 1, -208.297, 1152.33, -0.208609, 2.25148, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+342, 24312, 568, 1, -209.185, 1152.06, -0.118952, 4.27606, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+343, 24312, 568, 1, -221.969, 1125.64, -0.401914, 6.07375, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+344, 24312, 568, 1, -223.94, 1153.75, -0.468028, 1.79769, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+345, 24312, 568, 1, -222.025, 1126.66, -0.315843, 3.28122, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+346, 24312, 568, 1, -225.562, 1154.84, -0.636942, 3.97935, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+347, 24312, 568, 1, -206.347, 1136.5, 0.152328, 6.17846, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+348, 24312, 568, 1, -221.122, 1126.03, -0.36809, 0.715585, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+349, 24312, 568, 1, -209.442, 1117.17, 0.41697, 0.785398, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+350, 24312, 568, 1, -224.442, 1154.63, -0.606921, 6.24828, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+351, 24312, 568, 1, -225.178, 1155.08, -0.621071, 3.29867, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+352, 24312, 568, 1, -224.891, 1153.07, -0.616088, 3.75246, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+353, 24312, 568, 1, -209.823, 1116.5, 0.034154, 4.92183, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+354, 24312, 568, 1, -210.551, 1116.9, 0.290547, 2.05949, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+355, 24312, 568, 1, -207.601, 1150.81, -0.151421, 1.81514, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+356, 24312, 568, 1, -205.27, 1134.63, 0.203882, 0.366519, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+357, 24312, 568, 1, -208.361, 1151.37, -0.286482, 1.51844, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+358, 24312, 568, 1, -208.337, 1150.51, -0.040975, 0.10472, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+359, 24312, 568, 1, -221.366, 1124.91, -0.319003, 3.76991, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+360, 24312, 568, 1, -210.534, 1115.47, 0.468966, 1.18682, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+361, 24312, 568, 1, -205.92, 1135.66, -0.039118, 5.49779, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+362, 24312, 568, 1, -206.541, 1134.73, 0.344968, 0.401426, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+363, 24312, 568, 1, -206.665, 1135.72, 0.211828, 3.35103, 7200, 7200, 0, 0, 0, 0), -- Dragonhawk Egg
(@CGUID+364, 24325, 568, 1, 192.938, 1422.35, 15.7245, 5.91667, 7200, 7200, 0, 0, 0, 0), -- Eagle Troll Spawn Target
(@CGUID+365, 24358, 568, 1, 120.687, 1674, 42.0217, 1.59044, 7200, 7200, 0, 0, 0, 0), -- Harrison Jones
(@CGUID+366, 24363, 568, 1, 118.832, 1009.86, 67.8271, 4.86947, 7200, 7200, 5, 0, 0, 1), -- Hex Lord Malacrass
(@CGUID+367, 24363, 568, 1, 116.286, 1277.44, -15.2687, 4.59022, 7200, 7200, 5, 0, 0, 1), -- Hex Lord Malacrass
(@CGUID+368, 24374, 568, 1, 126.472, 1058.19, 24.8475, 1.60537, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Berserker
(@CGUID+369, 24374, 568, 1, 110.95, 1057.65, 25.1551, 1.60537, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Berserker
(@CGUID+370, 24374, 568, 1, 127.386, 974.192, 30.9888, 1.64699, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Berserker
(@CGUID+371, 24374, 568, 1, 107.907, 975.272, 29.191, 1.57473, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Berserker
(@CGUID+372, 24396, 568, 1, 93.9677, 1219.41, -19.3522, 0.995478, 7200, 7200, 5, 0, 0, 1), -- Forest Frog
(@CGUID+373, 24396, 568, 1, 81.7418, 1353.86, -24.6138, 6.10071, 7200, 7200, 5, 0, 0, 1), -- Forest Frog
(@CGUID+374, 24396, 568, 1, 132.089, 1209.91, -15.8916, 5.39946, 7200, 7200, 5, 0, 0, 1), -- Forest Frog
(@CGUID+375, 24396, 568, 1, 91.3981, 1365.58, -23.875, 0.641562, 7200, 7200, 5, 0, 0, 1), -- Forest Frog
(@CGUID+376, 24396, 568, 1, 168.448, 1243.36, -21.1469, 3.4104, 7200, 7200, 5, 0, 0, 1), -- Forest Frog
(@CGUID+377, 24396, 568, 1, 111.002, 1206.7, -21.0986, 1.74257, 7200, 7200, 5, 0, 0, 1), -- Forest Frog
(@CGUID+378, 24396, 568, 1, 90.9599, 1378.32, -18.8055, 6.18431, 7200, 7200, 5, 0, 0, 1), -- Forest Frog
(@CGUID+379, 24396, 568, 1, 137.737, 1372.67, -22.0551, 3.45626, 7200, 7200, 5, 0, 0, 1), -- Forest Frog
(@CGUID+380, 24396, 568, 1, 176.706, 1235.97, -17.1469, 1.70773, 7200, 7200, 5, 0, 0, 1), -- Forest Frog
(@CGUID+381, 24396, 568, 1, 85.0883, 1222.52, -20.8522, 0.55615, 7200, 7200, 5, 0, 0, 1), -- Forest Frog
(@CGUID+382, 24396, 568, 1, 141.691, 1356.04, -24.8096, 2.14242, 7200, 7200, 5, 0, 0, 1), -- Forest Frog
(@CGUID+383, 24396, 568, 1, 143.78, 1220.84, -20.3664, 1.83069, 7200, 7200, 5, 0, 0, 1), -- Forest Frog
(@CGUID+384, 24396, 568, 1, 144.046, 1371.51, -22.5551, 1.85117, 7200, 7200, 5, 0, 0, 1), -- Forest Frog
(@CGUID+385, 24396, 568, 1, 74.3894, 1229.84, -20.3522, 0.856248, 7200, 7200, 5, 0, 0, 1), -- Forest Frog
(@CGUID+386, 24396, 568, 1, 132.032, 1358.28, -24.2416, 6.03236, 7200, 7200, 5, 0, 0, 1), -- Forest Frog
(@CGUID+387, 24396, 568, 1, 160.946, 1228.61, -18.7414, 3.98906, 7200, 7200, 5, 0, 0, 1), -- Forest Frog
(@CGUID+388, 24396, 568, 1, 94.144, 1374.41, -20.6805, 0.152388, 7200, 7200, 5, 0, 0, 1), -- Forest Frog
(@CGUID+389, 24396, 568, 1, 145.674, 1226.8, -23.3682, 6.11557, 7200, 7200, 5, 0, 0, 1), -- Forest Frog
(@CGUID+390, 24396, 568, 1, 111.421, 1204.28, -21.2236, 4.84312, 7200, 7200, 5, 0, 0, 1), -- Forest Frog
(@CGUID+391, 24530, 568, 1, 187.077, 1172.54, 0.849389, 4.38078, 7200, 7200, 0, 0, 0, 0), -- Amani Elder Lynx
(@CGUID+392, 24530, 568, 1, 364.396, 1048.9, 9.58343, 4.76475, 7200, 7200, 0, 0, 0, 0), -- Amani Elder Lynx
(@CGUID+393, 24530, 568, 1, 375.055, 1050.34, 9.58932, 4.60767, 7200, 7200, 0, 0, 0, 0), -- Amani Elder Lynx
(@CGUID+394, 24530, 568, 1, 148.932, 1113.78, 1.30726, 0.122173, 7200, 7200, 0, 0, 0, 0), -- Amani Elder Lynx
(@CGUID+395, 24549, 568, 1, 302.193, 1385.68, 57.4693, 3.4605, 7200, 7200, 0, 0, 0, 0), -- Amani'shi Tempest
(@CGUID+396, 25173, 568, 1, 121.179, 1605.34, 55.6535, 3.57792, 7200, 7200, 0, 0, 0, 0), -- Zul'Aman Door Trigger
(@CGUID+397, 25173, 568, 1, 134.03, 1642.78, 42.2785, 4.53786, 7200, 7200, 0, 0, 0, 0); -- Zul'Aman Door Trigger

-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID+1, 180771, 568, 1, 141.189, 717.505, 45.1114, -1.55334, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Firework Launcher
(@OGUID+2, 180771, 568, 1, 99.5758, 717.845, 45.1114, 1.55334, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Firework Launcher
(@OGUID+3, 180771, 568, 1, 119.808, 657.875, 51.679, 1.65806, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Firework Launcher
(@OGUID+4, 185434, 568, 1, -146.864, 1332.22, 48.1739, -0.95993, 0, 0, 0, 0, 180, 180, 255, 1), -- Sitting Skeleton 01
(@OGUID+5, 185434, 568, 1, -75.1178, 1137.77, 5.21104, 1.16937, 0, 0, 0, 0, 180, 180, 255, 1), -- Sitting Skeleton 01
(@OGUID+6, 185434, 568, 1, 293.915, 1458.4, 81.5059, -1.25664, 0, 0, 0, 0, 180, 180, 255, 1), -- Sitting Skeleton 01
(@OGUID+7, 185434, 568, 1, 343.361, 1311.33, 81.5876, 0.017452, 0, 0, 0, 0, 180, 180, 255, 1), -- Sitting Skeleton 01
(@OGUID+8, 185434, 568, 1, -73.5284, 1139.15, 5.19407, -2.26892, 0, 0, 0, 0, 180, 180, 255, 1), -- Sitting Skeleton 01
(@OGUID+9, 185434, 568, 1, -23.8944, 1332.41, 48.1739, 0.645772, 0, 0, 0, 0, 180, 180, 255, 1), -- Sitting Skeleton 01
(@OGUID+10, 185434, 568, 1, 392.563, 1155.37, 6.34364, -1.81514, 0, 0, 0, 0, 180, 180, 255, 1), -- Sitting Skeleton 01
(@OGUID+11, 185438, 568, 1, -150.023, 1350.04, 48.1739, -0.575957, 0, 0, 0, 0, 180, 180, 255, 1), -- Sitting Skeleton 04
(@OGUID+12, 185438, 568, 1, 398.786, 1086.32, 5.35751, 2.84488, 0, 0, 0, 0, 180, 180, 255, 1), -- Sitting Skeleton 04
(@OGUID+13, 185454, 568, 1, -28.1068, 1338.44, 48.1739, -1.53589, 0, 0, 0, 0, 180, 180, 255, 1), -- Laying Skeleton 02
(@OGUID+14, 185454, 568, 1, -132.61, 1341.92, 48.1739, 0.890117, 0, 0, 0, 0, 180, 180, 255, 1), -- Laying Skeleton 02
(@OGUID+15, 185454, 568, 1, 305.403, 1460.19, 81.5059, -1.18682, 0, 0, 0, 0, 180, 180, 255, 1), -- Laying Skeleton 02
(@OGUID+16, 185454, 568, 1, 297.778, 1461.44, 81.5059, -1.8675, 0, 0, 0, 0, 180, 180, 255, 1), -- Laying Skeleton 02
(@OGUID+17, 185454, 568, 1, 337.444, 1323.92, 81.5876, -2.89724, 0, 0, 0, 0, 180, 180, 255, 1), -- Laying Skeleton 02
(@OGUID+18, 185454, 568, 1, -150.251, 1337.35, 48.1739, 0.855211, 0, 0, 0, 0, 180, 180, 255, 1), -- Laying Skeleton 02
(@OGUID+19, 185454, 568, 1, 346.202, 1314.28, 81.5876, 1.95477, 0, 0, 0, 0, 180, 180, 255, 1), -- Laying Skeleton 02
(@OGUID+20, 185454, 568, 1, 396.143, 1148.68, 6.34339, 2.56563, 0, 0, 0, 0, 180, 180, 255, 1), -- Laying Skeleton 02
(@OGUID+21, 185454, 568, 1, 345.458, 1324.55, 81.5876, 0.837757, 0, 0, 0, 0, 180, 180, 255, 1), -- Laying Skeleton 02
(@OGUID+22, 185454, 568, 1, 411.937, 1123.93, 6.10051, -0.436332, 0, 0, 0, 0, 180, 180, 255, 1), -- Laying Skeleton 02
(@OGUID+23, 185455, 568, 1, -133.912, 1335.87, 48.1739, 0.226892, 0, 0, 0, 0, 180, 180, 255, 1), -- Laying Skeleton 03
(@OGUID+24, 185455, 568, 1, 341.998, 1320.82, 81.5876, -0.90757, 0, 0, 0, 0, 180, 180, 255, 1), -- Laying Skeleton 03
(@OGUID+25, 185455, 568, 1, 291.797, 1464.71, 81.506, 0.680677, 0, 0, 0, 0, 180, 180, 255, 1), -- Laying Skeleton 03
(@OGUID+26, 185455, 568, 1, -147.718, 1342.07, 48.1739, -0.541051, 0, 0, 0, 0, 180, 180, 255, 1), -- Laying Skeleton 03
(@OGUID+27, 185455, 568, 1, -24.0499, 1343.66, 48.1739, -0.069812, 0, 0, 0, 0, 180, 180, 255, 1), -- Laying Skeleton 03
(@OGUID+28, 185455, 568, 1, 298.285, 1454.72, 81.5059, 0.244346, 0, 0, 0, 0, 180, 180, 255, 1), -- Laying Skeleton 03
(@OGUID+29, 185455, 568, 1, 335.697, 1314.94, 81.5876, 0.314158, 0, 0, 0, 0, 180, 180, 255, 1), -- Laying Skeleton 03
(@OGUID+30, 185455, 568, 1, 300.462, 1470.83, 81.506, 1.88495, 0, 0, 0, 0, 180, 180, 255, 1), -- Laying Skeleton 03
(@OGUID+31, 186303, 568, 1, 305.908, 1112.09, 9.9566, 3.14159, 0, 0, 0, 0, 180, 180, 255, 1), -- Lynx Temple Exit
(@OGUID+32, 186304, 568, 1, 375.41, 1057.67, 9.86144, -1.5708, 0, 0, 0, 0, 180, 180, 255, 0), -- Lynx Temple Entrance
(@OGUID+33, 186305, 568, 1, 124.203, 1022.95, 34.1441, -1.57952, 0, 0, 0, 0, 43200, 43200, 255, 1), -- Hexlord Entrance
(@OGUID+34, 186306, 568, 1, 123.256, 914.421, 34.1441, -1.57952, 0, 0, 0, 0, 180, 180, 255, 1), -- Wooden Door
(@OGUID+35, 186338, 568, 1, 397.309, 1083.46, 5.41724, -0.017452, 0, 0, 0, 0, 180, 180, 255, 1), -- Zul'Aman Dummy Cage
(@OGUID+36, 186338, 568, 1, -23.4402, 1333.18, 48.1739, 0.017452, 0, 0, 0, 0, 180, 180, 255, 1), -- Zul'Aman Dummy Cage
(@OGUID+37, 186338, 568, 1, 398.437, 1152.45, 6.34364, 3.14159, 0, 0, 0, 0, 180, 180, 255, 1), -- Zul'Aman Dummy Cage
(@OGUID+38, 186430, 568, 1, 251.429, 996.856, 10.912, 2.11185, 0, 0, 0, 0, 604800, 604800, 255, 1), -- Zungam's Ball and Chain
(@OGUID+39, 186482, 568, 1, -74.6319, 1138.7, 5.20206, 0, 0, 0, 0, 0, 180, 180, 255, 0), -- Zul'Aman Dummy Cage - Open
(@OGUID+40, 186482, 568, 1, 341.059, 1311.29, 81.5876, 0.017452, 0, 0, 0, 0, 180, 180, 255, 0), -- Zul'Aman Dummy Cage - Open
(@OGUID+41, 186482, 568, 1, 383.488, 1152.29, 6.34366, 3.12412, 0, 0, 0, 0, 180, 180, 255, 0), -- Zul'Aman Dummy Cage - Open
(@OGUID+42, 186482, 568, 1, 294.252, 1457.96, 81.5059, -1.3439, 0, 0, 0, 0, 180, 180, 255, 0), -- Zul'Aman Dummy Cage - Open
(@OGUID+43, 186482, 568, 1, -149.09, 1349.99, 48.1739, -2.19912, 0, 0, 0, 0, 180, 180, 255, 0), -- Zul'Aman Dummy Cage - Open
(@OGUID+44, 186482, 568, 1, -22.0915, 1350.19, 48.1739, 2.26892, 0, 0, 0, 0, 180, 180, 255, 0), -- Zul'Aman Dummy Cage - Open
(@OGUID+45, 186622, 568, 1, 305.514, 1467.34, 81.5059, -2.32129, 0, 0, 0, 0, 180, 180, 255, 1), -- Zul'Aman - Loot Box - Dwarf
(@OGUID+46, 186623, 568, 1, 307.208, 1464.14, 81.6032, -0.104719, 0, 0, 0, 0, 180, 180, 255, 1), -- Zul'Aman - Dwarf Hammer
(@OGUID+47, 186633, 568, 1, -79.2179, 1125.98, 5.53967, -1.93732, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Gold Coins
(@OGUID+48, 186633, 568, 1, -80.7119, 1124.81, 5.59401, -1.95477, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Gold Coins
(@OGUID+49, 186633, 568, 1, 332.322, 1084.61, 6.23159, -0.872664, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Gold Coins
(@OGUID+50, 186633, 568, 1, 332.423, 1083.13, 6.30574, 2.46091, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Gold Coins
(@OGUID+51, 186633, 568, 1, 331.155, 1084.52, 6.2764, 0.750491, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Gold Coins
(@OGUID+52, 186633, 568, 1, 333.545, 1085.66, 6.32405, -0.733038, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Gold Coins
(@OGUID+53, 186633, 568, 1, 330.726, 1086.47, 6.22998, 0.767944, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Gold Coins
(@OGUID+54, 186633, 568, 1, 343.771, 1151.66, 6.34366, -2.87979, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Gold Coins
(@OGUID+55, 186633, 568, 1, 341.88, 1151.76, 6.34366, -0.820303, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Gold Coins
(@OGUID+56, 186633, 568, 1, 345.407, 1152.75, 6.34366, -1.309, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Gold Coins
(@OGUID+57, 186633, 568, 1, 343.2, 1150.49, 6.34366, 0.087266, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Gold Coins
(@OGUID+58, 186633, 568, 1, 424.528, 1081.66, 6.75976, 1.11701, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Gold Coins
(@OGUID+59, 186633, 568, 1, 425.217, 1085.2, 6.49234, -1.64061, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Gold Coins
(@OGUID+60, 186633, 568, 1, 423.058, 1082.9, 6.68479, -0.349065, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Gold Coins
(@OGUID+61, 186633, 568, 1, 305.952, 1466.29, 81.6448, -2.19912, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Gold Coins
(@OGUID+62, 186633, 568, 1, 304.405, 1465.53, 81.6934, -2.75761, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Gold Coins
(@OGUID+63, 186633, 568, 1, 305.355, 1467.36, 81.6934, 0.837757, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Gold Coins
(@OGUID+64, 186634, 568, 1, -79.5859, 1124.89, 5.57584, 0.90757, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Gold Coins
(@OGUID+65, 186634, 568, 1, -80.4313, 1126.02, 5.59401, -0.575957, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Gold Coins
(@OGUID+66, 186634, 568, 1, 304.023, 1467.73, 81.5893, 0.750491, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Gold Coins
(@OGUID+67, 186648, 568, 1, -135.194, 1333.05, 48.1739, 2.3911, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Tanzar's Trunk
(@OGUID+68, 186658, 568, 1, -79.9851, 1125.34, 5.594, -3.05433, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Kraz's Chest
(@OGUID+69, 186667, 568, 1, -80.0906, 1125.3, 5.594, -1.29154, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Kraz's Package
(@OGUID+70, 186671, 568, 1, 343.357, 1152.03, 6.34366, -2.93214, 0, 0, 0, 0, 180, 180, 255, 1), -- Ashli's Vase
(@OGUID+71, 186671, 568, 1, 344.333, 1084.68, 6.96691, 2.96704, 0, 0, 0, 0, 180, 180, 255, 1), -- Ashli's Vase
(@OGUID+72, 186671, 568, 1, 332.369, 1084.42, 6.28005, 3.07177, 0, 0, 0, 0, 180, 180, 255, 1), -- Ashli's Vase
(@OGUID+73, 186671, 568, 1, 424.256, 1083.61, 6.60608, 1.09956, 0, 0, 0, 0, 180, 180, 255, 1), -- Ashli's Vase
(@OGUID+74, 186672, 568, 1, 424.102, 1083.67, 6.60312, 0.680677, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Ashli's Bag
(@OGUID+75, 186728, 568, 1, 120.294, 1605.67, 63.1804, 3.13883, 0, 0, 0, 0, 180, 180, 255, 1), -- Massive Gate
(@OGUID+76, 186733, 568, 1, -150.912, 1343.15, 49.785, -1.02974, 0, 0, 0, 0, 25, 25, 255, 1), -- The Map of Zul'Aman
(@OGUID+77, 186745, 568, 1, 120.146, 665.572, 51.7082, -0.453785, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Bonfire
(@OGUID+78, 186748, 568, 1, 99.8802, 694.349, 45.1114, 0.837757, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Harkor's Brew Keg
(@OGUID+79, 186750, 568, 1, 140.644, 694.009, 45.1114, -2.00713, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Fudgerick's Fireworks
(@OGUID+80, 186858, 568, 1, 337.066, 1396.09, 74.1723, -2.8536, 0, 0, 0, 0, 180, 180, 255, 0), -- Doodad_ZulAman_WindDoor01
(@OGUID+81, 186859, 568, 1, 120.294, 732.008, 45.011, 1.56207, 0, 0, 0, 0, 180, 180, 255, 0), -- Doodad_ZulAman_FireDoor01
(@OGUID+82, 186860, 568, 1, 99.9827, 1333.95, -9.39569, 0.59341, 0, 0, 0, 0, 180, 180, 255, 1), -- Zul'Aman - Altar Torch - Bear God
(@OGUID+83, 186865, 568, 1, 92.7648, 707.518, 45.1114, 0.017452, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Amani Drum
(@OGUID+84, 187021, 568, 1, 305.775, 1467.31, 81.5875, 1.53589, 0, 0, 0, 0, -604800, -604800, 255, 1), -- Harkor's Satchel
(@OGUID+85, 187035, 568, 1, 132.464, 1334.19, -9.37467, -2.53072, 0, 0, 0, 0, 180, 180, 255, 1), -- Zul'Aman - Altar Torch - Eagle God
(@OGUID+86, 187036, 568, 1, 98.8152, 1245.41, -9.49482, 1.43117, 0, 0, 0, 0, 180, 180, 255, 1), -- Zul'Aman - Altar Torch - Dragonhawk God
(@OGUID+87, 187037, 568, 1, 132.373, 1244.41, -9.6476, 0.296705, 0, 0, 0, 0, 180, 180, 255, 1), -- Zul'Aman - Altar Torch - Lynx God
(@OGUID+88, 187359, 568, 1, 134.009, 1642.8, 42.0841, 3.14159, 0, 0, 0, 0, 25, 25, 255, 1), -- Strange Gong
(@OGUID+89, 187377, 568, 1, -147.731, 1333.47, 48.1739, -0.872664, 0, 0, 0, 0, 180, 180, 255, 1), -- Tanzar's Cage
(@OGUID+90, 187378, 568, 1, 296.334, 1468.37, 81.506, -2.51327, 0, 0, 0, 0, 180, 180, 255, 1), -- Harkor's Cage
(@OGUID+91, 187379, 568, 1, -73.7866, 1164.58, 5.2034, 3.14159, 0, 0, 0, 0, 180, 180, 255, 1), -- Kraz's Cage
(@OGUID+92, 187380, 568, 1, 383.674, 1083.18, 5.75323, 0.017452, 0, 0, 0, 0, 180, 180, 255, 1); -- Ashli's Cage

-- ======
-- EVENTS
-- ======

-- INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
-- INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
-- INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES

-- =======
-- POOLING
-- =======

-- INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES
-- INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
-- INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
-- INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
-- INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
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


