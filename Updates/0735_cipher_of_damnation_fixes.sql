# fix issues with Cipher of Damnation final quest

# https://www.wowhead.com/tbc/npc=21685/oronok-torn-heart move oronok torn-heart abilities to db with targeting for healing wave for friendlies

DELETE FROM creature_spell_list WHERE Id = 2168501;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES ('2168501', '0', '12491', '1', '-1', '201', '0', '100', '1', '6000', '10000', '6000', '10000', 'Oronok Torn-Heart -  Healing Wave on Friendly Missing 50% including self');
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES ('2168501', '1', '15786', '0', '-1', '0', '0', '100', '1', '1000', '2000', '40000', '60000', 'Oronok Torn-Heart - Earthbind Totem');
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES ('2168501', '2', '16006', '2', '-1', '1', '0', '100', '1', '9000', '15000', '9000', '15000', 'Oronok Torn-Heart - Chain Lightning on current');
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES ('2168501', '3', '12548', '2', '-1', '1', '0', '100', '1', '14000', '18000', '14000', '18000', 'Oronok Torn-Heart - Frost Shock on current');

UPDATE `creature_template` SET `SpellList` = '2168501' WHERE (`Entry` = '21685');

DELETE FROM creature_spell_list_entry WHERE Id = 2168501;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES ('2168501', 'Shadowmoon Valley - Oronok Torn-Heart', '50', '75');

# fix incorrect stat values for oronok and borak, gromtor hp was correct
# https://www.wowhead.com/tbc/npc=21686/borak-son-of-oronok
# https://www.wowhead.com/tbc/npc=21685/oronok-torn-heart
UPDATE `creature_template` SET `Expansion` = '1', `HealthMultiplier` = '4', `MinLevelHealth` = '27944', `MaxLevelHealth` = '27944' WHERE (`Entry` = '21686');
UPDATE `creature_template` SET `Expansion` = '1', `HealthMultiplier` = '5', `PowerMultiplier` = '10' , `MinLevelHealth` = '27945', `MaxLevelHealth` = '27945', `MinLevelMana` = '31550', `MaxLevelMana` = '31550' WHERE (`Entry` = '21685');

# create guids for oronok and sons
DELETE FROM creature WHERE guid IN (84973, 84974, 84975);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES ('84973', '21685', '530', '1', '-3419.46', '1383.74', '228.186', '4.9', '0', '0', '0', '0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES ('84974', '21686', '530', '1', '-3419.458', '1383.739', '228.1865', '5.532694', '0', '0', '0', '0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES ('84975', '21687', '530', '1', '-3419.458', '1383.739', '228.1865', '5.532694', '0', '0', '0', '0');

# add spawn group and formation for oronok and sons. Creature ids 21685 21686 21687
DELETE FROM spawn_group WHERE Id = 26004;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `WorldStateExpression`, `Flags`, `StringId`) VALUES ('26004', 'Shadowmoon Valley - Oronok Torn-Heart/Grom\'tor, Son of Oronok/Borak, Son of Oronok', '0', '0', '26004', '0', '1', '0');

DELETE FROM creature_spawn_entry WHERE guid IN (84973, 84974, 84975);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES ('84973', '21685');
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES ('84974', '21686');
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES ('84975', '21687');

DELETE FROM spawn_group_spawn WHERE Id = 26004;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES ('26004', '84973', '0', '0');
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES ('26004', '84974', '1', '0');
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES ('26004', '84975', '2', '0');

DELETE FROM worldstate_name WHERE Id = 26004;
INSERT INTO `worldstate_name` (`Id`, `Name`) VALUES ('26004', 'Shadowmoon Valley - Oronok Torn-Heart/Grom\\\'tor, Son of Oronok/Borak, Son of Oronok');

DELETE FROM conditions WHERE condition_entry = 26004;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES ('26004', '42', '26004', '1', '1', '0', '0', 'Shadowmoon Valley - Oronok Torn-Heart/Grom\'tor, Son of Oronok/Borak, Son of Oronok');

DELETE FROM waypoint_path_name WHERE PathId = 26004;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES ('26004', 'Shadowmoon Valley - Oronok Torn-Heart/Grom\'tor, Son of Oronok/Borak, Son of Oronok');

DELETE FROM waypoint_path WHERE PathId = 26004;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '1', '-3419.46', '1383.74', '228.186', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '2', '-3421', '1395.2', '257.637', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '3', '-3422.54', '1406.67', '287.088', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '4', '-3428.93', '1436.94', '287.088', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '5', '-3440.07', '1471.99', '274.56', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '6', '-3459.11', '1508.68', '248.977', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '7', '-3484.88', '1548.66', '232.005', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '8', '-3500.75', '1568.17', '216.811', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '9', '-3518.82', '1594.41', '199.199', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '10', '-3536.32', '1616.62', '184.366', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '11', '-3560.97', '1646.42', '167.338', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '12', '-3583.43', '1668.64', '146.838', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '13', '-3621.92', '1687.92', '121.755', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '14', '-3646.89', '1711.54', '101.172', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '15', '-3658.07', '1746.44', '84.0883', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '16', '-3663.86', '1794.8', '73.4494', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '17', '-3653.7', '1820.38', '68.5883', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '18', '-3614.38', '1846.75', '56.9772', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '19', '-3569.14', '1841.63', '56.4772', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '20', '-3549.03', '1810.7', '71.5882', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '21', '-3563.8', '1768.44', '81.8105', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '22', '-3586.98', '1752.41', '86.6994', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '23', '-3628.89', '1742.26', '88.8105', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '24', '-3659.35', '1756.59', '88.8105', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '25', '-3663.3', '1803.81', '89.7272', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '26', '-3657.34', '1834.57', '86.6994', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '27', '-3630.56', '1874.86', '84.1438', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '28', '-3613.22', '1918.83', '71.9772', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '29', '-3605.22', '1936.22', '57.8938', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '30', '-3599.82', '1938.79', '51.9772', '100', '0', '0');
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES ('26004', '31', '-3599.82', '1938.79', '51.9772', '100', '1000', '0');

# remove old creature_movement_template path because we use waypoint_path
DELETE FROM creature_movement_template WHERE Entry = 21685 AND PathId = 1;

DELETE FROM spawn_group_formation WHERE Id = 26004;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES ('26004', '3', '5', '0', '26004', '2', 'Shadowmoon Valley - Oronok Torn-Heart/Grom\'tor, Son of Oronok/Borak, Son of Oronok');

DELETE FROM dbscripts_on_event WHERE id = 13961;
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `dataint`, `dataint2`, `comments`) VALUES 
('13961', '0','0', '53', '0', '0','26004', '1', 'Shadowmoon Valley - Oronok and Sons Spawn Group'),
('13961', '2000','0', '53', '0', '0','26004', '0', 'Shadowmoon Valley - Oronok and Sons reset WorldState');