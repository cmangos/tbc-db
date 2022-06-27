
-- Missing QGG-"Texts"

DELETE FROM `questgiver_greeting` WHERE `Entry` in (4201,6467,8582,11857,11864,16200,24139,25697,25710,25849,142122,150075,179827);

-- Ziz Fizziks
INSERT INTO `questgiver_greeting` VALUES (4201, 0, ' ', 0, 0);

-- Mennet Carkad
INSERT INTO `questgiver_greeting` VALUES (6467, 0, ' ', 0, 0);

-- Kadrak
INSERT INTO `questgiver_greeting` VALUES (8582, 0, ' ', 0, 0);

-- Makaba Flathoof
INSERT INTO `questgiver_greeting` VALUES (11857, 0, ' ', 0, 0);

-- Tammra Windfield
INSERT INTO `questgiver_greeting` VALUES (11864, 0, ' ', 0, 0);

-- Deathstalker Rathiel
INSERT INTO `questgiver_greeting` VALUES (16200, 0, ' ', 0, 0);

-- Gil Grisert - wotlk
-- INSERT INTO `questgiver_greeting` VALUES (24139, 0, ' ', 0, 0);

-- Luma Skymother
INSERT INTO `questgiver_greeting` VALUES (25697, 0, ' ', 0, 0);

-- Numa Cloudsister
INSERT INTO `questgiver_greeting` VALUES (25710, 0, ' ', 0, 0);

-- Fezzix Geartwist - wotlk
-- INSERT INTO `questgiver_greeting` VALUES (25849, 0, ' ', 0, 0);

-- Wanted Poster - https://tbc.wowhead.com/object=142122/wanted-poster
INSERT INTO `questgiver_greeting` VALUES (142122, 1, ' ', 0, 0);

-- Wanted Poster
INSERT INTO `questgiver_greeting` VALUES (150075, 1, ' ', 0, 0);

-- Wanted/Missing/Lost & Found
INSERT INTO `questgiver_greeting` VALUES (179827, 1, ' ', 0, 0);

-- ----------------------------------------------------------------------- --

-- Object 'Wanted Poster' (142122) has same quests as 'Wanted Poster' (150075)
DELETE FROM `gameobject_questrelation` WHERE `id` = 142122;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (142122, 2781); -- WANTED: Caliph Scorpidsting
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (142122, 2875); -- WANTED: Andre Firebeard

-- ----------------------------------------------------------------------- --

-- more real Missing QGG-Text-Ids needs to be added
-- NPCs: 1377 , 1938 , 1952 , 2055 , 2229 , 2277 , 2500 , 2934 , 3050 , 3428 , 4454 , 4630 , 5598 , 5636 , 5675
--       5878 , 6089 , 6868 , 7802 , 10321 , 10428 , 11036 , 11259 , 11596 , 14567 , 16281 , 16494 , 16787
-- Object: 1740 - maybe same text as 186420

-- NPC 7777 had a real QGG-text in Classic and TBC (WotLK too?) about the Gordunni ogres in Feralas

