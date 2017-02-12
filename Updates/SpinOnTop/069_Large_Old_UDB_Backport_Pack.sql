-- https://docs.google.com/document/d/1hLEJgNDy9tJy4iLjg0_BK5_M_bZ2N-PjfMD53EMP4WY/edit?pref=2&pli=1


-- quest 945
UPDATE quest_template SET StartScript = 0 WHERE entry = 945;
DELETE FROM dbscripts_on_quest_start WHERE id = 945;

-- quest 10514
DELETE FROM spell_script_target WHERE entry = 36652;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(36652, 1, 21347, 0);

-- quest 10540
-- The Cipher of Damnation - Ar'tor's Charge (q.10540) -H -A
DELETE FROM dbscripts_on_quest_start WHERE id = 10540;
INSERT INTO dbscripts_on_quest_start  (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10540,0,15,36620,0,0,0,0x06,0,0,0,0,0,0,0,0,'Cast Spirit Hunter'),
(10540,1,15,36613,0,21332,100,0x20,0,0,0,0,0,0,0,0,'Cast Aspect of the Spirit Hunter');
UPDATE quest_template SET StartScript = 10540 WHERE entry = 10540;
UPDATE creature_template SET FactionAlliance = 90, FactionHorde = 90 WHERE entry = 20427;
-- equipment (ytdb)
UPDATE creature_template SET EquipmentTemplateId = 4824, FactionAlliance = 35, FactionHorde = 35 WHERE entry = 21332;
DELETE FROM creature_equip_template WHERE entry = 4824;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES (4824, 12294, 0, 30452);
DELETE FROM dbscripts_on_creature_death WHERE id = 20427;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, buddy_entry, search_radius, data_flags, dataint, comments) VALUES
(20427, 0, 0, 0, 21332, 100, 0x20, 2000000330, 'say veneratus epilogue 1'),
(20427, 3, 0, 0, 21332, 100, 0x20, 2000000331, 'say veneratus epilogue 2'),
(20427, 5, 15, 36781, 21332, 100, 0x20, 0, 'cast Despawn Spirit Hunter'),
(20427, 6, 14, 36620, 0, 0, 0x06, 0, 'remove Spirit Hunter aura'),
(20427, 6, 18, 0, 21332, 100, 0x20, 0, 'despawn spirit hunter');
DELETE FROM db_script_string WHERE entry IN (2000000330, 2000000331);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000000330,'It is dying! The second part of the Cipher of Damnation is ours. I...',0,0,0,22,'spirit hunter - say epilogue 1'),
(2000000331,'I am fading... Return to Ar\'tor... Ret... rn... to...',0,0,0,0,'spirit hunter - say epilogue 2');-- quest 10512
UPDATE creature_template SET MovementType = 0 WHERE entry = 21241;

-- quest 11090
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, UnitFlags = UnitFlags|33554432, MinLevel = 73, MaxLevel = 73, InhabitType = 7 WHERE entry = 23416;
-- Reth'hedron's Target (23416)
UPDATE `creature_template` SET `MinLevel` = '73', `MaxLevel` = '73', `HealthMultiplier` = '1.0', `PowerMultiplier` = '1', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '7588', `MaxLevelHealth` = '7588', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '283', `MaxMeleeDmg` = '402', `MinRangedDmg` = '246', `MaxRangedDmg` = '364', `MeleeAttackPower` = '320.0', `RangedAttackPower` = '58.0', `Armor` = '7684.0' WHERE `entry` = '23416';

-- quest 3566
UPDATE quest_template SET StartScript = 3566 WHERE entry = 3566;
DELETE FROM dbscripts_on_quest_start WHERE id = 3566;
INSERT INTO dbscripts_on_quest_start (id,delay,command,datalong,datalong2,x,y,z,o,comments) VALUES 
(3566, 2, 10, 8421, 120000, -6462.33, -1240.68, 180.285, 3.40242, 'spawn Dorius');
UPDATE creature_template SET MovementType = 2 WHERE entry = 8421;
-- linking
DELETE FROM creature_linking_template WHERE entry IN (8421, 8391);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(8421, 0, 8400, 3, 50),
(8391, 0, 8400, 3, 50);
-- movement script
DELETE FROM creature_movement_template WHERE entry IN (8421);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(8421, 1, -6475.807, -1246.440, 180.248, 842101, 1000, 2.27);
-- move script
DELETE FROM dbscripts_on_creature_movement WHERE id IN (842101);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, dataint, comments) VALUES
(842101, 0, 32, 1, 0, 0, 'Dorius - pause waypoints');

-- quest 9729
UPDATE creature_template SET MovementType = 0 WHERE entry IN (18088, 18089, 18154);
-- this faction is guesswork - CONFIRMED MoP DBC VALUE
UPDATE creature_template SET FactionAlliance = 74, FactionHorde = 74 WHERE entry = 18154;

-- quest 11085
DELETE FROM creature WHERE id IN (23383);
DELETE FROM creature WHERE guid IN (140772, 140773, 140774);
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140772,23383, 530, 1, 0, 0, -4106.64, 3029.76, 344.877, 0.820305, 60, 0, 0, 6986, 0, 0, 0),
(140773,23383, 530, 1, 0, 0, -3712.91, 3802.86, 302.928, 1.580229, 60, 0, 0, 6986, 0, 0, 0),
(140774,23383, 530, 1, 0, 0, -3655.85, 3380.96, 312.994, 0.146884, 60, 0, 0, 6986, 0, 0, 0);
-- ToDo: add the 3rd missing spawn and then add pool on all these
-- Also add spawn for GO 185952
-- remove broken auras!! these should not be used by these creautres
UPDATE creature_addon SET auras = NULL WHERE guid IN (SELECT guid FROM creature WHERE id = 21911);

-- quest 5944
DELETE FROM spell_script_target WHERE entry IN (18969,18811);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(18969,1,1842,0),
(18811,1,1836,0);
-- linking
DELETE FROM creature_linking_template WHERE entry IN (12128);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(12128, 0, 1840, 513, 20);

-- quest 11198
UPDATE creature_template SET MovementType = 2, InhabitType = 2 WHERE entry IN (23899);
-- note: movement is not 100% accurate
DELETE FROM creature_movement_template WHERE entry IN (23899);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(23899,1, -3900.415, -4754.055, -12.02, 2389901, 1000, 1.24),
(23899,2, -3901.407, -4733.658, -1.52, 0, 0, 1.24),
(23899,3, -3900.897, -4694.766, -1.52, 0, 0, 0),
(23899,4, -3879.212, -4685.591, -1.52, 0, 0, 0),
(23899,5, -3874.114, -4669.485, -1.52, 0, 0, 0),
(23899,6, -3885.942, -4656.377, -1.52, 0, 0, 0),
(23899,7, -3908.514, -4675.297, -1.52, 0, 0, 0),
(23899,8, -3913.954, -4703.188, -1.52, 0, 0, 0),
(23899,9, -3909.002, -4704.592, -1.52, 0, 0, 0),
(23899,10, -3890.338, -4699.576, -1.52, 0, 0, 0),
(23899,11, -3890.559, -4689.315, -1.52, 0, 0, 0),
(23899,12, -3891.030, -4671.170, -1.52, 2389912, 1000, 0.74);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2389901,2389912);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, comments) VALUES
(2389901, 0, 25, 1, 0, 0, 0, 0, 0, 'Tethyr - set run'),
(2389912, 0, 32, 1, 0, 0, 0, 0, 0, 'Tethyr - pause waypoints'),
(2389912, 0, 0, 0, 0, 23905, 100, 0, 2000005800, 'yell_tethyr_1'),
(2389912, 5, 0, 0, 0, 23905, 100, 0, 2000005801, 'yell_tethyr_2');
DELETE FROM db_script_string WHERE entry IN (2000005800,2000005801,2000005802,2000005803,2000005804);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005800,'Prepare to fire upon my command! Ready, aim...',0,1,0,0,'major mills - yell_tethyr_1'),
(2000005801,'FIRE AT WILL!',0,1,0,22,'major mills - yell_tethyr_2'),
(2000005802,'Marksmen, form up and take your positions!',0,1,0,0,'major mills - yell_tethyr_0'),
(2000005803,'We did it! We\'ve defeated Tethyr!',0,1,0,0,'marksman - yell_tethyr_dead'),
(2000005804,'We defeated the sea monster!',0,1,0,0,'marksman - yell_tethyr_dead');
DELETE FROM dbscripts_on_quest_start WHERE id = 11198;
INSERT INTO dbscripts_on_quest_start (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(11198, 2, 0, 0, 0, 0, 0, 0, 2000005802, 0,0,0,0,0,0,0,'yell_tethyr_0'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3924.35, -4656.55, 9.15409, 5.80749, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3917.6, -4648.53, 9.32604, 5.56795, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3904.77, -4635.09, 9.62735, 5.49334, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3890.48, -4620.7, 9.55527, 4.99383, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3865.94, -4617.2, 9.26262, 4.16523, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3856.59, -4622.45, 9.24753, 3.87856, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3834.8, -4645.41, 9.25827, 3.61152, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3826.61, -4655.32, 9.21484, 3.13243, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3830.76, -4673.74, 9.50962, 2.70832, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3843.65, -4687.59, 9.6436, 2.43735, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3851.97, -4697.24, 9.36834, 2.33525, 'spawn Theramore Marksman'),
(11198, 5, 10, 23900, 0, 0, 0, 0, 0, 0, 0, 0, -3858.49, -4703.49, 9.17411, 2.33525, 'spawn Theramore Marksman'),
(11198, 8, 10, 23899, 0, 0, 0, 6, 0, 0, 0, 0, -3900.415, -4754.055, -12.02, 1.24, 'spawn Tethyr');
DELETE FROM dbscripts_on_creature_death WHERE id = 23899;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, comments) VALUES
(23899, 0, 0, 0, 0, 23900, 100, 0, 2000005803, 0, 'yell_tethyr_dead'),
(23899, 10, 0, 0, 0, 23900, 100, 0, 2000005804, 0, 'yell_tethyr_dead');
-- TEMP WORKAROUND in order to make the GO usable in script after use
DELETE FROM dbscripts_on_go_template_use WHERE id = 186432;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, data_flags, comments) VALUES
(186432, 17, 27, 8, 6, 'remove no_interact flag');

