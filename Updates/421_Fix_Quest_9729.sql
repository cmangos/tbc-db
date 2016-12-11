-- ==============================
-- Fix NPC Ssslith For Quest 9729
-- ==============================
-- Ssslith (18154)
UPDATE `creature_template` SET `HealthMultiplier` = '7.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '6.49', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '33117', `MaxLevelHealth` = '33117', `MinLevelMana` = '2790', `MaxLevelMana` = '2790', `MinMeleeDmg` = '1208', `MaxMeleeDmg` = '1691', `MinRangedDmg` = '993', `MaxRangedDmg` = '1476', `MeleeAttackPower` = '262.0', `RangedAttackPower` = '29.0', `Armor` = '4275' WHERE `entry` = '18154';
UPDATE creature_template SET FactionAlliance=74, FactionHorde=74 WHERE entry IN (18154);

