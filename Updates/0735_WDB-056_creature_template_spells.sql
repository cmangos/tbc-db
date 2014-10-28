-- fix wrong used spell. thanks to @cala
DELETE FROM `creature_template_spells` WHERE `entry` = 6066;
INSERT INTO `creature_template_spells` (`entry`, `spell1`) VALUES (6066, 8378); -- 8377

