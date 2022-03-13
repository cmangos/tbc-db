UPDATE `gossip_menu` SET `condition_id`=9022 WHERE `entry`=1301 AND `text_id`=1934; -- gossip wont show in tbc client due to going straight to vendor menu

DELETE FROM `conditions` WHERE `condition_entry`=9022; -- 1605 cant be used due to conflict with wotlk-db
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(9022, 7, 197, 230, 0, 0, 0, 'Has Tailoring at 230 or above');

-- 4423    If tailoring is your thing, Vizzklick will most definitely have your supplies. Take a look around, $N, and let me know if you wish to purchase something!
-- 4425    Grab your things, $N! I've just gotten word from Nilith Lokrav in the Searing Gorge that the Undermarket has set up operations in the heart of the Cauldron. Find Nilith Lokrav in the Searing Gorge and get the low down!
-- option to open his vendor menu with "4424    I wish to browse your wares."

REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (1301, 1933); -- classic-db already has this
DELETE FROM `npc_gossip` WHERE `npc_guid` = 23287; -- text 1933 for non tailors

REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(1301, 0, 1, 'I wish to browse your wares.', 4424, 3, 128, 0, 0, 0, 0, 0, '', 0, 0); -- classic-db data with npc_option_npcflag = 128

