-- Added gossip menu to creature 9273 (Petra Grossen)
-- Added gossip menu option to creature 9273 (Petra Grossen)
-- Thanks @bdebaere for noticing
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=9273);
SET @GOSSIP := 56003;

DELETE FROM gossip_menu WHERE entry IN (@GOSSIP, @GOSSIP + 1);
INSERT INTO gossip_menu VALUES
(@GOSSIP, 3093, 0, 0),
(@GOSSIP + 1, 3793, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id=@GOSSIP;
INSERT INTO gossip_menu_option (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(@GOSSIP, 0, 0, 'What does Dadanga like to eat?', 1, 1, @GOSSIP + 1, 0, 0, 0, 0, '', 0);

UPDATE creature_template SET GossipMenuId=@GOSSIP WHERE Entry=9273;
