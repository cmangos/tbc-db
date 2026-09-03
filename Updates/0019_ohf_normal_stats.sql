-- -----------------
-- Old Hillsbrad Foothills - NPC Stats
-- Based on TBC PTR MindControle/BeastLore research
-- -----------------

-- Durnholde Sentry - 17819 - 20527
-- Level 66-67
-- WalkSpeed: 2.5
-- RunSpeed: 8
-- AttackRoundBaseTime: 2000
-- MinControle Data
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
UPDATE creature_template SET MSpeedWalk = 1, SpeedRun = 1.14286 WHERE entry = 20528;