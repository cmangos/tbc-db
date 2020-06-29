DELETE FROM gossip_menu_option WHERE menu_id = 2703 AND id=2;
INSERT INTO gossip_menu_option(menu_id, id, option_text, option_broadcast_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,condition_id) VALUES
(2703,2,'I lost the Cache of Mau''ari. What can I do?',5758,1,1,-1,270301,344);

DELETE FROM dbscripts_on_gossip WHERE id IN(270301) AND command=15;
INSERT INTO dbscripts_on_gossip(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
('270301', '0', '0', '15', '16351', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'cast Create Cache of Mau''ari');

