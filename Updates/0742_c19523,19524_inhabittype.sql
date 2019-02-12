-- Correct InhabitType for O'mrogg's Left Head 19523 & O'mrogg's Right Head 19524
-- should be static spawned, not script spawned
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` IN (19523,19524);

