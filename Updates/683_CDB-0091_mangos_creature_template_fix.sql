-- Fixes wrong InhabitType value for waypoints to keep compatibility with core revision z1922.
-- Thanks Salja for pointing.
UPDATE `creature_template` SET `InhabitType` = 7 WHERE `entry` = 1;

