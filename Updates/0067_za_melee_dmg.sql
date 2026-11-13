-- Improve Melee Damage in Zul'Aman based on ccsdb_tbc
-- Reduce Boss Damage from calculated for now, else you really need 3 healers befor T6+
-- Amani'shi Warbringer 23580 -10 - dismount might reduce dmg? - same as Amani'shi Tempest 24549 for now
-- Amani'shi Tribesman 23582 -5 - reduce due to meleecleave
-- Amani'shi Berserker 24374 -4 - match Zul'jin nerfed Value

-- Akil'zon 23574 - boss_akilzon - ccsdb_tbc
-- UnitClass 2, Level 73 - MinMeleeDmg = 5969 MaxMeleeDmg = 9943 - Hitcount~80
-- Formula: ((274.771 – 274.771 * x / 2) + (302 / 14)) * y = 5969 = ((274.771 + 274.771 * x / 2) + (302 / 14)) * y = 9943 (~26.84732 0.53871)
-- Old Values: DamageMultiplier: 14.02 DamageVariance: 0.40 MinDMG: 3384.30 MaxDMG: 4925.24
-- New Values: DamageMultiplier: 26.00 DamageVariance: 0.50 MinDMG: 5918.89 MaxDMG: 9490.92
UPDATE `creature_template` SET `DamageMultiplier` = 23.0, `DamageVariance` = 0.5 WHERE `entry` = 23574;

-- Nalorakk 23576 - boss_nalorakk - ccsdb_tbc
-- UnitClass 1, Level 73 - MinMeleeDmg = 6138 MaxMeleeDmg = 10252 - Hitcount~80
-- Formula: ((274.771 – 274.771 * x / 2) + (320 / 14)) * y = 6138 = ((274.771 + 274.771 * x / 2) + (320 / 14)) * y = 10252 (~27.534359 0.543774)
-- Old Values: DamageMultiplier: 23.00 DamageVariance: 0.40 MinDMG: 5582.30 MaxDMG: 8110.55
-- New Values: DamageMultiplier: 27.00 DamageVariance: 0.50 MinDMG: 6181.26 MaxDMG: 9890.66
UPDATE `creature_template` SET `DamageMultiplier` = 24.0, `DamageVariance` = 0.5, `SpeedRun` = 2.14286 WHERE `entry` = 23576;

-- Halazzi 23577 - boss_halazzi - ccsdb_tbc
-- UnitClass 1, Level 73 - MinMeleeDmg = 5707 MaxMeleeDmg = 10427 - Hitcount~80 - dualwielder
-- Formula: ((274.771 – 274.771 * x / 2) + (320 / 14)) * y = 5707 = ((274.771 + 274.771 * x / 2) + (320 / 14)) * y = 10427 (~27.1043 0.6338)
-- Old Values: DamageMultiplier: 19.55 DamageVariance: 0.40 MinDMG: 4744.89 MaxDMG: 6893.91
-- New Values: DamageMultiplier: 27.00 DamageVariance: 0.60 MinDMG: 5810.31 MaxDMG: 10261.60
UPDATE `creature_template` SET `DamageMultiplier` = 24.0, `DamageVariance` = 0.6, `SpeedWalk` = 4, `SpeedRun` = 2.14286 WHERE `entry` = 23577;

-- Spirit of the Lynx 24143 - boss_spirit_lynx - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 1650 MaxMeleeDmg = 5616 - Hitcount~150
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 1650 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 5616 (~12.8361 1.1824)
-- Old Values: DamageMultiplier: 20.70 DamageVariance: 0.40 MinDMG: 5024.01 MaxDMG: 7299.44
-- New Values: DamageMultiplier: 12.00 DamageVariance: 1.00 MinDMG: 1828.47 MaxDMG: 4964.26
UPDATE `creature_template` SET `DamageMultiplier` = 12.0, `DamageVariance` = 1.0, `MinLevel` = 70, `MaxLevel` = 70, `MeleeBaseAttackTime` = 1500 WHERE `entry` = 24143;
UPDATE `creature_model_info` SET `combat_reach` = 3 WHERE `modelid` = 20808;

