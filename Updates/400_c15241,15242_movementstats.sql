-- Correct Stats for Gryphon Rider Guard 15241 & Bat Rider Guard 15242
UPDATE `creature_template` SET `InhabitType` = 4, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (20 / 2.5), `MovementType` = 0 WHERE `entry` = 15241;
UPDATE `creature_template` SET `InhabitType` = 4, `SpeedWalk` = (7 / 2.5), `SpeedRun` = (18 / 2.5), `MovementType` = 0 WHERE `entry` = 15242;

