-- Correct Respawn Behavior for Zandras 21827 & Adds
UPDATE `creature_linking` SET `flag` = `flag`|(128+1024) WHERE `master_guid` = 76415;

