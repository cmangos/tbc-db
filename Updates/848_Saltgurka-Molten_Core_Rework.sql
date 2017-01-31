-- Thanks to malcrom for providing movement data: https://github.com/cmangos/issues/issues/892#issuecomment-270154679  /  http://pastebin.com/U87kY1UR

-- ************************
-- MISC
-- ************************

-- Firelords, Lava Spawns, Firewalkers, Flameguards, Sons of Flame, Ancient Core Hound and Baron Geddon do fire instead of physical melee damage.
-- https://github.com/cmangos/classic-db/commit/af8714ff556d9874311cadb24a477de28e151029
UPDATE `creature_template` SET `DamageSchool`='2' WHERE `Entry` IN ('11666', '11667', '11668', '11673', '12056', '12143', '12265');

-- Increase the size of some of the runes a tiny bit so that you can't see into the void through the cracks
-- They should not be interactable by players except when targeting with an item (flag 16). This was already set for 3 of them
UPDATE `gameobject_template` SET `size`=1.03788,`flags`=16 WHERE `entry`=176953; -- Rune of Mazj
UPDATE `gameobject_template` SET `size`=1.03788,`flags`=16 WHERE `entry`=176952; -- Rune of Zeth
UPDATE `gameobject_template` SET `size`=1.03788,`flags`=16 WHERE `entry`=176951; -- Rune of Koro
UPDATE `gameobject_template` SET `size`=1.03788,`flags`=16 WHERE `entry`=176954; -- Rune of Theri
-- Set animprogress to 100 for all runes. The fire spout animation doesn't play otherwise.
UPDATE `gameobject` SET `animprogress`=100 WHERE `id` IN(176951,176952,176953,176954,176955,176956,176957);

-- Add the circle fire animation to Rune of Zeth
DELETE FROM `gameobject` WHERE `guid`=113269;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
('113269', '178188', '409', '1', '748.839', '-985.16', '-178.283', '3.14159', '0', '0', '-1', '0', '604800', '255', '1');

-- Remove loot from Flame Imp, Core Hound, Lava Spawn, Firesworn, Core Rage, Son of Flame
-- https://github.com/cmangos/classic-db/commit/cd7550d3abbbf5cdfaad9b7e0d72279cbe5253fd
DELETE FROM `creature_loot_template` WHERE `entry` IN ('11669', '11671', '12265', '12099', '11672', '12143');
UPDATE `creature_template` SET `LootId`='0', `SkinningLootId`='0', `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry` IN ('11669', '11671', '12265', '12099', '11672', '12143');

-- Sulfuron Harbinger followers should not respawn while boss is dead
UPDATE `creature_linking_template` SET `flag`=1031 WHERE `master_entry`=12098 AND `entry`=11662; -- Old flag: 7

-- Gehennas followers should not respawn while boss is dead
UPDATE `creature_linking_template` SET `flag`=1031 WHERE `master_entry`=12259 AND `entry`=11661; -- Old flag: 7

-- Golemagg followers should not respawn while boss is dead
UPDATE `creature_linking_template` SET `flag`=1063 WHERE `master_entry`=11988 AND `entry`=11672; -- Old flag: 39

-- ************************
-- Creature Stats
-- ************************
-- Ported from https://github.com/cmangos/classic-db/commit/51433d37f8566b3d736a3c9bf652bee537978c6f

-- Lucifron
UPDATE `creature_template` SET `Armor`='3795', `ResistanceFire`='93', `ResistanceShadow`='186', `MovementType`='2', `DamageMultiplier`='1', `MinMeleeDmg`='1636', `MaxMeleeDmg`='2165' WHERE `Entry`='12118';
-- Magmadar
UPDATE `creature_template` SET `Armor`='4691', `MovementType`='0', `DamageMultiplier`='1', `MinMeleeDmg`='1867', `MaxMeleeDmg`='2475' WHERE `Entry`='11982';
-- Gehennas
UPDATE `creature_template` SET `Armor`='3795', `MovementType`='0', `DamageMultiplier`='1', `MinMeleeDmg`='1636', `MaxMeleeDmg`='2165' WHERE `Entry`='12259';
-- Garr
UPDATE `creature_template` SET `Armor`='4691', `DamageMultiplier`='1', `MinMeleeDmg`='1977', `MaxMeleeDmg`='2621' WHERE `Entry`='12057';
-- Baron Geddon
UPDATE `creature_template` SET `Armor`='4691', `MovementType`='2', `DamageMultiplier`='1', `MinMeleeDmg`='1538', `MaxMeleeDmg`='2039' WHERE `Entry`='12056';
-- Shazzrah
UPDATE `creature_template` SET `Armor`='3795', `MovementType`='2', `DamageMultiplier`='1', `MinMeleeDmg`='1636', `MaxMeleeDmg`='2165' WHERE `Entry`='12264';
-- Sulfuron Harbinger
UPDATE `creature_template` SET `Armor`='5840', `MovementType`='0', `DamageMultiplier`='1', `MinMeleeDmg`='1757', `MaxMeleeDmg`='2330' WHERE `Entry`='12098';
-- Golemagg the Incinerator
UPDATE `creature_template` SET `Armor`='4691', `MovementType`='0', `DamageMultiplier`='1', `MinMeleeDmg`='2197', `MaxMeleeDmg`='2912' WHERE `Entry`='11988';
-- Majordomo Exekutus
UPDATE `creature_template` SET `Armor`='4691', `DamageMultiplier`='1', `MinMeleeDmg`='1538', `MaxMeleeDmg`='2039' WHERE `Entry`='12018';
-- Ragnaros
UPDATE `creature_template` SET `Armor`='4691', `DamageMultiplier`='1', `MinMeleeDmg`='1999', `MaxMeleeDmg`='2650' WHERE `Entry`='11502';

-- Flamewaker Protector
UPDATE `creature_template` SET `Armor`='3555', `MovementType`='0', `DamageMultiplier`='1', `MinMeleeDmg`='1305', `MaxMeleeDmg`='1729' WHERE `Entry`='12119';
-- Flamewaker
UPDATE `creature_template` SET `Armor`='3555', `MovementType`='0', `DamageMultiplier`='1', `MinMeleeDmg`='1305', `MaxMeleeDmg`='1729' WHERE `Entry`='11661';
-- Firesworn
UPDATE `creature_template` SET `Armor`='3791', `DamageMultiplier`='1', `MinMeleeDmg`='1455', `MaxMeleeDmg`='1930' WHERE `Entry`='12099';
-- Flamewaker Priest
UPDATE `creature_template` SET `Armor`='2223', `MovementType`='0', `DamageMultiplier`='1', `MinMeleeDmg`='1023', `MaxMeleeDmg`='1352' WHERE `Entry`='11662';
-- Core Rager
UPDATE `creature_template` SET `Armor`='4391', `MovementType`='0', `DamageMultiplier`='1', `MinMeleeDmg`='1510', `MaxMeleeDmg`='2004' WHERE `Entry`='11672';
-- Flamewaker Elite
UPDATE `creature_template` SET `Armor`='4421', `ResistanceNature`='-93', `ResistanceFrost`='-93', `ResistanceShadow`='-93', `ResistanceArcane`='-93', `DamageMultiplier`='1', `MinMeleeDmg`='1687', `MaxMeleeDmg`='2235' WHERE `Entry`='11664';
-- Flamewaker Healer
UPDATE `creature_template` SET `Armor`='3075', `DamageMultiplier`='1', `MinMeleeDmg`='1161', `MaxMeleeDmg`='1538' WHERE `Entry`='11663';
-- Son of Flame
UPDATE `creature_template` SET `MinLevel`='60', `ResistanceFrost`='-93', `MinLevelHealth`='15260', `MaxLevelHealth`='15260', `MinMeleeDmg`='1247', `MaxMeleeDmg`='1655' WHERE `Entry`='12143';

-- Molten Giant
UPDATE `creature_template` SET `Armor`='4391', `MovementType`='0', `DamageMultiplier`='1', `MinMeleeDmg`='1618', `MaxMeleeDmg`='2147' WHERE `Entry`='11658';
-- Molten Destroyer
UPDATE `creature_template` SET `Armor`='4691', `MovementType`='0', `DamageMultiplier`='1', `MinMeleeDmg`='1757', `MaxMeleeDmg`='2330' WHERE `Entry`='11659';
-- Firelord
UPDATE `creature_template` SET `Armor`='4391', `ResistanceFrost`='-93', `DamageMultiplier`='1', `MinMeleeDmg`='952', `MaxMeleeDmg`='1288' WHERE `Entry`='11668';
-- Lava Spawn
UPDATE `creature_template` SET `MinLevel`='60', `Armor`='3791', `ResistanceHoly`='0', `ResistanceFire`='0', `ResistanceNature`='0', `ResistanceFrost`='-186', `ResistanceShadow`='0', `ResistanceArcane`='0', `MinLevelHealth`='15260', `MaxLevelHealth`='15260', `MinLevelMana`='0', `MaxLevelMana`='0', `MinMeleeDmg`='390', `MaxMeleeDmg`='517' WHERE `Entry`='12265';
-- Lava Surger
UPDATE `creature_template` SET `Armor`='4391', `MovementType`='2', `DamageMultiplier`='1', `MinMeleeDmg`='1376', `MaxMeleeDmg`='1861' WHERE `Entry`='12101';
-- Lava Annihilator
UPDATE `creature_template` SET `Armor`='4391', `DamageMultiplier`='1', `MinMeleeDmg`='1524', `MaxMeleeDmg`='2061' WHERE `Entry`='11665';
-- Ancient Core Hound
UPDATE `creature_template` SET `Armor`='4391', `MovementType`='2', `DamageMultiplier`='1', `MinMeleeDmg`='1726', `MaxMeleeDmg`='2290' WHERE `Entry`='11673';
-- Flame Imp
UPDATE `creature_template` SET `Armor`='4391', `ResistanceHoly`='0', `ResistanceNature`='0', `ResistanceFrost`='0', `ResistanceShadow`='0', `ResistanceArcane`='0', `DamageMultiplier`='1', `MinMeleeDmg`='317', `MaxMeleeDmg`='429' WHERE `Entry`='11669';
-- Core Hound
UPDATE `creature_template` SET `Armor`='4091', `MovementType`='1', `DamageMultiplier`='1', `MinMeleeDmg`='1058', `MaxMeleeDmg`='1403' WHERE `Entry`='11671';
-- Lava Elemental
UPDATE `creature_template` SET `Armor`='4391', `MinLevelHealth`='78600', `MaxLevelHealth`='80925', `MinMeleeDmg`='1587', `MaxMeleeDmg`='2147' WHERE `Entry`='12076';
-- Flameguard
UPDATE `creature_template` SET `Armor`='4391', `ResistanceFrost`='-93', `MinLevelHealth`='78600', `MaxLevelHealth`='80925', `MinMeleeDmg`='1058', `MaxMeleeDmg`='1431' WHERE `Entry`='11667';
-- Firewalker
UPDATE `creature_template` SET `Armor`='4391', `ResistanceFrost`='-93', `MinLevelHealth`='78600', `MaxLevelHealth`='80925', `MinMeleeDmg`='1058', `MaxMeleeDmg`='1431' WHERE `Entry`='11666';
-- Lava Reaver
UPDATE `creature_template` SET `Armor`='4691', `MinLevelHealth`='80925', `MaxLevelHealth`='83275', `MinMeleeDmg`='1381', `MaxMeleeDmg`='1864' WHERE `Entry`='12100';


