-- Fen Ray 17731,20173
UPDATE `creature_template` SET `UnitFlags` = 64, `MechanicImmuneMask` = 0, `MovementType` = 0 WHERE `entry` = 17731;
REPLACE INTO `creature_template_spells` (`entry`, `spell1`) VALUES (17731, 34984); -- nonexistant
UPDATE `creature_template` SET `UnitFlags` = 64 WHERE `entry` = 20173;

-- Underbog Frenzy 20465,21943
UPDATE `creature_template` SET `Detection` = 30, `MechanicImmuneMask` = 0, `MovementType` = 0 WHERE `entry` = 20465;
UPDATE `creature_template` SET `Detection` = 30 WHERE `entry` = 21943;

