-- Fix Power Coeff for Hunter Pet Lightning Breath 24844
-- https://wowwiki.fandom.com/wiki/Lightning_Breath?oldid=1488373
DELETE FROM `spell_bonus_data` WHERE `entry` = 24844;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(24844, 0.1, 0, 0, 0, 'Lightning Breath (Rank 1)');

