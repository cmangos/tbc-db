-- Thrall 17876,20548 - npc_thrall_old_hillsbrad - ccsdb_tbc
-- "Heroic OHF Thrall should not hit for 1 damage, evidence shows he can deal more than 1 damage, and normal mode does more than 1 damage
-- Appears it would be closer to 700-900 against Epoch Hunter, this is 330-850 as variance is unknown" - Velite12
-- UnitClass 1, Level 67/71 - MinMeleeDmg = 611 MaxMeleeDmg = 870 | MinMeleeDmg = 1029 MaxMeleeDmg = 1467
-- Old Values: DamageMultiplier: 2.05 DamageVariance: 0.40  MinDMG: 326.66 MaxDMG: 468.92
-- Old Values: DamageMultiplier: 0.01 DamageVariance: 0.40 MinDMG: 1.45 MaxDMG: 2.13
-- Formula: ((173.595 – 173.595 * x / 2) + (288 / 14)) * y = 611 = ((173.595 + 173.595 * x / 2) + (288 / 14)) * y = 870 (3.8137 0.3912)
-- Formula: ((265.892 – 265.892 * x / 2) + (308 / 14)) * y = 1029 = ((265.892 + 265.892 * x / 2) + (308 / 14)) * y = 1467 (4.3350 0.3800)
UPDATE `creature_template` SET `DamageMultiplier` = 4, `SpeedWalk` = 1 WHERE `entry` = 17876; -- 2.04872 0.4
UPDATE `creature_template` SET `DamageMultiplier` = 4, `SpeedWalk` = 1 WHERE `entry` = 20548; -- 0.00645852 0.4

-- Lieutenant Drake (17848,20535) - ccsdb_tbc
-- "Lieutenant Drake Heroic Damage is too low, hitting under 1.5k mortal strike on tier 4 tank
-- I suggest 3x multiplier from current 12.09, judging from what we have now to 2.4.3 video showing 4.5k mortal strike on tier 4 paladin" - Velite12
-- UnitClass 1, Level 68/72 - MinMeleeDmg = 1931 MaxMeleeDmg = 3162 | MinMeleeDmg = 7996 MaxMeleeDmg = 8429
-- Old Values: DamageMultiplier: 7.37 DamageVariance: 0.40 MinDMG: 1325.91 MaxDMG: 1912.07
-- Old Values: DamageMultiplier: 12.09 DamageVariance: 0.40 MinDMG: 2889.48 MaxDMG: 4198.65
-- Formula: ((198.951 – 198.951 * x / 2) + (292 / 14)) * y = 1931 = ((198.951 + 198.951 * x / 2) + (292 / 14)) * y = 3162 (~>11.5851 0.5341)
-- Formula: ((270.666 – 270.666 * x / 2) + (314 / 14)) * y = 7996 = ((270.666 + 270.666 * x / 2) + (314 / 14)) * y = 8429 (~>28.020 0.0571)
UPDATE `creature_template` SET `DamageMultiplier` = 10.00, `SpeedWalk` = 1, `MeleeBaseAttackTime` = 2500 WHERE `entry` = 17848; -- 7.36572 0.4
UPDATE `creature_template` SET `DamageMultiplier` = 20.00, `SpeedWalk` = 1, `MeleeBaseAttackTime` = 2500 WHERE `entry` = 20535; -- 12.0921 0.4

-- Captain Skarloc (17862,20521) - ccsdb_tbc
-- UnitClass 2, Level 68/72 - MinMeleeDmg = 1346 MaxMeleeDmg = 2199 | MinMeleeDmg = 3658 MaxMeleeDmg = 5016
-- Formula: ((198.951 – 198.951 * x / 2) + (276 / 14)) * y = 1346 = ((198.951 + 198.951 * x / 2) + (276 / 14)) * y = 2199 (~>8.1060 0.5289)
-- Formula: ((270.666 – 270.666 * x / 2) + (296 / 14)) * y = 3658 = ((270.666 + 270.666 * x / 2) + (296 / 14)) * y = 5016 (~>14.8625 0.3376)
-- Old Values: DamageMultiplier: 1.77 DamageVariance: 0.40 MinDMG: 316.03 MaxDMG: 456.66
-- Old Values: DamageMultiplier: 13.01 DamageVariance: 0.40 MinDMG: 3091.00 MaxDMG: 4499.04
UPDATE `creature_template` SET `DamageMultiplier` = 7.00, `SpeedWalk` = 1 WHERE `entry` = 17862; -- 1.76707 0.4
UPDATE `creature_template` SET `DamageMultiplier` = 14.00, `SpeedWalk` = 1 WHERE `entry` = 20521; -- 13.0053 0.4

-- Epoch Hunter (18096,20531) - bestiary
-- UnitClass 1, Level 68/72 - MinMeleeDmg = 1536 MaxMeleeDmg = 2166 | MinMeleeDmg = 5227 MaxMeleeDmg = 7393
-- Old Values: DamageMultiplier: 8.47 DamageVariance: 0.40 MinDMG: 1525.08 MaxDMG: 2199.30
-- Old Values: DamageMultiplier: 21.50 DamageVariance: 0.40 MinDMG: 5136.97 MaxDMG: 7464.38
-- Formula: ((198.951 – 198.951 * x / 2) + (292 / 14)) * y = 1536 = ((198.951 + 198.951 * x / 2) + (292 / 14)) * y = 2166
-- Formula: ((270.666 – 270.666 * x / 2) + (314 / 14)) * y = 5227 = ((270.666 + 270.666 * x / 2) + (314 / 14)) * y = 7393
UPDATE `creature_template` SET `DamageMultiplier` = 8.4210, `DamageVariance` = 0.3760, `SpeedWalk` = 1 WHERE `entry` = 18096; -- 8.47216 0.4
UPDATE `creature_template` SET `DamageMultiplier` = 21.5289, `DamageVariance` = 0.3717, `SpeedWalk` = 1 WHERE `entry` = 20531; -- 21.4971 0.4

