-- The Curator 15691
UPDATE `creature_template` SET `Detection` = 60 WHERE `entry` = 15691;

-- Astral Flare 17096
UPDATE `creature_template` SET `UnitFlags` = 33554432, `ExtraFlags` = `ExtraFlags`|524288 WHERE `entry` = 17096;

