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

-- Terrorclaw
UPDATE creature_template SET UnitFlags=32768 WHERE entry=20477;

-- Add some missing objects in Dragonmaw Base Camp and Netherwing Mines
DELETE FROM gameobject WHERE guid IN (170011,170012,170013,170014,170015);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(170011, 51704, 530, 1, -5122.906, 631.8186, 86.90026, 5.548713, 0, 0, -0.3590374, 0.9333231, 120, 120, 255, 1), -- Anvil
(170012, 51705, 530, 1, -5110.281, 626.765, 87.16945, 3.332152, 0, 0, -0.9954643, 0.09513562, 120, 120, 255, 1), -- Anvil
(170013, 50984, 530, 1, -5116.811, 631.0879, 84.99586, 1.359921, 0, 0, 0.6287622, 0.7775976, 120, 120, 255, 1), -- Heated Forge
(170014, 180035, 530, 1, -5031.66, 637.0347, 25.39388, 2.216565, 0, 0, 0.8949337, 0.4461992, 120, 120, 255, 1), -- Fence
(170015, 180035, 530, 1, -5024.21, 625.4202, 25.38931, 2.199115, 0, 0, 0.8910065, 0.4539906, 120, 120, 255, 1); -- Fence

-- Corrections to game event times
UPDATE game_event SET start_time='2012-06-21 02:00:00', end_time='2020-12-31 00:00:00' WHERE entry=1; -- Midsummer Fire Festival
UPDATE game_event SET start_time='2012-12-15 08:00:00', end_time='2020-12-31 00:00:00' WHERE entry=2; -- Feast of Winter Veil - Main Event
UPDATE game_event SET start_time='2010-12-31 12:00:00', end_time='2020-12-31 00:00:00' WHERE entry=6; -- New Year's Eve
UPDATE game_event SET start_time='2018-02-17 00:00:00', end_time='2020-12-31 00:00:00', length=21600 WHERE entry=7; -- Lunar Festival
UPDATE game_event SET start_time='2012-02-05 02:00:00', end_time='2020-12-31 00:00:00' WHERE entry=8; -- Love is in the Air
UPDATE game_event SET start_time='2010-12-25 08:00:00', end_time='2020-12-31 08:00:00' WHERE entry=9; -- Feast of Winter Veil - Presents Event
UPDATE game_event SET start_time='2012-04-29 02:00:00', end_time='2020-12-31 00:00:00' WHERE entry=10; -- Children's Week
UPDATE game_event SET start_time='2012-09-24 02:00:00', end_time='2020-12-31 00:00:00' WHERE entry=11; -- Harvest Festival
UPDATE game_event SET start_time='2012-10-18 02:00:00', end_time='2020-12-31 00:00:00' WHERE entry=12; -- Hallow's End
UPDATE game_event SET start_time='2007-08-04 14:00:00', end_time='2020-12-31 00:00:00' WHERE entry=16; -- Gurubashi Arena Booty Run
UPDATE game_event SET start_time='2011-01-28 02:00:00', end_time='2020-12-31 00:00:00', occurence=40320, length=6240 WHERE entry=18; -- Call to Arms: Alterac Valley!
UPDATE game_event SET start_time='2011-01-14 02:00:00', end_time='2020-12-31 00:00:00', occurence=40320, length=6240 WHERE entry=19; -- Call to Arms: Warsong Gulch!
UPDATE game_event SET start_time='2011-01-21 02:00:00', end_time='2020-12-31 00:00:00', occurence=40320, length=6240 WHERE entry=20; -- Call to Arms: Arathi Basin!
UPDATE game_event SET start_time='2011-01-07 02:00:00', end_time='2020-12-31 00:00:00', occurence=40320, length=6240 WHERE entry=21; -- Call to Arms: Eye of the Storm!
UPDATE game_event SET start_time='2011-01-01 21:00:00', end_time='2020-12-31 00:00:00' WHERE entry=23; -- Pyrewood Village - Night Time Scourge Curse
UPDATE game_event SET start_time='2011-01-01 00:58:00', end_time='2020-12-31 00:00:00' WHERE entry=24; -- Stormwind City - Stockades Jail Break
UPDATE game_event SET start_time='2012-09-20 02:00:00', end_time='2020-12-31 00:00:00' WHERE entry=26; -- Brewfest
UPDATE game_event SET start_time='2011-01-01 21:00:00', end_time='2020-12-31 00:00:00' WHERE entry=27; -- Night Time
UPDATE game_event SET start_time='2012-04-08 02:00:00', end_time='2020-12-31 00:00:00' WHERE entry=28; -- Noblegarden
UPDATE game_event SET start_time='2010-12-27 21:00:00', end_time='2020-12-31 00:00:00' WHERE entry=29; -- Zul'Gurub - Edge of Madness (Gri'lek)
UPDATE game_event SET start_time='2011-01-10 21:00:00', end_time='2020-12-31 00:00:00' WHERE entry=30; -- Zul'Gurub - Edge of Madness (Hazza'rah)
UPDATE game_event SET start_time='2011-01-24 21:00:00', end_time='2020-12-31 00:00:00' WHERE entry=31; -- Zul'Gurub - Edge of Madness (Renataki)
UPDATE game_event SET start_time='2010-12-13 21:00:00', end_time='2020-12-31 00:00:00' WHERE entry=32; -- Zul'Gurub - Edge of Madness (Wushoolay)
UPDATE game_event SET start_time='2009-01-04 10:00:00', end_time='2020-12-31 00:00:00' WHERE entry=34; -- Stranglethorn Fishing Extravaganza - Announce
UPDATE game_event SET start_time='2009-01-04 14:00:00', end_time='2020-12-31 00:00:00' WHERE entry=35; -- Stranglethorn Fishing Extravaganza
UPDATE game_event SET start_time='2009-01-04 14:00:00', end_time='2020-12-31 00:00:00' WHERE entry=36; -- Stranglethorn Fishing Extravaganza - Turn-in
UPDATE game_event SET start_time='2011-01-01 02:48:00', end_time='2020-12-31 00:00:00' WHERE entry=57; -- World's End Tavern - Perry Gatner Announce
UPDATE game_event SET start_time='2011-01-01 03:00:00', end_time='2020-12-31 00:00:00' WHERE entry=58; -- World's End Tavern - Perry Gatner Standup Comedy
UPDATE game_event SET start_time='2011-01-01 03:48:00', end_time='2020-12-31 00:00:00' WHERE entry=59; -- World's End Tavern - L70ETC Concert Announce
UPDATE game_event SET start_time='2011-01-01 01:00:00', end_time='2020-12-31 00:00:00' WHERE entry=60; -- World's End Tavern - L70ETC Concert
UPDATE game_event SET start_time='2011-01-01 19:48:00', end_time='2020-12-31 00:00:00' WHERE entry=61; -- Grim Guzzler - L70ETC Pre-Concert
UPDATE game_event SET start_time='2011-01-01 20:00:00', end_time='2020-12-31 00:00:00' WHERE entry=62; -- Grim Guzzler - L70ETC Concert
UPDATE game_event SET start_time='2011-10-22 00:00:00', end_time='2011-10-24 00:00:00' WHERE entry=63; -- L70ETC Concert - Terrokar Forest (Blizzcon Event)
UPDATE game_event SET start_time='2011-01-01 00:00:00', end_time='2020-12-30 23:00:00' WHERE entry=64; -- Brew of the Month - January
UPDATE game_event SET start_time='2011-02-01 00:00:00', end_time='2020-12-30 23:00:00' WHERE entry=65; -- Brew of the Month - February
UPDATE game_event SET start_time='2011-03-01 00:00:00', end_time='2020-12-30 23:00:00' WHERE entry=66; -- Brew of the Month - March
UPDATE game_event SET start_time='2011-04-01 00:00:00', end_time='2020-12-30 23:00:00' WHERE entry=67; -- Brew of the Month - April
UPDATE game_event SET start_time='2011-05-01 00:00:00', end_time='2020-12-30 23:00:00' WHERE entry=68; -- Brew of the Month - May
UPDATE game_event SET start_time='2011-06-01 00:00:00', end_time='2020-12-30 23:00:00' WHERE entry=69; -- Brew of the Month - June
UPDATE game_event SET start_time='2011-07-01 00:00:00', end_time='2020-12-30 23:00:00' WHERE entry=70; -- Brew of the Month - July
UPDATE game_event SET start_time='2011-08-01 00:00:00', end_time='2020-12-30 23:00:00' WHERE entry=71; -- Brew of the Month - August
UPDATE game_event SET start_time='2011-09-01 00:00:00', end_time='2020-12-30 23:00:00' WHERE entry=72; -- Brew of the Month - September
UPDATE game_event SET start_time='2011-10-01 00:00:00', end_time='2020-12-30 23:00:00' WHERE entry=73; -- Brew of the Month - October
UPDATE game_event SET start_time='2011-11-01 00:00:00', end_time='2020-12-30 23:00:00' WHERE entry=74; -- Brew of the Month - November
UPDATE game_event SET start_time='2011-12-01 00:00:00', end_time='2020-12-30 23:00:00' WHERE entry=75; -- Brew of the Month - December

