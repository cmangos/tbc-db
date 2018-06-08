-- checked in sniff, have no IMMUNE_TO_NPC flag before or after starting escort
UPDATE creature_template SET UnitFlags=UnitFlags&~512 WHERE entry IN(10427,10646);

-- Teleport 20682 used by Lady Jaina Proudmoore 4968
DELETE FROM `spell_target_position` WHERE `id` = 20682;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(20682, 1, -3891.8, -4609.97, 9.50106, 0.764318);

-- Doomsaw 21119 summoned by 16944
UPDATE `creature_template` SET `UnitFlags` = 33554432 WHERE `entry` = 21119;

-- Booty Bay Bruiser 4624
UPDATE `creature_template` SET `Scale` = 1.05, `UnitFlags` = 32768 WHERE `entry` = 4624;

-- Ratchet Bruiser 3502, Gadgetzan Bruiser 9460, Everlook Bruiser 11190
UPDATE `creature_template` SET `UnitFlags` = 32768 WHERE `entry` IN (3502, 9460, 11190);

-- Gadgetzan Sniper 21448
UPDATE `creature_template` SET `UnitFlags` = 32768, `MinLevel` = 67, `MaxLevel` = 67, `MinLevelHealth` = 3914, `MaxLevelHealth` = 3914 WHERE `entry` = 21448;

-- Area 52 Big Bruiser 20484, Area 52 Bruiser 20485
UPDATE `creature_template` SET `UnitFlags` = `UnitFlags`|32768 WHERE `entry` IN (20484, 20485);

-- Crudely Written Log should drop if player has already turned in 5121
-- http://www.wowhead.com/item=12842/crudely-written-log#comments:id=219726
DELETE FROM conditions WHERE condition_entry IN (3000,3001,552,553);
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
(3001,-2,3000,211,'Quest ID 5121 Taken OR Rewarded'),
(3000,8,5121,0,'Quest ID 5121 Rewarded');
UPDATE creature_loot_template SET condition_id=3001 WHERE item=12842;


-- Ozzie Togglevolt 1268 - modelid also used by 21413,21930,21935,21942,21944
UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE `modelid` = 3441;

-- 0 as AIName
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (15554,16166,17290,17296,17431);

-- c.22295 eligible target for Hotter than Hell q.10764
DELETE FROM `spell_script_target` WHERE `entry` = 38202 AND `targetEntry` = 22295;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES (38202, 2, 22295, 0);

-- Summon Enraged Felbat 14252, Summon Enraged Wyvern 14307, Summon Enraged Gryphon 14313, Summon Enraged Hippogryph 14329, Summon Enraged Mounts 29110
UPDATE `creature_template` SET `SpeedRun` = (30 / 7), `SpeedWalk` = (2.5 / 2.5), `Rank` = 1, `PowerMultiplier` = 3, `MovementType` = 0
WHERE `entry` IN (
9297, -- Enraged Wyvern
9521, -- Enraged Felbat
9526, -- Enraged Gryphon
9527); -- Enraged Hippogryph

-- Forsaken Raider 17108 guid.15576
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 15576 AND `id` = 17108;
DELETE FROM `creature_movement` WHERE `id` = 15576;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(15576, 1, -354.6337, -729.4265, 57.6428, 100, 0, 0),
(15576, 2, -342.9415, -734.2522, 57.73264, 100, 0, 0),
(15576, 3, -333.0178, -731.9668, 57.65078, 100, 0, 0),
(15576, 4, -325.6979, -725.5065, 57.68607, 100, 0, 0),
(15576, 5, -323.0481, -707.5532, 57.6992, 100, 0, 0),
(15576, 6, -331.1091, -698.3443, 57.28492, 100, 0, 0),
(15576, 7, -345.3559, -695.147, 57.7716, 100, 0, 0),
(15576, 8, -351.5483, -697.48, 57.64296, 100, 0, 0),
(15576, 9, -362.4808, -716.3622, 57.62971, 100, 0, 0),
(15576, 10, -359.8831, -724.0493, 57.7183, 100, 0, 0);

