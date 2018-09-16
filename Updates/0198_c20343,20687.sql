-- Charming Totem 20343,20687
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 20343;
UPDATE `creature_template` SET `FactionAlliance` = 16, `FactionHorde` = 16 WHERE `entry` = 20687;
REPLACE INTO `creature_template_spells` (`entry`, `spell1`) VALUES (20687,35120);

