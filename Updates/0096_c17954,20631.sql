-- Correct UnitFlags and Spell Immunities for Naga Distiller 17954,20631
UPDATE `creature_template` SET `UnitFlags` = 33554432, `MechanicImmuneMask` = 42106710, `MovementType` = 0 WHERE `entry` IN (17954,20631);