-- Jan'alai 23578 - boss_janalai - ccsdb_tbc
-- UnitClass 1, Level 73 - MinMeleeDmg = 5728 MaxMeleeDmg = 12298 - Hitcount>100 - dualwielder
-- Formula: ((274.771 – 274.771 * x / 2) + (320 / 14)) * y = 5728 = ((274.771 + 274.771 * x / 2) + (320 / 14)) * y = 12298 (~30.2828 0.7896)
-- Old Values: DamageMultiplier: 20.70 DamageVariance: 0.40 MinDMG: 5024.01 MaxDMG: 7299.44
-- New Values: DamageMultiplier: 30.00 DamageVariance: 0.75 MinDMG: 5837.67 MaxDMG: 12020.02
UPDATE `creature_template` SET `DamageMultiplier` = 26.0, `DamageVariance` = 0.75 WHERE `entry` = 23578;

-- Hex Lord Malacrass 24239 - boss_malacrass - ccsdb_tbc
-- UnitClass 2, Level 73 - MinMeleeDmg = 6546 MaxMeleeDmg = 11620 - Hitcount>100
-- Formula: ((274.771 – 274.771 * x / 2) + (302 / 14)) * y = 6546 = ((274.771 + 274.771 * x / 2) + (302 / 14)) * y = 11620 (~30.650353 0.602482)
-- Old Values: DamageMultiplier: 18.03 DamageVariance: 0.40 MinDMG: 4351.20 MaxDMG: 6332.41
-- New Values: DamageMultiplier: 30.00 DamageVariance: 0.60 MinDMG: 6417.33 MaxDMG: 11363.21
UPDATE `creature_template` SET `DamageMultiplier` = 26.0, `DamageVariance` = 0.6 WHERE `entry` = 24239;

-- Alyson Antille 24240 - ccsdb_tbc
-- UnitClass 2, Level 70 - MinMeleeDmg = 2579 MaxMeleeDmg = 3822 - Hitcount~10
-- Formula: ((261.316 – 261.316 * x / 2) + (286 / 14)) * y = 2579 = ((261.316 + 261.316 * x / 2) + (286 / 14)) * y = 3822 (~11.3596 0.4187)
-- Old Values: DamageMultiplier: 5.02 DamageVariance: 0.40 MinDMG: 1151.23 MaxDMG: 1675.63
-- New Values: DamageMultiplier: 11.00 DamageVariance: 0.40 MinDMG: 2524.30 MaxDMG: 3674.09
UPDATE `creature_template` SET `DamageMultiplier` = 11.0, `DamageVariance` = 0.4 WHERE `entry` = 24240;

-- Thurg 24241 - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 5259 MaxMeleeDmg = 6680 - Hitcount~3-10
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 5259 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 6680 (~21.0914 0.2578)
-- Old Values: DamageMultiplier: 10.77 DamageVariance: 0.40 MinDMG: 2484.72 MaxDMG: 3610.19
-- New Values: DamageMultiplier: 20.00 DamageVariance: 0.25 MinDMG: 5007.32 MaxDMG: 6313.90
UPDATE `creature_template` SET `DamageMultiplier` = 20.0, `DamageVariance` = 0.25, `MeleeBaseAttackTime` = 2500 WHERE `entry` = 24241;

-- Slither 24242 - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 2930 MaxMeleeDmg = 3853 - Hitcount~10
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 2930 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 3853 (~11.9828 0.2948)
-- Old Values: DamageMultiplier: 8.08 DamageVariance: 0.40 MinDMG: 1863.48 MaxDMG: 2707.58
-- New Values: DamageMultiplier: 11.00 DamageVariance: 0.25 MinDMG: 2754.02 MaxDMG: 3472.64
UPDATE `creature_template` SET `DamageMultiplier` = 11.0, `DamageVariance` = 0.25 WHERE `entry` = 24242;

-- Lord Raadan 24243 - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 3204 MaxMeleeDmg = 4703 - Hitcount~15
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 3204 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 4703 (~13.9685 0.4107)
-- Old Values: DamageMultiplier: 8.61 DamageVariance: 0.40 MinDMG: 1987.74 MaxDMG: 2888.11
-- New Values: DamageMultiplier: 13.00 DamageVariance: 0.40 MinDMG: 2999.97 MaxDMG: 4358.82
UPDATE `creature_template` SET `DamageMultiplier` = 13.0, `DamageVariance` = 0.4 WHERE `entry` = 24243;