-- quest 7041
DELETE FROM dbscripts_on_go_template_use WHERE id = 178905;
INSERT INTO dbscripts_on_go_template_use (id,command,datalong,datalong2,comments) VALUES
(178905,10,13696,60000,'summon Noxxious Scion'),
(178905,10,13696,60000,'summon Noxxious Scion'),
(178905,10,13696,60000,'summon Noxxious Scion');

-- Quest 1090 "Gerenzo's Orders"
-- A simple defend quest
-- Overview (Details are not too clear)
-- Summons 3 waves of mobs: 2x3998+1x4001 -- 2x4002+2x4003+1x4004 -- 3x4001+1x4004
UPDATE quest_template SET StartScript = 1090 WHERE entry = 1090;
DELETE FROM dbscripts_on_quest_start WHERE id = 1090;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, x, y, z, o, comments) VALUES
-- (1090, 0, C, d, d2, 0, 0, 0, 'change npc-flags on quest-accept'),           -- ??
-- (1090, 0, C, d, d2, 0, 0, 0, 'change faction on quest-accept'),             -- ??
(1090, 5, 26, 0, 0, 3999, 10, 3, 0, 0, 0, 0, 'aggro nearby mob if possible'),
-- First wave
(1090, 60, 10, 3998, 60000, 0, 0, 0, 938.30, -257.35, -2.22, 0, 'summon first wave'),
(1090, 60, 10, 3998, 60000, 0, 0, 0, 942.28, -254.49, -2.38, 0, 'summon first wave'),
(1090, 60, 10, 4001, 60000, 0, 0, 0, 938.52, -253.20, -2.08, 0, 'summon first wave'),
-- Condition check
(1090, 149, 34, 944, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(1090, 149, 34, 945, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Second wave
(1090, 150, 10, 4002, 60000, 0, 0, 0, 938.30, -257.35, -2.22, 0, 'summon second wave'), -- 938.30 -257.35 -2.22
(1090, 150, 10, 4002, 60000, 0, 0, 0, 942.28, -254.49, -2.38, 0, 'summon second wave'),
(1090, 150, 10, 4003, 60000, 0, 0, 0, 938.52, -253.20, -2.08, 0, 'summon second wave'),
(1090, 150, 10, 4003, 60000, 0, 0, 0, 939.51, -253.11, -2.02, 0, 'summon second wave'),
(1090, 150, 10, 4004, 60000, 0, 0, 0, 938.30, -257.35, -2.22, 0, 'summon second wave'),
-- Condition check
(1090, 239, 34, 944, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(1090, 239, 34, 945, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Third wave
(1090, 240, 10, 4001, 60000, 0, 0, 0, 938.30, -257.35, -2.22, 0, 'summon third wave'),
(1090, 240, 10, 4001, 60000, 0, 0, 0, 942.28, -254.49, -2.38, 0, 'summon third wave'),
(1090, 240, 10, 4001, 60000, 0, 0, 0, 938.52, -253.20, -2.08, 0, 'summon third wave'),
(1090, 240, 10, 4004, 60000, 0, 0, 0, 939.51, -253.11, -2.02, 0, 'summon third wave'),
-- Condition check
(1090, 419, 34, 944, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(1090, 419, 34, 945, 1090, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(1090, 420, 7, 1090, 0, 0, 0, 0, 0, 0, 0, 0, 'quest complete');
-- conditions
DELETE FROM conditions WHERE condition_entry IN (944, 945);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(944, 36, 0, 60),
(945, 36, 3, 0);
-- movement and attack for spawns
UPDATE creature_template SET MovementType = 2 WHERE entry IN (3998,4001,4002,4003,4004);
DELETE FROM creature_movement_template WHERE entry IN (3998,4001,4002,4003,4004);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(3998, 1, 945.869, -255.917, -3.017, 0, 0, 0),
(3998, 2, 954.064, -257.818, -3.511, 0, 0, 0),
(3998, 3, 959.217, -260.678, -5.673, 399803, 0, 0),
(4001, 1, 945.869, -255.917, -3.017, 0, 0, 0),
(4001, 2, 954.064, -257.818, -3.511, 0, 0, 0),
(4001, 3, 959.217, -260.678, -5.673, 399803, 0, 0),
(4002, 1, 945.869, -255.917, -3.017, 0, 0, 0),
(4002, 2, 954.064, -257.818, -3.511, 0, 0, 0),
(4002, 3, 959.217, -260.678, -5.673, 399803, 0, 0),
(4003, 1, 945.869, -255.917, -3.017, 0, 0, 0),
(4003, 2, 954.064, -257.818, -3.511, 0, 0, 0),
(4003, 3, 959.217, -260.678, -5.673, 399803, 0, 0),
(4004, 1, 945.869, -255.917, -3.017, 0, 0, 0),
(4004, 2, 954.064, -257.818, -3.511, 0, 0, 0),
(4004, 3, 959.217, -260.678, -5.673, 399803, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 399803;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, buddy_entry, search_radius, data_flags, comments) VALUES
(399803, 0, 26, 4276, 10, 2, 'attack Piznik');

-- quest 5713 - One Shot. One Kill. (Xfurry)
DELETE FROM db_script_string WHERE entry IN (2000005627,2000005628,2000005629,2000005630,2000005631);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005627,'Wait... did you hear that? Something approaches from the west!',0,0,0,1,'Sentinel Aynasha - say_protect_1'),
(2000005628,'I\'ve run out of arrows! I\'m afraid if any more come you will need to take them on by yourself my friend.',0,0,0,0,'Sentinel Aynasha - say_protect_2'),
(2000005629,'Praise Elune! I don\'t know if I could have survived the day without you, friend.',0,0,0,5,'Sentinel Aynasha - say_protect_3'),
(2000005630,'My legs feels much better now, the remedy must be working. If you will excuse me, I must go report to my superiors about what has transpired here.',0,0,0,1,'Sentinel Aynasha - say_protect_4'),
(2000005631,'Please speak with Sentinel Onaeya at Maestra\'s Post in Ashenvale, she will see to it that you are properly rewarded for your bravery this day.',0,0,0,1,'Sentinel Aynasha - say_protect_5');
-- quest script
UPDATE quest_template SET StartScript = entry WHERE entry = 5713;
DELETE FROM dbscripts_on_quest_start WHERE id = 5713;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES
-- (5713, 0, C, d, d2, 0, 0, 0, 'change npc-flags on quest-accept'), -- ??
(5713, 0, 0, 0, 0, 0, 0, 0, 2000005627, 0, 0, 0, 0, 'say_protect_1'),
-- First wave
(5713, 5, 10, 11713, 60000, 0, 0, 0, 0, 4371.175, -11.965, 67.64, 0, 'summon first wave'),
(5713, 5, 10, 11713, 60000, 0, 0, 0, 0, 4368.286, -13.418, 67.81, 0, 'summon first wave'),
-- Condition check
(5713, 50, 34, 944, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(5713, 50, 34, 945, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Second wave
(5713, 55, 10, 11713, 60000, 0, 0, 0, 0, 4371.175, -11.965, 67.64, 0, 'summon second wave'),
(5713, 55, 10, 11713, 60000, 0, 0, 0, 0, 4368.286, -13.418, 67.81, 0, 'summon second wave'),
(5713, 55, 10, 11713, 60000, 0, 0, 0, 0, 4368.861, -15.438, 68.36, 0, 'summon second wave'),
-- Condition check
(5713, 70, 34, 944, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(5713, 70, 34, 945, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Third wave
(5713, 75, 0, 0, 0, 0, 0, 0, 2000005628, 0, 0, 0, 0, 'say_protect_2'),
(5713, 75, 10, 11714, 60000, 0, 0, 0, 0, 4371.175, -11.965, 67.64, 0, 'summon third wave'),
-- Quest completed
(5713, 160, 34, 944, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(5713, 160, 34, 945, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(5713, 165, 7, 5713, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest complete'),
(5713, 168, 0, 0, 0, 0, 0, 0, 2000005629, 0, 0, 0, 0, 'say_protect_3'),
(5713, 170, 0, 0, 0, 0, 0, 0, 2000005630, 0, 0, 0, 0, 'say_protect_4'),
(5713, 173, 0, 0, 0, 0, 0, 0, 2000005631, 0, 0, 0, 0, 'say_protect_5'),
(5713, 175, 25, 1, 0, 0, 0, 4, 0, 0, 0, 0, 0, 'set run on'),
(5713, 175, 20, 2, 0, 0, 0, 4, 0, 0, 0, 0, 0, 'start wp move'),
(5713, 175, 18, 20000, 0, 0, 0, 4, 0, 0, 0, 0, 0, 'despawn on timer');
-- movement and attack for spawns
UPDATE creature_template SET MovementType = 2 WHERE entry IN (11713,11714);
DELETE FROM creature_movement_template WHERE entry IN (11713,11714,11711);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(11713, 1, 4368.861, -15.438, 68.36, 1171301, 1000, 5.1),
(11713, 2, 4366.765, -22.430, 70.20, 0, 0, 0),
(11713, 3, 4373.655, -34.314, 73.71, 0, 0, 0),
(11713, 4, 4379.270, -41.688, 80.02, 0, 0, 0),
(11713, 5, 4378.210, -49.390, 85.54, 0, 0, 0),
(11713, 6, 4384.206, -61.075, 86.93, 1171306, 0, 0),
(11714, 1, 4368.861, -15.438, 68.36, 1171301, 1000, 5.1),
(11714, 2, 4366.765, -22.430, 70.20, 0, 0, 0),
(11714, 3, 4373.655, -34.314, 73.71, 0, 0, 0),
(11714, 4, 4379.270, -41.688, 80.02, 0, 0, 0),
(11714, 5, 4378.210, -49.390, 85.54, 0, 0, 0),
(11714, 6, 4384.206, -61.075, 86.93, 1171306, 0, 0),
(11711, 1, 4384.206, -61.075, 86.93, 0, 0, 0),
(11711, 2, 4378.210, -49.390, 85.54, 0, 0, 0),
(11711, 3, 4379.270, -41.688, 80.02, 0, 0, 0),
(11711, 4, 4373.655, -34.314, 73.71, 0, 0, 0),
(11711, 5, 4366.765, -22.430, 70.20, 0, 0, 0),
(11711, 6, 4368.861, -15.438, 68.36, 0, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1171301,1171306);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(1171301, 0, 25, 1, 0, 0, 0, 'set run on'),
(1171306, 0, 26, 0, 11711, 10, 2, 'attack Sentinel Aynasha');

-- quest 667 - Death From Below (Xfurry)
DELETE FROM db_script_string WHERE entry IN (2000005632,2000005633);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005632,'All hands to battle stations! Naga incoming!',0,1,0,22,'Shakes O\'Breen - yell_naga_1'),
(2000005633,'If we can just hold them now, I am sure we will be in the clear.',0,0,0,0,'Shakes O\'Breen - yell_naga_2');
-- quest script
UPDATE quest_template SET StartScript = entry WHERE entry = 667;
DELETE FROM dbscripts_on_quest_start WHERE id = 667;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES
-- (667, 0, C, d, d2, 0, 0, 0, 'change npc-flags on quest-accept'),  -- ??
(667, 0, 0, 0, 0, 0, 0, 0, 2000005632, 0, 0, 0, 0, 'say_protect_1'),
-- First wave
(667, 20, 10, 2775, 60000, 0, 0, 0, 0, -2158.563, -1972.463, 15.812, 0, 'summon first wave'),
(667, 20, 10, 2775, 60000, 0, 0, 0, 0, -2153.296, -1969.006, 15.628, 0, 'summon first wave'),
(667, 20, 10, 2775, 60000, 0, 0, 0, 0, -2155.721, -1970.597, 15.327, 0, 'summon first wave'),
-- Condition check
(667, 50, 34, 944, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(667, 50, 34, 945, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Second wave
(667, 55, 10, 2775, 60000, 0, 0, 0, 0, -2158.563, -1972.463, 15.812, 0, 'summon second wave'),
(667, 55, 10, 2775, 60000, 0, 0, 0, 0, -2153.296, -1969.006, 15.628, 0, 'summon second wave'),
(667, 55, 10, 2775, 60000, 0, 0, 0, 0, -2155.721, -1970.597, 15.327, 0, 'summon second wave'),
(667, 65, 0, 0, 0, 0, 0, 0, 2000005633, 0, 0, 0, 0, 'say_protect_2'),
-- Condition check
(667, 100, 34, 944, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(667, 100, 34, 945, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Third wave
(667, 110, 10, 2775, 60000, 0, 0, 0, 0, -2158.563, -1972.463, 15.812, 0, 'summon third wave'),
(667, 130, 10, 2775, 60000, 0, 0, 0, 0, -2153.296, -1969.006, 15.628, 0, 'summon second wave'),
(667, 130, 10, 2775, 60000, 0, 0, 0, 0, -2155.721, -1970.597, 15.327, 0, 'summon second wave'),
-- Quest completed
(667, 190, 34, 944, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(667, 190, 34, 945, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(667, 195, 7, 667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest complete');
UPDATE creature_template SET MovementType = 2 WHERE entry IN (2775);
DELETE FROM creature_movement_template WHERE entry IN (2775);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(2775, 1, -2153.701, -1973.676, 15.00, 277501, 1000, 5.4),
(2775, 2, -2145.585, -1985.125, 12.04, 0, 0, 0),
(2775, 3, -2132.084, -1992.558, 5.96, 0, 0, 0),
(2775, 4, -2118.418, -2005.057, 5.63, 0, 0, 0),
(2775, 5, -2109.372, -2024.358, 6.08, 0, 0, 0),
(2775, 6, -2100.003, -2030.407, 3.14, 277506, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (277501,277506);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(277501, 0, 25, 1, 0, 0, 0, 'set run on'),
(277506, 0, 26, 0, 2610, 20, 2, 'attack Shakes O\'Breen');

-- The Attack!(q.434) -A
DELETE FROM dbscripts_on_quest_start WHERE id = 434;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(434,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(434,1,3,0,0,0,0,0,0,0,0,0,0,0,0,6.26784,''),
(434,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(434,6,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(434,8,0,0,0,8856,15,7,2000001035,0,0,0,0,0,0,0,'force buddy to: say text'),
(434,8,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(434,10,15,7671,0,8856,15,7,0,0,0,0,0,0,0,0,'cast 7671 on buddy'),
(434,10,3,0,0,0,0,0,0,0,0,0,0,0,0,2.251,''),
(434,11,23,7779,0,8856,15,7,0,0,0,0,0,0,0,0,'morph into 7779'),
(434,11,0,0,0,0,0,0,2000001036,0,0,0,0,0,0,0,''),
(434,15,20,2,0,8856,50,7,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(434,177,7,434,0,0,0,0,0,0,0,0,0,0,0,0,''),
(434,210,3,0,0,1756,10523,7 | 0x10,0,0,0,0,0,0,0,0.711,''),
(434,210,3,0,0,1756,10524,7 | 0x10,0,0,0,0,0,0,0,3.773,'');
UPDATE quest_template SET StartScript = 434 WHERE entry = 434; 
UPDATE creature SET spawntimesecs = 10 WHERE guid = 45707; -- Tyrion's Spybot
DELETE FROM creature_movement_template WHERE entry = 8856;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(8856,1,-8409.1,454.405,123.759,0,0,0,0,0,0,0,0,0,1.55551,0,0),
(8856,2,-8408.57,461.702,123.759,0,0,0,0,0,0,0,0,0,0.550206,0,0),
(8856,3,-8404.36,462.399,123.759,0,0,0,0,0,0,0,0,0,6.07313,0,0),
(8856,4,-8392.61,452.583,123.759,12000,885601,0,0,0,0,0,0,0,5.4511,0,0),
(8856,5,-8387.08,446.018,122.275,0,0,0,0,0,0,0,0,0,5.4177,0,0),
(8856,6,-8357.03,407.012,122.275,0,0,0,0,0,0,0,0,0,4.08331,0,0),
(8856,7,-8363.85,397.714,122.275,0,0,0,0,0,0,0,0,0,5.30068,0,0),
(8856,8,-8352.34,383.887,122.275,0,0,0,0,0,0,0,0,0,0.564722,0,0),
(8856,9,-8335.86,393.578,122.275,11000,885602,0,0,0,0,0,0,0,0.58043,0,0),
(8856,10,-8351.56,383.447,122.275,0,0,0,0,0,0,0,0,0,2.2703,0,0),
(8856,11,-8363.64,398.716,122.275,0,0,0,0,0,0,0,0,0,1.05293,0,0),
(8856,12,-8358.44,409.568,122.275,0,0,0,0,0,0,0,0,0,2.32842,0,0),
(8856,13,-8384.23,442.599,122.275,0,0,0,0,0,0,0,0,0,3.6911,0,0),
(8856,14,-8408.03,426.547,122.275,0,0,0,0,0,0,0,0,0,2.57112,0,0),
(8856,15,-8415.88,433.865,122.275,4000,885603,0,0,0,0,0,0,0,2.27018,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 885601 AND 885603; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(885601,3,0,0,0,0,0,0,2000001037,0,0,0,0,0,0,0,''),
(885601,5,1,16,0,1756,10523,7 | 0x10,0,0,0,0,0,0,0,0,''),
(885601,5,1,16,0,1756,10524,7 | 0x10,0,0,0,0,0,0,0,0,''),
(885601,8,0,0,0,1756,15,7,2000001038,0,0,0,0,0,0,0,'force buddy to: say text'),
(885601,10,0,0,0,0,0,0,2000001039,0,0,0,0,0,0,0,''),
(885602,1,3,0,0,1754,15,7,0,0,0,0,0,0,0,3.84895,''),
(885602,3,0,0,0,0,0,0,2000001040,0,0,0,0,0,0,0,''),
(885602,5,0,0,0,1754,15,7,2000001041,0,0,0,0,0,0,0,'force buddy to: say text'),
(885602,7,3,0,0,1754,15,7,0,0,0,0,0,0,0,2.596,''),
(885602,8,20,2,0,1754,20,7,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(885602,9,0,0,0,0,0,0,2000001042,0,0,0,0,0,0,0,''),
(885603,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(885603,0,15,7671,0,0,0,0,0,0,0,0,0,0,0,0,'cast 7671 on buddy'),
(885603,1,23,0,0,0,0,0,0,0,0,0,0,0,0,0,'demorph'),
(885603,3,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');
UPDATE creature SET spawntimesecs = 10 WHERE guid = 10502; -- Lord Gregor Lescovar
DELETE FROM creature_movement_template WHERE entry = 1754;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(1754,1,-8336.44,398.293,122.274,0,0,0,0,0,0,0,0,0,1.598,0,0),
(1754,2,-8336.895508,403.524048,122.274452,0,0,0,0,0,0,0,0,0,2.344913,0,0),
(1754,3,-8346.306641,414.936646,122.274452,0,0,0,0,0,0,0,0,0,3.659671,0,0),
(1754,4,-8357.951172,409.592560,122.274452,0,0,0,0,0,0,0,0,0,2.304858,0,0),
(1754,5,-8387.138672,445.790863,122.274780,0,0,0,0,0,0,0,0,0,2.257747,0,0),
(1754,6,-8392.396484,452.201996,123.760300,10000,175401,0,0,0,0,0,0,0,2.257747,0,0),
(1754,7,-8400.86,463.355,123.76,40000,175402,0,0,0,0,0,0,0,2.07666,0,0),
(1754,8,-8386.97,445.847,122.275,0,0,0,0,0,0,0,0,0,5.40122,0,0),
(1754,9,-8358.15,410.531,122.275,0,0,0,0,0,0,0,0,0,0.16575,0,0),
(1754,10,-8345.4,414.187,122.275,0,0,0,0,0,0,0,0,0,5.402,0,0),
(1754,11,-8336.05,402.219,122.275,0,0,0,0,0,0,0,0,0,4.95197,0,0),
(1754,12,-8334.01,394.723,122.275,3000,175403,0,0,0,0,0,0,0,2.56278,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 175401 AND 175403; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(175401,3,0,0,0,0,0,0,2000001043,0,0,0,0,0,0,0,''),
(175401,6,1,66,0,1756,10523,7 | 0x10,0,0,0,0,0,0,0,0,''),
(175401,6,1,66,0,1756,10524,7 | 0x10,0,0,0,0,0,0,0,0,''),
(175401,8,0,0,0,1756,15,7,2000001044,0,0,0,0,0,0,0,'force buddy to: say text'),
(175401,9,3,0,0,1756,10523,7 | 0x10,0,0,0,0,-8381.06,429.38,122.275,0.984174,''),
(175401,9,3,0,0,1756,10524,7 | 0x10,0,0,0,0,-8372.24,436.54,122.275,3.9302,''),
(175402,3,0,0,0,0,0,0,2000001045,0,0,0,0,0,0,0,''),
(175402,8,10,1755,300000,0,0,0,0,0,0,0,-8406.6,487.658,123.76,4.51923,''),
(175402,9,15,6634,0,1755,100,7,0,0,0,0,0,0,0,0,'cast 6634 on buddy'),
(175402,9,3,0,0,1755,50,7,0,0,0,0,-8403.89,469.689,123.76,5.19074,''),
(175402,16,0,0,0,0,0,0,2000001046,0,0,0,0,0,0,0,''),
(175402,20,0,0,0,1755,20,7,2000001047,0,0,0,0,0,0,0,'force buddy to: say text'),
(175402,24,0,0,0,0,0,0,2000001048,0,0,0,0,0,0,0,''),
(175402,28,0,0,0,1755,20,7,2000001049,0,0,0,0,0,0,0,'force buddy to: say text'),
(175402,28,20,2,0,1755,20,7,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(175402,29,0,0,0,7766,50,7,2000001050,0,0,0,0,0,0,0,'force buddy to: say text'),
(175402,30,3,0,0,1756,10523,7 | 0x10,0,0,0,0,-8394,448.942,123.76,0.711,''),
(175402,30,3,0,0,1756,10524,7 | 0x10,0,0,0,0,-8389,452.936,123.76,3.773,''),
(175402,29,29,3,1,7766,50,7,0,0,0,0,0,0,0,0,'npc_flag added'),
(175402,31,22,7,1,1755,20,7,0,0,0,0,0,0,0,0,''),
(175402,31,22,7,1,0,0,0,0,0,0,0,0,0,0,0,''),
(175403,1,22,12,1,0,0,0,0,0,0,0,0,0,0,0,''),
(175403,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');
DELETE FROM creature_movement_template WHERE entry = 1755; -- Marzon the Silent Blade
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell,orientation, model1, model2) VALUES
(1755,1,-8403.89,469.689,123.76,15000,0,0,0,0,0,0,0,0,5.19074,0,0),
(1755,2,-8421.35,488.745,122.275,0,0,0,0,0,0,0,0,0,3.32384,0,0),
(1755,3,-8443.96,471.661,122.275,0,0,0,0,0,0,0,0,0,4.80903,0,0),
(1755,4,-8439.43,464.675,122.275,2000,175501,0,0,0,0,0,0,0,5.36195,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 175501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(175501,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(175501,1,22,12,1,0,0,0,0,0,0,0,0,0,0,0,''),
(175501,2,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');
DELETE FROM creature_linking_template WHERE entry = 1755; -- link between Lord Gregor Lescovar and Marzon the Silent Blade
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(1755,0,1754,3,100);
DELETE FROM db_script_string WHERE entry BETWEEN 2000001035 AND 2000001050;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001035,'By your command!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001036,'Wait here, $N. Spybot will make Lescovar come out as soon as possible. Be ready! Attack only after you\'ve overheard their conversation.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001037,'Good day to you both. I would speak to Lord Lescovar.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001038,'Of course. He awaits you in the library.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001039,'Thank you. The Light be with you both.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001040,'Milord, your guest has arrived. He awaits your presence.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001041,'Ah, thank you kindly. I will leave you to the library while I tend to this small matter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001042,'I shall use this time wisely, milord. Thank you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,2,NULL),
(2000001043,'It\'s time for my meditation, leave me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001044,'Yes, sir!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001045,'%s waits for the guards to be out of sight.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000001046,'There you are. What news from Westfall?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001047,'VanCleef sends word that the plans are underway. But he\'s heard rumors about someone snooping about.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001048,'Hmm, it could be that meddler Shaw. I will see what I can discover. Be off with you. I\'ll contact you again soon.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000001049,'Very well. I will return then.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000001050,'That\'s it! That\'s what you were waiting for! KILL THEM!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);

-- Challenge to the Black Flight(q.11165)
DELETE FROM dbscripts_on_event WHERE id = 15406;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(15406,5,10,23789,240000,0,0,0,0,0,0,0,-4703,-3723.73,52.9096,0.647884,''),
(15406,7,0,0,0,23789,50,7,2000005662,0,0,0,0,0,0,0,'force buddy to: say text'),
(15406,10,0,0,0,23789,50,7,2000005663,0,0,0,0,0,0,0,'force buddy to: say text'),
(15406,15,3,0,0,23789,50,7,0,0,0,0,-4690.13,-3714.73,48.8912,0.714641,''),
(15406,23,15,42433,0,23789,50,7,0,0,0,0,0,0,0,0,'cast 42433 on buddy'),
(15406,28,22,16,0x01 | 0x10 | 0x20,23789,50,7,0,0,0,0,0,0,0,0,'temp faction');
DELETE FROM db_script_string WHERE entry IN (2000005662,2000005663);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005662,'Pitiful mortal, Onyxia answers to no one!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,NULL),
(2000005663,'Your pathetic challenge has not gone unnoticed. I shall enjoy toying with you before you die.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,NULL);

-- Vyletongue Corruption (q.7029) -H (q.7041) -A
DELETE FROM dbscripts_on_quest_start WHERE id = 7029;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7029,2,0,0,0,0,0,0,2000005664,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 7029 WHERE entry = 7029; -- Horde ver.
UPDATE quest_template SET StartScript = 7029 WHERE entry = 7041; -- Alliance ver
DELETE FROM db_script_string WHERE entry = 2000005664;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005664,'$N, please take a look at the sample of the Vylestem vine that I took from the caverns, so thet you know what to look for...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);

-- Counting Out Time (q.4973) - should be repeatable.
UPDATE quest_template SET SpecialFlags = 1 WHERE entry = 4973;

-- Laying Waste to the Unwanted(q.10078) -A
DELETE FROM dbscripts_on_spell WHERE id = 32979;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(32979,1,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'credit'),
(32979,1,9,0,300,182817,30,0,0,0,0,0,0,0,0,0,'respawn gobject');
UPDATE gameobject SET spawntimesecs = -300 WHERE guid IN (28162,28163,28169,28171); -- Burning Horde Siege Engine - req. for (q.10087) -- update

-- Burn It Up... For the Horde!(q.10087) -H
DELETE FROM dbscripts_on_spell WHERE id = 33067;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(33067,1,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'credit'),
(33067,1,9,0,300,182817,30,0,0,0,0,0,0,0,0,0,'respawn gobject');

-- Mission: Gateways Murketh and Shaadraz(q.10129) -H 'AND' Mission: The Murketh and Shaadraz Gateways(q.10146) -A
DELETE FROM dbscripts_on_spell WHERE id = 33655;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(33655,0,9,0,180,182090,100,7,0,0,0,0,0,0,0,0,'respawn Vector Coil Fire 1'),
(33655,1,9,0,180,182090,100,7,0,0,0,0,0,0,0,0,'respawn Vector Coil Fire 2'),
(33655,2,9,0,180,182090,100,7,0,0,0,0,0,0,0,0,'respawn Vector Coil Fire 3'),
(33655,3,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit');
UPDATE gameobject SET spawntimesecs = -180 WHERE guid IN (22486,22487,22488,22489); -- Vector Coil Fire - req. for (q.10129) -- update

-- Zuluhed the Whacked(q.10866) -H -A  -- need to force him to attack us somehow!!! flag req.
DELETE FROM dbscripts_on_quest_start WHERE id = 10866;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(10866,2,10,11980,300000,0,0,0,0,0,0,0,-4204.937,316.3974,122.5078,1.36908,'spawn Zuluhed'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4172.627,330.287,135.9577,2.86234,'dragonmaw elite #1'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4169.85,341.2979,135.9378,3.159046,'dragonmaw elite #2'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4167.831,353.6864,138.9584,2.897247,'dragonmaw elite #3'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4224.608,339.7754,135.5993,6.195919,'dragonmaw elite #4'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4222.075,348.025,136.5042,5.951573,'dragonmaw elite #5'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4221.03,356.1273,137.0673,5.864306,'dragonmaw elite #6'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4182.745,320.6509,135.6589,1.762783,'dragonmaw elite #7'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4191.668,314.6634,136.2213,2.076942,'dragonmaw elite #8'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4205.275,310.4961,137.9865,1.082104,'dragonmaw elite #9'),
(10866,68,31,22331,70,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(10866,69,23,19980,0,22332,140698,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(10866,69,23,19980,0,22332,140699,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(10866,69,23,19980,0,22332,140700,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''), 
(10866,70,32,0,0,22332,140698,7 | 0x10,0,0,0,0,0,0,0,0,''),
(10866,70,32,0,0,22332,140699,7 | 0x10,0,0,0,0,0,0,0,0,''), 
(10866,70,32,0,0,22332,140700,7 | 0x10,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 10866 WHERE entry = 10866;
-- zuluhed - update
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, UnitFlags = 33600, movementType = 2 WHERE entry = 11980;
DELETE FROM creature_movement_template WHERE entry = 11980;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(11980,1,-4204.937,316.3974,122.5078,16000,1198001,0,0,0,0,0,0,0,1.36908,0,0),
(11980,2,-4204.937,316.3974,122.5078,300000,0,0,0,0,0,0,0,0,1.36908,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1198001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1198001,1,0,0,0,0,0,0,2000005695,0,0,0,0,0,0,0,''),
(1198001,7,0,0,0,0,0,0,2000005696,0,0,0,0,0,0,0,''),
(1198001,12,0,0,0,0,0,0,2000005697,0,0,0,0,0,0,0,''),
(1198001,15,22,16,0x01 | 0x10 | 0x20,0,0,0,0,0,0,0,0,0,0,0,'temp faction'),
(1198001,18,15,32121,0,0,0,0x02,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005695 AND 2000005697;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005695,'Foolish mortals. Did you think that I would not strike you down for your transgressions?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,5,NULL),
(2000005696,'Indeed, the time has come to end this charade.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,22,NULL),
(2000005697,'Destroy them! Destroy them all!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,25,NULL);
-- Dragonmaw Elite - update
UPDATE creature_template SET movementType = 0 WHERE entry = 22331;
DELETE FROM creature_linking_template WHERE entry = 22331; -- link between 'zuluhed' with 'Dragonmaw Elite'
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(22331,530,11980,17,100);
-- Demon Portal (Zuluhed) - udpade (must be rooted)
UPDATE creature_template SET movementType = 0, DynamicFlags = 8, UnitFlags = 33554432 WHERE entry = 22336;
-- Brood of Neltharaku - updates
UPDATE creature_template SET FactionAlliance = 1840, FactionHorde = 1840, movementType = 0, InhabitType = 5, UnitFlags = 33555200 WHERE entry = 22332;
-- spell should have target
DELETE FROM spell_script_target WHERE entry = 38866;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(38866,1,22331);

-- Ally of the Netherwing(q.10870) -A -H
DELETE FROM dbscripts_on_quest_start WHERE id = 10870;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10870,0,30,649,0,0,0,0,0,0,0,0,0,0,0,0,'taxi patch'),
(10870,0,18,0,0,21657,75654,7 | 0x10,0,0,0,0,0,0,0,0,'Neltharaku despawn'),
(10870,0,10,21657,56000,0,0,0,0,0,0,0,-4169.767,458.3493,154.0605,1.42089,'summon Neltharaku'),
(10870,1,18,0,0,22112,77644,7 | 0x10,0,0,0,0,0,0,0,0,'Karynaku despawn'),
(10870,2,15,5,0,22113,77645,7 | 0x10,0,0,0,0,0,0,0,0,'cast 5 on buddy'),
(10870,3,18,0,0,22113,77645,7 | 0x10,0,0,0,0,0,0,0,0,'Mordenai despawn'),
(10870,17,10,22113,51000,0,0,0,0,0,0,0,-4100.049,969.2758,24.95714,4.59702,'summon Mordenai'),
(10870,19,10,22112,36000,0,0,0,0,0,0,0,-4099.99,945.962,20.7882,1.42089,'summon Karynaku');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005691 AND 2000005694;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005691,'Mother!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,NULL),
(2000005692,'Mordenaku... Your allies have saved us and destroyed the wretch, Zuluhed. Forever they will be a friend to the Netherwing.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005693,'In time, we will again require the assistance of the mortals. Across this world our birthright is shattered. It will be the mortal races that help us regain our rightful place on Draenor. Watch over them, Mordenaku...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005694,'Farewell, mortal. We are forever indebted to you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
-- Mordenai
DELETE FROM dbscripts_on_creature_movement WHERE id = 2211301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2211301,4,31,21478,80,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(2211301,5,26,0,0,21478,80,1,0,0,0,0,0,0,0,0,'Attack on Rocknail Ripper');
UPDATE creature_template SET MinLevelHealth = 86160, MaxLevelHealth = 86160 WHERE entry = 22113; -- correct with x-savior stats
-- Mordenai (22113)
UPDATE `creature_template` SET `HealthMultiplier` = '15.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '86160', `MaxLevelHealth` = '86160', `MinLevelMana` = '3231', `MaxLevelMana` = '3231', `MinMeleeDmg` = '476', `MaxMeleeDmg` = '673', `MinRangedDmg` = '404', `MaxRangedDmg` = '601', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '22113';
UPDATE creature SET curhealth = 86160, position_x = -4100.049, position_y = 969.2758, position_z = 24.95714, orientation = 4.59702, spawntimesecs = 65 WHERE guid = 77645; -- correct spawn point (spawntimesecs req. for quest)
DELETE FROM creature_movement_template WHERE entry = 22113;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(22113,1,-4100.049,969.2758,24.95714,12000,0,0,0,0,0,0,0,0,4.59702,0,0),
(22113,2,-4104.06,931.187,18.8469,1000,2211301,0,0,0,0,0,0,0,4.63004,0,0),
(22113,3,-4105.65,911.224,16.1353,0,0,0,0,0,0,0,0,0,4.67716,0,0),
(22113,4,-4106.05,889.833,14.4649,0,0,0,0,0,0,0,0,0,4.21142,0,0),
(22113,5,-4118.47,857.928,8.29486,0,0,0,0,0,0,0,0,0,4.35908,0,0),
(22113,6,-4122.4,839.518,10.4151,0,0,0,0,0,0,0,0,0,4.55935,0,0),
(22113,7,-4143.45,803.2,9.22043,0,0,0,0,0,0,0,0,0,4.53187,0,0),
(22113,8,-4150.96,769.769,6.31908,0,0,0,0,0,0,0,0,0,4.44428,0,0),
(22113,9,-4153.1,760.191,3.47747,0,0,0,0,0,0,0,0,0,4.49533,0,0),
(22113,10,-4155.08,747.368,1.8985,4000,0,0,0,0,0,0,0,0,4.58957,0,0),
(22113,11,-4151.37,769.929,6.42453,0,0,0,0,0,0,0,0,0,1.11419,0,0),
(22113,12,-4132.84,797.355,8.16607,1000,2211301,0,0,0,0,0,0,0,1.07686,0,0),
(22113,13,-4137.32,823.672,9.68296,0,0,0,0,0,0,0,0,0,0.975591,0,0),
(22113,14,-4119.16,842.164,9.89524,0,0,0,0,0,0,0,0,0,1.08947,0,0),
(22113,15,-4115.26,851.276,7.68533,0,0,0,0,0,0,0,0,0,1.46175,0,0),
(22113,16,-4109.66,883.088,13.8876,0,0,0,0,0,0,0,0,0,1.33923,0,0),
(22113,17,-4110.74,914.769,17.723,0,0,0,0,0,0,0,0,0,1.21356,0,0),
(22113,18,-4106.89,948.026,23.0078,0,0,0,0,0,0,0,0,0,1.36672,0,0);
 -- Karynaku <Mate of Neltharaku> - update
UPDATE creature SET spawntimesecs = 50 WHERE guid = 77644;
UPDATE creature_template SET MovementType = 2 WHERE entry = 22112;
DELETE FROM creature_template_addon WHERE entry = 22112;
DELETE FROM creature_addon WHERE guid = 77644;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(77644,0,3,1,0,0,0,NULL);
DELETE FROM creature_movement_template WHERE entry = 22112;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(22112,1,-4099.99,946.078,20.8214,45000,2211201,0,0,0,0,0,0,0,1.42089,0,0),
(22112,2,-4099.99,946.078,20.8214,41000,0,0,0,0,0,0,0,0,1.42089,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2211201,2211202);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2211201,0,32,1,0,22113,40,7,0,0,0,0,0,0,0,0,'wp pause'),
(2211201,1,0,0,0,22113,40,7,2000005691,0,0,0,0,0,0,0,''),
(2211201,3,28,8,0,22113,40,7,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2211201,4,0,0,0,0,0,0,2000005692,0,0,0,0,0,0,0,''),
(2211201,8,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2211201,13,0,0,0,0,0,0,2000005693,0,0,0,0,0,0,0,''),
(2211201,18,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2211201,26,0,0,0,0,0,0,2000005694,0,0,0,0,0,0,0,''),
(2211201,31,1,15,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2211201,34,28,0,0,22113,40,7,0,0,0,0,0,0,0,0,'STATE_STAND'),
(2211201,35,1,254,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Neltharaku - updates
UPDATE creature SET MovementType = 2, spawndist = 0, position_x = -4160.292, position_y = 781.7564, position_z = 107.8656, orientation = 1.3028, spawntimesecs = 65 WHERE guid = 75654; -- correct spawn point
DELETE FROM creature_movement WHERE id = 75654; 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(75654,1,-4160.292,781.7564,107.8656,0,0,0,0,0,0,0,0,0,1.3028,0,0),
(75654,2,-4150.894,819.7193,112.4489,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,3,-4147.188,852.9213,112.449,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,4,-4126.215,897.6987,112.449,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,5, -4113.534,926.0124,112.449,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,6,-4098.13,963.6712,112.449,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,7,-4063.067,1046.515,112.449,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,8,-4008.534,1081.363,112.449,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,9,-3926.171,1057.316,112.449,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,10,-3914.31,958.3683,114.7823,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,11,-3930.769,894.2169,114.2545,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,12,-3991.642,763.9112,112.449,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,13,-4060.605,579.9987,112.449,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,14,-4085.638,468.8222,173.4489,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,15,-4097.893,416.0321,177.8378,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,16,-4110.39,374.4871,174.2545,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,17,-4135.225,331.1968,174.7545,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,18,-4203.078,269.2113,172.4767,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,19,-4239.532,280.7727,169.0878,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,20,-4278.137,304.6405,169.1989,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,21,-4295.682,340.7838,173.9212,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,22,-4297.044,383.0331,169.0878,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,23,-4267.532,404.9037,169.0878,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,24,-4225.749,416.8825,169.0878,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,25,-4193.994,418.2155,169.0878,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,26,-4176.15,444.5788,158.2545,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,27,-4163.389,480.9925,149.6712,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,28,-4157.379,548.4786,145.2823,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,29,-4178.163,628.6951,101.0601,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,30,-4182.795,656.5566,97.31005,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,31,-4184.389,678.5916,98.50452,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,32,-4182.358,726.181,102.5323,0,0,0,0,0,0,0,0,0,0,0,0),
(75654,33,-4175.015,753.1885,103.2545,0,0,0,0,0,0,0,0,0,0,0,0);
UPDATE creature_template SET MovementType = 2 WHERE entry = 21657;
UPDATE creature_template_addon SET moveflags = 0 WHERE entry = 21657; 
DELETE FROM creature_movement_template WHERE entry = 21657;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(21657,1,-4169.767,458.3493,154.0605,0,2165701,0,0,0,0,0,0,0,0,0,0),
(21657,2,-4169.767,458.3493,154.0605,0,0,0,0,0,0,0,0,0,0,0,0),
(21657,3,-4077.839,866.6138,59.29763,0,0,0,0,0,0,0,0,0,0,0,0),
(21657,4,-4080.072,909.3902,44.77148,0,0,0,0,0,0,0,0,0,0,0,0),
(21657,5,-4082.829,949.0493,17.93121,20000,2165702,0,0,0,0,0,0,0,2.26034,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2165701,2165702);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2165701,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2165702,1,1,293,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2165702,4,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause'),
(2165702,30,1,254,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Peace at Last (q.11152)
DELETE FROM dbscripts_on_event WHERE id = 15385;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(15385,1,9,21607,60,0,0,0,0,0,0,0,0,0,0,0,''),
(15385,3,10,23768,60000,0,0,0,0,0,0,0,-3532.56,-4316.76,7.04,2.98,'spawn Lynn Hyal'),
(15385,3,10,23769,60000,0,0,0,0,0,0,0,-3533.17,-4318.34,7.05,2.51,'spawn Jimmy Hyal'),
(15385,6,0,0,0,23768,50,7,2000005746,0,0,0,0,0,0,0,'force buddy to: say text'),
(15385,11,0,0,0,23768,50,7,2000005747,0,0,0,0,0,0,0,'force buddy to: say text'),
(15385,16,0,0,0,23768,50,7,2000005748,0,0,0,0,0,0,0,'force buddy to: say text'),
(15385,24,0,0,0,23768,50,7,2000005749,0,0,0,0,0,0,0,'force buddy to: say text'),
(15385,30,3,0,0,23769,50,7,0,0,0,0,0,0,0,1.15404,''),
(15385,31,0,0,0,23769,50,7,2000005750,0,0,0,0,0,0,0,'force buddy to: say text'),
(15385,34,3,0,0,23768,50,7,0,0,0,0,0,0,0,4.3192,''),
(15385,35,28,8,0,23768,50,7,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(15385,36,0,0,0,23768,50,7,2000005751,0,0,0,0,0,0,0,'force buddy to: say text'),
(15385,39,8,23768,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005746 AND 2000005751;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005746,'James? James... No, you\'re not James, but I know who you are...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005747,'You\'re the one who tracked down the brutes who did this to us.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005748,'I tried so hard to tell Jim... to tell anyone... who was behind this, but I couldn\'t find a way...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005749,'Thank you for helping us and for helping Jim. If you see him, tell him little Jimmy and I love him and that we\'re waiting for him.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005750,'Mommy, when will we see Daddy again?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005751,'I don\'t know when we\'ll see Daddy again, Jimmy, but I know he loves you and he misses you very much.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
UPDATE creature_template SET NpcFlags = 0 WHERE entry = 23768; -- Lynn Hyal has no gossip
UPDATE gameobject SET spawntimesecs = -60 WHERE id = 186315; 
-- Raptor Horns(q.865)
DELETE FROM dbscripts_on_quest_end WHERE id = 865;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(865,0,0,0,0,0,0,0,2000005752,0,0,0,0,0,0,0,''),
(865,2,15,17550,0,0,0,0,0,0,0,0,0,0,0,0,''),
(865,6,1,34,0,0,0,0,0,0,0,0,0,0,0,0,''),
(865,10,0,0,0,0,0,0,2000005753,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 865 WHERE entry = 865;
DELETE FROM db_script_string WHERE entry IN (2000005752,2000005753);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005752,'Now let\'s try it...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005753,'Ugh! That\'s terrible!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);

-- All Clear!(q.10436)
DELETE FROM dbscripts_on_quest_end WHERE id = 10436;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(10436,0,29,2,2,0,0,0,0,0,0,0,0,0,0,0,'20913 - npc_flag removed'),
(10436,1,0,0,0,0,0,0,2000005754,0,0,0,0,0,0,0,''),
(10436,3,3,0,0,0,0,0,0,0,0,0,4922.18,2991.38,93.9847,5.88582,''),
(10436,8,1,173,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10436,12,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10436,12,15,28730,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10436,14,9,121776,15,0,0,0,0,0,0,0,0,0,0,0,'respawn  Ethereal Repair Kit#1'),
(10436,14,9,121777,15,0,0,0,0,0,0,0,0,0,0,0,'respawn  Ethereal Repair Kit#2'),
(10436,14,9,121778,15,0,0,0,0,0,0,0,0,0,0,0,'respawn  Ethereal Repair Kit#3'),
(10436,14,9,121779,15,0,0,0,0,0,0,0,0,0,0,0,'respawn  Ethereal Repair Kit#4'),
(10436,16,0,0,0,0,0,0,2000000017,0,0,0,0,0,0,0,''),
(10436,20,3,0,0,0,0,0,0,0,0,0,4914.74,2991.92,94.1138,0,''),
(10436,23,3,0,0,0,0,0,0,0,0,0,0,0,0,0.15708,''),
(10436,23,29,2,0,0,0,0,0,0,0,0,0,0,0,0,'20913 - npc_flag added');
DELETE FROM db_script_string WHERE entry = 2000005754;
DELETE FROM db_script_string WHERE entry = 2000000017;
INSERT INTO db_script_string (entry,content_default) VALUES
('2000005754','Now to begin the repairs.'),
('2000000017','It\'s working! Ghabar will be pleased to hear the news.');
UPDATE quest_template SET CompleteScript =10436 WHERE entry =10436;

-- Sarkoth (Durotar) -- redone (this time 100% correct)
DELETE FROM dbscripts_on_quest_end WHERE id = 790;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(790,2,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(790,5,0,0,0,0,0,0,2000005089,0,0,0,0,0,0,0,''),
(790,7,28,7,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_DEATH');
UPDATE db_script_string SET content_default = 'Go swiftly, $N. My fate is in your hands.' WHERE entry = 2000005089;
UPDATE quest_template SET StartScript = 0 WHERE entry = 790;
UPDATE quest_template SET CompleteScript = 790 WHERE entry = 790;

-- Minshina's Skull(q.808)
DELETE FROM dbscripts_on_quest_end WHERE id = 808;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(808,2,10,3289,15000,0,0,0,0,0,0,0,-822.285,-4921.8,19.4009,2.6098,'summon'),
(808,5,1,2,0,3289,20,7,0,0,0,0,0,0,0,0,''),
(808,7,0,0,0,0,0,0,2000005776,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000005776;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005776,'I thank you, $N. And my brother thanks you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,2,NULL);
UPDATE quest_template SET CompleteScript = 808 WHERE entry = 808;
UPDATE creature_template SET movementType = 0 WHERE entry = 3289;

-- Report to Orgnil(q.823)
DELETE FROM dbscripts_on_quest_end WHERE id = 823;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(823,1,0,0,0,0,0,0,2000005777,0,0,0,0,0,0,0,''),
(823,4,0,0,0,0,0,0,2000005778,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000005777, 2000005778);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005777,'%s listens to Sigilbringer\'s report...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005778,'What?? The Burning Blade is spreading! We must investigate!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,NULL);
UPDATE quest_template SET CompleteScript = 823 WHERE entry = 823;

-- Dark Storms(q.806) - update (now completed)
DELETE FROM dbscripts_on_quest_end WHERE id = 806;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(806,1,0,0,0,0,0,0,2000000065,0,0,0,0,0,0,0,''),
(806,4,0,0,0,0,0,0,2000005779,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000005779;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005779,'%s smashes the dead, twisted claw. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);
UPDATE quest_template SET CompleteScript = 806 WHERE entry = 806;

-- Zuluhed the Whacked(q.10866) -H -A - UPDATE
DELETE FROM dbscripts_on_quest_start WHERE id = 10866;
INSERT INTO dbscripts_on_quest_start VALUES 
(10866,2,10,11980,300000,0,0,0,0,0,0,0,-4204.937,316.3974,122.5078,1.36908,'spawn Zuluhed'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4172.627,330.287,135.9577,2.86234,'dragonmaw elite #1'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4169.85,341.2979,135.9378,3.159046,'dragonmaw elite #2'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4167.831,353.6864,138.9584,2.897247,'dragonmaw elite #3'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4224.608,339.7754,135.5993,6.195919,'dragonmaw elite #4'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4222.075,348.025,136.5042,5.951573,'dragonmaw elite #5'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4221.03,356.1273,137.0673,5.864306,'dragonmaw elite #6'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4182.745,320.6509,135.6589,1.762783,'dragonmaw elite #7'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4191.668,314.6634,136.2213,2.076942,'dragonmaw elite #8'),
(10866,3,10,22331,300000,0,0,0,0,0,0,0,-4205.275,310.4961,137.9865,1.082104,'dragonmaw elite #9'),
(10866,21,26,0,0,11980,100,0,0,0,0,0,0,0,0,0,''),
(10866,68,31,22331,70,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(10866,69,23,19980,0,22332,140698,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(10866,69,23,19980,0,22332,140699,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(10866,69,23,19980,0,22332,140700,7 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''), 
(10866,70,32,0,0,22332,140698,7 | 0x10,0,0,0,0,0,0,0,0,''),
(10866,70,32,0,0,22332,140699,7 | 0x10,0,0,0,0,0,0,0,0,''), 
(10866,70,32,0,0,22332,140700,7 | 0x10,0,0,0,0,0,0,0,0,'');
-- zuluhed - update
DELETE FROM dbscripts_on_creature_movement WHERE id = 1198001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1198001,1,0,0,0,0,0,0,2000005695,0,0,0,0,0,0,0,''),
(1198001,7,0,0,0,0,0,0,2000005696,0,0,0,0,0,0,0,''),
(1198001,12,0,0,0,0,0,0,2000005697,0,0,0,0,0,0,0,''),
(1198001,15,15,32121,0,0,0,0x02,0,0,0,0,0,0,0,0,''),
(1198001,16,22,16,0x01 | 0x10 | 0x20,0,0,0,0,0,0,0,0,0,0,0,'temp faction');

-- Blast the Infernals! (q.10598) -H  (q.10564) -A
DELETE FROM dbscripts_on_event WHERE id = 13874;
INSERT INTO dbscripts_on_event VALUES
(13874,0,22,114,0x00 | 0x08,21316,74644,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74646,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74647,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74645,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74651,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74648,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74653,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74643,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74642,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74649,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74652,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74650,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74640,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,0,22,114,0x00 | 0x08,21316,74639,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74641,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74658,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74657,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74656,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74654,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74655,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74666,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74665,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74659,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74668,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74667,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74662,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74671,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74670,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74660,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74664,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74663,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74661,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,1,22,114,0x00 | 0x08,21316,74669,0x00 | 0x10,0,0,0,0,0,0,0,0,'temp faction'),
(13874,3,15,37134,0,21512,10,1 | 0x08,0,0,0,0,0,0,0,0,'force buddy to cast 37134');
-- spell should have target
DELETE FROM spell_script_target WHERE entry = 37134;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(37134,1,21316);

-- The Stagnant Oasis(q.877) -H
DELETE FROM dbscripts_on_event WHERE id = 525;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(525,1,9,121921,30,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(525,1,9,121922,30,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(525,1,9,121923,30,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(525,1,9,121924,30,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(525,1,9,121925,30,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject');
-- Fissure plant -- shouldnt be any flag set there
UPDATE gameobject_template SET flags = 0 WHERE entry = 3743;
DELETE FROM gameobject_loot_template WHERE entry = 2603;
INSERT INTO gameobject_loot_template (entry, item, ChanceorQuestChance, groupid, minCountorRef, maxCount, condition_id) VALUES
(2603, 5066, 100, 0 , 1, 1, 0); -- correct

-- Revenge of Gann(q.849) -H 
UPDATE gameobject SET spawntimesecs  = 60, animprogress = 255 WHERE guid = 13259; -- gameobject can be destroyed by spell (explode animation works)

-- The Tear of the Moons (q.857) -H
DELETE FROM dbscripts_on_quest_end WHERE id = 857;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(857,1,0,0,0,0,0,0,2000000345,0,0,0,0,0,0,0,''),
(857,3,1,4,0,0,0,0,0,0,0,0,0,0,0,0,''),
(857,6,3,0,0,0,0,0,0,0,0,0,0,0,0,5.13708,''),
(857,7,0,0,0,0,0,0,2000000346,0,0,0,0,0,0,0,''),
(857,10,0,0,0,0,0,0,2000000347,0,0,0,0,0,0,0,''),
(857,13,0,0,0,0,0,0,2000000348,0,0,0,0,0,0,0,''),
(857,15,23,724,0,0,0,0,0,0,0,0,0,0,0,0,''),
(857,16,3,0,0,0,0,0,0,0,0,0,-4217.93,-2343.5,91.6918,4.6415,''),
(857,18,15,5,0,0,0,0x02,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_creature_death WHERE id = 3421;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3421,1,23,0,0,0,0,0,0,0,0,0,0,0,0,0,'demorph');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000345 AND 2000000348;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000345,'The power of the Tear of the Moons is mine! Mine I say!',0,0,0,5,NULL),
(2000000346,'%s begins to rub the Tear of the Moons.',0,2,0,0,NULL),
(2000000347,'Power! Glorious power!',0,0,0,15,NULL),
(2000000348,'%s begins to make strange grunting noises. The Tear of the Moons drops to the ground and shatters.',0,2,0,0,NULL);
UPDATE quest_template SET CompleteScript = 857 WHERE entry = 857;
-- Feegly the Exiled
UPDATE creature SET position_x = -4218.656250, position_y = -2339.575684, position_z = 91.730965, orientation = 1.864294, spawntimesecs = 60 WHERE guid = 14138;

-- Distracting Jarven(q.308)
DELETE FROM dbscripts_on_quest_end WHERE id = 308;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(308,0,0,0,0,0,0,0,2000000077,0,0,0,0,0,0,0,''),
(308,0,29,2,2,0,0,0,0,0,0,0,0,0,0,0,'1373 - npc_flag removed'),
(308,1,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'1373 - movement chenged to 2:waypoint'),
(308,12,9,35875,55,0,0,0,0,0,0,0,-5607.24,-547.934,392.985,0.471239,''),
(308,23,0,0,0,0,0,0,2000000056,0,0,0,0,0,0,0,'');

-- Collection of Goods(q.7642)
DELETE FROM dbscripts_on_quest_end WHERE id = 7642;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7642,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'1416 - npc_flag removed'),
(7642,2,0,0,0,0,0,0,2000000063,0,0,0,0,0,0,0,''),
(7642,4,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'1416 - movement chenged to 2:waypoint'),
(7642,105,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'1416 - npc_flag added');

-- Teron Gorefiend, I am...(q.10639) -H  (q.10645) -A  -- UPDATES
DELETE FROM dbscripts_on_quest_start WHERE id = 10639;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10639,0,0,0,0,0,0,0,2000000031,0,0,0,0,0,0,0,''),
(10639,3,23,21867,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10639,5,10,21877,300000,0,0,0,0,0,0,0,-4536.58,1028.76,8.8266,3.72963,'summon - Karsius the Ancient Watcher'),
(10639,8,0,0,0,21872,40,0,2000005473,0,0,0,0,0,0,0,''),
(10639,9,22,90,0x01,21877,50,7,0,0,0,0,0,0,0,0,'temp faction');
DELETE FROM db_script_string WHERE entry = 2000005473; 
INSERT INTO db_script_string (entry, content_default, type) VALUES
(2000005473,'Waste no time, fool! Use our power to kill those what stand in our way! Destroy Krasius before you are subdued!', 4);
-- Karsius the Ancient Watcher
DELETE FROM creature_linking_template WHERE entry = 21876; -- link between Karsius the Ancient Watcher and Chain of Shadows 
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(21876,530,21877,8208,100); -- 16 + 8192
DELETE FROM dbscripts_on_creature_death WHERE id = 21877;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21877,1,14,37748,0,0,0,0x02,0,0,0,0,0,0,0,0,'');
-- Ancient Shadowmoon Spirit
DELETE FROM dbscripts_on_creature_death WHERE id = 21797;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21797,0,23,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(21797,3,18,0,0,21877,50,7,0,0,0,0,0,0,0,0,'Karsius the Ancient Watcher despawn'),
(21797,3,14,37748,0,0,0,0x02,0,0,0,0,0,0,0,0,'');
-- Teron Gorefiend - update
UPDATE creature_template SET MovementType = 2, equipmentTemplateid = 321, SpeedRun = 1.5 WHERE entry = 21867;
UPDATE creature_template_addon SET mount = 10720 WHERE entry = 21867;  -- need his mount 
DELETE FROM creature_movement_template WHERE entry = 21867;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(21867,1,-4542.21,1023.72,9.66909,17000,2186701,0,0,0,0,0,0,0,0.864165,0,0),
(21867,2,-4527.459473,1015.657593,10.890298,0,0,0,0,0,0,0,0,0,5.282815,0,0),
(21867,3,-4520.572266,1000.627075,12.485450,0,0,0,0,0,0,0,0,0,4.782524,0,0),
(21867,4,-4521.288086,982.703003,11.543771,0,0,0,0,0,0,0,0,0,4.804492,0,0),
(21867,5,-4519.058594,964.810120,12.235850,0,0,0,0,0,0,0,0,0,4.878321,0,0),
(21867,6,-4512.545410,944.781250,4.226434,0,0,0,0,0,0,0,0,0,4.973356,0,0),
(21867,7,-4505.491211,931.839050,-0.856650,0,0,0,0,0,0,0,0,0,5.517634,0,0),
(21867,8,-4493.015625,922.165771,5.736859,0,0,0,0,0,0,0,0,0,5.511348,0,0),
(21867,9,-4463.642090,907.782104,7.652451,0,0,0,0,0,0,0,0,0,5.856919,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2186701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2186701,0,23,21797,0,21797,100,7,0,0,0,0,0,0,0,0,''),
(2186701,1,18,0,0,21797,100,7,0,0,0,0,0,0,0,0,''),
(2186701,7,0,0,0,0,0,0,2000005471,0,0,0,0,0,0,0,''),
(2186701,8,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2186701,10,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2186701,12,0,0,0,0,0,0,2000005472,0,0,0,0,0,0,0,''),
(2186701,13,1,22,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000005471,2000005472);
INSERT INTO db_script_string (entry, content_default, type) VALUES
(2000005471,'We will meet again... Someday.', 0),
(2000005472,'Death incarnate has been released upon the world once more! Teron Gorefiend has returned...', 6);

-- Lord Illidan Stormrage(q.11108) -H -A
DELETE FROM dbscripts_on_quest_start WHERE id = 11108;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11108,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(11108,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'23139 - npc_flag removed'),
(11108,1,0,0,0,0,0,0,2000000034,0,0,0,0,0,0,0,''),
(11108,5,3,0,0,0,0,0,0,0,0,0,-5108.58,598.509,85.4239,2.47553,''),
(11108,18,0,1,0,0,0,0,2000000035,0,0,0,0,0,0,0,''),
(11108,25,0,0,0,0,0,0,2000000036,0,0,0,0,0,0,0,''),
(11108,28,10,23467,76000,0,0,0,0,0,0,0,-5113.25,606.427,85.0531,5.2527,'spawn Lord Illidan'),
(11108,32,0,1,0,0,0,0,2000000037,0,0,0,0,0,0,0,''),
(11108,37,28,8,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11108,40,0,0,0,0,0,0,2000000038,0,0,0,0,0,0,0,''),
(11108,44,1,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11108,48,0,0,0,23467,20,4,2000005348,0,0,0,0,0,0,0,'force 23467 to: say text'),
(11108,52,0,0,0,0,0,0,2000000039,0,0,0,0,0,0,0,''),
(11108,55,0,0,0,23467,20,4,2000005349,0,0,0,0,0,0,0,'force 23467 to: say text'),
(11108,60,0,0,0,23467,20,4,2000005350,0,0,0,0,0,0,0,'force 23467 to: say text'),
(11108,65,0,0,0,23467,20,4,2000005351,0,0,0,0,0,0,0,'force 23467 to: say text'),
(11108,70,0,0,0,23467,20,4,2000005352,0,0,0,0,0,0,0,'force 23467 to: say text'),
(11108,71,15,41528,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11108,72,6,530,0,0,0,0,0,0,0,0,-5122.05,603.562,84.678,0.0421238,''),
(11108,73,14,42016,0,0,0,0x02,0,0,0,0,0,0,0,0,''),
(11108,80,0,0,0,23467,20,4,2000005353,0,0,0,0,0,0,0,'force 23467 to: say text'),
(11108,90,0,0,0,23467,20,4,2000005354,0,0,0,0,0,0,0,'force 23467 to: say text'),
(11108,101,28,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11108,103,0,0,0,0,0,0,2000000040,0,0,0,0,0,0,0,''),
(11108,103,1,254,0,23467,15,0,0,0,0,0,0,0,0,0,'force 23467 to: emote'),
(11108,109,0,0,0,0,0,0,2000000041,0,0,0,0,0,0,0,''),
(11108,119,7,11108,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11108,125,0,0,0,23141,30,0x00,2000005355,0,0,0,0,0,0,0,'force 23141 to: say text'),
(11108,126,14,41528,0,0,0,0x02,0,0,0,0,0,0,0,0,''),
(11108,126,14,41519,0,0,0,0x02,0,0,0,0,0,0,0,0,''),
(11108,128,15,6273,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11108,129,3,0,0,0,0,0,0,0,0,0,-5085,578.657,86.6483,2,''),
(11108,129,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'23139 - npc_flag added'),
(11108,129,15,41540,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11108,150,3,0,0,0,0,0,0,0,0,0,0,0,0,2.36871,''),
(11108,151,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005350 AND 2000005355;
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000005350','Blathering idiot. You incomprehensibly incompetent buffoon...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1',NULL);
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000005351','THIS is your hero?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1',NULL);
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000005352','You have been deceived, imbecile.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1',NULL);
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000005353','This... whole... operation... HAS BEEN COMPROMISED!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1',NULL);
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000005354','I expect to see this insect\'s carcass in pieces in my lair within the hour. Fail and you will suffer a fate so much worse than death.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1',NULL);
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000005355','You will not harm the boy, Mor\'ghor! Quickly, $N, climb on my back!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL);
UPDATE db_script_string SET emote = 1 WHERE entry IN (2000000034,2000000036,2000000038,2000005348,2000005349,2000005350,2000005351,2000005352,2000005353,2000005354);
UPDATE db_script_string SET emote = 6 WHERE entry IN (2000000039);
UPDATE db_script_string SET emote = 22 WHERE entry IN (2000000035);
UPDATE db_script_string SET emote = 25 WHERE entry IN (2000000041);
UPDATE db_script_string SET emote = 66 WHERE entry IN (2000000037);

-- Gul'dan 
DELETE FROM dbscripts_on_creature_movement WHERE id = 1700803 AND delay IN (26,27); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1700803,26,14,35996,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- must stop prev. spell
(1700803,27,31,21052,30,0,0,0,0,0,0,0,0,0,0,0,''); -- check if creature is alive
-- Consortium Nether Runner
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1966701 AND 1966703;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(1966701,0,15,34427,0,0,0,4,0,0,0,0,0,0,0,0,'spawn effect'),
(1966702,0,31,18265,50,0,0,0,-13000,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(1966702,1,0,0,0,0,0,0,2000005362,2000005363,0,0,0,0,0,0,''),
(1966702,2,3,0,0,18265,15,0x04,0,0,0,0,-2087.02,8562.94,22.0969,0.66592,'force buddy to move'),
(1966702,7,0,0,0,18265,15,0x04,2000005364,2000005365,0,0,0,0,0,0,''),
(1966702,10,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1966702,12,0,0,0,0,0,0,2000005366,0,0,0,0,0,0,0,''),
(1966702,12,3,0,0,18265,50,0x04,0,0,0,0,0,0,0,2.51327,'force buddy to move'),
(1966703,1,15,34427,0,0,0,4,0,0,0,0,0,0,0,0,'despawn effect'),
(1966703,3,18,0,0,0,0,4,0,0,0,0,0,0,0,0,'despawn self');
-- Deathguard Phillip
UPDATE creature_movement_template SET waittime = 2000, script_id = 173901 WHERE entry = 1739 AND point = 7;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (173901,173902);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(173901,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Phillip - RUN ON'),
(173902,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'Phillip - RUN OFF');
-- Deathguard Oliver
DELETE FROM dbscripts_on_creature_movement WHERE id = 173701;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(173701,0,20,1,5,0,0,0,0,0,0,0,0,0,0,0,'Oliver movement changed to 1:random'),
(173701,35,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'Oliver movement changed to 2:waypoint');
-- Tormented Spirit
DELETE FROM dbscripts_on_creature_movement WHERE id = 153301;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(153301,0,20,1,5,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(153301,175,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement changed to 2:waypoint');


-- ===============
-- CLEANUP OF DATA
-- ===============
DELETE FROM db_script_string WHERE entry=2000000033;
DELETE FROM db_script_string WHERE entry=2000000104;
DELETE FROM db_script_string WHERE entry=2000000105;
DELETE FROM db_script_string WHERE entry=2000000106;
DELETE FROM db_script_string WHERE entry=2000000107;
DELETE FROM db_script_string WHERE entry=2000000108;
DELETE FROM db_script_string WHERE entry=2000000109;
DELETE FROM db_script_string WHERE entry=2000000110;
DELETE FROM db_script_string WHERE entry=2000000111;
DELETE FROM db_script_string WHERE entry=2000000112;
DELETE FROM db_script_string WHERE entry=2000000113;
DELETE FROM db_script_string WHERE entry=2000000114;
DELETE FROM db_script_string WHERE entry=2000000115;
DELETE FROM db_script_string WHERE entry=2000000116;
DELETE FROM db_script_string WHERE entry=2000000117;
DELETE FROM db_script_string WHERE entry=2000000118;
DELETE FROM db_script_string WHERE entry=2000000119;