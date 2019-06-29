-- Add missing Fuzz 25058
-- https://www.wowhead.com/npc=25058/fuzz#comments:id=261563
-- https://www.wowhead.com/npc=25058/fuzz#screenshots:id=238376
-- wotlk porting info - https://www.wowhead.com/npc=25058/fuzz#comments:id=370063:reply=159770
DELETE FROM `creature` WHERE `guid` IN (191106);
INSERT INTO `creature` (`guid`,  `id`,  `map`,  `position_x`,  `position_y`,  `position_z`,  `orientation`,  `spawntimesecsmin`,  `spawntimesecsmax`,  `spawndist`,  `MovementType`) VALUES
(191106, 25058, 0, -8864.593, 670.1956, 106.072, 1.32645, 300, 300, 0, 0); -- Fuzz

REPLACE INTO `creature_template_addon` (`entry`, `bytes1`, `b2_0_sheath`, `b2_1_flags`) VALUES (25058, 3, 1, 16);

