-- Fix Snowfall Alliance Contested flag not being usable, meaning as a horde you had to wait till GY is taken
-- all of these have "64 = Triggered (typically, summoned objects. Triggered by spell or other events)" too
-- SELECT * FROM gameobject_template where name LIKE '%Banner%' AND flags = flags|1;
UPDATE `gameobject_template` SET `flags`=`flags` & ~1 WHERE `entry` IN (178388,178929,179286,179439,179465,179468); -- remove flag 1 (uninteractable) prevents from using it