-- Gnomeregan - Supercharge 10732, Rebuild 10345 Targets (same as 10348)
DELETE FROM `spell_script_target` WHERE `entry` IN (10732,10345) AND `targetEntry` IN (6225,6226,6227);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(10732, 1, 6225, 0), -- Mechano-Tank
(10345, 1, 6225, 0), -- Mechano-Tank
(10732, 1, 6226, 0), -- Mechano-Flamewalker
(10345, 1, 6226, 0), -- Mechano-Flamewalker
(10732, 1, 6227, 0), -- Mechano-Frostwalker
(10345, 1, 6227, 0); -- Mechano-Frostwalker

-- remove invis extraflag on 3 Honor Hold Target Dummy NPCs (allows for arrows shot by Honor Hold Archer 16896 to be visible to player and not just GM)
-- Honor Hold Target Dummy Middle 16897
-- Honor Hold Target Dummy Right 16898
-- Honor Hold Target Dummy Left 16899
UPDATE creature_template SET ExtraFlags=0 WHERE entry IN (16897,16898,16899);

-- Netherstorm Repair Target 19484
UPDATE `creature_template` SET `InhabitType` = 7 WHERE `entry` = 19484;
-- Overseer Seylanna 20397
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 20397; -- 34062

-- Sunfury Nethermancer 20248 - Crystal Channel OOC
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (2024801);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `comments`) VALUES
(2024801, 0, 15, 35778, 'Sunfury Nethermancer - Cast Bloodcrystal Surge OOC'),
(2024801, 0, 15, 33918, 'Sunfury Nethermancer - Cast Crystal Channel OOC');