-- Gazakroth 24244 - ccsdb_tbc
-- UnitClass 2, Level 70 - MinMeleeDmg = 2707 MaxMeleeDmg = 2920 - Hitcount~2
-- Formula: ((261.316 – 261.316 * x / 2) + (286 / 14)) * y = 2707 = ((261.316 + 261.316 * x / 2) + (286 / 14)) * y = 2920 (~9.9860 0.0816)
-- Old Values: DamageMultiplier: 0.40 DamageVariance: 0.40 MinDMG: 92.05 MaxDMG: 134.00
-- New Values: DamageMultiplier: 10.00 DamageVariance: 0.10 MinDMG: 2686.79 MaxDMG: 2948.10
UPDATE `creature_template` SET `DamageMultiplier` = 10.0, `DamageVariance` = 0.10 WHERE `entry` = 24244;

-- Fenstalker 24245 - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 3219 MaxMeleeDmg = 5224 - Hitcount~20
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 3219 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 5224 (~14.9154 0.5144)
-- Old Values: DamageMultiplier: 8.61 DamageVariance: 0.40 MinDMG: 1987.74 MaxDMG: 2888.11
-- New Values: DamageMultiplier: 15.00 DamageVariance: 0.50 MinDMG: 3265.52 MaxDMG: 5225.39
UPDATE `creature_template` SET `DamageMultiplier` = 15.0, `DamageVariance` = 0.5 WHERE `entry` = 24245;

-- Darkheart 24246 - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 2945 MaxMeleeDmg = 4582 - Hitcount~20
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 2945 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 4582 (~13.297164 0.471111)
-- Old Values: DamageMultiplier: 14.00 DamageVariance: 0.40 MinDMG: 3230.12 MaxDMG: 4693.22
-- New Values: DamageMultiplier: 13.00 DamageVariance: 0.50 MinDMG: 2830.12 MaxDMG: 4528.67
UPDATE `creature_template` SET `DamageMultiplier` = 13.0, `DamageVariance` = 0.5 WHERE `entry` = 24246;

-- Koragg 24247 - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 3651 MaxMeleeDmg = 5482 - Hitcount~10
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 3651 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 5482 (~16.13432 0.43428)
-- Old Values: DamageMultiplier: 10.77 DamageVariance: 0.40 MinDMG: 2484.72 MaxDMG: 3610.19
-- New Values: DamageMultiplier: 16.00 DamageVariance: 0.40 MinDMG: 3692.27 MaxDMG: 5364.70
UPDATE `creature_template` SET `DamageMultiplier` = 16.0, `DamageVariance` = 0.4 WHERE `entry` = 24247;

-- Amani Snake 24338 - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 170 MaxMeleeDmg = 328 - Hitcount~80
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 170 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 328 (~0.6873 0.8798)
-- Old Values: DamageMultiplier: 4.65 DamageVariance: 0.40 MinDMG: 346.55 MaxDMG: 469.33
-- New Values: DamageMultiplier: 2.50 DamageVariance: 0.60 MinDMG: 169.77 MaxDMG: 268.75
UPDATE `creature_template` SET `DamageMultiplier` = 2.5, `DamageVariance` = 0.60 WHERE `entry` = 24338;

-- Zul'jin 23863 - boss_zuljin - ccsdb_tbc
-- UnitClass 1, Level 73 - MinMeleeDmg = 7915 MaxMeleeDmg = 14558 - Hitcount>50
-- Formula: ((274.771 – 274.771 * x / 2) + (320 / 14)) * y = 7915 = ((274.771 + 274.771 * x / 2) + (320 / 14)) * y = 14558 (~37.7535 0.6404)
-- Old Values: DamageMultiplier: 23.00 DamageVariance: 0.40 MinDMG: 5582.30 MaxDMG: 8110.55
-- New Values: DamageMultiplier: 37.00 DamageVariance: 0.60 MinDMG: 7962.28 MaxDMG: 14062.20
UPDATE `creature_template` SET `DamageMultiplier` = 30.0, `DamageVariance` = 0.6 WHERE `entry` = 23863;

