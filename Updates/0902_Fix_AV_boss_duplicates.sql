-- SELECT * FROM `creature` WHERE `id` IN (11948,11946,11949,11947);
-- Reworked AV Export Outstanding
DELETE FROM `creature` WHERE `guid`='51867'; -- duplicate 97134
DELETE FROM `creature` WHERE `guid`='51865'; -- duplicate 97135
DELETE FROM `creature` WHERE `guid`='51868'; -- duplicate 97136
DELETE FROM `creature` WHERE `guid`='51866'; -- duplicate 97137

-- TBC post patch 2.3 Sniff Positions
-- http://wowwiki.wikia.com/wiki/Patch_2.3.0
UPDATE `creature` SET `position_x` = -1370.883, `position_y` = -220.2078, `position_z` = 98.50992, `orientation` = 5.131268 WHERE `id` = 11946; -- Drek'Thar
UPDATE `creature` SET `position_x` = -545.2297, `position_y` = -165.3499, `position_z` = 57.01448, `orientation` = 6.003932 WHERE `id` = 11947; -- Captain Galvangar
UPDATE `creature` SET `position_x` = 722.4296, `position_y` = -10.99816, `position_z` = 50.70463, `orientation` = 3.420845 WHERE `id` = 11948; -- Vanndar Stormpike
UPDATE `creature` SET `position_x` = -57.78906, `position_y` = -286.5968, `position_z` = 15.64791, `orientation` = 6.021386 WHERE `id` = 11949; -- Captain Balinda Stonehearth

