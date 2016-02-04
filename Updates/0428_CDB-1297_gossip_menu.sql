DELETE FROM `conditions` WHERE `condition_entry` = 9027; -- 1024 in classicmangos
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(9027, 8, 2458, 0, 0, 0, 0, 'Quest ID 2458 Rewarded'); -- You have grown much in the time which you have spent in service of the Hand, $N. The time has come to send you into the field.$B$BAre you prepared to undertake your next mission?$B

UPDATE `gossip_menu` SET `condition_id` = 9027 WHERE `entry` = 21221 AND `text_id` = 1124; -- The time has come to send you into the field.$B$BAre you prepared to undertake your next mission?$B
DELETE FROM `gossip_menu` WHERE `entry` = 21221 AND `text_id` = 1038;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (21221, 1038, 0, 16); -- The Order of the Shattered Hand existed before Thrall and shall exist after Thrall. 

-- https://tbc.wowhead.com/item=17126/elegant-letter#starts
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(21221, 4, 0, '<Take the letter>', 0, 1, 1, -1, 0, 5, 0, 0, NULL, 0, 180); -- (Quest ID 6681 NOT Taken AND NOT Rewarded -- != ->AND (Player ClassMask: 8 AND Player Level >= 24)) -> cast conjure elegant letter which starts this quest

-- other rogue trainers missing this gossip "Rogue Trainer" - classicmangos
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(85, 4, 0, '<Take the letter>', 0, 1, 1, -1, 0, 5, 0, 0, NULL, 0, 196),
(411, 4, 0, '<Take the letter>', 0, 1, 1, -1, 0, 5, 0, 0, NULL, 0, 196),
(3984, 4, 0, '<Take the letter>', 0, 1, 1, -1, 0, 5, 0, 0, NULL, 0, 196),
(4512, 4, 0, '<Take the letter>', 0, 1, 1, -1, 0, 5, 0, 0, NULL, 0, 196),
(4513, 4, 0, '<Take the letter>', 0, 1, 1, -1, 0, 5, 0, 0, NULL, 0, 196),
(4540, 4, 0, '<Take the letter>', 0, 1, 1, -1, 0, 5, 0, 0, NULL, 0, 196),
(4541, 4, 0, '<Take the letter>', 0, 1, 1, -1, 0, 5, 0, 0, NULL, 0, 196),
(4542, 4, 0, '<Take the letter>', 0, 1, 1, -1, 0, 5, 0, 0, NULL, 0, 196),
(4561, 4, 0, '<Take the letter>', 0, 1, 1, -1, 0, 5, 0, 0, NULL, 0, 196),
(4562, 4, 0, '<Take the letter>', 0, 1, 1, -1, 0, 5, 0, 0, '', 0, 196),
(4658, 4, 0, '<Take the letter>', 0, 1, 1, -1, 0, 5, 0, 0, NULL, 0, 196),
(5061, 4, 0, '<Take the letter>', 0, 1, 1, -1, 0, 5, 0, 0, NULL, 0, 196);

UPDATE `gossip_menu_option` SET `condition_id` = 180 WHERE `action_script_id` = 5; -- Quest ID 6681 NOT Taken AND NOT Rewarded instead of additional below level 25, as it can then never be done above that level

UPDATE `gossip_menu` SET `condition_id` = 0 WHERE `text_id` = 4439; -- Yes, $c?
UPDATE `gossip_menu` SET `condition_id` = 112 WHERE `text_id` = 4442; -- What can this insignificant servant do for you, $N? Training perhaps? "Player ClassMask: 16"

UPDATE `gossip_menu` SET `condition_id` = 0 WHERE `text_id` = 4437; -- Elune be with you, $c.
UPDATE `gossip_menu` SET `condition_id` = 112 WHERE `text_id` = 4438; -- My wisdom is yours, as is my knowledge. What can I do for you, $N?

