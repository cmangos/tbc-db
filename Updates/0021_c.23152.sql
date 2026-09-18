-- Correct Damage & Immunities for Vagath 23152
-- bestiary: 7574-10710; ccsdb: 7927-11012, so quite good source too.
-- Old Data: DamageMultiplier: 1.07, DamageVariance: 0.40 MinDMG: 256.81, MaxDMG: 373.19
-- Formula: ((270.666 – 270.666 * x / 2) + (314 / 14)) * y = 7574 = ((270.666 + 270.666 * x / 2) + (314 / 14)) * y = 10710
-- New Data: DamageMultiplier: 31.19,  DamageVariance: 0.37,  MinDMG: 7573.81,  MaxDMG: 10710.18
UPDATE `creature_template` SET `DamageMultiplier` = 31.1913, `DamageVariance` = 0.3715, `MechanicImmuneMask` = 583745403 WHERE `entry` = 23152;