-- Amani'shi Savage 23889 - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 231 MaxMeleeDmg = 392 - Hitcount~700
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 231 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 392 (~1.1006 0.5598)
-- Old Values: DamageMultiplier: 1.29 DamageVariance: 0.40 MinDMG: 298.11 MaxDMG: 433.17
-- New Values: DamageMultiplier: 1.10 DamageVariance: 0.50 MinDMG: 239.44 MaxDMG: 383.17
UPDATE `creature_template` SET `DamageMultiplier` = 1.10, `DamageVariance` = 0.5, `Detection` = 30 WHERE `entry` = 23889; -- https://youtu.be/g3HSLAbypMM?si=T0WCmGZSNeozy0p6 pull

-- =====
-- Trash
-- =====

-- Amani'shi Axe Thrower 23542 - ccsdb_tbc
-- UnitClass 1, Level 71 - MinMeleeDmg = 4003 MaxMeleeDmg = 6511 - Hitcount>100
-- Formula: ((265.892 – 265.892 * x / 2) + (308 / 14)) * y = 4003 = ((265.892 + 265.892 * x / 2) + (308 / 14)) * y = 6511 (~18.2603 0.5166)
-- Old Values: DamageMultiplier: 7.53 DamageVariance: 0.40 MinDMG: 1768.50 MaxDMG: 2569.89
-- New Values: DamageMultiplier: 18.00 DamageVariance: 0.50 MinDMG: 3985.54 MaxDMG: 6378.57
UPDATE `creature_template` SET `DamageMultiplier` = 18.0, `DamageVariance` = 0.5 WHERE `entry` = 23542;

-- Amani'shi Warbringer 23580 - ccsdb_tbc
-- UnitClass 1, Level 71 - MinMeleeDmg = 5779 MaxMeleeDmg = 14472 - Hitcount>100 - dualwielder
-- Formula: ((265.892 – 265.892 * x / 2) + (308 / 14)) * y = 5779 = ((265.892 + 265.892 * x / 2) + (308 / 14)) * y = 14472 (~35.1712 0.9296)
-- Old Values: DamageMultiplier: 22.07 DamageVariance: 0.40 MinDMG: 5179.29 MaxDMG: 7526.23
-- New Values: DamageMultiplier: 25.00 DamageVariance: 0.50 MinDMG: 5535.48 MaxDMG: 8859.12
UPDATE `creature_template` SET `DamageMultiplier` = 25.0, `DamageVariance` = 0.5 WHERE `entry` = 23580;

-- Amani'shi Medicine Man 23581 - ccsdb_tbc
-- UnitClass 2, Level 70-71 - MinMeleeDmg = 3620 MaxMeleeDmg = 5982 - Hitcount~30
-- Formula: ((265.892 – 265.892 * x / 2) + (290 / 14)) * y = 3620 = ((265.892 + 265.892 * x / 2) + (290 / 14)) * y = 5982 (~16.751203 0.530309)
-- Old Values: DamageMultiplier: 5.02 DamageVariance: 0.40 MinDMG: 1151.23 MaxDMG: 1675.63
-- New Values: DamageMultiplier: 16.00 DamageVariance: 0.50 MinDMG: 3522.13 MaxDMG: 5649.27
UPDATE `creature_template` SET `DamageMultiplier` = 16.0, `DamageVariance` = 0.5 WHERE `entry` = 23581;

-- Amani'shi Tribesman 23582 - ccsdb_tbc
-- UnitClass 1, Level 71 - MinMeleeDmg = 3930 MaxMeleeDmg = 6524 - Hitcount>100 - dualwielder
-- Formula: ((265.892 – 265.892 * x / 2) + (308 / 14)) * y = 3930 = ((265.892 + 265.892 * x / 2) + (308 / 14)) * y = 6524 (~18.1561 0.5373)
-- Old Values: DamageMultiplier: 9.69 DamageVariance: 0.40 MinDMG: 2273.79 MaxDMG: 3304.15
-- New Values: DamageMultiplier: 18.00 DamageVariance: 0.50 MinDMG: 3985.54 MaxDMG: 6378.57
UPDATE `creature_template` SET `DamageMultiplier` = 13.0, `DamageVariance` = 0.5 WHERE `entry` = 23582;
UPDATE `creature_model_info` SET `bounding_radius` = 0.451389, `combat_reach` = 1.95 WHERE `modelid` = 22271;

