-- Patch 2.4 - The following creatures have had their hit points and damage significantly reduced: Collidus the Warp-Watcher, Fulgorge, Hemathion, Kraator, Marticar, Morcrush, and Nuramoc
UPDATE creature_template SET `HealthMultiplier` = 2, `DamageMultiplier` = 4, `MinLevelHealth` = 10682, `MaxLevelHealth` = 10682, `MinMeleeDmg` = 690, `MaxMeleeDmg` = 959 WHERE `entry` = 18678; -- Fulgorge
UPDATE creature_template SET `HealthMultiplier` = 2, `DamageMultiplier` = 3.6, `MinLevelHealth` = 11054, `MaxLevelHealth` = 11054, `MinMeleeDmg` = 326, `MaxMeleeDmg` = 455 WHERE `entry` = 18680; -- Marticar
UPDATE creature_template SET `HealthMultiplier` = 2, `DamageMultiplier` = 3.7, `MinLevelHealth` = 13084, `MaxLevelHealth` = 13084, `MinMeleeDmg` = 854, `MaxMeleeDmg` = 1203 WHERE `entry` = 18690; -- Morcrush
UPDATE creature_template SET `HealthMultiplier` = 2, `DamageMultiplier` = 4, `MinLevelHealth` = 13084, `MaxLevelHealth` = 13084, `MinMeleeDmg` = 923, `MaxMeleeDmg` = 1301 WHERE `entry` = 18692; -- Hemathion
UPDATE creature_template SET `HealthMultiplier` = 2, `DamageMultiplier` = 4, `MinLevelHealth` = 13084, `MaxLevelHealth` = 13084, `MinMeleeDmg` = 923, `MaxMeleeDmg` = 1301 WHERE `entry` = 18694; -- Collidus the Warp-Watcher
UPDATE creature_template SET `HealthMultiplier` = 2, `DamageMultiplier` = 5, `MinLevelHealth` = 13084, `MaxLevelHealth` = 13084, `MinMeleeDmg` = 808, `MaxMeleeDmg` = 1138 WHERE `entry` = 18696; -- Kraator
UPDATE creature_template SET `HealthMultiplier` = 2, `DamageMultiplier` = 4, `MinLevelHealth` = 13972, `MaxLevelHealth` = 13972, `MinMeleeDmg` = 1010, `MaxMeleeDmg` = 1428 WHERE `entry` = 20932; -- Nuramoc