-- ************************
-- Mechanic Immunities
-- ************************
-- Ported from: https://github.com/cmangos/classic-db/commit/4924e417edce801f83ab6628f5b6eb3e285db1c2

-- --- | TRASH |---
UPDATE `creature_template` SET `MechanicImmuneMask`='116080631' WHERE `entry`='11658';
UPDATE `creature_template` SET `MechanicImmuneMask`='116080631' WHERE `entry`='11659';

UPDATE `creature_template` SET `MechanicImmuneMask`='116097015' WHERE `entry`='11668';
UPDATE `creature_template` SET `MechanicImmuneMask`='116097015' WHERE `entry`='12265';
UPDATE `creature_template` SET `MechanicImmuneMask`='116097015' WHERE `entry`='11667';
UPDATE `creature_template` SET `MechanicImmuneMask`='116097015' WHERE `entry`='11666';

UPDATE `creature_template` SET `MechanicImmuneMask`='115965943' WHERE `entry`='11665';
UPDATE `creature_template` SET `MechanicImmuneMask`='115965943' WHERE `entry`='12101';
UPDATE `creature_template` SET `MechanicImmuneMask`='115965943' WHERE `entry`='12076';
UPDATE `creature_template` SET `MechanicImmuneMask`='115965943' WHERE `entry`='12100';

UPDATE `creature_template` SET `MechanicImmuneMask`='116080631' WHERE `entry`='11673';
UPDATE `creature_template` SET `MechanicImmuneMask`='116080631' WHERE `entry`='11671';

UPDATE `creature_template` SET `MechanicImmuneMask`='82540279' WHERE `entry`='11669';

-- --- | BOSS GUARDS |---
UPDATE `creature_template` SET `MechanicImmuneMask`='116080631' WHERE `entry`='12119';
UPDATE `creature_template` SET `MechanicImmuneMask`='116080631' WHERE `entry`='11661';
UPDATE `creature_template` SET `MechanicImmuneMask`='115965943' WHERE `entry`='12099';
UPDATE `creature_template` SET `MechanicImmuneMask`='82526199' WHERE `entry`='11662';
UPDATE `creature_template` SET `MechanicImmuneMask`='116080631' WHERE `entry`='11664';
UPDATE `creature_template` SET `MechanicImmuneMask`='82524151' WHERE `entry`='11663';
UPDATE `creature_template` SET `MechanicImmuneMask`='116080631' WHERE `entry`='11672';
UPDATE `creature_template` SET `MechanicImmuneMask`='74007075' WHERE `entry`='12143';

-- --- | BOSS |---
UPDATE `creature_template` SET `MechanicImmuneMask`='116080631' WHERE `entry`='12118';
UPDATE `creature_template` SET `MechanicImmuneMask`='116080631' WHERE `entry`='11982';
UPDATE `creature_template` SET `MechanicImmuneMask`='116080631' WHERE `entry`='12259';
UPDATE `creature_template` SET `MechanicImmuneMask`='116080631' WHERE `entry`='12057';
UPDATE `creature_template` SET `MechanicImmuneMask`='116097015' WHERE `entry`='12056';
UPDATE `creature_template` SET `MechanicImmuneMask`='116080631' WHERE `entry`='12264';
UPDATE `creature_template` SET `MechanicImmuneMask`='116080631' WHERE `entry`='12098';
UPDATE `creature_template` SET `MechanicImmuneMask`='116080631' WHERE `entry`='11988';
UPDATE `creature_template` SET `MechanicImmuneMask`='116080631' WHERE `entry`='12018';
UPDATE `creature_template` SET `MechanicImmuneMask`='116097015' WHERE `entry`='11502';


-- ************************
-- Garr
-- ************************

-- Garr movement/linking fixup
UPDATE `creature` SET `spawndist`=10,`MovementType`=1,`position_x`=679.838,`position_y`=-497.988,`position_z`=-213.733,`orientation`=0 WHERE `guid`=56609; -- Garr

