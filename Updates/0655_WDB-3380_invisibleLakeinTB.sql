-- Make some of Npcs walk correctly on theirs path
-- RecastDemo shows second invisible lake .. in center of ThunderBluff that is avoided by all.

-- Bluffwatcher 3084
UPDATE creature_template SET InhabitType = 3 WHERE entry = 3084; -- UNIT_FIELD_FLAGS: (4096) PVP

-- Chepi 8361
UPDATE creature_template SET InhabitType = 3 WHERE entry = 8361; -- UNIT_FIELD_FLAGS: (4608) OnlyAttackableByPlayerControlled, PVP

-- Bluff Runner Windstrider 10881
UPDATE creature_template SET InhabitType = 3 WHERE entry = 10881; -- UNIT_FIELD_FLAGS: (4096) PVP

-- Hunter Sagewind 14440
UPDATE creature_template SET InhabitType = 3 WHERE entry = 14440; -- UNIT_FIELD_FLAGS: (36864) PVP, OnlySwim -> already has 3

-- Hunter Ragetotem 14441
UPDATE creature_template SET InhabitType = 3 WHERE entry = 14441; -- UNIT_FIELD_FLAGS: (36864) PVP, OnlySwim -> already has 3