-- Amani Bear 23584 - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 4285 MaxMeleeDmg = 6403 - Hitcount>25
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 4285 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 6403 (~18.8814 0.4293)
-- Old Values: DamageMultiplier: 9.69 DamageVariance: 0.40 MinDMG: 2273.79 MaxDMG: 3304.15
-- New Values: DamageMultiplier: 18.00 DamageVariance: 0.40 MinDMG: 4153.81 MaxDMG: 6035.28
UPDATE `creature_template` SET `DamageMultiplier` = 18.0, `DamageVariance` = 0.4 WHERE `entry` = 23584;

-- Amani'shi Scout 23586 - npc_amanishi_scout - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 1017 MaxMeleeDmg = 1255 - Hitcount=5
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 1017 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 1255 (~4.0137 0.2269)
-- Old Values: DamageMultiplier: 1.72 DamageVariance: 0.40 MinDMG: 397.50 MaxDMG: 577.58
-- New Values: DamageMultiplier: 4.00 DamageVariance: 0.20 MinDMG: 1027.59 MaxDMG: 1236.65
UPDATE `creature_template` SET `DamageMultiplier` = 4.0, `DamageVariance` = 0.2 WHERE `entry` = 23586;

-- Amani'shi Reinforcement 23587 - ccsdb_tbc - aura 37845 "Despawn Self"
-- UnitClass 1, Level 70 - MinMeleeDmg = 2164 MaxMeleeDmg = 3508 - Hitcount~80
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 2164 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 3508 (~10.0201 0.5133)
-- Old Values: DamageMultiplier: 21.53 DamageVariance: 0.40 MinDMG: 4969.42 MaxDMG: 7220.34
-- New Values: DamageMultiplier: 10.00 DamageVariance: 0.50 MinDMG: 2177.01 MaxDMG: 3483.59
UPDATE `creature_template` SET `DamageMultiplier` = 10.0, `DamageVariance` = 0.5 WHERE `entry` = 23587;

-- Amani'shi Flame Caster 23596 - ccsdb_tbc
-- UnitClass 2, Level 71 - MinMeleeDmg = 3695 MaxMeleeDmg = 6040 - Hitcount~150
-- Formula: ((265.892 – 265.892 * x / 2) + (290 / 14)) * y = 3695 = ((265.892 + 265.892 * x / 2) + (290 / 14)) * y = 6040 (~16.9832 0.5193)
-- Old Values: DamageMultiplier: 5.02 DamageVariance: 0.40 MinDMG: 1151.23 MaxDMG: 1675.63
-- New Values: DamageMultiplier: 16.00 DamageVariance: 0.50 MinDMG: 3522.13 MaxDMG: 5649.27
UPDATE `creature_template` SET `DamageMultiplier` = 16.0, `DamageVariance` = 0.5 WHERE `entry` = 23596;

-- Amani'shi Guardian 23597 - ccsdb_tbc
-- UnitClass 1, Level 71 - MinMeleeDmg = 3880 MaxMeleeDmg = 6533 - Hitcount~500
-- Formula: ((265.892 – 265.892 * x / 2) + (308 / 14)) * y = 3880 = ((265.892 + 265.892 * x / 2) + (308 / 14)) * y = 6533 (~18.0849 0.5517)
-- Old Values: DamageMultiplier: 18.30 DamageVariance: 0.40 MinDMG: 4295.04 MaxDMG: 6241.27
-- New Values: DamageMultiplier: 18.00 DamageVariance: 0.50 MinDMG: 3985.54 MaxDMG: 6378.57
UPDATE `creature_template` SET `DamageMultiplier` = 18.0, `DamageVariance` = 0.5 WHERE `entry` = 23597;

-- Amani Dragonhawk Hatchling 23598 - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 630 MaxMeleeDmg = 930 - Hitcount~500
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 630 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 930 (~2.7559 0.4166)
-- Old Values: DamageMultiplier: 9.69 DamageVariance: 0.40 MinDMG: 2236.19 MaxDMG: 3249.11 -> points towards copypasta error as its same as the next one
-- New Values: DamageMultiplier: 2.75 DamageVariance: 0.40 MinDMG: 634.61 MaxDMG: 922.06
UPDATE `creature_template` SET `DamageMultiplier` = 2.75, `DamageVariance` = 0.4 WHERE `entry` = 23598;

