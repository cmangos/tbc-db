-- Fixed gossip of NPC 14741 (Huntsman Markhor)
-- Thanks @M2us for reporting.
DELETE FROM npc_gossip WHERE npc_guid=92914;
DELETE FROM gossip_menu WHERE entry=6088;
INSERT INTO gossip_menu VALUES (6088, 7242, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id=6088;
INSERT INTO gossip_menu_option (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(6088, 1, 0, 'I\'d like to stable my pet here', 14, 4194304, 0, 0, 0, 0, 0, NULL, 0);

UPDATE creature_template SET GossipMenuId=6088 WHERE Entry=14741;

