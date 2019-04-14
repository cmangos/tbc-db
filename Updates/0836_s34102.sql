-- Add Curse of the Violet Tower 34102 Debuff
DELETE FROM `spell_area` WHERE `spell` = 34102;
INSERT INTO `spell_area` (`spell`, `area`, `autocast`) VALUES (34102, 3733, 1);  -- Apply aura "Curse of the Violet Tower" on area entry.``` - Conditioned?

-- Ar'kelos 19494

-- triggers 70107,70108,70109,70110,70111 casting visual beam
-- UPDATE `creature` SET `MovementType` = 2 WHERE `guid` IN (70107,70108,70109,70110,70111);
-- DELETE FROM `creature_movement` WHERE `id` IN (70107,70108,70109,70110,70111);
-- INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `script_id`) VALUES
-- (70107, 2247.15, 2259.68, 102.222, 100, 1949401),
-- (70108, 2253.59, 2268.69, 99.667, 100, 1949402),
-- (70109, 2257.41, 2251.81, 102.846, 100, 1949403),
-- (70110, 2259.09, 2264.65, 100.558, 100, 1949404),
-- (70111, 2264.77, 2260.28, 100.797, 100, 1949405);