-- Amani'shi Trainer 23774 - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 5829 MaxMeleeDmg = 8187 - Hitcount~50
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 5829 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 8187 (~24.7606 0.3644)
-- Old Values: DamageMultiplier: 9.69 DamageVariance: 0.40 MinDMG: 2236.19 MaxDMG: 3249.11
-- New Values: DamageMultiplier: 24.00 DamageVariance: 0.40 MinDMG: 5538.41 MaxDMG: 8047.04
UPDATE `creature_template` SET `DamageMultiplier` = 24.0, `DamageVariance` = 0.4 WHERE `entry` = 23774;

-- Amani'shi Hatcher 23818 - npc_amanishi_hatcher - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 216 MaxMeleeDmg = 285 - Hitcount=5
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 216 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 285 (~0.8851 0.2983)
-- Old Values: DamageMultiplier: 0.86 DamageVariance: 0.40 MinDMG: 198.72 MaxDMG: 288.75
-- New Values: DamageMultiplier: 1.00 DamageVariance: 0.25 MinDMG: 250.37 MaxDMG: 315.69
UPDATE `creature_template` SET `DamageMultiplier` = 1, `DamageVariance` = 0.25 WHERE `entry` = 23818;

-- Amani'shi Hatcher 24504 - npc_amanishi_hatcher - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 243 MaxMeleeDmg = 284 - Hitcount~4
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 243 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 284 (~0.9310 0.1685)
-- Old Values: DamageMultiplier: 0.86 DamageVariance: 0.40 MinDMG: 198.72 MaxDMG: 288.75
-- New Values: DamageMultiplier: 1.00 DamageVariance: 0.25 MinDMG: 250.37 MaxDMG: 315.69
UPDATE `creature_template` SET `DamageMultiplier` = 1, `DamageVariance` = 0.25 WHERE `entry` = 24504;

-- Amani Dragonhawk 23834 - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 651 MaxMeleeDmg = 1069 - Hitcount~200
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 651 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 1069 (~3.0385 0.5264)
-- Old Values: DamageMultiplier: 11.84 DamageVariance: 0.40 MinDMG: 2733.16 MaxDMG: 3971.18
-- New Values: DamageMultiplier: 3.00 DamageVariance: 0.50 MinDMG: 653.10 MaxDMG: 1045.08
UPDATE `creature_template` SET `DamageMultiplier` = 3.0, `DamageVariance` = 0.5 WHERE `entry` = 23834;

-- Amani Lynx 24043 - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 2645 MaxMeleeDmg = 4494 - Hitcount~500
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 2645 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 4494 (~12.61172 0.56104)
-- Old Values: DamageMultiplier: 5.38 DamageVariance: 0.40 MinDMG: 1242.32 MaxDMG: 1805.05
-- New Values: DamageMultiplier: 12.00 DamageVariance: 0.50 MinDMG: 2612.42 MaxDMG: 4180.31
UPDATE `creature_template` SET `DamageMultiplier` = 12.0, `DamageVariance` = 0.5, `MeleeBaseAttackTime` = 1800 WHERE `entry` = 24043;
UPDATE `creature_model_info` SET `combat_reach` = 3 WHERE `modelid` = 19705; -- same as Amani Elder Lynx 24530!

-- Amani Crocolisk 24047 - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 2741 MaxMeleeDmg = 4348 - Hitcount~20
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 2741 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 4348 (~12.5234 0.4911)
-- Old Values: DamageMultiplier: 10.77 DamageVariance: 0.40 MinDMG: 2484.72 MaxDMG: 3610.19
-- New Values: DamageMultiplier: 12.00 DamageVariance: 0.50 MinDMG: 2612.42 MaxDMG: 4180.31
UPDATE `creature_template` SET `DamageMultiplier` = 12.0, `DamageVariance` = 0.5 WHERE `entry` = 24047;

