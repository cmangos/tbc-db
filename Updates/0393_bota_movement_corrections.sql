-- Correct some movement speeds to wotlk classic sniff values
-- Tempest-Forge Peacekeeper
-- [2] WalkSpeed: 2.5 
-- [2] RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.14286' WHERE entry IN (18405, 21578);

-- Bloodwarder Mender
-- [2] WalkSpeed: 2.5 
-- [2] RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.14286' WHERE entry IN (19633, 21547);

-- Bloodwarder Greenkeeper
-- [2] WalkSpeed: 2.5 
-- [2] RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.14286' WHERE entry IN (18419, 21546);

-- Bloodwarder Protector
-- [2] WalkSpeed: 2.5 
-- [2] RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.14286' WHERE entry IN (17993, 21548);

-- Bloodfalcon
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.14286' WHERE entry IN (18155, 21544);

-- Bloodwarder Falconer
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.14286' WHERE entry IN (17994, 21545);