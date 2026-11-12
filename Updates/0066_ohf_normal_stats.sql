-- -----------------
-- Old Hillsbrad Foothills - NPC Stats
-- Based on TBC PTR MindControle/BeastLore research
--
-- Info about Levels:
-- Some MinLevel/MaxLevel seem to be wrong according to multiple sniffs from TBC Anni sniffs.
-- My guess sofar is that some level ranges got changed with wotlk+ as i only find it in those sniffs
-- Will go with tbc anni + anni ptr sniff evidence for now
-- I will revert those changes if anyone can give me either
-- a video from original tbc 2.4.3
-- a sniff from tbc classic/anni 
-- 
-- select HeroicEntry, MinLevel, MaxLevel, UnitClass, SpeedWalk, SpeedRun, MeleeBaseAttackTime, DamageMultiplier, DamageVariance, MinMeleeDmg, MaxMeleeDmg from creature_template where entry = ;
-- -----------------

-- Durnholde Sentry - 17819 - 20527
-- Level 66-67
-- WalkSpeed: 2.5
-- RunSpeed: 8
-- AttackRoundBaseTime: 2000
-- MindControle Data
-- Level 67 UnitClass 1
-- MinDmg 880.66 MaxDmg 1238.78 AP 288 Armor 5892
-- Str 154 Agi 112 Sta 291 Int 32 SP 93
-- Old Values
-- SpeedWalk 1,48 DamageMultiplier 2,20719 MinmeleeDmg 315 MaxMeleeDmg 465 SpeedWalk 1,48
UPDATE creature_template SET MinLevel = 66, MaxLevel = 67, UnitClass = 1, SpeedWalk = 1, SpeedRun = 1.14286, MeleeBaseAttackTime = 2000, DamageMultiplier = 5.45, DamageVariance = 0.38, MinMeleeDmg = 880.66, MaxMeleeDmg = 1238.78 WHERE entry = 17819;
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.14286 WHERE entry = 20527;


-- Durnholde Tracking Hound - 17840 - 20528
-- Level 65
-- WalkSpeed: 2.5
-- RunSpeed: 8
-- AttackRoundBaseTime: 1200
-- BeastLore values
-- MinDmg 387 MaxDmg 543 Armor 5291
-- Old values
-- SpeedWalk 1,48 DamageMultiplier 2,84954 MinDmg  361 MaxDmg 506
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65, UnitClass = 1, SpeedWalk = 1, SpeedRun = 1.14286, MeleeBaseAttackTime = 1200, DamageMultiplier = 3.0, DamageVariance = 0.38, MinMeleeDmg = 387, MaxMeleeDmg = 543 WHERE entry = 17840;
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.14286 WHERE entry = 20528;

-- Durnholde Rifleman - 17820 - 20526
-- Level 67 
-- WalkSpeed: 2.5
-- RunSpeed: 8
-- AttackRoundBaseTime: 2000
-- MindControle Data
-- MinDmg 880.66 MaxDmg 1238.78 AP 288 Armor 5892
-- Str 154 Agi 112 Sta 291 Int 32 SP 9
-- Old Values
-- SpeedWalk 1,48 DamageMultiplier 2,20719 MinMeleeDmg 315 MaxMeleeDmg 465 
UPDATE creature_template SET MinLevel = 67, MaxLevel = 67, UnitClass = 1, SpeedWalk = 1, SpeedRun = 1.14286, MeleeBaseAttackTime = 2000, DamageMultiplier = 5.45, DamageVariance = 0.38, MinMeleeDmg = 880.66, MaxMeleeDmg = 1238.78 WHERE entry = 17820;
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.14286 WHERE entry = 20526;

-- Durnholde Warden - 17833 - 20530
-- Level 67
-- WalkSpeed: 2.5
-- RunSpeed: 8
-- AttackRoundBaseTime: 2000
-- MindControle Data
-- Level 67 UnitClass 2
-- MinDmg 816.96 MaxDMg 1147.81 AP 272 Armor 4755 
-- Str 146 Agi 102 Sta 266 Int 125 SP 115
-- Old Values 
-- SpeedWalk 1,48 DamageMultiplier 1,91046 MinMeleeDmg 307 MaxMeleeDmg 431 
UPDATE creature_template SET MinLevel = 67, MaxLevel = 67, UnitClass = 2, SpeedWalk = 1, SpeedRun = 1.14286, MeleeBaseAttackTime = 2000, DamageMultiplier = 5, DamageVariance = 0.37, MinMeleeDmg = 816.96, MaxMeleeDmg = 1147.81 WHERE entry = 17833;
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.14286 WHERE entry = 20530;

