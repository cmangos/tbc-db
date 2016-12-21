-- ===============================
-- Correct Arcane Container Spawns
-- ===============================
DELETE FROM gameobject WHERE id IN (182196,182197,182198);
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('22674','182196','555','3','-108.252','-510.302','21.4761','2.44346','0','0','0','0','86400','100','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('11322','182197','545','3','19.6039','-304.914','-66.1715','0','0','0','0','0','86400','100','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('26221','182198','552','3','320.304','-21.8057','22.4412','1.8675','0','0','0','0','86400','100','1');

UPDATE creature_template SET SpeedWalk=1.8, MovementType=0 WHERE entry IN (22890,22891,22892);

-- First Fragment Guardian (22890)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20958', `MaxLevelHealth` = '20958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '757', `MaxMeleeDmg` = '1071', `MinRangedDmg` = '646', `MaxRangedDmg` = '960', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '22890';

-- Second Fragment Guardian (22891)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20958', `MaxLevelHealth` = '20958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '757', `MaxMeleeDmg` = '1071', `MinRangedDmg` = '646', `MaxRangedDmg` = '960', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '22891';

-- Third Fragment Guardian (22892)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20958', `MaxLevelHealth` = '20958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '757', `MaxMeleeDmg` = '1071', `MinRangedDmg` = '646', `MaxRangedDmg` = '960', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '22892';





