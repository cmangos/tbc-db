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
--
-- Old Values
-- DamageMultiplier 2,20719 MinmeleeDmg 315 MaxMeleeDmg 465 SpeedWalk 1,48
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.14286, DamageMultiplier = 5.45, DamageVariance = 0.38 WHERE entry = 17819;
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = 1.14286 WHERE entry = 20527;