-- Amani'shi Beast Tamer 24059 - ccsdb_tbc
-- UnitClass 1, Level 71 - MinMeleeDmg = 3937 MaxMeleeDmg = 7714 - Hitcount~300
-- Formula: ((265.892 – 265.892 * x / 2) + (308 / 14)) * y = 3937 = ((265.892 + 265.892 * x / 2) + (308 / 14)) * y = 7714 (~20.235 0.702)
-- Old Values: DamageMultiplier: 9.69 DamageVariance: 0.40 MinDMG: 2273.79 MaxDMG: 3304.15
-- New Values: DamageMultiplier: 20.00 DamageVariance: 0.70 MinDMG: 3896.60 MaxDMG: 7619.08
UPDATE `creature_template` SET `DamageMultiplier` = 20.0, `DamageVariance` = 0.7 WHERE `entry` = 24059;

-- Amani Lynx Cub 24064 - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 586 MaxMeleeDmg = 1188 - Hitcount~300
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 586 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 1188 (~3.1339 0.7351)
-- Old Values: DamageMultiplier: 3.45 DamageVariance: 0.40 MinDMG: 795.08 MaxDMG: 1155.23
-- New Values: DamageMultiplier: 3.00 DamageVariance: 0.70 MinDMG: 574.71 MaxDMG: 1123.47
UPDATE `creature_template` SET `DamageMultiplier` = 3.0, `DamageVariance` = 0.7 WHERE `entry` = 24064;

-- Amani'shi Handler 24065 - ccsdb_tbc
-- UnitClass 1, Level 71 - MinMeleeDmg = 3895 MaxMeleeDmg = 6523 - Hitcount~200
-- Formula: ((265.892 – 265.892 * x / 2) + (308 / 14)) * y = 3895 = ((265.892 + 265.892 * x / 2) + (308 / 14)) * y = 6523 (~18.0936 0.5463)
-- Old Values: DamageMultiplier: 9.69 DamageVariance: 0.40 MinDMG: 2273.79 MaxDMG: 3304.15
-- New Values: DamageMultiplier: 18.00 DamageVariance: 0.50 MinDMG: 3985.54 MaxDMG: 6378.57
UPDATE `creature_template` SET `DamageMultiplier` = 18.0, `DamageVariance` = 0.5 WHERE `entry` = 24065;

-- Tamed Amani Crocolisk 24138 - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 2711 MaxMeleeDmg = 4499 - Hitcount~50
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 2711 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 4499 (~12.7372 0.5372)
-- Old Values: DamageMultiplier: 10.77, DamageVariance: 0.40, MinDMG: 2484.72, MaxDMG: 3610.19
-- New Values: DamageMultiplier: 12.00 DamageVariance: 0.50 MinDMG: 2612.42 MaxDMG: 4180.31
UPDATE `creature_template` SET `DamageMultiplier` = 12.0, `DamageVariance` = 0.5 WHERE `entry` = 24138;

-- Amani Eagle 24159 - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 528 MaxMeleeDmg = 890 - Hitcount~300
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 528 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 890 (~2.5050 0.5530)
-- Old Values: DamageMultiplier: 1.08 DamageVariance: 0.40 MinDMG: 248.45 MaxDMG: 361.00
-- New Values: DamageMultiplier: 2.50 DamageVariance: 0.50 MinDMG: 544.25 MaxDMG: 870.90
UPDATE `creature_template` SET `DamageMultiplier` = 2.5, `DamageVariance` = 0.5 WHERE `entry` = 24159;

-- Amani'shi Wind Walker 24179 - ccsdb_tbc
-- UnitClass 2, Level 71 - MinMeleeDmg = 1691 MaxMeleeDmg = 2660 - Hitcount~150
-- Formula: ((265.892 – 265.892 * x / 2) + (290 / 14)) * y = 1691 = ((265.892 + 265.892 * x / 2) + (290 / 14)) * y = 2660 (~7.590552 0.480115)
-- Old Values: DamageMultiplier: 9.03 DamageVariance: 0.40 MinDMG: 2106.80 MaxDMG: 3066.74
-- New Values: DamageMultiplier: 7.00 DamageVariance: 0.50 MinDMG: 1540.93 MaxDMG: 2471.55
UPDATE `creature_template` SET `DamageMultiplier` = 7.0, `DamageVariance` = 0.5 WHERE `entry` = 24179;

