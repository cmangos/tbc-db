
-- Source: Trinitycore

-- Add one missing text used by Budd Nedreck (Entry: 23559)
-- Conditions need to be researched for this menu
UPDATE npc_text SET text0_0='Listen, $c, it''s clear that you and your friends know your way around Azeroth. Surely you''ve come across certain folks who hunger for fame and fortune. $b$bSend me anyone who might be willing to enter Zul''Aman and I''ll make it worth your while.' WHERE id=11354;

-- ----------------------------
-- Mack (Entry: 23718)
UPDATE creature_template SET GossipMenuId=8789, NpcFlags=NpcFlags|1 WHERE entry=23718;

DELETE FROM `gossip_menu` WHERE `entry` IN(8789,8790,8791,8792);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(8789, 11256, 0, 0),
(8790, 11257, 0, 0),
(8791, 11258, 0, 0),
(8792, 11259, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=8789;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(8789, 0, 0, 'Who is this Budd fellow?', 1, 1, 8790, 0, 0, 0, 0, NULL, 0),
(8789, 1, 0, 'Interesting crew you''ve got here....', 1, 1, 8791, 0, 0, 0, 0, NULL, 0),
(8789, 2, 0, 'Whew! What''s that smell?', 1, 1, 8792, 0, 0, 0, 0, NULL, 0);

