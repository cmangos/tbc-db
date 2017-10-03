-- Misc. Blackwing Coven fixes
-- ------------------------

UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(6/7), ModelId1=20377, ModelId2=20378, ModelId3=20379, ModelId4=20380 WHERE entry=21637; -- Wyrmcult Scout
UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(8/7) WHERE entry=21040; -- Outraged Raven's Wood Sapling
UPDATE creature_template SET SpeedWalk=(2.77778/2.5), SpeedRun=(8/7), MovementType=0 WHERE entry=21387; -- Wyrmcult Blackwhelps should be idle by default
UPDATE creature_template_addon SET auras='37637' WHERE entry=21497; -- Blackscale
UPDATE creature_template_addon SET auras='37637' WHERE entry=21389; -- Maxnar the Ashmaw
UPDATE creature_template_addon SET auras='37637' WHERE entry=21811; -- Wyrmcult Broodling

DELETE FROM creature WHERE guid=77582 AND id=22099; -- Delete a duplicate Wyrmcult Provisioner spawn
-- ----------------------------
-- Wyrmcult Provisioner (Entry: 22099)
UPDATE creature_template SET GossipMenuId=8490 WHERE entry=22099;

DELETE FROM `gossip_menu` WHERE `entry`=8490;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(8490, 10602, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=8490;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(8490, 0, 1, 'Very well, let me see what you''ve got.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Wyrmcult Scout (Entry: 21637)
UPDATE creature_template SET GossipMenuId=8446 WHERE entry=21637;

DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=21637);



