-- Blade Dance Target 20709
-- Movement Flags: 1536 (DisableGravity, Root)
UPDATE `creature_template` SET `InhabitType` = 4, `MovementType` = 0 WHERE `entry` = 20709; -- 3, 1
-- Shattered Hand Assassin
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 17695; -- 1
-- Adds
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` IN (17621,17622,17623,20569,20578,20575); -- on spawn should follow path, on waypoint reached they do dozoneincombat

