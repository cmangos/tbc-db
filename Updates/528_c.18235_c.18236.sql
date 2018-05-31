-- Corrupted Healing Stream Totem 18235 & Corrupted Air Totem 18236
UPDATE `creature_template` SET `MovementType` = 0, `AIName` = 'TotemAI' WHERE `entry` IN (18235,18236);
DELETE FROM `creature_template_spells` WHERE `entry` IN (18235,18236);
INSERT INTO `creature_template_spells` (`entry`, `spell1`) VALUES
(18235,32136),
(18236,32138);