UPDATE `creature_movement` SET `script_id` = 2024801 WHERE `id` IN (71943,71944,71945,71954,71957) AND `point` = 1;
UPDATE `creature_movement` SET `script_id` = 2024801 WHERE `id` IN (71946,71949,71950,71952,71958,71959,71960,71962,71963,71964,71965,71969,71970,71975) AND `point` = 2;
UPDATE `creature_movement` SET `script_id` = 2024801 WHERE `id` IN (71945,71954,71956,71958) AND `point` = 3;
UPDATE `creature_movement` SET `script_id` = 2024801 WHERE `id` IN (71947,71951,71968) AND `point` = 4;
UPDATE `creature_movement` SET `script_id` = 2024801 WHERE `id` IN (71945,71948) AND `point` = 5;

-- Lobo 21952
DELETE FROM `creature_template_addon` WHERE `entry` = 21952;
INSERT INTO `creature_template_addon` (`entry`, `bytes1`) VALUES (21952,3);

-- Doomsaw 21119
UPDATE `creature_template` SET `SpeedWalk` = (7 / 2.5), `SpeedRun` = (10 / 7) WHERE `entry` = 21119;

-- MECHANIC_DISORIENTED & MECHANIC_KNOCKOUT Immunity for Pusillin 14354
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2|8192 WHERE entry IN (14354);

UPDATE `item_template` SET `maxcount` = 0 WHERE `entry` = 32589; -- Hellfire-Encased Pendant 32589

-- Improvements for The Demoniac Scryer q.10838
UPDATE `creature_template` SET `RegenerateStats` = 0, `MovementType` = 0 WHERE `entry` = 22258; -- Demoniac Scryer 22258
UPDATE `creature_template` SET `UnitFlags` = 33554432 WHERE `entry` = 22267; -- Magic Sucker Device Buttress 22267