-- Use coordinates from classic-db
DELETE FROM `creature` WHERE `guid`=56610;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (56610, 12099, 409, 0, 0, 670.292, -495.011, -212.488, 0, 7200, 0, 0, 61040, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=56616;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (56616, 12099, 409, 0, 0, 675.193, -489.132, -212.679, 0, 7200, 0, 0, 61040, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=56619;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (56619, 12099, 409, 0, 0, 676.861, -507.534, -214.248, 0, 7200, 0, 0, 61040, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=56620;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (56620, 12099, 409, 0, 0, 683.046, -488.763, -213.224, 0, 7200, 0, 0, 61040, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=56622;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (56622, 12099, 409, 0, 0, 688.694, -493.342, -213.977, 0, 7200, 0, 0, 61040, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=56626;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (56626, 12099, 409, 0, 0, 689.302, -501.019, -214.331, 0, 7200, 0, 0, 61040, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=56627;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (56627, 12099, 409, 0, 0, 684.192, -506.928, -214.424, 0, 7200, 0, 0, 61040, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=56628;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (56628, 12099, 409, 0, 0, 671.092, -502.33, -213.129, 0, 7200, 0, 0, 61040, 0, 0, 0);

-- Firesworn follows Garr. To be blizzlike they should remain in a perfect circle around him at all times, but that's not possible with the current linking system
UPDATE `creature_linking_template` SET `flag`=1543 WHERE `entry`=12099 AND `master_entry`=12057; -- Old flag: 7

-- Lava surgers don't respawn after killing Garr
DELETE FROM `creature_linking_template` WHERE `entry`=12101 AND `master_entry`=12057;
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES (12101, 409, 12057, 1024, 0); -- FLAG_CANT_SPAWN_IF_BOSS_DEAD

-- ************************
-- Core Hounds
-- ************************

-- Pathing for Core Hound Entry: 11673 'TDB FORMAT' 
SET @GUID := 56742; --
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,637.1269,-1060.913,-199.2417,0,0,0),
(@GUID,2,635.5156,-1094.704,-196.7484,0,0,0),
(@GUID,3,619.3152,-1131.169,-201.6246,0,0,0),
(@GUID,4,610.0372,-1155.73,-198.8285,0,0,0),
(@GUID,5,619.3152,-1131.169,-201.6246,0,0,0),
(@GUID,6,635.5156,-1094.704,-196.7484,0,0,0);

-- Pathing for Core Hound Entry: 11673 'TDB FORMAT' 
SET @GUID := 56743; --
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,1040.764,-815.1115,-152.1656,0,0,0),
(@GUID,2,1051.314,-799.6896,-151.9713,0,0,0),
(@GUID,3,1039.667,-791.0968,-151.0096,0,0,0),
(@GUID,4,1026.315,-767.8003,-156.6493,0,0,0),
(@GUID,5,1038.774,-761.6977,-152.658,0,0,0),
(@GUID,6,1064.627,-748.9409,-151.7516,0,0,0),
(@GUID,7,1038.774,-761.6977,-152.658,0,0,0),
(@GUID,8,1024.332,-768.7155,-156.9002,0,0,0),
(@GUID,9,1039.641,-791.0518,-150.9892,0,0,0),
(@GUID,10,1051.314,-799.6896,-151.9713,0,0,0);

-- Pathing for Core Hound Entry: 11673 'TDB FORMAT' 
SET @GUID := 56744; --
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,839.597,-1126.927,-156.889,0,0,0),
(@GUID,2,809.0994,-1147.87,-152.4792,0,0,0),
(@GUID,3,797.6674,-1151.59,-151.2095,0,0,0),
(@GUID,4,786.1231,-1142.027,-149.5751,0,0,0),
(@GUID,5,751.8342,-1124.252,-144.3583,0,0,0),
(@GUID,6,726.2703,-1123.733,-140.4308,0,0,0),
(@GUID,7,705.0751,-1129.982,-137.4043,0,0,0),
(@GUID,8,688.8096,-1145.377,-132.6487,0,0,0),
(@GUID,9,681.356,-1157.213,-129.4221,0,0,0),
(@GUID,10,678.912,-1171.258,-124.9925,0,0,0),
(@GUID,11,687.782,-1186.916,-122.3317,0,0,0),
(@GUID,12,702.4774,-1195.069,-120.2255,0,0,0),
(@GUID,13,687.7936,-1186.922,-122.3323,0,0,0),
(@GUID,14,678.912,-1171.258,-124.9925,0,0,0),
(@GUID,15,681.356,-1157.213,-129.4221,0,0,0),
(@GUID,16,688.8096,-1145.377,-132.6487,0,0,0),
(@GUID,17,705.0751,-1129.982,-137.4043,0,0,0),
(@GUID,18,726.2703,-1123.733,-140.4308,0,0,0),
(@GUID,19,751.8342,-1124.252,-144.3583,0,0,0),
(@GUID,20,786.1231,-1142.027,-149.5751,0,0,0),
(@GUID,21,797.6674,-1151.59,-151.2095,0,0,0),
(@GUID,22,809.0994,-1147.87,-152.4792,0,0,0),
(@GUID,23,839.597,-1126.927,-156.889,0,0,0),
(@GUID,24,852.0717,-1110.005,-164.8026,0,0,0),
(@GUID,25,866.1934,-1092.763,-172.8487,0,0,0),
(@GUID,26,872.7313,-1072.91,-180.5435,0,0,0),
(@GUID,27,867.8922,-1050.318,-187.0417,0,0,0),
(@GUID,28,862.4832,-1025.388,-193.7729,0,0,0),
(@GUID,29,837.9779,-1005.705,-203.4326,0,0,0),
(@GUID,30,811.0497,-995.4718,-207.7699,0,0,0),
(@GUID,31,837.9779,-1005.705,-203.4326,0,0,0),
(@GUID,32,862.4832,-1025.388,-193.7729,0,0,0),
(@GUID,33,867.8922,-1050.318,-187.0417,0,0,0),
(@GUID,34,872.7313,-1072.91,-180.5435,0,0,0),
(@GUID,35,866.1934,-1092.763,-172.8487,0,0,0),
(@GUID,36,852.0717,-1110.005,-164.8026,0,0,0);

-- Pathing for Core Hound Entry: 11673 'TDB FORMAT' 
SET @GUID := 56745; --
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,723.3937,-1111.516,-142.1575,0,0,0),
(@GUID,2,753.0598,-1112.579,-145.9724,0,0,0),
(@GUID,3,774.8284,-1122.117,-148.7992,0,0,0),
(@GUID,4,788.3813,-1136.843,-150.0572,0,0,0),
(@GUID,5,807.4134,-1143.589,-152.2109,0,0,0),
(@GUID,6,820.8864,-1133.536,-153.9561,0,0,0),
(@GUID,7,811.4623,-1112.419,-155.1721,0,0,0),
(@GUID,8,791.674,-1098.377,-157.4893,0,0,0),
(@GUID,9,756.4903,-1086.385,-165.0273,0,0,0),
(@GUID,10,713.1385,-1077.042,-178.4627,0,0,0),
(@GUID,11,666.2255,-1071.984,-188.5744,0,0,0),
(@GUID,12,713.1385,-1077.042,-178.4627,0,0,0),
(@GUID,13,756.4903,-1086.385,-165.0273,0,0,0),
(@GUID,14,791.674,-1098.377,-157.4893,0,0,0),
(@GUID,15,811.4623,-1112.419,-155.1721,0,0,0),
(@GUID,16,820.8864,-1133.536,-153.9561,0,0,0),
(@GUID,17,807.4134,-1143.589,-152.2109,0,0,0),
(@GUID,18,788.3813,-1136.843,-150.0572,0,0,0),
(@GUID,19,774.8284,-1122.117,-148.7992,0,0,0),
(@GUID,20,753.0598,-1112.579,-145.9724,0,0,0),
(@GUID,21,723.3937,-1111.516,-142.1575,0,0,0),
(@GUID,22,692.8207,-1125.591,-137.05,0,0,0),
(@GUID,23,670.802,-1153.978,-128.2815,0,0,0),
(@GUID,24,669.009,-1180.974,-123.0805,0,0,0),
(@GUID,25,670.802,-1153.978,-128.2815,0,0,0),
(@GUID,26,692.8207,-1125.591,-137.05,0,0,0);

-- Pathing for Core Hound Entry: 11673 'TDB FORMAT' 
SET @GUID := 56746; --
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,691.9941,-667.7454,-209.6549,0,0,0),
(@GUID,2,694.3823,-643.1285,-209.7859,0,0,0),
(@GUID,3,706.5988,-608.756,-209.7862,0,0,0),
(@GUID,4,694.3823,-643.1285,-209.7859,0,0,0),
(@GUID,5,691.9941,-667.7454,-209.6549,0,0,0),
(@GUID,6,712.6238,-699.4688,-209.7263,0,0,0),
(@GUID,7,696.8894,-727.3798,-209.4279,0,0,0),
(@GUID,8,672.7046,-770.8894,-209.0702,0,0,0),
(@GUID,9,696.8894,-727.3798,-209.4279,0,0,0),
(@GUID,10,712.6238,-699.4688,-209.7263,0,0,0);

-- Pathing for Core Hound Entry: 11673 'TDB FORMAT' 
SET @GUID := 56667; --
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,716.2954,-563.1713,-215.2122,0,0,0),
(@GUID,2,730.72,-541.2038,-216.5207,0,0,0),
(@GUID,3,751.7352,-537.1676,-215.0087,0,0,0),
(@GUID,4,782.8221,-568.6121,-213.2396,0,0,0),
(@GUID,5,826.4692,-557.4173,-206.1204,0,0,0),
(@GUID,6,862.7628,-559.3347,-203.8248,0,0,0),
(@GUID,7,897.3094,-575.2031,-203.7624,0,0,0),
(@GUID,8,928.274,-599.9254,-203.4944,0,0,0),
(@GUID,9,976.9997,-588.0521,-203.566,0,0,0),
(@GUID,10,1013.348,-611.7108,-198.8222,0,0,0),
(@GUID,11,1031.784,-628.6943,-189.8679,0,0,0),
(@GUID,12,1054.582,-638.4258,-174.0191,0,0,0),
(@GUID,13,1082.93,-658.8265,-159.5947,0,0,0),
(@GUID,14,1102.016,-688.0265,-153.0321,0,0,0),
(@GUID,15,1095.611,-709.971,-151.2729,0,0,0),
(@GUID,16,1102.016,-688.0265,-153.0321,0,0,0),
(@GUID,17,1082.93,-658.8265,-159.5947,0,0,0),
(@GUID,18,1054.582,-638.4258,-174.0191,0,0,0),
(@GUID,19,1031.784,-628.6943,-189.8679,0,0,0),
(@GUID,20,1013.348,-611.7108,-198.8222,0,0,0),
(@GUID,21,976.9997,-588.0521,-203.566,0,0,0),
(@GUID,22,928.274,-599.9254,-203.4944,0,0,0),
(@GUID,23,897.3094,-575.2031,-203.7624,0,0,0),
(@GUID,24,862.7628,-559.3347,-203.8248,0,0,0),
(@GUID,25,826.4692,-557.4173,-206.1204,0,0,0),
(@GUID,26,782.8221,-568.6121,-213.2396,0,0,0),
(@GUID,27,751.7352,-537.1676,-215.0087,0,0,0),
(@GUID,28,730.72,-541.2038,-216.5207,0,0,0),
(@GUID,29,716.2954,-563.1713,-215.2122,0,0,0),
(@GUID,30,710.9113,-588.9549,-211.3497,0,0,0);

-- Pathing for Core Hound Entry: 11673 'TDB FORMAT' 
SET @GUID := 56668; --
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,733.2838,-1027.083,-177.5541,0,0,0),
(@GUID,2,695.6022,-1035.41,-182.9091,0,0,0),
(@GUID,3,652.9347,-1047.064,-195.1933,0,0,0),
(@GUID,4,695.6022,-1035.41,-182.9091,0,0,0),
(@GUID,5,733.2838,-1027.083,-177.5541,0,0,0),
(@GUID,6,746.1315,-1006.086,-177.4375,0,0,0);

-- Pathing for Core Hound Entry: 11673 'TDB FORMAT' 
SET @GUID := 56669; -- 
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,801.1528,-637.2293,-203.2919,0,0,0),
(@GUID,2,819.1058,-631.4754,-202.4386,0,0,0),
(@GUID,3,842.2988,-620.2899,-203.6502,0,0,0),
(@GUID,4,863.2007,-606.6663,-201.9657,0,0,0),
(@GUID,5,880.7169,-589.9871,-203.5187,0,0,0),
(@GUID,6,891.5865,-563.1656,-204.1768,0,0,0),
(@GUID,7,880.7169,-589.9871,-203.5187,0,0,0),
(@GUID,8,863.2007,-606.6663,-201.9657,0,0,0),
(@GUID,9,842.2988,-620.2899,-203.6502,0,0,0),
(@GUID,10,819.1058,-631.4754,-202.4386,0,0,0);


-- Pathing for Core Hound Entry: 11673 'TDB FORMAT' 
SET @GUID := 56670; -- 
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,606.3914,-839.9142,-207.404,0,0,0),
(@GUID,2,640.3456,-838.7157,-208.4006,0,0,0),
(@GUID,3,606.3914,-839.9142,-207.404,0,0,0),
(@GUID,4,580.7532,-839.1719,-206.0227,0,0,0),
(@GUID,5,571.1739,-823.5732,-206.9356,0,0,0),
(@GUID,6,568.275,-805.6725,-206.7511,0,0,0),
(@GUID,7,574.7719,-784.4373,-207.1243,0,0,0),
(@GUID,8,568.275,-805.6725,-206.7511,0,0,0),
(@GUID,9,571.1739,-823.5732,-206.9356,0,0,0),
(@GUID,10,580.7532,-839.1719,-206.0227,0,0,0);

