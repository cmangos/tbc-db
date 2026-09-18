-- Improve Damage for Akama 23191,22990,23089
-- bestiary: 7388-10435; ccsdb: 7404-12076 for 23191 Akama
-- Old Data: DamageMultiplier: 40.06, DamageVariance: 0.40, MinDMG: 9669.45, MaxDMG: 14072.14
-- Formula: ((274.771 – 274.771 * x / 2) + (302 / 14)) * y = 7388 = ((274.771 + 274.771 * x / 2) + (302 / 14)) * y = 10435
-- New Data: DamageMultiplier: 30.07, DamageVariance: 0.37, MinDMG: 7387.79 MaxDMG: 10435.11
UPDATE `creature_template` SET `DamageMultiplier` = 30.0716, `DamageVariance` = 0.3688 WHERE `entry` = 23191; -- npc_akama_shade, about same as 21700 Akama now, but no data and never hostile.

-- Akama BT Charge RP Event ~50% dmg as per ccsdb: 3582-4547
-- New Data: DamageMultiplier: 13.72, DamageVariance: 0.26, MinDMG: 3581.93, MaxDMG: 4547.08
UPDATE `creature_template` SET `DamageMultiplier` = 13.7156, `DamageVariance` = 0.2561 WHERE `entry` = 22990;

-- Akama Illidan
-- Old Data: DamageMultiplier: 3.25, DamageVariance: 0.40, MinDMG: 785.58, MaxDMG: 1143.30, dmg as per ccsdb: 2401-3829
-- Formula: ((274.771 – 274.771 * x / 2) + (302 / 14)) * y = 2401 = ((274.771 + 274.771 * x / 2) + (302 / 14)) * y = 3829
-- New Data: DamageMultiplier: 10.51, DamageVariance: 0.49, MinDMG: 2400.99, MaxDMG: 3828.95
UPDATE `creature_template` SET `DamageMultiplier` = 10.5115, `DamageVariance` = 0.4944 WHERE `entry` = 23089; -- npc_akama_illidan