-- Durnholde Veteran 17860 - 20529
-- Level 67
-- WalkSpeed: 2.5
-- RunSpeed: 8
-- AttackRoundBaseTime: 2000
-- MinControle Data
-- Level 67 UnitClass 1
-- MinDmg 880.66 MaxDmg 1238.78 AP 288 Armmor 5892
-- Str 154 Agi 112 Sta 291 Int 32 SP 93
-- Old Values
-- SpeedWalk 1,48, DamageMultiplier 2,04872 MinMeleeDmg 331 MaxMeleeDmg 465
UPDATE creature_template SET MinLevel = 67, MaxLevel = 67, UnitClass = 1, SpeedWalk = 1, SpeedRun = 1.14286, MeleeBaseAttackTime = 2000, DamageMultiplier = 5.45, DamageVariance = 0.38, MinMeleeDmg = 880.66, MaxMeleeDmg = 1238.78 WHERE entry = 17860;
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.14286 WHERE entry = 20529;

-- Lieutenant Drake 17848 - 20535
-- Level 68 UnitClass 1
-- Level 71 Heroic
-- WalkSpeed: 2.5
-- RunSpeed: 10
-- AttackRoundBaseTime: 2500
-- Damage Values based on Dungeon Companion II Book
-- MinDmg 1911 MaxDmg 2695
-- Heroic MinDmg 7331 MaxDmg 10368
-- Old Values
-- Normal - SpeedWalk 1,48 DamageMultiplier 7,36572 DamageVariance 0,4 MinDmg 1344 MaxDmg 1894
-- Heroic - SpeedWalk 1,48 DamageMultiplier 8,61135 DamageVariance 0,4 MinDmg 2054 MaxDmg 2905
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68, UnitClass = 1, SpeedWalk = 1, SpeedRun = 1.14286, MeleeBaseAttackTime = 2500, DamageMultiplier = 10.4773, DamageVariance = 0.3761, MinMeleeDmg = 1911, MaxMeleeDmg = 2695 WHERE entry = 17848;
UPDATE creature_template SET MinLevel = 71, MaxLevel = 71, UnitClass = 1, SpeedWalk = 1, SpeedRun = 1.14286, MeleeBaseAttackTime = 2500, DamageMultiplier = 30.7390, DamageVariance = 0.3761, MinMeleeDmg = 7331, MaxMeleeDmg = 10368 WHERE entry = 20535;

-- Durnholde Mage 18934 - 20525
-- Level 67 UnitClass 2
-- WalkSpeed: 2.5
-- RunSpeed: 8
-- AttackRoundBaseTime: 2000
-- MinControle Data
-- Level 67 UnitClass 1
-- MinDmg 816.96 MaxDmg 1147.81 AP 272 Armor 4755
-- Str 146 Agi 102 Sta 266 Int 126 SP 115
-- Old Values
-- Normal - SpeedWalk 1,48 DamageMultiplier 1,91046 DamageVariance 0,4 MinDmg 307 MaxDmg 431
UPDATE creature_template SET MinLevel = 67, MaxLevel = 67, UnitClass = 2, SpeedWalk = 1, SpeedRun = 1.14286, MeleeBaseAttackTime = 2000, DamageMultiplier = 5, DamageVariance = 0.37, MinMeleeDmg = 816.96, MaxMeleeDmg = 1147.81 WHERE entry = 18934;
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.14286 WHERE entry = 20525;

-- Captain Skarloc 17862 - 20521
-- Level 68 UnitClass 2
-- Level 72 Heroic
-- WalkSpeed: 2.5
-- RunSpeed: 10
-- AttackRoundBaseTime: 2000
-- Damage Values based on Dungeon Companion II Book
-- MinDmg 1636 MaxDmg 2304
-- Heroic MinDmg 4452 MaxDmg 6290
-- Old Values
-- Normal - SpeedWalk 1,48 SpeedRun 1,14286, DamageMultiplier 1,76707 DamageVariance 0,4 MinDmg 390 MaxDmg 390
-- Heroic - SpeedWalk 1,48 SpeedRun 1,14286, DamageMultiplier 13,0053 DamageVariance 0,4 MinDmg 3889 MaxDmg 4348
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68, UnitClass = 2, SpeedWalk = 1, SpeedRun = 1.4285, MeleeBaseAttackTime = 2000, DamageMultiplier = 9.0092, DamageVariance = 0.3727, MinMeleeDmg = 1636, MaxMeleeDmg = 2304 WHERE entry = 17862;
UPDATE creature_template SET MinLevel = 72, MaxLevel = 72, UnitClass = 2, SpeedWalk = 1, SpeedRun = 1.4285, MeleeBaseAttackTime = 2000, DamageMultiplier = 18.4059, DamageVariance = 0.3689, MinMeleeDmg = 4452, MaxMeleeDmg = 6290 WHERE entry = 20521;