-- Pathing for Core Hound Entry: 11673 'TDB FORMAT' 
SET @GUID := 56671; --
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,676.3041,-859.0721,-207.3966,0,0,0),
(@GUID,2,660.5331,-846.3304,-208.582,0,0,0),
(@GUID,3,676.3041,-859.0721,-207.3966,0,0,0),
(@GUID,4,693.7902,-895.4052,-199.3317,0,0,0),
(@GUID,5,709.7253,-933.0809,-191.2163,0,0,0),
(@GUID,6,693.7902,-895.4052,-199.3317,0,0,0);

-- Pathing for Core Hound Entry: 11673 'TDB FORMAT' 
SET @GUID := 56672; --
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,708.7521,-494.4869,-213.9441,0,0,0),
(@GUID,2,706.8069,-515.2225,-215.4603,0,0,0),
(@GUID,3,695.7981,-526.2382,-214.3069,0,0,0),
(@GUID,4,671.7322,-532.863,-210.5322,0,0,0),
(@GUID,5,695.7981,-526.2382,-214.3069,0,0,0),
(@GUID,6,706.8069,-515.2225,-215.4603,0,0,0),
(@GUID,7,708.7521,-494.4869,-213.9441,0,0,0),
(@GUID,8,706.4074,-474.3789,-211.1673,0,0,0);

-- Pathing for Core Hound Entry: 11673 'TDB FORMAT' 
SET @GUID := 56673; -- 
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,723.8314,-518.3099,-217.6104,0,0,0),
(@GUID,2,706.7125,-535.8472,-216.7189,0,0,0),
(@GUID,3,685.7861,-543.6451,-211.2004,0,0,0),
(@GUID,4,667.6307,-538.1242,-209.9916,0,0,0),
(@GUID,5,685.7861,-543.6451,-211.2004,0,0,0),
(@GUID,6,706.7125,-535.8472,-216.7189,0,0,0),
(@GUID,7,723.8314,-518.3099,-217.6104,0,0,0),
(@GUID,8,728.2719,-487.4919,-212.95,0,0,0);

-- Pathing for Core Hound Entry: 11673 'TDB FORMAT' 
SET @GUID := 56674; --
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,831.386,-627.8932,-203.1487,0,0,0),
(@GUID,2,856.4564,-617.9056,-202.1571,0,0,0),
(@GUID,3,899.6118,-613.5433,-202.2377,0,0,0),
(@GUID,4,936.2535,-612.5002,-203.6217,0,0,0),
(@GUID,5,975.1815,-641.0467,-201.5775,0,0,0),
(@GUID,6,1002.311,-661.9902,-194.1922,0,0,0),
(@GUID,7,1024.067,-684.3118,-173.4296,0,0,0),
(@GUID,8,1042.016,-695.8206,-163.7581,0,0,0),
(@GUID,9,1058.163,-706.0782,-156.6107,0,0,0),
(@GUID,10,1068.566,-742.8318,-151.7328,0,0,0),
(@GUID,11,1117.097,-744.479,-145.6289,0,0,0),
(@GUID,12,1149.458,-726.4506,-133.8044,0,0,0),
(@GUID,13,1175.513,-702.1757,-130.9873,0,0,0),
(@GUID,14,1200.504,-670.9343,-128.5453,0,0,0),
(@GUID,15,1202.953,-639.3985,-126.1688,0,0,0),
(@GUID,16,1188.303,-614.0296,-121.8816,0,0,0),
(@GUID,17,1164.196,-595.4036,-115.7764,0,0,0),
(@GUID,18,1155.213,-574.8707,-113.3766,0,0,0),
(@GUID,19,1164.196,-595.4036,-115.7764,0,0,0),
(@GUID,20,1188.303,-614.0296,-121.8816,0,0,0),
(@GUID,21,1202.953,-639.3985,-126.1688,0,0,0),
(@GUID,22,1200.504,-670.9343,-128.5453,0,0,0),
(@GUID,23,1175.589,-702.0806,-130.9749,0,0,0),
(@GUID,24,1149.458,-726.4506,-133.8044,0,0,0),
(@GUID,25,1117.097,-744.479,-145.6289,0,0,0),
(@GUID,26,1068.566,-742.8318,-151.7328,0,0,0),
(@GUID,27,1058.163,-706.0782,-156.6107,0,0,0),
(@GUID,28,1042.016,-695.8206,-163.7581,0,0,0),
(@GUID,29,1024.226,-684.4753,-173.2943,0,0,0),
(@GUID,30,1002.311,-661.9902,-194.1922,0,0,0),
(@GUID,31,975.1815,-641.0467,-201.5775,0,0,0),
(@GUID,32,936.2535,-612.5002,-203.6217,0,0,0),
(@GUID,33,899.6118,-613.5433,-202.2377,0,0,0),
(@GUID,34,856.4564,-617.9056,-202.1571,0,0,0),
(@GUID,35,831.386,-627.8932,-203.1487,0,0,0),
(@GUID,36,816.5816,-641.0675,-203.8891,0,0,0);

-- Pathing for Core Hound Entry: 11673 'TDB FORMAT' 
SET @GUID := 56675; --
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, '01', '1142.684', '-647.4110', '-131.9233', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, '02', '1142.684', '-647.4110', '-131.9233', '150000', '0', '0', '0', '0', '0', '0', '0', '0', '1.53589', '0', '0'),
(@GUID, '03', '1144.050', '-662.6844', '-131.4626', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, '04', '1160.286', '-696.8795', '-132.4863', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, '05', '1129.031', '-721.0490', '-139.5804', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, '06', '1118.512', '-712.1383', '-144.2585', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, '07', '1104.687', '-722.1303', '-146.9832', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, '08', '1090.824', '-731.3634', '-149.9868', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, '09', '1070.791', '-717.5623', '-153.4831', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, '10', '1080.754', '-681.5721', '-159.8726', '150000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, '11', '1080.101', '-708.4520', '-154.2289', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, '12', '1084.528', '-731.8951', '-151.0118', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, '13', '1093.696', '-748.0836', '-149.2619', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, '14', '1110.641', '-738.1426', '-146.5005', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, '15', '1115.694', '-716.5850', '-144.6347', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, '16', '1148.220', '-713.5815', '-132.9880', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, '17', '1161.699', '-694.4932', '-132.2003', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(@GUID, '18', '1149.113', '-669.7729', '-130.3396', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- Pathing for Core Hound Entry: 11673 'TDB FORMAT' 
SET @GUID := 56676; --
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,837.5117,-1001.866,-203.9284,0,0,0),
(@GUID,2,820.1378,-991.096,-207.1345,0,0,0),
(@GUID,3,815.0589,-979.8468,-208.6176,0,0,0),
(@GUID,4,820.1378,-991.096,-207.1345,0,0,0),
(@GUID,5,837.5117,-1001.866,-203.9284,0,0,0),
(@GUID,6,875.2714,-1009.17,-195.7951,0,0,0),
(@GUID,7,884.1406,-1024.13,-192.9333,0,0,0),
(@GUID,8,875.2714,-1009.17,-195.7951,0,0,0);

-- ************************
-- Baron Geddon
-- ************************

-- Pathing for Baron Geddon Entry: 12056 'TDB FORMAT' 
-- He had incorrect points and he wasn't running
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(5665501);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(5665501,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Baron Geddon - Run');

SET @ENTRY := 12056;
SET @GUID := 56655;
-- Old path was with guid, we will do it with entry instead
DELETE FROM `creature_movement` WHERE `id`=@GUID;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@ENTRY,1,747.5466,-981.676,-178.401,0,0,5665501),
(@ENTRY,2,739.986,-953.2151,-185.7548,0,0,0),
(@ENTRY,3,716.3201,-910.8809,-193.1546,0,0,0),
(@ENTRY,4,701.403,-887.8356,-199.5063,0,0,0),
(@ENTRY,5,675.8235,-847.7932,-208.2585,0,0,0),
(@ENTRY,6,639.0753,-830.6404,-208.4202,0,0,0),
(@ENTRY,7,611.1107,-828.0424,-207.401,0,0,0),
(@ENTRY,8,591.2252,-811.5459,-205.4029,0,0,0),
(@ENTRY,9,608.8426,-787.6771,-207.4771,0,0,0),
(@ENTRY,10,643.6417,-778.0462,-208.7169,0,0,0),
(@ENTRY,11,664.3234,-786.412,-208.9517,0,0,0),
(@ENTRY,12,661.6707,-816.6882,-208.705,0,0,0),
(@ENTRY,13,678.5975,-847.099,-208.2891,0,0,0),
(@ENTRY,14,699.6382,-878.082,-201.5386,0,0,0),
(@ENTRY,15,718.3248,-907.4992,-193.3159,0,0,0),
(@ENTRY,16,740.3997,-949.3792,-186.3494,0,0,0),
(@ENTRY,17,746.6027,-966.5585,-181.5636,0,0,0);

-- ************************
-- Shazzrah
-- ************************

