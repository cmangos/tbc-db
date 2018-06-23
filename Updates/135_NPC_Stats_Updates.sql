-- ================
-- Update NPC Stats
-- ================
UPDATE creature_template SET InhabitType = InhabitType|4, RegenerateStats = 0 WHERE entry = 24895;

-- Darkness (25879)
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, UnitFlags = UnitFlags|33554432, MinLevel = 70, MaxLevel = 70 WHERE entry = 25879;
UPDATE `creature_template` SET `HealthMultiplier` = '0.7', `PowerMultiplier` = '1', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4890', `MaxLevelHealth` = '4890', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '252', `MaxMeleeDmg` = '357', `MinRangedDmg` = '215', `MaxRangedDmg` = '320', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '25879';

UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14 WHERE entry = 25855;

-- The Core of Entropius (26262)
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, UnitFlags = UnitFlags|33555200 WHERE entry = 26262;
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '1', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '6986', `MaxLevelHealth` = '6986', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '252', `MaxMeleeDmg` = '357', `MinRangedDmg` = '215', `MaxRangedDmg` = '320', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '26262';

-- Power of the Blue Flight (25653)
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, FactionAlliance = 16, FactionHorde = 16, UnitFlags = UnitFlags|33587200 WHERE entry = 25653;
UPDATE `creature_template` SET `HealthMultiplier` = '14.0', `PowerMultiplier` = '1', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '56700', `MaxLevelHealth` = '56700', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '125', `MaxMeleeDmg` = '165', `MinRangedDmg` = '87', `MaxRangedDmg` = '128', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '25653';

-- Sinister Reflection (25708)
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, UnitFlags = UnitFlags|32832, MinLevel = 70, MaxLevel = 70 WHERE entry = 25708;
UPDATE `creature_template` SET `HealthMultiplier` = '14.0', `PowerMultiplier` = '1', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '56700', `MaxLevelHealth` = '56700', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '125', `MaxMeleeDmg` = '165', `MinRangedDmg` = '87', `MaxRangedDmg` = '128', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '25708';

-- Kalecgos (25319)
UPDATE creature_template SET MinLevel = 73, MaxLevel = 73, UnitFlags = UnitFlags|32832 WHERE entry = 25319;
UPDATE `creature_template` SET `HealthMultiplier` = '297.5', `PowerMultiplier` = '500.0', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '1805825', `MaxLevelHealth` = '1805825', `MinLevelMana` = '1693500', `MaxLevelMana` = '1693500', `MinMeleeDmg` = '246', `MaxMeleeDmg` = '347', `MinRangedDmg` = '209', `MaxRangedDmg` = '311', `MeleeAttackPower` = '302.0', `RangedAttackPower` = '44.0', `Armor` = '6194.0' WHERE `entry` = '25319';

UPDATE creature_template SET UnitFlags = UnitFlags|33555200 WHERE entry = 26254;

-- Brutallus Death Cloud (25703)
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, FactionAlliance = 114, FactionHorde = 114, UnitFlags = UnitFlags|33555200 WHERE entry = 25703;
UPDATE `creature_template` SET `HealthMultiplier` = '560.0', `PowerMultiplier` = '1', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '2268000', `MaxLevelHealth` = '2268000', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '125', `MaxMeleeDmg` = '165', `MinRangedDmg` = '87', `MaxRangedDmg` = '128', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '25703';

UPDATE creature_template SET FactionAlliance = 1959, FactionHorde = 1959, UnitFlags = UnitFlags|32832 WHERE entry = 24892;

UPDATE creature_template SET FactionAlliance = 1770, FactionHorde = 1770, UnitFlags = 32832 WHERE entry = 24891;