-- Tarren Mill Lookout 18094 - 20546
-- Level 67-68 UnitClass 2
-- WalkSpeed 2.5
-- RunSpeed: 8
-- AttackRoundBaseTime: 2000
-- MinControle Data
-- MinDmg 855.00 MaxDmg 1203.72 AP 276 Armor 4995 
-- Str 148 Agi 104 Sta 271 Int 127 SP 118
-- Old Values
-- Normal SpeedWalk 1,2 DamageMultiplier 2,29256 DamageVariance 0,4 MinDmg 457 MaxDmg 549
UPDATE creature_template SET MinLevel = 67, MaxLevel = 68, UnitClass = 2, SpeedWalk = 1, SpeedRun = 1.14286, MeleeBaseAttackTime = 2000, DamageMultiplier = 4.7075, DamageVariance = 0.37, MinMeleeDmg = 855.00, MaxMeleeDmg = 1203.72 WHERE entry = 18094;
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.14286 WHERE entry = 20546;


-- Tarren Mill Lookout 23177 - 23183
-- Level 67-68 UnitClass 2
-- WalkSpeed 2.5
-- RunSpeed: 8
-- AttackRoundBaseTime: 2000
-- MinControle Data
-- MinDmg 855.00 MaxDmg 1203.72 AP 276 Armor 4995 
-- Str 148 Agi 104 Sta 271 Int 127 SP 118
-- Old Values
-- Normal SpeedWalk 1,2 DamageMultiplier 2,29256 DamageVariance 0,4 MinDmg 457 MaxDmg 549
UPDATE creature_template SET MinLevel = 67, MaxLevel = 68, UnitClass = 2, SpeedWalk = 1, SpeedRun = 1.14286, MeleeBaseAttackTime = 2000, DamageMultiplier = 4.7075, DamageVariance = 0.37, MinMeleeDmg = 855.00, MaxMeleeDmg = 1203.72 WHERE entry = 23177;
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.14286 WHERE entry = 23183;

-- Tarren Mill Lookout 23178 - 23184
-- Level 67-68 UnitClass 2
-- WalkSpeed 2.5
-- RunSpeed: 8
-- AttackRoundBaseTime: 2000
-- MinControle Data
-- MinDmg 855.00 MaxDmg 1203.72 AP 276 Armor 4995 
-- Str 148 Agi 104 Sta 271 Int 127 SP 118
-- Old Values
-- Normal SpeedWalk 1,2 DamageMultiplier 2,29256 DamageVariance 0,4 MinDmg 457 MaxDmg 549
UPDATE creature_template SET MinLevel = 67, MaxLevel = 68, UnitClass = 2, SpeedWalk = 1, SpeedRun = 1.14286, MeleeBaseAttackTime = 2000, DamageMultiplier = 4.7075, DamageVariance = 0.37, MinMeleeDmg = 855.00, MaxMeleeDmg = 1203.72 WHERE entry = 23178;
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.14286 WHERE entry = 23184;

-- Tarren Mill Guardsman 18092 - 20545
-- Level 67-68 UnitClass 1
-- WalkSpeed 2.5
-- RunSpeed: 8
-- AttackRoundBaseTime: 2000
-- MinControle Data
-- MinDmg 921.88 Maxdmg 1299.48 AP 292 Armor 6192
-- 156 Agi 117 Sta 296 Int 32 SP 85
-- Old Values
-- Normal SpeedWalk 1,2 DamageMultiplier 2,45847 DamageVariance 0,4 MinDmg 457 MaxDmg 549
UPDATE creature_template SET MinLevel = 67, MaxLevel = 68, UnitClass = 1, SpeedWalk = 1, SpeedRun = 1.14286, MeleeBaseAttackTime = 2000, DamageMultiplier = 5.0530, DamageVariance = 0.37, MinMeleeDmg = 921.88, MaxMeleeDmg = 1299.48 WHERE entry = 18092;
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.14286 WHERE entry = 20545;

