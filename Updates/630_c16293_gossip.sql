-- ----------------------------
-- Apprentice Shatharia (Entry: 16293)
UPDATE creature_template SET GossipMenuId=7192 WHERE entry=16293;

DELETE FROM `gossip_menu` WHERE `entry`=7192;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7192, 8472, 0, 0),
(7192, 50217, 0, 10024); -- q.9207 rewarded

-- Missing text. Text ID unknown. Use a really high ID until we find the correct one.
DELETE FROM npc_text WHERE ID=50217;
INSERT INTO npc_text (ID, text0_1, prob0) VALUES
(50217, 'Thanks for getting that ore and taking it to Magister Quallestis, $c. I suppose that I should head back, but I\'m afraid of the punishment I\'m going to receive because I couldn\'t get the ore myself.$B$BDon\'t tell the magister, ok?', 1);

