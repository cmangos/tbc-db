-- Port Netherwing Eggs (185915) to spawn_groups
-- Seemingly resolves https://github.com/cmangos/issues/issues/3176
-- which showcases bugs with pooling system
-- 25427	4	Netherwing Eggs (185915)
-- 25428	7	Netherwing Eggs (185915)
-- 25429	5	Netherwing Eggs (185915)
DELETE FROM `pool_gameobject` WHERE `pool_entry` BETWEEN 25427 AND 25429;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 25427 AND 25429;

-- Duplicates
UPDATE `gameobject` SET `position_x` = -5040.48, `position_y` = 393.296, `position_z` = 170.837, `orientation` = 5.98648, `rotation2` = -0.147809, `rotation3` = 0.989016 WHERE `guid` IN (5309350); -- 5309350, Entry 185915 d.5309367 - outside
UPDATE `gameobject` SET `position_x` = -5088.85, `position_y` = 23.2499, `position_z` = 81.8182, `orientation` = 0.139625, `rotation2` = 0.0697555, `rotation3` = 0.997564 WHERE `guid` IN (5309363); -- 5309363, Entry 185915 d.5309414 - outside
UPDATE `gameobject` SET `position_x` = -5282.7, `position_y` = 654.885, `position_z` = 40.7221, `orientation` = -1.37881, `rotation2` = -0.636078, `rotation3` = 0.771625 WHERE `guid` IN (5309366); -- 5309366, Entry 185915 d.5309415 - outside
UPDATE `gameobject` SET `position_x` = -5116.49, `position_y` = 673.107, `position_z` = 37.6455, `orientation` = 2.96704, `rotation2` = 0.996194, `rotation3` = 0.087165 WHERE `guid` IN (5309411); -- 5309411, Entry 185915 d.5309412 - inside

-- add more missing nodes from trinitycore
DELETE FROM `gameobject` WHERE `id` = 185915 AND `guid` BETWEEN 5309524 AND 5309527;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5309524, 185915, 530, 1, -4867.7, 531.237, -1.91996, 1.13446, 0, 0, 0.537299, 0.843392, 3600, 3600, 255, 1), -- inside
(5309525, 185915, 530, 1, -5111.1, 304.192, 161.911, 3.55782, 0, 0, 0.978422, -0.206615, 3600, 3600, 255, 1), -- outside
(5309526, 185915, 530, 1, -5075.77, 150.64, 129.225, 3.24052, 0, 0, 0.998777, -0.0494435, 3600, 3600, 255, 1), -- outside
(5309527, 185915, 530, 1, -4880.02, 185.468, 37.0605, 3.79736, 0, 0, 0.946726, -0.32204, 3600, 3600, 255, 1); -- outside

-- ============
-- SPAWN GROUPS
-- ============
DELETE FROM `spawn_group` WHERE `Id` BETWEEN 5300003 AND 5300005;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(5300003, 'Shadowmoon Valley (Dragonmaw Fortress) - Netherwing Eggs (185915)', 1, 1, 0, 0),
(5300004, 'Shadowmoon Valley (Netherwing Ledge) - Netherwing Eggs (185915)', 1, 3, 0, 0),
(5300005, 'Shadowmoon Valley (Netherwing Mine) - Netherwing Eggs (185915)', 1, 2, 0, 0);

REPLACE INTO `spawn_group_spawn` (`Guid`, `Id`, `SlotId`) SELECT `guid`, 5300003, -1 FROM `gameobject` WHERE `guid` IN (
-- 25427 Netherwing Eggs (185915) - Dragonmaw Fortress
-- 5300003, 'Shadowmoon Valley (Dragonmaw Fortress) - Netherwing Eggs (185915)'
5309325,5309326,5309327,5309328,5309329,5309330,5309331,5309332,5309333,5309334,5309335,5309336);

REPLACE INTO `spawn_group_spawn` (`Guid`, `Id`, `SlotId`) SELECT `guid`, 5300004, -1 FROM `gameobject` WHERE `guid` IN (
-- 25428 Netherwing Eggs (185915) - Netherwing Ledge
-- 5300004, 'Shadowmoon Valley (Netherwing Ledge) - Netherwing Eggs (185915)'
5309337,5309338,5309339,5309340,5309341,5309342,5309343,5309344,5309345,5309346,5309347,5309348,5309349,5309350,5309351,
5309352,5309353,5309354,5309355,5309356,5309357,5309358,5309359,5309360,5309361,5309362,5309363,5309364,5309365,5309366,
5309367,5309368,5309369,5309370,5309371,5309372,5309373,5309374,5309375,5309376,5309377,5309378,5309379,5309380,5309381,
5309382,5309383,5309384,5309385,5309413,5309414,5309415,5309416,5309417,5309418,5309525,5309526,5309527);

REPLACE INTO `spawn_group_spawn` (`Guid`, `Id`, `SlotId`) SELECT `guid`, 5300005, -1 FROM `gameobject` WHERE `guid` IN (
-- 25429 Netherwing Eggs (185915) - Netherwing Mine
-- 5300005, 'Shadowmoon Valley (Netherwing Mine) - Netherwing Eggs (185915)'
5309386,5309387,5309388,5309389,5309390,5309391,5309392,5309393,5309394,5309395,5309396,5309397,5309398,5309399,5309400,
5309401,5309402,5309403,5309404,5309405,5309406,5309407,5309408,5309409,5309410,5309411,5309412,5309419,5309420,5309421,
5309422,5309423,5309424,5309425,5309426,5309427,5309428,5309429,5309430,5309431,5309432,5309433,5309434,5309435,5309436,
5309437,5309438,5309439,5309440,5309441,5309442,5309443,5309444,5309524);

-- spawn_group will always fill the maxcount until all gameobjects are on cooldown the first time around, which means that if they are farmed in succession for hours
-- there will be a fixed set of eggs respawning when the respawntimer is not variable
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 4500 WHERE `id` = 185915; -- 3600

-- Bonus:
UPDATE `creature_template` SET `UnitFlags` = 32768 WHERE `entry` = 23287; -- Murkblood Miner [0] UNIT_FIELD_FLAGS: 536904448 when "dead"
DELETE FROM `creature_spawn_data_template` WHERE `entry` = 2328701;
INSERT INTO `creature_spawn_data_template` (`entry`, `UnitFlags`) VALUES (2328701, 536904448);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 2328701 FROM `creature_addon` where `guid` IN (SELECT `guid` from `creature` where `id` = 23287) AND `auras` = '31261';

-- Make Mine Cart Aggro and Die (Despawn) on Aggro and Respawn when Slave (Dragonmaw Foreman) evades
-- what exactly happens is not clear, maybe visual aura has death persistance, not worth investigating for now
UPDATE `creature_linking` SET `flag` = 650 where master_guid IN (SELECT guid FROM creature where id = 23289);

