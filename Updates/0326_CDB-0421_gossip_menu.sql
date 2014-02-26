-- Fixed gossip and conditions for gossip of creature 4087 (Arias'ta Bladesinger) Warrior Trainer in Darnassus
-- Thanks Patman for pointing
-- This closes #230
UPDATE `gossip_menu` SET `condition_id` = 13 WHERE `entry` = 4697 AND `text_id` = 1217; -- was racemask 1 befor...

-- Fixed conditions for gossip of creature 1261 (Veron Amberstill) Dwarf mount vendor
-- in Dun Morogh to adjust it to alliance player reputation and allow dwarves to
-- by their own racial mounts
-- Thanks Scotty0100 for pointing
-- wont be visible in tbc+ as it jumps straight to vendorlist
-- 4001	0	1	I would like to buy from you.	2583	3	1	0	0	0	0	0		0	312
DELETE FROM `gossip_menu` WHERE `entry` = 4001 AND `text_id` = 4855;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(4001, 4855, 0, 312); -- ((Has Minimum Rank Exalted With Faction ID: 47 AND Player RaceMask: 1097) OR Player RaceMask: 4)

-- Fixed gossip menu of creature 4968 (Lady Jaina Proudmoore) because she always used
-- a gossip related to a quest
-- Source: YTDB
DELETE FROM `gossip_menu` WHERE `entry` = 2465 AND `text_id` = 3157;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(2465, 3157, 0, 0); -- "I welcome you to Theramore, $N.$B$BI apologize for being abrupt and not having a lot of time to exchange pleasantries, but my city must come first."

-- https://tbc.wowhead.com/quest=1267/the-missing-diplomat
UPDATE `gossip_menu` SET `condition_id` = 41 WHERE `entry` = 2465 AND `text_id` = 3158; -- "When you visit Theramore in the future, seek me out and I shall try to keep you apprised of the situation."
-- Hendel is in our custody now, $N, thanks to you.

DELETE FROM `conditions` WHERE `condition_entry` = 41 AND value1 = 1267;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`) VALUES
(41, 8, 1267); -- Quest ID 1267 Rewarded

