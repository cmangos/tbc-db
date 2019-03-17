-- Little Timmy now has one White Kitten on a ~three hour restock
-- Data taken from classic-db
DELETE FROM `npc_vendor` WHERE `item` = 8489;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `condition_id`, `comments`) VALUES (8666, 8489, 1, 9000, 0, NULL);

