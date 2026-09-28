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

