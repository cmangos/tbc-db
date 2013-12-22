-- Adds spell script target for spell Trace of Silithyst (29534) for both Alliance and Horde counters
-- Backport from UDB and YTDB
DELETE FROM `spell_script_target` WHERE `entry` = 29534;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(29534, 0, 181618),	-- Alliance
(29534, 0, 181619);	-- Horde