-- Dancing Sword 21093
UPDATE `creature_template` SET `FactionAlliance` = 1811, `FactionHorde` = 1811, `UnitFlags` = 33554432, `ExtraFlags` = 524288, `MeleeBaseAttackTime` = 1700 WHERE `entry` = 21093;

-- Fel Eye Stalk 23323
UPDATE `creature_template` SET `UnitFlags` = 33554688, `ModelId1` = 16480, `ModelId2` = 19595 WHERE `entry` = 23323;

-- Remove <Alterac Valley Battlemaster> from Game Event 18, should be spawned by default
DELETE FROM `game_event_creature` WHERE `guid` IN (SELECT guid FROM creature WHERE id IN (347,5118,7410,7427,12197,14942,16695,19906,19907,20119,20271,20276));

-- Respawn Shadow Sight
DELETE FROM `gameobject` WHERE `id` IN (184663,184664);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(90107, 184663, 559, 1, 4008.8, 2895.022, 13.05303, 2.460913, 0, 0, 0.9426413, 0.3338076, 150, 150, 100, 1),
(90108, 184664, 559, 1, 4103.73, 2946.175, 13.05133, -2.967041, 0, 0, -0.9961939, 0.08716504, 150, 150, 100, 1),
(90113, 184663, 562, 1, 6249.04, 275.324, 11.2203, -1.44862, 0, 0, -0.662619, 0.748957, 150, 150, 100, 1),
(90114, 184664, 562, 1, 6228.26, 249.566, 11.21812, -0.06981169, 0, 0, -0.03489876, 0.9993908, 150, 150, 100, 1),
(90117, 184663, 572, 1, 1328.624, 1632.804, 36.28329, 0.5759573, 0, 0, 0.2840147, 0.9588199, 150, 150, 100, 1),
(90118, 184664, 572, 1, 1243.874, 1699.29, 34.8613, 0.122173, 0, 0, 0.06104851, 0.9981348, 150, 150, 100, 1);

-- Shadow Sight 184663
UPDATE `gameobject_template` SET `faction` = 114, `data2` = 5 WHERE `entry` = 184663;
-- Shadow Sight 184664
UPDATE `gameobject_template` SET `faction` = 114, `data2` = 5 WHERE `entry` = 184664;

-- Servant's Access Door
UPDATE `gameobject_template` SET `flags` = 34 WHERE `entry` = 184281;

-- Felfire Diemetradon 21408,Greater Felfire Diemetradon 21462
UPDATE `creature_template` SET `InhabitType` = 3 WHERE `entry` IN (21408,21462);

-- Remove Mini Model for Ashtongue Primalist 22847
UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE `modelid` = 21117;

-- Dragonmaw Peon Work Node
UPDATE creature_template SET UnitFlags=33555200, ModelId1=11686, ModelId2=0 WHERE Entry=23308;

-- Netherwing Drake Escape Point
UPDATE creature_template SET UnitFlags=33587968 WHERE Entry=23225;

-- Karazhan - Chess, Victory Controller
UPDATE creature_template SET UnitFlags=33554432, ModelId1=11686 WHERE Entry=22524;

-- Redeemed Avian 22326
UPDATE `creature_template` SET `InhabitType` = 5 WHERE `entry` = 22326;

-- Add Alliance / Horde loot-condition for item 30756 / item 30579
UPDATE `creature_loot_template` SET `condition_id` = 1233 WHERE `entry` = 21499 AND `item` = 30756;
UPDATE `creature_loot_template` SET `condition_id` = 1238 WHERE `entry` = 21499 AND `item` = 30579;

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 1229 AND 1238;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
-- item 30756
(1229, 8, 10621, 0, 'Quest ID 10621 Rewarded'),
(1230, 9, 10621, 0, 'Quest ID 10621 Taken'),
(1231, -2, 1229, 1230, '(Quest ID 10621 Rewarded OR Quest ID 10621 Taken)'),
(1232, -3, 1231, 0, 'NOT ((Quest ID 10621 Rewarded OR Quest ID 10621 Taken))'),
(1233, -1, 1232, 4, 'NOT (Quest ID 10621 Rewarded OR Quest ID 10621 Taken) AND Alliance'),
-- item 30579
(1234, 8, 10623, 0, 'Quest ID 10623 Rewarded'),
(1235, 9, 10623, 0, 'Quest ID 10623 Taken'),
(1236, -2, 1234, 1235, '(Quest ID 10623 Rewarded OR Quest ID 10623 Taken)'),
(1237, -3, 1236, 0, 'NOT ((Quest ID 10623 Rewarded OR Quest ID 10623 Taken))'),
(1238, -1, 1237, 3, 'NOT (Quest ID 10623 Rewarded OR Quest ID 10623 Taken) AND Horde');

