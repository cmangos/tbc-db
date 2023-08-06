-- Improve Stats for Tidal Surger 21695,21917 & Steam Surger 21696,21916
-- https://youtu.be/YX50Mygu4CY?t=117 - thx @ Trugge!
UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = (10 / 7), `MechanicImmuneMask` = 512, `MovementType` = 0  WHERE `entry` IN (21695,21917,21696,21916);

