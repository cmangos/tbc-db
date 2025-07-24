-- -----------
-- Tempest Keep : The Eye
-- Creature Changes
-- -----------

-- SELECT MinLevel, MaxLevel, UnitClass, HealthMultiplier, DamageMultiplier, SpeedWalk, SpeedRun FROM creature_template WHERE entry = ;
-- [4] WalkSpeed: 4
-- [4] RunSpeed: 10
UPDATE creature_template SET SpeedWalk = 4/2.5, SpeedRun = 10/7 WHERE entry = 20031;