-- Silvermoon Ritual of Summoning Dummy 18782
UPDATE `creature_template` SET `UnitFlags` = 33554432, `ExtraFlags` = 0, `ModelId2` = 11686 WHERE `entry` = 18782;

-- Injured Grunt 19432
UPDATE `creature_template` SET `ModelId1` = 16307, `ModelId2` = 4259, `ModelId3` = 4602  WHERE `entry` = 19432;

-- Orgrimmar Peon 19425
UPDATE `creature_template` SET `ModelId1` = 16310, `ModelId2` = 16312 WHERE `entry` = 19425;

-- Murg "Oldie" Muckjaw
UPDATE creature_template SET UnitFlags=33024 WHERE entry=23340;
-- Trope the Filth-Belcher
UPDATE creature_template SET UnitFlags=33024 WHERE entry=23342;
-- Dragonmaw Race: Trope's Target
UPDATE creature_template SET UnitFlags=33554432, InhabitType=7 WHERE entry=23357;

-- Warp Storm 21322
UPDATE `creature_template` SET `ModelId1` = 18402, `UnitFlags` = 33587200, `ExtraFlags` = `ExtraFlags`|524288 WHERE `entry` = 21322; -- 19329, 32768, 0

-- Accursed Apparition 21941
UPDATE `creature_template_addon` SET `auras` = '8278 8279 16380' WHERE `entry` = 21941;

-- 	Respawn Accursed Apparition (-1 / + 12)
DELETE FROM `creature` WHERE `id` = 21941;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnmask`, `position_x`, `position_y`,`position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(191115, 21941, 530, 1, -3736.376, 4700.821, -15.99797, 0.917079, 300, 300, 5, 1),
(191116, 21941, 530, 1, -3811.741, 4705.245, -26.43885, 2.959275, 300, 300, 5, 1),
(191117, 21941, 530, 1, -3821.004, 4728.347, -25.41444, 2.953965, 300, 300, 5, 1),
(191118, 21941, 530, 1, -3842.895, 4713.101, -32.77962, 6.243168, 300, 300, 5, 1),
(191119, 21941, 530, 1, -3775.479, 4740.845, -21.04175, 2.304031, 300, 300, 5, 1),
(191120, 21941, 530, 1, -3859.166, 4715.581, -40.46419, 3.949761, 300, 300, 5, 1),
(191121, 21941, 530, 1, -3704.95, 4798.153, -20.50031, 3.115232, 300, 300, 5, 1),
(191122, 21941, 530, 1, -3708.42, 4722.049, -17.48276, 0.2504053, 300, 300, 5, 1),
(191123, 21941, 530, 1, -3671.4, 4744.68, -21.40731, 0.4243141, 300, 300, 5, 1),
(191124, 21941, 530, 1, -3670.686, 4793.217, -20.97872, 2.007943, 300, 300, 5, 1),
(191125, 21941, 530, 1, -3721.201, 4685.048, -16.82257, 4.183875, 300, 300, 5, 1),
(191126, 21941, 530, 1, -3720.889, 4759.596, -19.78682, 3.498393, 300, 300, 5, 1);

-- Summoned Searing Totem 22895 s.39591
UPDATE `creature_template` SET `AIName` = 'TotemAI' WHERE `entry` = 22895;
DELETE FROM `creature_template_spells` WHERE `entry` = 22895;
INSERT INTO `creature_template_spells` (`entry`, `spell1`) VALUES (22895, 39592);

