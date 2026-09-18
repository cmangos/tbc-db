-- Correct Damage for Aeonus 17881,20737
-- bestiary: 2353-3327; ccsdb: 2071-3323, so quite good source too.
-- Old Data: DamageMultiplier: 13.97, DamageVariance: 0.40, MinDMG: 3338.99, MaxDMG: 4851.81
-- Formula: ((270.666 – 270.666 * x / 2) + (314 / 14)) * y = 2353 = ((270.666 + 270.666 * x / 2) + (314 / 14)) * y = 3327
-- New Data: DamageMultiplier: 9.69, DamageVariance: 0.37, MinDMG: 2352.93, MaxDMG: 3326.99
UPDATE `creature_template` SET `DamageMultiplier` = 9.6897, `DamageVariance` = 0.3714 WHERE `entry` = 17881;
-- ccsdb: 4891-6677 ~ so about 2x
-- Old Data: DamageMultiplier: 16.12, DamageVariance: 0.40, MinDMG: 3852.71, MaxDMG: 5598.28
-- Formula: ((270.666 – 270.666 * x / 2) + (314 / 14)) * y = 4891 = ((270.666 + 270.666 * x / 2) + (314 / 14)) * y = 6677
-- New Data: DamageMultiplier: 19.40, DamageVariance: 0.37, MinDMG: 4710.90, MaxDMG: 6661.09
UPDATE `creature_template` SET `DamageMultiplier` = 19.4, `DamageVariance` = 0.3714, `StaticFlags2` = 64 WHERE `entry` = 20737;

