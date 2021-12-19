-- Correct Speed for Blizzard (Shade of Aran) 17161 - values were swapped
-- [4] MoverGUID: Full: 0x203AEC428010C240002B9500001263F2 Creature/0 R3771/S11157 Map: 532 Entry: 17161 Low: 1205234
-- [4] WalkSpeed: 4.5
-- [4] RunSpeed: 4.5
-- [4] UNIT_FIELD_FLAGS: 33554432, not 33554688
UPDATE `creature_template` SET `SpeedWalk` = (4.5 / 2.5), `SpeedRun` = (4.5 / 7), `UnitFlags` = 33554432 WHERE `entry` = 17161;

