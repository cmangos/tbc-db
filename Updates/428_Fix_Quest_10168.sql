-- ====================================
-- Fix Quest 10168 "What the Soul Sees"
-- ====================================
-- Darkened Spirit (19480)
UPDATE `creature_template` SET `HealthMultiplier` = '3.3', `PowerMultiplier` = '0', `DamageMultiplier` = '6.34', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20876', `MaxLevelHealth` = '21589', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '979', `MaxMeleeDmg` = '1444', `MinRangedDmg` = '1106', `MaxRangedDmg` = '1732', `MeleeAttackPower` = '292.0', `RangedAttackPower` = '41.0', `Armor` = '6192' WHERE `entry` = '19480';
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16 WHERE entry IN (19480);

