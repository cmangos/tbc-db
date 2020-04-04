-- Add support for Kel'Thuzad phase 1

-- Add missing targets for summoning spells in Kel'Thuzad encounters
DELETE FROM spell_script_target WHERE entry IN (28415, 28416, 28417);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(28415, 1, 15384, 0),
(28416, 1, 15384, 0),
(28417, 1, 15384, 0);

