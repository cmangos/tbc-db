-- Added missing alternate gossip texts from warrior, paladin and hunters
-- used when player is not from the required class
-- based on lght versions of commits https://github.com/unified-db/Database/commit/582b9631d4359f549721726d26a8d91663f882a2
-- https://github.com/unified-db/Database/commit/de53b9e2b97c1a07e3d6c2d6abcbd49a7362e515
-- and https://github.com/unified-db/Database/commit/605ee65c0c22e516b016fbe6b75904d0142f21d5 by @Grz3s

-- 293	14	1	0	0	0	0	Player RaceMask: 1
-- 13	14	0	1	0	0	0	Player ClassMask: 1
-- 15	14	0	4	0	0	0	Player ClassMask: 4
-- 1 	Warrior
-- 4 	Hunter

-- ------------------------
-- warrior trainers gossips
-- ------------------------
UPDATE `gossip_menu` SET `condition_id` = 13 WHERE `text_id` BETWEEN 1215 and 1219; -- 293 all used wrong condition race=1 instead of class=1
UPDATE `gossip_menu` SET `condition_id` = 13 WHERE `text_id` = 1040; -- 293
UPDATE `gossip_menu` SET `condition_id` = 13 WHERE `text_id` = 4989; -- 293 Bilban Tosslespanner	Warrior Trainer
UPDATE `gossip_menu` SET `condition_id` = 13 WHERE `text_id` = 4987; -- 293 Zel'mak	Warrior Trainer
UPDATE `gossip_menu` SET `condition_id` = 13 WHERE `text_id` = 4992; -- 293 Captain Evencane	Warrior Trainer

-- Ilsa Corbin c.5480
DELETE FROM gossip_menu WHERE entry = 4481;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4481, 1216, 0, 13), -- warrior only
(4481, 5721, 0, 0);

-- ------------------------
-- hunter trainers gossips
-- ------------------------
-- Jocaste c.4146
DELETE FROM gossip_menu WHERE entry = 4008 AND text_id = 4863;
INSERT INTO `gossip_menu` VALUES
(4008, 4863, 0, 15); -- hunter