-- Garn Mathers 23679 - Pathing & Aura
UPDATE `creature_template_addon` SET `auras` = '43124' WHERE `entry` = 23679;
UPDATE `creature` SET `position_x` = -3050.214, `position_y` = -4329.639, `position_z` = 8.156482, `MovementType` = 2 WHERE `guid` = 30758 AND `id` = 23679;
DELETE FROM `creature_movement_template` WHERE `entry` = 23679;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(23679, 1, -3036.532, -4321.038, 7.281482, 100, 0, 0),
(23679, 2, -3023.106, -4328.81, 7.629521, 100, 0, 0),
(23679, 3, -3008.108, -4334.823, 6.678975, 100, 0, 0),
(23679, 4, -2997.053, -4344.776, 6.470808, 100, 0, 0),
(23679, 5, -2981.868, -4353.176, 8.554548, 100, 0, 0),
(23679, 6, -2970.308, -4358.457, 9.804548, 100, 0, 0),
(23679, 7, -2972.343, -4368.458, 9.75026, 100, 0, 0),
(23679, 8, -2983.737, -4381.268, 10.37526, 100, 0, 0),
(23679, 9, -3001.056, -4383.682, 10.51553, 100, 0, 0),
(23679, 10, -3011.959, -4373.93, 9.140532, 100, 0, 0),
(23679, 11, -3040.596, -4358.319, 8.194913, 100, 0, 0),
(23679, 12, -3047.94, -4343.792, 8.069913, 100, 0, 0),
(23679, 13, -3050.214, -4329.639, 8.156482, 100, 0, 0);

-- Emissary of Hate 25003
UPDATE `creature` SET `position_x` = 12583.32, `position_y` = -6916.28, `position_z` = 4.685531, `orientation` = 6.260564, `MovementType` = 2 WHERE `guid` = 52022 AND `id` = 25003;
DELETE FROM `creature_movement` WHERE `id` = 52022;
DELETE FROM `creature_movement_template` WHERE `entry` = 25003;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(25003, 1, 12612.62, -6916.943, 4.725943, 100, 0, 0),
(25003, 2, 12639.27, -6917.027, 4.725943, 100, 8000, 0),
(25003, 3, 12612.62, -6916.943, 4.725943, 100, 0, 0),
(25003, 4, 12589.8, -6916, 4.726335, 6.260564, 10000, 0);

-- Flame Wave II 22228
UPDATE `creature_template` SET `MinLevel` = 68, `MaxLevel` = 69, `MinLevelHealth` = 3834, `MaxLevelHealth` = 3942, `UnitFlags` = 33554432, `SpeedRun` = (16 / 7), `SpeedWalk` = (2.5 / 2.5) WHERE `entry` = 22228;

UPDATE `creature_equip_template` SET `equipentry1` = 1905, `equipentry3` = 5856 WHERE `entry` = 1162; -- Stonesplinter Scout 1162

-- Skullsplitter Spiritchaser 672 guid.1365 leading Ana'thek the Cruel 1059 - resolves TBC-148
DELETE FROM `creature_linking` WHERE `master_guid` = 1365;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (1366, 1365, 515),(1367, 1365, 515);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 1365 AND `id` = 672;
DELETE FROM `creature_movement` WHERE `id` = 1365;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(1365, 1, -13046.87, -629.1666, 53.37298, 100, 0, 0),
(1365, 2, -13036.7, -635.2722, 53.34197, 100, 0, 0),
(1365, 3, -13019.63, -643.6182, 53.98716, 100, 0, 0),
(1365, 4, -13001.18, -650.5718, 52.61216, 100, 0, 0),
(1365, 5, -12986.05, -655.6912, 51.3574, 100, 0, 0),
(1365, 6, -12953.69, -679.1108, 51.29697, 100, 0, 0),
(1365, 7, -12907.74, -720.5589, 51.17647, 100, 0, 0),
(1365, 8, -12909.85, -751.8694, 51.42327, 100, 30000, 0),
(1365, 9, -12907.74, -720.5589, 51.17647, 100, 0, 0),
(1365, 10, -12953.69, -679.1108, 51.29697, 100, 0, 0),
(1365, 11, -12986.05, -655.6912, 51.3574, 100, 0, 0),
(1365, 12, -13001.18, -650.5718, 52.61216, 100, 0, 0),
(1365, 13, -13019.63, -643.6182, 53.98716, 100, 0, 0),
(1365, 14, -13036.7, -635.2722, 53.34197, 100, 0, 0),
(1365, 15, -13046.87, -629.1666, 53.37298, 100, 0, 0),
(1365, 16, -13076.93, -607.4487, 54.23201, 5.550147, 60000, 0);

