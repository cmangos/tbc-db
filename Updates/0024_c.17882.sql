-- Correct Damage for The Black Stalker 17882,20184
-- bestiary: 1786-2500; ccsdb: 2071-3323, quite a bit higher than bestiary
-- Old Data: DamageMultiplier: 14.20, DamageVariance: 0.40, MinDMG: 1767.62, MaxDMG: 2518.54
-- Formula: ((132.165 – 132.165 * x / 2) + (262 / 14)) * y = 1786 = ((132.165 + 132.165 * x / 2) + (262 / 14)) * y = 2500
-- New Data: DamageMultiplier: 14.20, DamageVariance: 0.38, MinDMG: 1785.94, MaxDMG: 2500.02
UPDATE `creature_template` SET `DamageMultiplier` = 14.2034, `DamageVariance` = 0.3804 WHERE `entry` = 17882;

-- bestiary: 2909-4111; ccsdb: 4891-6677, quite a bit higher than bestiary
-- Old Data: DamageMultiplier: 10.00, DamageVariance: 0.40, MinDMG: 2377.72, MaxDMG: 3460.82
-- Formula: ((270.666 – 270.666 * x / 2) + (296 / 14)) * y = 2909 = ((270.666 + 270.666 * x / 2) + (296 / 14)) * y = 4111
-- New Data: DamageMultiplier: 12.03, DamageVariance: 0.37, MinDMG: 2908.97, MaxDMG: 4110.96
UPDATE `creature_template` SET `DamageMultiplier` = 12.0284, `DamageVariance` = 0.3692, `StaticFlags2` = 64 WHERE `entry` = 20184;

