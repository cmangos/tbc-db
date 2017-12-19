-- Arcatraz Warder 20859 shoots on Arcane Warder Target 21186 - same as 36327 found in sniff
DELETE FROM `spell_script_target` WHERE `entry` = 36293;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(36293, 1, 21186, 0);

