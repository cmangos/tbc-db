-- ==============================
-- Fix Ritual of Summoning Spells
-- ==============================
UPDATE `gameobject_template` SET `data2`='32929' WHERE `entry`='36727';
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES ('32929', '0', '36727', '0');

