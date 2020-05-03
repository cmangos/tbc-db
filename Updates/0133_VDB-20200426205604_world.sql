-- Add your query below.

-- classic ONLY
-- add light leather bracers and embossed leather pants to Gretta Finespindle
-- https://www.wowhead.com/classic/npc=1466/gretta-finespindle
-- DELETE FROM `npc_trainer` WHERE `entry` = 1466 AND `spell` IN (9066,3786);
-- INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
-- (1466, 9066, 450, 165, 70, 0), -- Light Leather Bracers
-- (1466, 3786, 500, 165, 75, 0); -- Embossed Leather Pants

-- remove incorrect recipes from vosur brakthel
-- https://www.wowhead.com/classic/npc=1246/vosur-brakthel
-- DELETE FROM `npc_trainer` WHERE `entry` = 1246 AND `spell` NOT IN (2275, 3184, 2339, 2340, 11536, 2341);

-- ====================================

-- remove unused event game object in ironforge
DELETE FROM `gameobject` WHERE `guid` IN (4771, 5051); -- duplicate.50674 (event1) & 50672 (Event 1)

-- add correct position for objects inside deeprun tram.
UPDATE `gameobject` SET `position_z` = -4.29736 WHERE `id` = 178304;

-- remove quest the reason for the season (7062) from courier hammerfall (10877)
DELETE FROM `creature_questrelation` WHERE `quest` = 7062 AND `id` = 10877;

-- End of migration.

