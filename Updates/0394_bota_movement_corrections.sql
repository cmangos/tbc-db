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

-- Commander Sarannis
-- WalkSpeed: 4
-- RunSpeed: 10
UPDATE creature_template SET SpeedWalk = '1.6', SpeedRun = '1.428' WHERE entry IN (17976, 21551);

-- Sunseeker Botanist
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.14286' WHERE entry IN (18422, 21570);

-- Greater Frayer
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.14286' WHERE entry IN (19557, 21555);

-- Sunseeker Researcher
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.14286' WHERE entry IN (18421, 21577);

-- Sunseekeker Chemist
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.14286' WHERE entry IN (19486, 21572);

-- High Botanist Freywinn
-- [0] WalkSpeed: 4
-- [0] RunSpeed: 10
UPDATE creature_template SET SpeedWalk = '1.6', SpeedRun = '1.428' WHERE entry IN (17975, 21558);

-- Green Seedling, Blue Seedling, White Seedling, Red Seedling
-- WalkSpeed: 2
-- RunSpeed: 2
UPDATE creature_template SET SpeedWalk = '0.8', SpeedRun = '0.285' WHERE entry IN (19958, 19962, 19964, 19969, 21550, 21557, 21566, 21583);

-- Nethervince Inciter / Nethervine Reaper
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.14286' WHERE entry IN (19511, 21563, 19512, 21564);

-- Sunseeker Channeler
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.14286' WHERE entry IN (19505, 21571);