-- Tarren Mill Guardsman 23175 - 23181
-- Level 67-68 UnitClass 1
-- WalkSpeed 2.5
-- RunSpeed: 8
-- AttackRoundBaseTime: 2000
-- MinControle Data
-- MinDmg 921.88 Maxdmg 1299.48 AP 292 Armor 6192
-- 156 Agi 117 Sta 296 Int 32 SP 85
-- Old Values
-- Normal SpeedWalk 1,2 DamageMultiplier 2,45847 DamageVariance 0,4 MinDmg 457 MaxDmg 549
UPDATE creature_template SET MinLevel = 67, MaxLevel = 68, UnitClass = 1, SpeedWalk = 1, SpeedRun = 1.14286, MeleeBaseAttackTime = 2000, DamageMultiplier = 5.0530, DamageVariance = 0.37, MinMeleeDmg = 921.88, MaxMeleeDmg = 1299.48 WHERE entry = 23175;
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.14286 WHERE entry = 23181;

-- Tarren Mill Guardsman 23176 - 23182
-- Level 67-68 UnitClass 1
-- WalkSpeed 2.5
-- RunSpeed: 8
-- AttackRoundBaseTime: 2000
-- MinControle Data
-- MinDmg 921.88 Maxdmg 1299.48 AP 292 Armor 6192
-- 156 Agi 117 Sta 296 Int 32 SP 85
-- Old Values
-- Normal SpeedWalk 1,2 DamageMultiplier 2,45847 DamageVariance 0,4 MinDmg 457 MaxDmg 549
UPDATE creature_template SET MinLevel = 67, MaxLevel = 68, UnitClass = 1, SpeedWalk = 1, SpeedRun = 1.14286, MeleeBaseAttackTime = 2000, DamageMultiplier = 5.0530, DamageVariance = 0.37, MinMeleeDmg = 921.88, MaxMeleeDmg = 1299.48 WHERE entry = 23176;
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.14286 WHERE entry = 23182;

-- Tarren Mill Protector 18093 - 20547
-- Level 67 - 68 - UnitClass 2
-- WalkSpeed 2.5
-- RunSpeed: 8
-- AttackRoundBaseTime: 3000
-- MinControle Data
-- MinDmg 1225.45 MaxDmg 1721.72 AP 272 Armor 4755
-- Str 146 Agi 102 Sta 266 Int 127 SP 115
-- Old Values
-- Normal SpeedWalk 1,2 DamageMultiplier 3,43884 DamageVariance 0,4 MinDmg 457 MaxDmg 549
UPDATE creature_template SET MinLevel = 67, MaxLevel = 68, UnitClass = 2, SpeedWalk = 1, SpeedRun = 1.14286, MeleeBaseAttackTime = 3000, DamageMultiplier = 7.6342, DamageVariance = 0.37, MinMeleeDmg = 1225.45, MaxMeleeDmg = 1721.72 WHERE entry = 18093;
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.14286 WHERE entry = 20547;

-- Tarren Mill Protector 23179 - 23185
-- Level 67 - 68 - UnitClass 2
-- WalkSpeed 2.5
-- RunSpeed: 8
-- AttackRoundBaseTime: 3000
-- MinControle Data
-- MinDmg 1225.45 MaxDmg 1721.72 AP 272 Armor 4755
-- Str 146 Agi 102 Sta 266 Int 127 SP 115
-- Old Values
-- Normal SpeedWalk 1,2 DamageMultiplier 3,43884 DamageVariance 0,4 MinDmg 457 MaxDmg 549
UPDATE creature_template SET MinLevel = 67, MaxLevel = 68, UnitClass = 2, SpeedWalk = 1, SpeedRun = 1.14286, MeleeBaseAttackTime = 3000, DamageMultiplier = 7.6342, DamageVariance = 0.37, MinMeleeDmg = 1225.45, MaxMeleeDmg = 1721.72 WHERE entry = 23179;
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.14286 WHERE entry = 23185;

-- Tarren Mill Protector 23180 - 23186
-- Level 67 - 68 - UnitClass 2
-- WalkSpeed 2.5
-- RunSpeed: 8
-- AttackRoundBaseTime: 3000
-- MinControle Data
-- MinDmg 1225.45 MaxDmg 1721.72 AP 272 Armor 4755
-- Str 146 Agi 102 Sta 266 Int 127 SP 115
-- Old Values
-- Normal SpeedWalk 1,2 DamageMultiplier 3,43884 DamageVariance 0,4 MinDmg 457 MaxDmg 549
UPDATE creature_template SET MinLevel = 67, MaxLevel = 68, UnitClass = 2, SpeedWalk = 1, SpeedRun = 1.14286, MeleeBaseAttackTime = 3000, DamageMultiplier = 7.6342, DamageVariance = 0.37, MinMeleeDmg = 1225.45, MaxMeleeDmg = 1721.72 WHERE entry = 23180;
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.14286 WHERE entry = 23186;


