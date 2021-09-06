DELETE FROM creature_template_addon WHERE entry=18555; -- previously added, but we need better control over it (no longer casted using addon)

UPDATE `gameobject_template` SET `Faction` = 114 WHERE `entry` = 177370; -- diff with wotlk-db (makes the door not clickable so script needed, classic-db also has faction = 0 hack)

-- Remove update queries that dont belong in instance files
UPDATE creature_template SET MovementType=2 WHERE entry=13533;
UPDATE creature_template SET MovementType=2 WHERE entry=18555;

-- Remove dbscripts using SCRIPT_COMMAND_FIELD_SET, SCRIPT_COMMAND_FLAG_SET, SCRIPT_COMMAND_FLAG_REMOVE to change UnitFlags, use SCRIPT_COMMAND_MODIFY_UNIT_FLAGS 48 instead.

-- Correct Default UnitFlags for Bloodwarder Protector & Sunseeker Gene-Splicer
UPDATE `creature_template` SET `UnitFlags` = 32832 WHERE `entry` IN (17993,19507,21548,21573);

-- Notes
-- some npc in 560 start with unitflag 33600, some 32832 find out which and set dominant unitflag in creature_template, script others - SELECT unitflags FROM creature_template where entry IN (18092,18093,18094);