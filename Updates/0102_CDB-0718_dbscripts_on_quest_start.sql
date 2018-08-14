-- Removed no longer used completion script for quest 994 (Escape Through Force)
-- This is handled by SD2.
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 994;
UPDATE `quest_template` SET `StartScript` = 0 WHERE `entry` = 994;
DELETE FROM `dbscript_string` WHERE `entry` IN (2000000012, 2000000013, 2000000014, 2000000015);
