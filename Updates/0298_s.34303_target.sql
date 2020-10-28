-- Add more possible targets for Void Spawner L 19681 - Cast Nether Charge 34303
DELETE FROM `spell_script_target` WHERE `entry` = 34303 AND `targetEntry` IN (17014,19527,16939);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(34303, 1, 17014),(34303, 1, 19527),
(34303, 1, 16939); -- unsure but possible