-- Tarren Mill Guardsman - ccsdb_tbc
-- Formula: ((198.951 – 198.951 * x / 2) + (292 / 14)) * y = 881 = ((198.951 + 198.951 * x / 2) + (292 / 14)) * y = 1296
-- Formula: ((270.666 – 270.666 * x / 2) + (314 / 14)) * y = 2699 = ((270.666 + 270.666 * x / 2) + (314 / 14)) * y = 3614
UPDATE `creature_template` SET `DamageMultiplier` = 5, `SpeedWalk` = 1 WHERE `entry` = 23175; -- 2.45847 0.4
UPDATE `creature_template` SET `DamageMultiplier` = 10, `SpeedWalk` = 1 WHERE `entry` = 23181; -- 1.07642 0.4 - proposed 8.61135

-- Tarren Mill Guardsman - ccsdb_tbc
-- Formula: ((198.951 – 198.951 * x / 2) + (292 / 14)) * y = 881 = ((198.951 + 198.951 * x / 2) + (292 / 14)) * y = 1286
-- Formula: ((270.666 – 270.666 * x / 2) + (314 / 14)) * y = 2585 = ((270.666 + 270.666 * x / 2) + (314 / 14)) * y = 3578
UPDATE `creature_template` SET `DamageMultiplier` = 5, `SpeedWalk` = 1 WHERE `entry` = 23176; -- 2.45847 0.4
UPDATE `creature_template` SET `DamageMultiplier` = 10, `SpeedWalk` = 1 WHERE `entry` = 23182; -- 1.07642 0.4 - proposed 8.61135

-- Tarren Mill Lookout - ccsdb_tbc
-- Formula: ((198.951 – 198.951 * x / 2) + (292 / 14)) * y = 819 = ((198.951 + 198.951 * x / 2) + (292 / 14)) * y = 1183
-- Formula: ((270.666 – 270.666 * x / 2) + (314 / 14)) * y = 1439 = ((270.666 + 270.666 * x / 2) + (314 / 14)) * y = 1954
UPDATE `creature_template` SET `DamageMultiplier` = 4.5, `SpeedWalk` = 1 WHERE `entry` = 23177; -- 2.29256 0.4
UPDATE `creature_template` SET `DamageMultiplier` = 6, `SpeedWalk` = 1 WHERE `entry` = 23183; -- 1.00285 0.4 - proposed 10.0285

-- Tarren Mill Lookout - ccsdb_tbc
-- Formula: ((198.951 – 198.951 * x / 2) + (292 / 14)) * y = 828 = ((198.951 + 198.951 * x / 2) + (292 / 14)) * y = 1201
-- Formula: ((270.666 – 270.666 * x / 2) + (314 / 14)) * y = 1474 = ((270.666 + 270.666 * x / 2) + (314 / 14)) * y = 2052
UPDATE `creature_template` SET `DamageMultiplier` = 4.5, `SpeedWalk` = 1 WHERE `entry` = 23178; -- 2.29256 0.4
UPDATE `creature_template` SET `DamageMultiplier` = 6, `SpeedWalk` = 1 WHERE `entry` = 23184; -- 1.00285 0.4 - proposed 10.0285

-- Tarren Mill Protector - ccsdb_tbc
-- Formula: ((198.951 – 198.951 * x / 2) + (292 / 14)) * y = 1291 = ((198.951 + 198.951 * x / 2) + (292 / 14)) * y = 1646
-- Formula: ((270.666 – 270.666 * x / 2) + (314 / 14)) * y = 2384 = ((270.666 + 270.666 * x / 2) + (314 / 14)) * y = 3465
UPDATE `creature_template` SET `DamageMultiplier` = 7, `SpeedWalk` = 1 WHERE `entry` = 23179; -- 3.43884 0.4
UPDATE `creature_template` SET `DamageMultiplier` = 11, `SpeedWalk` = 1 WHERE `entry` = 23185; -- 1.50427 0.4 - proposed 9.77778

-- Tarren Mill Protector - ccsdb_tbc
-- Formula: ((198.951 – 198.951 * x / 2) + (292 / 14)) * y = 1271 = ((198.951 + 198.951 * x / 2) + (292 / 14)) * y = 1695
-- Formula: ((270.666 – 270.666 * x / 2) + (314 / 14)) * y = 2921 = ((270.666 + 270.666 * x / 2) + (314 / 14)) * y = 3873
UPDATE `creature_template` SET `DamageMultiplier` = 7, `SpeedWalk` = 1 WHERE `entry` = 23180; -- 1.91046 0.4
UPDATE `creature_template` SET `DamageMultiplier` = 11, `SpeedWalk` = 1 WHERE `entry` = 23186; -- 1.50427 0.4 - proposed 9.77778