-- Amani'shi Protector 24180 - ccsdb_tbc
-- UnitClass 1, Level 71 - MinMeleeDmg = 3247 MaxMeleeDmg = 5436 - Hitcount~200
-- Formula: ((265.892 – 265.892 * x / 2) + (308 / 14)) * y = 3247 = ((265.892 + 265.892 * x / 2) + (308 / 14)) * y = 5436 (~15.0803 0.5459)
-- Old Values: DamageMultiplier: 10.76 DamageVariance: 0.40 MinDMG: 2526.48 MaxDMG: 3671.32
-- New Values: DamageMultiplier: 15.00 DamageVariance: 0.50 MinDMG: 3321.29 MaxDMG: 5315.47
UPDATE `creature_template` SET `DamageMultiplier` = 15.0, `DamageVariance` = 0.5 WHERE `entry` = 24180;

-- Amani Bear Mount 24217 - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 4046 MaxMeleeDmg = 6413 - Hitcount~50
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 4046 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 6413 (~18.4768 0.4902)
-- Old Values: DamageMultiplier: 10.77 DamageVariance: 0.40 MinDMG: 2484.72 MaxDMG: 3610.19
-- New Values: DamageMultiplier: 18.00 DamageVariance: 0.50 MinDMG: 3918.62 MaxDMG: 6270.47
UPDATE `creature_template` SET `DamageMultiplier` = 18.0, `DamageVariance` = 0.5 WHERE `entry` = 24217;

-- Amani'shi Warrior 24225 - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 1509 MaxMeleeDmg = 2497 - Hitcount~80
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 1509 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 2497 (~7.07698 0.53425)
-- Old Values: DamageMultiplier: 10.77 DamageVariance: 0.40 MinDMG: 2484.72 MaxDMG: 3610.19
-- New Values: DamageMultiplier: 7.00 DamageVariance: 0.50 MinDMG: 1523.91 MaxDMG: 2438.52
UPDATE `creature_template` SET `DamageMultiplier` = 7.0, `DamageVariance` = 0.5 WHERE `entry` = 24225;

-- Amani'shi Berserker 24374 - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 7413 MaxMeleeDmg = 12233 - Hitcount~80
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 7413 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 12233 (~34.7065 0.5315)
-- Old Values: DamageMultiplier: 16.15 DamageVariance: 0.40 MinDMG: 3727.03 MaxDMG: 5415.23
-- New Values: DamageMultiplier: 34.00 DamageVariance: 0.50 MinDMG: 7401.84 MaxDMG: 11844.22
UPDATE `creature_template` SET `DamageMultiplier` = 30.0, `DamageVariance` = 0.5 WHERE `entry` = 24374;

-- Amani Elder Lynx 24530 - ccsdb_tbc
-- UnitClass 1, Level 70 - MinMeleeDmg = 2738 MaxMeleeDmg = 4617 - Hitcount~200
-- Formula: ((261.316 – 261.316 * x / 2) + (304 / 14)) * y = 2738 = ((261.316 + 261.316 * x / 2) + (304 / 14)) * y = 4617 (~12.9933 0.5534)
-- Old Values: DamageMultiplier: 4.85 DamageVariance: 0.40 MinDMG: 1118.06 MaxDMG: 1624.52
-- New Values: DamageMultiplier: 13.00 DamageVariance: 0.50 MinDMG: 2830.12 MaxDMG: 4528.67
UPDATE `creature_template` SET `DamageMultiplier` = 13.0, `DamageVariance` = 0.5 WHERE `entry` = 24530;

-- Amani'shi Tempest 24549 - npc_amanishi_tempest - ccsdb_tbc
-- UnitClass 1, Level 71 - MinMeleeDmg = 5674 MaxMeleeDmg = 9053 - Hitcount~120
-- Formula: ((265.892 – 265.892 * x / 2) + (308 / 14)) * y = 5674 = ((265.892 + 265.892 * x / 2) + (308 / 14)) * y = 9053 (~25.5773 0.49685)
-- Old Values: DamageMultiplier: 10.76 DamageVariance: 0.40 MinDMG: 2526.48 MaxDMG: 3671.32
-- New Values: DamageMultiplier: 25.00 DamageVariance: 0.50 MinDMG: 5535.48 MaxDMG: 8859.12
UPDATE `creature_template` SET `DamageMultiplier` = 25.0, `DamageVariance` = 0.5 WHERE `entry` = 24549;