-- Respawn Expeditionary Mountaineer 14390 & Expeditionary Priest 14393
DELETE FROM `creature` WHERE `id` IN (14390,14393);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(191127, 14390, 0, 1, 0, 0, -8208, -485, 193.739, 5.354, 120, 120, 5, 0, 3831, 0, 0, 1),  -- eye candy guid.54000
(191128, 14390, 0, 1, 0, 0, -8181.801, -585.4965, 200.4166, 6.160618, 120, 120, 5, 0, 3831, 0, 0, 1),
(191129, 14390, 0, 1, 0, 0, -8176.529, -584.7012, 200.5416, 2.897247, 120, 120, 5, 0, 3831, 0, 0, 1),
(191130, 14390, 0, 1, 0, 0, -8180.905, -586.1957, 200.4166, 5.707227, 120, 120, 5, 0, 3831, 0, 0, 1),
(191131, 14390, 0, 1, 0, 0, -8177.195, -593.8784, 200.3379, 3.538789, 120, 120, 5, 0, 3831, 0, 0, 1),
(191132, 14390, 0, 1, 0, 0, -8176.602, -593.3247, 200.0831, 4.040922, 120, 120, 5, 0, 3831, 0, 0, 1),
(191133, 14390, 0, 1, 0, 0, -8181.126, -591.8393, 200.2804, 5.547845, 120, 120, 5, 0, 3831, 0, 0, 1),
(191134, 14390, 0, 1, 0, 0, -8177.798, -585.9471, 200.4166, 1.37881, 120, 120, 5, 0, 3831, 0, 0, 1),
(191135, 14393, 0, 1, 0, 0, -8176.672, -592.8414, 200.1666, 1.384454, 180, 180, 5, 0, 3279, 1142, 0, 1),
(191136, 14393, 0, 1, 0, 0, -8176.056, -591.6884, 200.1666, 6.074099, 180, 180, 5, 0, 3279, 1142, 0, 1);

-- Rogue Black Drake 14388
UPDATE `creature` SET `spawntimesecsmin` = 60, `spawntimesecsmax` = 60 WHERE `id` = 14388;

DELETE FROM `creature_linking` WHERE `master_guid` = 191136;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (191135, 191136, 515),(191134, 191136, 515),(191133, 191136, 515),(191132, 191136, 515),(191131, 191136, 515),(191130, 191136, 515),(191129, 191136, 515),(191128, 191136, 515),(191127, 191136, 3);

-- Dragonmaw Skybreaker
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14, UnitFlags=32768, SpeedWalk=2.5/2.5, SpeedRun=9.7/7 WHERE entry=22274;

-- Corlok the Vet
UPDATE creature_template SET UnitFlags=33024 WHERE entry=23344;
-- Dragonmaw Race: Corlok's Target
UPDATE creature_template SET UnitFlags=33554432, InhabitType=7 WHERE entry=23358;

-- Grimtotem Naturalist 7726
UPDATE `creature` SET `modelid` = 0 WHERE `id` = 7726;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 7726;

-- Wing Commander Ichman
UPDATE creature_template SET UnitFlags=33024 WHERE entry=23345;
-- Dragonmaw Race: Ichman's Target
UPDATE creature_template SET InhabitType=7, UnitFlags=33554432 WHERE entry=23359;

-- fix facing of Corlok
UPDATE creature SET orientation=1.603191 WHERE id=23344;
-- fix facing of Skyshatter
UPDATE creature SET orientation=1.570796 WHERE id=23348;

-- Wing Commander Ichman - should start quest "Dragonmaw Race: Wing Commander Ichman"
DELETE FROM creature_questrelation WHERE id IN (23345);
INSERT INTO creature_questrelation (id, quest) VALUES
(23345, 11069);

-- Wing Commander Mulverick
UPDATE creature_template SET UnitFlags=33024 WHERE entry=23346;
-- Dragonmaw Race: Mulverick's Target
UPDATE creature_template SET InhabitType=7 WHERE entry=23360;

-- Captain Skyshatter
UPDATE creature_template SET UnitFlags=33024 WHERE entry=23348;
-- Dragonmaw Race: Skyshatter's Target
UPDATE creature_template SET InhabitType=7 WHERE entry=23361;

