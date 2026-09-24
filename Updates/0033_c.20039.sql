-- Further Improve Damage for Phoenix-Hawk 20039
-- bestiary: 9149-12938
-- Old Data: DamageMultiplier: 34.40, DamageVariance: 0.40, MinDMG: 8219.16, MaxDMG: 11943.03
-- Formula: ((270.666 – 270.666 * x / 2) + (314 / 14)) * y = 9149 = ((270.666 + 270.666 * x / 2) + (314 / 14)) * y = 12938
-- New Data: DamageMultiplier: 37.68, DamageVariance: 0.37, MinDMG: 9149.14, MaxDMG: 12937.85
UPDATE `creature_template` SET `DamageMultiplier` = 37.679, `DamageVariance` = 0.3715 WHERE `entry` = 20039;

