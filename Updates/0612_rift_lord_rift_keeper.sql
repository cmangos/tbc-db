-- Black Morass

-- Rift Lord
-- https://www.wowhead.com/tbc/npc=17839/rift-lord
-- Normal: https://youtu.be/JZ5Iv8jCvCU?t=8
-- UnitClass = 1, MinLevel = 71, MaxLevel = 71
-- OLd HealthMultiplier  5,568 (* 7181) = 39.983,808 Health
-- New HealthMultiplier = 9 (*7181) = 64629
UPDATE creature_template SET HealthMultiplier = 9 WHERE entry = 17839;

-- Heroic: https://youtu.be/DWo7pD423v4?t=6
-- UnitClass = 1, MinLevel = 71, MaxLevel = 71
-- Old HealthMultiplier = 18,561 (*7181) = 133.286,541
-- New HealthMultiplier = 12 (*7181) = 86.172
UPDATE creature_template SET HealthMultiplier = 12 WHERE entry = 20744;

-- Rift Keeper
-- Normal https://youtu.be/JZ5Iv8jCvCU
-- UnitClass = 2, MinLevel = 71, MaxLevel = 71
-- Old HealthMultiplier =  6,96 (*5744) = 39.978,24
-- New HealthMultiplier = 9 (*5744) = 51696
UPDATE creature_template SET HealthMultiplier = 9 WHERE entry = 21104;

-- Heroic https://youtu.be/DWo7pD423v4?t=435
-- UnitClass = 2, MinLevel = 71, MaxLevel = 71
-- Old HealthMultiplier =  23,205 (*5744) = 133.289,52
-- New HealthMultiplier = 12 (*5744) = 68.928
UPDATE creature_template SET HealthMultiplier = 12 WHERE entry = 22170;