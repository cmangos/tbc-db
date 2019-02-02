-- Add missing parent spell creature_template_spells for totems using TotemAI
DELETE FROM `creature_template_spells` WHERE `entry` IN (8510,12141,13916,14667,15363);
INSERT INTO `creature_template_spells` (`entry`, `spell1`) VALUES
(8510, 12507), -- Atal'ai Totem s.12506 // use parent spell ported from classic-db
(12141, 18978), -- Ice Totem s.18975 // use parent spell
(13916, 0), -- Dire Maul Crystal Totem N/A
(14667, 0), -- Corrupted Totem, dummy? (extraflag 128 recent addition)
(15363, 0); -- Spirit Totem, dummy?

