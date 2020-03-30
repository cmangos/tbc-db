-- Add spell_script_target for s.34303 Nether Charge
DELETE FROM `spell_script_target` WHERE `entry` = 34303;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(34303, 1, 16975, 0),(34303, 1, 16974, 0),(34303, 1, 20145, 0);