-- Epoch Hunter 18096 - 20531
-- Level 68 UnitClass 1
-- Level 72 Heroic
-- WalkSpeed: 2.5
-- RunSpeed: 8
-- AttackRoundBaseTime: 2000
-- Damage Values based on Dungeon Companion II Book
-- MinDmg 1536 MaxDmg 2165
-- Heroic MinDmg 5227 MaxDmg 7393
-- Old Values
-- Normal - SpeedWalk 1,48 SpeedRun 1,14286, DamageMultiplier 8,47216 DamageVariance 0,4 MinDmg 1585 MaxDmg 2026
-- Heroic - SpeedWalk 1,48 SpeedRun 1,14286, DamageMultiplier 21,4971 DamageVariance 0,4 MinDmg 3967 MaxDmg 4735
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68, UnitClass = 1, SpeedWalk = 1, SpeedRun = 1.14286, MeleeBaseAttackTime = 2000, DamageMultiplier = 8.4187, DamageVariance = 0.3755, MinMeleeDmg = 1536, MaxMeleeDmg = 2165 WHERE entry = 18096;
UPDATE creature_template SET MinLevel = 72, MaxLevel = 72, UnitClass = 1, SpeedWalk = 1, SpeedRun = 1.14286, MeleeBaseAttackTime = 2000, DamageMultiplier = 21.5289, DamageVariance = 0.3717, MinMeleeDmg = 5227, MaxMeleeDmg = 7393 WHERE entry = 20531;

-- Thrall 17876 - 20548
-- Level 67 UnitClass 1
-- WalkSpeed: 2.5
-- RunSpeed: 8
-- AttackRoundBaseTime: 2000
-- Damage Values based on TBC Anni tests
-- 370 - 513 Avg 435 on Epoch Hunter - 6192 Armor
-- Resulting in 620.3 - 860.0 raw damage
-- Old Values
-- Normal - SpeedWalk 1,1 SpeedRun 1,14286, DamageMultiplier 2,04872 DamageVariance 0,4 MinDmg 385 MaxDmg 385
-- Heroic - SpeedWalk 1,1 SpeedRun 1,14286, DamageMultiplier 21,4971 DamageVariance 0,00645852 MinDmg 2 MaxDmg 2
UPDATE creature_template SET MinLevel = 67, MaxLevel = 67, UnitClass = 1, SpeedWalk = 1, SpeedRun = 1.14286, MeleeBaseAttackTime = 2000, DamageMultiplier = 3.8119, DamageVariance = 0.37, MinMeleeDmg = 620, MaxMeleeDmg = 860 WHERE entry = 17876;
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.14286 WHERE entry = 20548;

-- Infinite Slayer  18170 - 20534
-- Level 68 UnitClass 1
-- WalkSpeed: 4
-- RunSpeed: 10
-- AttackRoundBaseTime: 2000
-- No Mindcontrole Data
-- Old Values
-- Normal - SpeedWalk 1,48 SpeedRun 1,14286, DamageMultiplier 5,46326 DamageVariance 0,4 MinDmg 922 MaxDmg 1299


-- Infinite Defiler  18171 - 20532
-- Level 68 UnitClass 2
-- WalkSpeed: 4
-- RunSpeed: 10
-- AttackRoundBaseTime: 2000
-- No Mindcontrole Data
-- Old Values
-- Normal - SpeedWalk 1,48 SpeedRun 1,14286, DamageMultiplier 5,09457 DamageVariance 0,4 MinDmg 855 MaxDmg 1204


-- Infinite Saboteur  18172 - 20533
-- Level 68 UnitClass 2
-- WalkSpeed: 4
-- RunSpeed: 10
-- AttackRoundBaseTime: 2000
-- No Mindcontrole Data
-- Old Values
-- Normal - SpeedWalk 1,48 SpeedRun 1,14286, DamageMultiplier 4,7153 DamageVariance 0,197541 MinDmg 855 MaxDmg 1204


-- Tarren Mill Horsehand - 18646
-- WalkSpeed: 2.5
-- RunSpeed: 6
-- Old Values SpeedWalk 1,125 SpeedRun 1,14286
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 0.857 WHERE entry = 18646;

-- Tarren Mill Horse - 18650
-- WalkSpeed: 2.5
-- RunSpeed: 3
-- Old Values SpeedWalk 1,125 SpeedRun 1,14286
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 0.4285 WHERE entry = 18650;

-- Tarren Mill Peasant - 18644
-- WalkSpeed: 2.5
-- RunSpeed: 8
-- Old Values SpeedWalk 1,125 SpeedRun 1,14286
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.1428 WHERE entry = 18644;