-- Add MECHANIC_DISARM immunity
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4 WHERE entry IN(
-- vanilla
7728, -- Kirith the Damned
-- alterac valley
11946, -- Drek'Thar
11948, -- Vanndar Stormpike
14762, -- Dun Baldar North Marshal
14763, -- Dun Baldar South Marshal
14764, -- Icewing Marshal
14765, -- Stonehearth Marshal
14772, -- East Frostwolf Warmaster
14773, -- Iceblood Warmaster
14776, -- Tower Point Warmaster
14777, -- West Frostwolf Warmaster
-- outland
18290, -- Tusker
18411, -- Durn the Hungerer
18678, -- Fulgorge
18694, -- Collidus the Warp-Watcher
18696, -- Kraator
18733, -- Fel Reaver
19687, -- Shattrath City Peacekeeper
20216, -- Grulloc
20555, -- Goc
20600, -- Maggoc
21166, -- Illidari Dreadlord
21500, -- Morgroron
21514, -- Gorgrom the Dragon-Eater
21979, -- Val'zareq the Conqueror
22011, -- Corok the Mighty
22012, -- Chancellor Bloodleaf
22093, -- Illidari Watcher
22196, -- Wrath Reaver
22199, -- Slaag
22275, -- Apexis Guardian
22281, -- Galvanoth
22910, -- Skulloc Soulgrinder
22911, -- Vim'gol the Vile
23353, -- Braxxus
23354, -- Mo'arg Incinerator
23355, -- Zarcsin
-- blood furnace
17377,18607, -- Keli'dan the Breaker
17380,18601, -- Broggok
17381,18621, -- The Maker
-- shattered halls
17461,20923, -- Shattered Hand Blood Guard
17465,20583, -- Shattered Hand Centurion
-- underbog
17734,20187, -- Underbog Lord
17827,20165, -- Claw
18107, -- Overseer Tidewrath
20465,21943, -- Underbog Frenzy
-- steamvault
17797,20629, -- Hydromancer Thespia
17798,20633, -- Warlord Kalithresh
21694,21914, -- Bog Overlord
-- auchenai crypts
18478,20303, -- Avatar of the Martyred
18503,20309, -- Phantasmal Possessor
-- mana-tombs
19307,20265, -- Nexus Terror
-- sethekk halls
19428,20688, -- Cobalt Serpent
-- shadow labyrinth
18667,20637, -- Blackheart the Inciter
18708,20657, -- Murmur
18732,20653, -- Grandmaster Vorpil
-- old hillsbrad foothills
22398,22399, -- Durnholde Reinforcement
-- black morass
17879,20738, -- Chrono Lord Deja
21697, -- Infinite Chrono-Lord
21698, -- Infinite Timereaver
-- mechanar
19219,21533, -- Mechano-Lord Capacitus
19220,21537, -- Pathaleon the Calculator
19221,21536, -- Nethermancer Sepethrea
-- botanica
17975,21558, -- High Botanist Freywinn
17976,21551, -- Commander Sarannis
18405,21578, -- Tempest-Forge Peacekeeper
-- arcatraz
20866,21614, -- Soul Devourer
20869,21586, -- Arcatraz Sentinel
20898,21598, -- Gargantuan Abyssal
20900,21621, -- Unchained Doombringer
-- world boss
15467, -- Omen
18728, -- Doom Lord Kazzak
-- karazhan
16151, -- Midnight
16179, -- Hyakiss the Lurker
16180, -- Shadikith the Glider
16181, -- Rokad the Ravager
16470, -- Ghostly Philanthropist
16471, -- Skeletal Usher
16473, -- Spectral Performer
16481, -- Ghastly Haunt
16482, -- Trapped Soul
16485, -- Arcane Watchman
16488, -- Arcane Anomaly
16504, -- Arcane Protector
16524, -- Shade of Aran
16540, -- Shadow Pillager
16544, -- Ethereal Thief
16545, -- Ethereal Spellfilcher
16595, -- Fleshbeast
16596, -- Greater Fleshbeast
17535, -- Dorothee
17543, -- Strawman
17548, -- Tito
18168, -- The Crone
17225, -- Nightbane
-- serpentshrine cavern
21213, -- Morogrim Tidewalker
21875, -- Shadow of Leotheras
21958, -- Enchanted Elemental
22009, -- Tainted Elemental
22238, -- Serpentshrine Tidecaller
22347, -- Colossus Lurker
-- the eye
20038, -- Phoenix-Hawk Hatchling
20042, -- Tempest-Smith
20047, -- Crimson Hand Battle Mage
20052, -- Crystalcore Mechanic
18805, -- High Astromancer Solarian
19514, -- Al'ar
19516, -- Void Reaver
19622, -- Kael'thas Sunstrider
21268, -- Netherstrand Longbow
21269, -- Devastation
21270, -- Cosmic Infuser
21271, -- Infinity Blades
21272, -- Warp Slicer
21273, -- Phaseshift Bulwark
21274, -- Staff of Disintegration
-- hyjal
17895, -- Ghoul
17897, -- Crypt Fiend
17898, -- Abomination
17899, -- Shadowy Necromancer
17902, -- Skeleton Invader
17903, -- Skeleton Mage
17905, -- Banshee
17906, -- Gargoyle
17907, -- Frost Wyrm
17908, -- Giant Infernal
17916, -- Fel Stalker
17767, -- Rage Winterchill
17808, -- Anetheron
17818, -- Towering Infernal
17888, -- Kaz'rogal
17842, -- Azgalor
17864, -- Lesser Doomguard
17968, -- Archimonde
-- black temple
22848, -- Storm Fury
22849, -- Ashtongue Feral Spirit
22875, -- Coilskar Sea-Caller
22878, -- Aqueous Lord
22884, -- Leviathan
22953, -- Wrathbone Flayer
22954, -- Illidari Fearbringer
22956, -- Sister of Pain
22957, -- Priestess of Dementia
22962, -- Priestess of Delight
22964, -- Sister of Pleasure
23018, -- Shadowmoon Houndmaster
23047, -- Shadowmoon Soldier
23049, -- Shadowmoon Weapon Master
23083, -- Shadowmoon Riding Hound
23147, -- Shadowmoon Grunt
23172, -- Hand of Gorefiend
23215, -- Ashtongue Sorcerer
23223, -- Bonechewer Spectator
23232, -- Mutant War Hound
23436, -- Image of Dementia
22887, -- High Warlord Naj'entus
22898, -- Supremus
22841, -- Shade of Akama
22871, -- Teron Gorefiend
22948, -- Gurtogg Bloodboil
23418, -- Essence of Suffering
23419, -- Essence of Desire
23420, -- Essence of Anger
23469, -- Enslaved Soul
22947, -- Mother Shahraz
22949, -- Gathios the Shatterer
22950, -- High Nethermancer Zerevor
22951, -- Lady Malande
22952, -- Veras Darkshadow
22917, -- Illidan Stormrage
22997, -- Flame of Azzinoth
23375, -- Shadow Demon
23498, -- Parasitic Shadowfiend
-- zul'aman
23574, -- Akil'zon
23576, -- Nalorakk
23578, -- Jan'alai
23577, -- Halazzi
24143, -- Spirit of the Lynx
24239, -- Hex Lord Malacrass
23863, -- Zul'jin
24217, -- Amani Bear Mount
-- sunwell plateau
24850, -- Kalecgos
24891, -- Kalecgos
25368, -- Sunblade Slayer
25372, -- Sunblade Scout
25373, -- Shadowsword Soulbinder
25484, -- Shadowsword Assassin
25486, -- Shadowsword Vanquisher
25507, -- Sunblade Protector
25508, -- Shadowsword Guardian
25837, -- Shadowsword Commander
25867, -- Sunblade Dragonhawk
26101, -- Fire Fiend
-- event
23694, -- Pulsing Pumpkin
25740,26338, -- Ahune
25755,26342, -- Ahunite Hailstone
26764, -- Ilsa Direbrew
26822 -- Ursula Direbrew
);