-- Pathing for Shazzrah Entry: 12264 'TDB FORMAT' 
SET @ENTRY := 12264;
SET @GUID := 56608;
UPDATE `creature_template` SET `MovementType`=2 WHERE `entry`=@ENTRY;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=587.3033,`position_y`=-801.9748,`position_z`=-205.1575 WHERE `guid`=@GUID;
DELETE FROM `creature_movement_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@ENTRY,1,587.3033,-801.9748,-205.1575,0,0,0),
(@ENTRY,2,588.8104,-806.2665,-205.0612,0,0,0),
(@ENTRY,3,587.384,-811.3304,-205.1067,0,0,0),
(@ENTRY,4,583.1524,-811.6958,-205.1573,0,0,0),
(@ENTRY,5,579.2105,-806.6736,-205.2536,0,0,0),
(@ENTRY,6,579.0768,-804.3456,-205.2396,0,0,0),
(@ENTRY,7,580.0167,-800.6034,-205.4058,0,0,0),
(@ENTRY,8,583.49,-799.7552,-205.3562,0,0,0);

-- ************************
-- Lucifron
-- ************************

-- Pathing for Lucifron Entry: 12118 'TDB FORMAT'
-- Fixed spawnpoints.
SET @ENTRY := 12118;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1037.022,`position_y`=-986.3419,`position_z`=-181.5163,`orientation`=0 WHERE `guid`=56605; -- Lucifron
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=1033.022,`position_y`=-986.3419,`position_z`=-181.5163,`orientation`=0 WHERE `guid`=56606; -- Flamewaker Protector 1
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=1037.022,`position_y`=-982.3419,`position_z`=-181.5163,`orientation`=0 WHERE `guid`=56607; -- Flamewaker Protector 2
-- Delete the old guid-based movement
DELETE FROM `creature_movement` WHERE `id`=56605;
DELETE FROM `creature_movement_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`) VALUES
(@ENTRY,1,1037.022,-986.3419,-181.5163,0,0),
(@ENTRY,2,1053.15,-990.7546,-182.6615,0,0),
(@ENTRY,3,1070.411,-1006.765,-185.5444,0,0),
(@ENTRY,4,1053.979,-989.0480,-182.5530,0,0),
(@ENTRY,5,1039.573,-983.6991,-181.3170,0,0),
(@ENTRY,6,1014.957,-977.6532,-181.2234,0,0),
(@ENTRY,7,1007.782,-958.0884,-180.174,0,0),
(@ENTRY,8,1000.203,-955.4069,-179.5825,0,0),
(@ENTRY,9,1007.782,-958.0884,-180.174,0,0),
(@ENTRY,10,1014.45,-978.5632,-181.1854,0,0);

-- The followers shouldn't respawn after Lucifron is killed
UPDATE `creature_linking_template` SET `flag`=1543 WHERE `master_entry`=@ENTRY AND `entry`=12119; -- Old flag: 519

-- ************************
-- Lava Surgers
-- ************************

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(5665601);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(5665601,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Lava Surger - Run');

-- Pathing for Lava Surger Entry: 12101 'TDB FORMAT' 
SET @GUID := 56656;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,1008.565,-890.0919,-165.3463,0,0,5665601),
(@GUID,2,980.3823,-904.361,-171.1376,0,0,0),
(@GUID,3,966.753,-899.8453,-175.7252,0,0,0),
(@GUID,4,957.4196,-885.538,-173.7588,0,0,0),
(@GUID,5,980.3823,-904.361,-171.1376,0,0,0),
(@GUID,6,1008.565,-890.0919,-165.3463,0,0,0),
(@GUID,7,1028.491,-908.0417,-161.3687,0,0,0),
(@GUID,8,1041.238,-888.9818,-158.3343,0,0,0),
(@GUID,9,1061.057,-900.0848,-159.2599,0,0,0),
(@GUID,10,1071.243,-893.1624,-156.4947,0,0,0),
(@GUID,11,1041.238,-888.9818,-158.3343,0,0,0),
(@GUID,12,1028.491,-908.0417,-161.3687,0,0,0);

-- Pathing for Lava Surger Entry: 12101 'TDB FORMAT' 
SET @GUID := 56657;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,748.5151,-725.4263,-211.9395,0,0,5665601),
(@GUID,2,739.7422,-763.3509,-218.9724,0,0,0),
(@GUID,3,737.3899,-809.9995,-225.6305,0,0,0),
(@GUID,4,745.2436,-850.8501,-223.6281,0,0,0),
(@GUID,5,737.3899,-809.9995,-225.6305,0,0,0),
(@GUID,6,739.7422,-763.3509,-218.9724,0,0,0),
(@GUID,7,748.5151,-725.4263,-211.9395,0,0,0),
(@GUID,8,764.8676,-686.4996,-212.5972,0,0,0);

-- Pathing for Lava Surger Entry: 12101 'TDB FORMAT' 
SET @GUID := 56658;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,990.2437,-625.777,-200.7675,0,0,5665601),
(@GUID,2,998.6928,-609.5692,-202.0619,0,0,0),
(@GUID,3,989.8893,-595.9269,-203.2261,0,0,0),
(@GUID,4,975.5094,-589.3787,-203.781,0,0,0),
(@GUID,5,958.4057,-595.7327,-203.9931,0,0,0),
(@GUID,6,950.7159,-608.6719,-202.882,0,0,0),
(@GUID,7,957.0149,-625.9316,-203.259,0,0,0),
(@GUID,8,980.0177,-632.2986,-203.5142,0,0,0);

-- Pathing for Lava Surger Entry: 12101 'TDB FORMAT' 
SET @GUID := 56659;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,891.3988,-1050.081,-187.1399,0,0,5665601),
(@GUID,2,875.8871,-1014.841,-194.9043,0,0,0),
(@GUID,3,864.6398,-983.1211,-199.6699,0,0,0),
(@GUID,4,864.6398,-983.1211,-199.6699,0,0,0),
(@GUID,5,875.8871,-1014.841,-194.9043,0,0,0),
(@GUID,6,891.3988,-1050.081,-187.1399,0,0,0),
(@GUID,7,891.1622,-1067.062,-182.6621,0,0,0),
(@GUID,8,883.1496,-1090.733,-176.0342,0,0,0),
(@GUID,9,870.0406,-1110.407,-169.6678,0,0,0),
(@GUID,10,855.7172,-1121.873,-161.9807,0,0,0),
(@GUID,11,839.0113,-1128.492,-156.5452,0,0,0),
(@GUID,12,819.8719,-1143.5,-153.6145,0,0,0),
(@GUID,13,809.326,-1150.683,-152.5631,0,0,0),
(@GUID,14,791.812,-1152.45,-150.4214,0,0,0),
(@GUID,15,787.2233,-1123.192,-150.5524,0,0,0),
(@GUID,16,757.2313,-1129.672,-145.1273,0,0,0),
(@GUID,17,723.393,-1106.211,-143.0938,0,0,0),
(@GUID,18,701.5763,-1137.426,-135.6903,0,0,0),
(@GUID,19,666.1591,-1162.693,-126.0165,0,0,0),
(@GUID,20,693.4008,-1186.742,-120.9137,0,0,0),
(@GUID,21,717.1637,-1193.438,-118.9491,0,0,0),
(@GUID,22,736.2715,-1211.634,-118.8998,0,0,0),
(@GUID,23,759.3818,-1228.879,-119.2757,0,0,0),
(@GUID,24,736.2715,-1211.634,-118.8998,0,0,0),
(@GUID,25,717.1637,-1193.438,-118.9491,0,0,0),
(@GUID,26,693.4008,-1186.742,-120.9137,0,0,0),
(@GUID,27,666.1591,-1162.693,-126.0165,0,0,0),
(@GUID,28,701.5763,-1137.426,-135.6903,0,0,0),
(@GUID,29,723.393,-1106.211,-143.0938,0,0,0),
(@GUID,30,757.2313,-1129.672,-145.1273,0,0,0),
(@GUID,31,787.2233,-1123.192,-150.5524,0,0,0),
(@GUID,32,791.812,-1152.45,-150.4214,0,0,0),
(@GUID,33,809.326,-1150.683,-152.5631,0,0,0),
(@GUID,34,819.8719,-1143.5,-153.6145,0,0,0),
(@GUID,35,839.0113,-1128.492,-156.5452,0,0,0),
(@GUID,36,855.7172,-1121.873,-161.9807,0,0,0),
(@GUID,37,870.0406,-1110.407,-169.6678,0,0,0),
(@GUID,38,883.1496,-1090.733,-176.0342,0,0,0),
(@GUID,39,891.1622,-1067.062,-182.6621,0,0,0);

-- Pathing for Lava Surger Entry: 12101 'TDB FORMAT' 
SET @GUID := 56660;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,889.6862,-825.1835,-227.3351,0,0,5665601),
(@GUID,2,865.6118,-779.7151,-225.9819,0,0,0),
(@GUID,3,865.0396,-765.1099,-224.75,0,0,0),
(@GUID,4,879.3519,-761.3517,-224.0491,0,0,0),
(@GUID,5,895.7159,-764.4568,-224.3548,0,0,0),
(@GUID,6,909.2687,-788.947,-226.9377,0,0,0),
(@GUID,7,912.38,-812.9961,-227.3731,0,0,0),
(@GUID,8,917.8469,-848.5494,-219.4701,0,0,0),
(@GUID,9,913.7874,-875.5369,-214.22,0,0,0),
(@GUID,10,890.5936,-905.0054,-222.0683,0,0,0),
(@GUID,11,860.6026,-921.1229,-225.7609,0,0,0),
(@GUID,12,816.981,-920.8954,-225.8454,0,0,0),
(@GUID,13,782.662,-911.1868,-222.6471,0,0,0),
(@GUID,14,816.9766,-920.8942,-225.8542,0,0,0),
(@GUID,15,860.6026,-921.1229,-225.7609,0,0,0),
(@GUID,16,890.5936,-905.0054,-222.0683,0,0,0),
(@GUID,17,913.7874,-875.5369,-214.22,0,0,0),
(@GUID,18,917.8469,-848.5494,-219.4701,0,0,0),
(@GUID,19,912.38,-812.9961,-227.3731,0,0,0),
(@GUID,20,909.2687,-788.947,-226.9377,0,0,0),
(@GUID,21,895.7159,-764.4568,-224.3548,0,0,0),
(@GUID,22,879.3519,-761.3517,-224.0491,0,0,0),
(@GUID,23,865.0396,-765.1099,-224.75,0,0,0),
(@GUID,24,884.0205,-803.6951,-226.6926,0,0,0);

-- Pathing for Lava Surger Entry: 12101 'TDB FORMAT' 
SET @GUID := 56661; --
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,1008.282,-863.9785,-164.7876,0,0,5665601),
(@GUID,2,987.062,-893.2951,-169.7379,0,0,0),
(@GUID,3,962.845,-884.6795,-173.6825,0,0,0),
(@GUID,4,996.8139,-897.9012,-168.1947,0,0,0),
(@GUID,5,1031.916,-889.574,-160.0134,0,0,0),
(@GUID,6,1069.734,-893.855,-156.7931,0,0,0),
(@GUID,7,1031.916,-889.574,-160.0134,0,0,0),
(@GUID,8,996.8139,-897.9012,-168.1947,0,0,0),
(@GUID,9,962.845,-884.6795,-173.6825,0,0,0),
(@GUID,10,987.062,-893.2951,-169.7379,0,0,0),
(@GUID,11,1001.684,-886.9771,-167.0547,0,0,0);

-- Pathing for Lava Surger Entry: 12101 'TDB FORMAT' 
SET @GUID := 56662;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,1023.84,-646.451,-189.8513,0,0,5665601),
(@GUID,2,1046.413,-674.9515,-169.5157,0,0,0),
(@GUID,3,1068.962,-696.559,-157.781,0,0,0),
(@GUID,4,1053.966,-737.0459,-151.7794,0,0,0),
(@GUID,5,1059.624,-760.5685,-151.586,0,0,0),
(@GUID,6,1084.683,-739.8831,-150.7728,0,0,0),
(@GUID,7,1099.292,-778.5201,-151.1692,0,0,0),
(@GUID,8,1125.305,-739.6833,-142.7612,0,0,0),
(@GUID,9,1159.508,-719.2535,-133.2384,0,0,0),
(@GUID,10,1192.168,-686.1762,-128.7967,0,0,0),
(@GUID,11,1211.332,-653.7628,-127.9139,0,0,0),
(@GUID,12,1187.516,-611.0389,-121.1588,0,0,0),
(@GUID,13,1148.847,-599.9906,-114.898,0,0,0),
(@GUID,14,1187.516,-611.0389,-121.1588,0,0,0),
(@GUID,15,1211.332,-653.7628,-127.9139,0,0,0),
(@GUID,16,1192.168,-686.1762,-128.7967,0,0,0),
(@GUID,17,1159.508,-719.2535,-133.2384,0,0,0),
(@GUID,18,1125.392,-739.6312,-142.7302,0,0,0),
(@GUID,19,1099.292,-778.5201,-151.1692,0,0,0),
(@GUID,20,1084.683,-739.8831,-150.7728,0,0,0),
(@GUID,21,1059.654,-760.5442,-151.592,0,0,0),
(@GUID,22,1053.966,-737.0459,-151.7794,0,0,0),
(@GUID,23,1068.962,-696.559,-157.781,0,0,0),
(@GUID,24,1046.413,-674.9515,-169.5157,0,0,0);

-- Pathing for Lava Surger Entry: 12101 'TDB FORMAT' 
SET @GUID := 56664;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,807.4164,-656.269,-206.1155,0,0,5665601),
(@GUID,2,779.0322,-680.1849,-213.9095,0,0,0),
(@GUID,3,759.9225,-689.7131,-212.5623,0,0,0),
(@GUID,4,753.9745,-704.1632,-211.753,0,0,0),
(@GUID,5,758.8966,-684.4725,-212.381,0,0,0),
(@GUID,6,780.8896,-669.565,-211.4591,0,0,0),
(@GUID,7,791.4582,-652.981,-207.6324,0,0,0),
(@GUID,8,758.8966,-684.4725,-212.381,0,0,0),
(@GUID,9,753.9745,-704.1632,-211.753,0,0,0),
(@GUID,10,759.9225,-689.7131,-212.5623,0,0,0),
(@GUID,11,779.0322,-680.1849,-213.9095,0,0,0),
(@GUID,12,800.4368,-665.5578,-208.9407,0,0,0);

-- Pathing for Lava Surger Entry: 12101 'TDB FORMAT' 
SET @GUID := 56665;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,1057.385,-862.5274,-159.6177,0,0,5665601),
(@GUID,2,995.0676,-853.4235,-165.4317,0,0,0),
(@GUID,3,1035.173,-854.7958,-158.8589,0,0,0);

-- Pathing for Lava Surger Entry: 12101 'TDB FORMAT' 
SET @GUID := 56666;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,679.1953,-847.3836,-208.2482,0,0,5665601),
(@GUID,2,676.7046,-829.8509,-208.8353,0,0,0),
(@GUID,3,665.002,-813.2372,-208.774,0,0,0),
(@GUID,4,681.6021,-776.7833,-209.1657,0,0,0),
(@GUID,5,686.1985,-738.5436,-209.2948,0,0,0),
(@GUID,6,707.9111,-711.0708,-209.5187,0,0,0),
(@GUID,7,708.2624,-692.8405,-209.5718,0,0,0),
(@GUID,8,690.2739,-662.6287,-209.6574,0,0,0),
(@GUID,9,708.2625,-692.8368,-209.5175,0,0,0),
(@GUID,10,707.9111,-711.0708,-209.5187,0,0,0),
(@GUID,11,686.1985,-738.5436,-209.2948,0,0,0),
(@GUID,12,681.6021,-776.7833,-209.1657,0,0,0),
(@GUID,13,665.002,-813.2372,-208.774,0,0,0),
(@GUID,14,676.7046,-829.8509,-208.8353,0,0,0),
(@GUID,15,679.1953,-847.3836,-208.2482,0,0,0),
(@GUID,16,696.5482,-855.4606,-206.0954,0,0,0),
(@GUID,17,710.7119,-882.6242,-198.953,0,0,0),
(@GUID,18,714.8118,-907.6405,-193.7685,0,0,0),
(@GUID,19,735.3042,-937.3447,-188.4066,0,0,0),
(@GUID,20,714.8118,-907.6405,-193.7685,0,0,0),
(@GUID,21,710.7119,-882.6242,-198.953,0,0,0),
(@GUID,22,697.0541,-866.1818,-204.0854,0,0,0);

-- Pathing for Lava Surger Entry: 12101 'TDB FORMAT' 
SET @GUID := 56740;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,591.3667,-1135.207,-200.2088,0,0,5665601),
(@GUID,2,578.8029,-1173.733,-194.7558,0,0,0),
(@GUID,3,591.5503,-1192.438,-195.7943,0,0,0),
(@GUID,4,608.195,-1194.054,-195.7651,0,0,0),
(@GUID,5,623.8442,-1186.21,-195.8348,0,0,0),
(@GUID,6,628.4896,-1171.869,-194.5435,0,0,0),
(@GUID,7,628.3709,-1151.011,-197.0152,0,0,0),
(@GUID,8,626.806,-1131.724,-200.8709,0,0,0),
(@GUID,9,645.6395,-1106.676,-196.4797,0,0,0),
(@GUID,10,667.9337,-1066.047,-188.3889,0,0,0),
(@GUID,11,619.8726,-1066.64,-199.7958,0,0,0),
(@GUID,12,613.3337,-1099.887,-198.7582,0,0,0);

-- Pathing for Lava Surger Entry: 12101 'TDB FORMAT' 
SET @GUID := 56741;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,1015.666,-808.7546,-148.7213,0,0,0),
(@GUID,2,1032.143,-826.1788,-154.2626,0,0,0),
(@GUID,3,1055.823,-833.2653,-154.468,0,0,0),
(@GUID,4,1032.143,-826.1788,-154.2626,0,0,0);

-- ************************
-- Lava Annihilators/Firelord
-- ************************

-- Pooling and missing spawns (Source and credits to: https://github.com/cmangos/classic-db/commit/9bd3a6e154f4a6cd8f9f6cbc63478d0ceaf78610)

-- Delete all existing Firelords and Lava Annihilators and replace them with the ones from classic-db
DELETE FROM `creature` WHERE `id` IN(11668,11665);

-- Firelords GUIDs 151052 - 151088
-- Lava Annihilators GUIDs 151089 - 151125
SET @FIRELORD := 151052;
SET @ANNIHILATOR := 151089;
-- FIRELORD
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(@FIRELORD + 0, 11668, 409, 12231, 0, 1150.96, -764.344, -139.851, 2.46091, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 1, 11668, 409, 12231, 0, 970.091, -662.586, -199.52, 2.14675, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 2, 11668, 409, 12231, 0, 1128.52, -776.993, -147.171, 2.3911, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 3, 11668, 409, 12231, 0, 692.237, -1115.81, -138.776, 6.05629, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 4, 11668, 409, 12231, 0, 1156.39, -557.653, -111.91, 0.295383, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 5, 11668, 409, 12231, 0, 896.718, -631.05, -199.603, 4.0833, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 6, 11668, 409, 12231, 0, 855.88, -1030.09, -193.706, 5.35816, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 7, 11668, 409, 12231, 0, 638.292, -1047.19, -200.079, 6.23082, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 8, 11668, 409, 12231, 0, 721.228, -945.115, -188.781, 3.7001, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 9, 11668, 409, 12231, 0, 838.139, -547.931, -202.562, 4.33349, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 10, 11668, 409, 12231, 0, 1186.97, -657.141, -128.659, 6.27447, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 11, 11668, 409, 12231, 0, 639.971, -1131.11, -198.953, 5.8294, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 12, 11668, 409, 12231, 0, 1140.03, -583.332, -112.802, 0.156878, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 13, 11668, 409, 12231, 0, 900.520, -1029.90, -190.77, 3.64774, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 14, 11668, 409, 12231, 0, 1092.77, -648.297, -152.55, 2.1293, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 15, 11668, 409, 12231, 0, 862.858, -627.298, -201.089, 1.09956, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 16, 11668, 409, 12231, 0, 874.957, -550.344, -203.103, 5.67232, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 17, 11668, 409, 12231, 0, 1016.78, -751.844, -156.017, 2.1293, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 18, 11668, 409, 12231, 0, 701.531, -553.726, -213.79, 6.26573, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 19, 11668, 409, 12231, 0, 1140.43, -570.256, -112.552, 3.10669, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 20, 11668, 409, 12231, 0, 782.023, -585.019, -211.214, 0.20944, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 21, 11668, 409, 12231, 0, 690.012, -843.639, -208.398, 3.76991, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 22, 11668, 409, 12231, 0, 1056.5, -801.492, -151.717, 2.14675, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 23, 11668, 409, 12231, 0, 746.785, -503.634, -214.709, 5.12988, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 24, 11668, 409, 12231, 0, 761.491, -531.788, -214.413, 5.84679, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 25, 11668, 409, 12231, 0, 1205.35, -633.135, -125.321, 3.88314, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 26, 11668, 409, 12231, 0, 851.241, -601.516, -203.147, 5.1118, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 27, 11668, 409, 12231, 0, 722.625, -889.503, -195.701, 3.68265, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 28, 11668, 409, 12231, 0, 836.949, -1024.23, -199.867, 6.16101, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 29, 11668, 409, 12231, 0, 766.722, -576.593, -213.671, 4.94359, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 30, 11668, 409, 12231, 0, 1197.7, -618.907, -123.179, 5.90362, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 31, 11668, 409, 12231, 0, 1160.36, -657.862, -130.633, 3.73828, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 32, 11668, 409, 12231, 0, 1100.03, -669.224, -154.407, 1.87077, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 33, 11668, 409, 12231, 0, 664.365, -1149.93, -128.038, 4.55531, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 34, 11668, 409, 12231, 0, 829.7, -639.79, -203.339, 0.855211, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 35, 11668, 409, 12231, 0, 857.474, -555.603, -202.618, 5.93412, 7200, 2, 0, 94320, 0, 0, 1),
(@FIRELORD + 36, 11668, 409, 12231, 0, 984.985, -674.37, -195.695, 2.23402, 7200, 2, 0, 94320, 0, 0, 1);

-- LAVA ANNIHILATOR
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(@ANNIHILATOR + 0, 11665, 409, 12164, 0, 1150.96, -764.344, -139.851, 2.46091, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 1, 11665, 409, 12164, 0, 970.091, -662.586, -199.52, 2.14675, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 2, 11665, 409, 12164, 0, 1128.52, -776.993, -147.171, 2.3911, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 3, 11665, 409, 12164, 0, 692.237, -1115.81, -138.776, 6.05629, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 4, 11665, 409, 12164, 0, 1156.39, -557.653, -111.91, 0.295383, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 5, 11665, 409, 12164, 0, 896.718, -631.05, -199.603, 4.0833, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 6, 11665, 409, 12164, 0, 855.88, -1030.09, -193.706, 5.35816, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 7, 11665, 409, 12164, 0, 638.292, -1047.19, -200.079, 6.23082, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 8, 11665, 409, 12164, 0, 721.228, -945.115, -188.781, 3.7001, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 9, 11665, 409, 12164, 0, 838.139, -547.931, -202.562, 4.33349, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 10, 11665, 409, 12164, 0, 1186.97, -657.141, -128.659, 6.27447, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 11, 11665, 409, 12164, 0, 639.971, -1131.11, -198.953, 5.8294, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 12, 11665, 409, 12164, 0, 1140.03, -583.332, -112.802, 0.156878, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 13, 11665, 409, 12164, 0, 900.520, -1029.90, -190.77, 3.64774, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 14, 11665, 409, 12164, 0, 1092.77, -648.297, -152.55, 2.1293, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 15, 11665, 409, 12164, 0, 862.858, -627.298, -201.089, 1.09956, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 16, 11665, 409, 12164, 0, 874.957, -550.344, -203.103, 5.67232, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 17, 11665, 409, 12164, 0, 1016.78, -751.844, -156.017, 2.1293, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 18, 11665, 409, 12164, 0, 701.531, -553.726, -213.79, 6.26573, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 19, 11665, 409, 12164, 0, 1140.43, -570.256, -112.552, 3.10669, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 20, 11665, 409, 12164, 0, 782.023, -585.019, -211.214, 0.20944, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 21, 11665, 409, 12164, 0, 690.012, -843.639, -208.398, 3.76991, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 22, 11665, 409, 12164, 0, 1056.5, -801.492, -151.717, 2.14675, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 23, 11665, 409, 12164, 0, 746.785, -503.634, -214.709, 5.12988, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 24, 11665, 409, 12164, 0, 761.491, -531.788, -214.413, 5.84679, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 25, 11665, 409, 12164, 0, 1205.35, -633.135, -125.321, 3.88314, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 26, 11665, 409, 12164, 0, 851.241, -601.516, -203.147, 5.1118, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 27, 11665, 409, 12164, 0, 722.625, -889.503, -195.701, 3.68265, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 28, 11665, 409, 12164, 0, 836.949, -1024.23, -199.867, 6.16101, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 29, 11665, 409, 12164, 0, 766.722, -576.593, -213.671, 4.94359, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 30, 11665, 409, 12164, 0, 1197.7, -618.907, -123.179, 5.90362, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 31, 11665, 409, 12164, 0, 1160.36, -657.862, -130.633, 3.73828, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 32, 11665, 409, 12164, 0, 1100.03, -669.224, -154.407, 1.87077, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 33, 11665, 409, 12164, 0, 664.365, -1149.93, -128.038, 4.55531, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 34, 11665, 409, 12164, 0, 829.7, -639.79, -203.339, 0.855211, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 35, 11665, 409, 12164, 0, 857.474, -555.603, -202.618, 5.93412, 7200, 2, 0, 94320, 0, 0, 1),
(@ANNIHILATOR + 36, 11665, 409, 12164, 0, 984.985, -674.37, -195.695, 2.23402, 7200, 2, 0, 94320, 0, 0, 1);



-- Pooling
SET @POOL := 25587; 

DELETE FROM `pool_creature` WHERE `pool_entry` BETWEEN @POOL + 0 AND @POOL + 36;

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 0, @POOL + 0, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 0, @POOL + 0, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 1, @POOL + 1, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 1, @POOL + 1, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 2, @POOL + 2, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 2, @POOL + 2, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 3, @POOL + 3, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 3, @POOL + 3, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 4, @POOL + 4, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 4, @POOL + 4, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 5, @POOL + 5, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 5, @POOL + 5, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 6, @POOL + 6, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 6, @POOL + 6, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 7, @POOL + 7, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 7, @POOL + 7, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 8, @POOL + 8, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 8, @POOL + 8, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 9, @POOL + 9, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 9, @POOL + 9, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 10, @POOL + 10, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 10, @POOL + 10, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 11, @POOL + 11, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 11, @POOL + 11, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 12, @POOL + 12, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 12, @POOL + 12, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 13, @POOL + 13, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 13, @POOL + 13, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 14, @POOL + 14, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 14, @POOL + 14, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 15, @POOL + 15, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 15, @POOL + 15, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 16, @POOL + 16, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 16, @POOL + 16, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 17, @POOL + 17, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 17, @POOL + 17, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 18, @POOL + 18, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 18, @POOL + 18, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 19, @POOL + 19, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 19, @POOL + 19, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 20, @POOL + 20, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 20, @POOL + 20, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 21, @POOL + 21, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 21, @POOL + 21, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 22, @POOL + 22, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 22, @POOL + 22, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 23, @POOL + 23, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 23, @POOL + 23, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 24, @POOL + 24, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 24, @POOL + 24, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 25, @POOL + 25, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 25, @POOL + 25, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 26, @POOL + 26, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 26, @POOL + 26, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 27, @POOL + 27, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 27, @POOL + 27, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 28, @POOL + 28, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 28, @POOL + 28, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 29, @POOL + 29, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 29, @POOL + 29, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 30, @POOL + 30, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 30, @POOL + 30, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 31, @POOL + 31, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 31, @POOL + 31, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 32, @POOL + 32, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 32, @POOL + 32, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 33, @POOL + 33, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 33, @POOL + 33, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 34, @POOL + 34, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 34, @POOL + 34, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 35, @POOL + 35, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 35, @POOL + 35, 50, 'MC - Firelord / Lava Annihilator');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@FIRELORD + 36, @POOL + 36, 50, 'MC - Firelord / Lava Annihilator');
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (@ANNIHILATOR + 36, @POOL + 36, 50, 'MC - Firelord / Lava Annihilator');


DELETE FROM `pool_template` WHERE `entry` BETWEEN @POOL + 0 AND @POOL + 36;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(@POOL + 0, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 1, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 2, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 3, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 4, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 5, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 6, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 7, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 8, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 9, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 10, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 11, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 12, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 13, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 14, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 15, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 16, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 17, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 18, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 19, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 20, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 21, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 22, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 23, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 24, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 25, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 26, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 27, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 28, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 29, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 30, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 31, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 32, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 33, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 34, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 35, 1, 'MC - Firelord / Lava Annihilator'),
(@POOL + 36, 1, 'MC - Firelord / Lava Annihilator');

-- A Lava Annihilator had the path of a Lava Surger for some reason
DELETE FROM `creature_movement` WHERE `id`=56789;

-- ************************
-- Molten Giants/Molten Destroyers
-- ************************
-- They should all be linked in pairs
-- Note that to be blizzlike these should be pooled in some way. 
-- It should be a gradually increasing chance of being a molten destroyer the deeper you get into the instance.
-- The two packs in Garr's lair should always be two Destroyers
-- All our spawns are currently static

-- 2 Molten Giants before first bridge
DELETE FROM `creature_linking` WHERE `master_guid` IN(56704);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56705,56704,3); -- FLAG_AGGRO_ON_AGGRO, FLAG_TO_AGGRO_ON_AGGRO

-- 2 Molten Giants after first bridge
DELETE FROM `creature_linking` WHERE `master_guid` IN(56714);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56715,56714,3);

-- 2 Molten Giants before second bridge
DELETE FROM `creature_linking` WHERE `master_guid` IN(56716);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56717,56716,3);

-- First pack of 1 Giant/1 Destroyer
DELETE FROM `creature_linking` WHERE `master_guid` IN(56747);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56748,56747,3);

-- Second pack of 1 Giant/1 Destroyer
DELETE FROM `creature_linking` WHERE `master_guid` IN(56702);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56703,56702,3);

-- 2 Molten Giants
DELETE FROM `creature_linking` WHERE `master_guid` IN(56706);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56707,56706,3);

-- Third pack of 1 Giant/1 Destroyer
DELETE FROM `creature_linking` WHERE `master_guid` IN(56708);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56709,56708,3);

-- Fourth pack of 1 Giant/1 Destroyer
DELETE FROM `creature_linking` WHERE `master_guid` IN(56710);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56711,56710,3);

-- Fifth pack of 1 Giant/1 Destroyer
DELETE FROM `creature_linking` WHERE `master_guid` IN(56718);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56719,56718,3);

-- First pack of 2 Destroyers
DELETE FROM `creature_linking` WHERE `master_guid` IN(56712);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56713,56712,3);

-- Second pack of 2 Destroyers
DELETE FROM `creature_linking` WHERE `master_guid` IN(56700);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56701,56700,3);

-- ************************
-- Flame Imps
-- ************************

-- They should all move randomly
UPDATE `creature` SET `MovementType`=1, `spawndist`=2 WHERE `id` IN(11669);
UPDATE `creature_template` SET `MovementType`=1 WHERE `entry` IN(11669);

-- First room, all these should be linked
DELETE FROM `creature_linking` WHERE `master_guid` IN(56591);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56592,56591,3),
(56593,56591,3),
(56584,56591,3),
(56590,56591,3),
(56589,56591,3),
(56588,56591,3),
(56587,56591,3),
(56586,56591,3),
(56585,56591,3);
-- Second room, right side, lone pack
DELETE FROM `creature_linking` WHERE `master_guid` IN(56604);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56603,56604,3),
(56597,56604,3),
(56602,56604,3),
(56601,56604,3),
(56599,56604,3),
(56598,56604,3),
(56596,56604,3),
(56595,56604,3),
(56594,56604,3);

-- Second room, left side. This huge sea of flame imps is divided into 3 linked packs
-- Commenting out for now. Linking them like this would pull the entire room because they are so close to each other, but they are definitely supposed to be divided into three linked packs.
-- Pack 1
-- DELETE FROM `creature_linking` WHERE `master_guid` IN(56572);
-- INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
-- (56571,56572,3),
-- (56570,56572,3),
-- (56573,56572,3),
-- (56569,56572,3),
-- (56567,56572,3),
-- (56566,56572,3),
-- (56565,56572,3),
-- (56564,56572,3),
-- (56568,56572,3);
-- -- Pack 2
-- DELETE FROM `creature_linking` WHERE `master_guid` IN(56562);
-- INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
-- (56561,56562,3),
-- (56559,56562,3),
-- (56558,56562,3),
-- (56560,56562,3),
-- (56563,56562,3),
-- (56557,56562,3),
-- (56556,56562,3),
-- (56555,56562,3),
-- (56549,56562,3);
-- -- Pack 3
-- DELETE FROM `creature_linking` WHERE `master_guid` IN(56582);
-- INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
-- (56578,56582,3),
-- (56581,56582,3),
-- (56579,56582,3),
-- (56580,56582,3),
-- (56583,56582,3),
-- (56575,56582,3),
-- (56576,56582,3),
-- (56577,56582,3),
-- (56574,56582,3);

-- ************************
-- Core Hounds
-- ************************
-- They should all move randomly
UPDATE `creature` SET `MovementType`=1, `spawndist`=2 WHERE `id` IN(11671);
UPDATE `creature_template` SET `MovementType`=1 WHERE `entry` IN(11671);

-- Pack 1
DELETE FROM `creature_linking` WHERE `master_guid` IN(56634);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56636,56634,3),
(56637,56634,3),
(56635,56634,3),
(56638,56634,3);
-- Pack 2
DELETE FROM `creature_linking` WHERE `master_guid` IN(56631);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56633,56631,3),
(56630,56631,3),
(56629,56631,3),
(56632,56631,3);
-- Pack 3
DELETE FROM `creature_linking` WHERE `master_guid` IN(56640);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56641,56640,3),
(56639,56640,3),
(56642,56640,3),
(56643,56640,3);
-- Pack 4
DELETE FROM `creature_linking` WHERE `master_guid` IN(56651);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56654,56651,3),
(56653,56651,3),
(56652,56651,3),
(56650,56651,3);
-- Pack 5
DELETE FROM `creature_linking` WHERE `master_guid` IN(56648);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56644,56648,3),
(56646,56648,3),
(56649,56648,3),
(56647,56648,3);

-- ************************
-- Lava Elementals, Flameguards, Firewalker, Lava Reaver
-- ************************
-- They should all move randomly
UPDATE `creature` SET `MovementType`=1, `spawndist`=2 WHERE `id` IN(11667,11666,12100,12076);
UPDATE `creature_template` SET `MovementType`=1 WHERE `entry` IN(11667,11666,12100,12076);

-- Pack 1
DELETE FROM `creature_linking` WHERE `master_guid` IN(91289);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(91287,91289,3),
(91288,91289,3),
(91286,91289,3);
-- Pack 2
DELETE FROM `creature_linking` WHERE `master_guid` IN(91261);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(91262,91261,3),
(91264,91261,3),
(91263,91261,3);
-- Pack 3
DELETE FROM `creature_linking` WHERE `master_guid` IN(91277);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(91278,91277,3),
(91279,91277,3);
-- Pack 4
DELETE FROM `creature_linking` WHERE `master_guid` IN(91290);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(91291,91290,3),
(91292,91290,3);
-- Pack 5
DELETE FROM `creature_linking` WHERE `master_guid` IN(91271);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(91270,91271,3),
(91269,91271,3),
(91268,91271,3);
-- Pack 6
DELETE FROM `creature_linking` WHERE `master_guid` IN(56724);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56723,56724,3),
(56722,56724,3);
-- Pack 7
DELETE FROM `creature_linking` WHERE `master_guid` IN(56781);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56782,56781,3),
(56783,56781,3);
-- Pack 8
DELETE FROM `creature_linking` WHERE `master_guid` IN(91265);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(91266,91265,3),
(91267,91265,3);
-- Pack 9
DELETE FROM `creature_linking` WHERE `master_guid` IN(56792);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56793,56792,3),
(56795,56792,3),
(56794,56792,3);
-- Pack 10
DELETE FROM `creature_linking` WHERE `master_guid` IN(56729);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56730,56729,3),
(56731,56729,3),
(56732,56729,3);
-- Pack 11
DELETE FROM `creature_linking` WHERE `master_guid` IN(91260);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(91259,91260,3),
(91258,91260,3),
(91257,91260,3);
-- Pack 12
DELETE FROM `creature_linking` WHERE `master_guid` IN(56750);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56751,56750,3),
(56776,56750,3),
(56775,56750,3);
-- Pack 13
DELETE FROM `creature_linking` WHERE `master_guid` IN(56798);
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(56797,56798,3),
(56799,56798,3);


-- ************************
-- Respawn Timers
-- ************************

-- Sources:
-- https://github.com/cmangos/classic-db/commit/e326c4b90ae6c311a953295b97ae42e22ac6b915
-- https://github.com/cmangos/classic-db/commit/da5eecab5cafe888b7ed7478e751ef8666dde084
-- https://github.com/cmangos/classic-db/commit/51433d37f8566b3d736a3c9bf652bee537978c6f
-- http://leftoversraiding.org/index.php/topic/725/1/molten-core-summary---pt.-1-%28intro-trash%29.html
-- http://www.blizzardguides.com/wow_molten_core_guide.html

UPDATE `creature` SET `spawntimesecs` = (7 * 60) WHERE `id` = 11669; -- Flame Imp
UPDATE `creature` SET `spawntimesecs` = (18 * 60) WHERE `id` = 11673; -- Ancient core hound
UPDATE `creature` SET `spawntimesecs` = (28 * 60) WHERE `id` = 12101; -- Lava Surger
UPDATE `creature` SET `spawntimesecs` = (12 * 60 * 60) WHERE `id` IN (11658, 11659); -- Molten Giant / Destroyer
UPDATE `creature` SET `spawntimesecs` = (2 * 60 * 60) WHERE `id` IN (11668, 11665); -- Firelord / Lava Annihilator
UPDATE `creature` SET `spawntimesecs` = (60 * 60) WHERE `id`=  11671; -- Core Hound
UPDATE `creature` SET `spawntimesecs` = (2 * 60 * 60) WHERE `id` IN (11666, 11667, 12076, 12100); -- Firewalker, Flameguard, Lava Reaver, Lava Elemental


