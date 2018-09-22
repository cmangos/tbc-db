-- ----------------------------
-- Fel Crystal Prism (Entry: 185927)

DELETE FROM `gossip_menu` WHERE `entry`=8671;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(8671, 10909, 0, 467),
(8671, 10951, 0, 0);

DELETE FROM npc_text WHERE ID IN(10909,10951);
INSERT INTO npc_text (ID, text0_0, prob0) VALUES
(10909, 'Burning eyes within the prism fill your mind with a sense of dread...', 1), -- BroadcastID: 21379
(10951, 'Burning eyes within the prism fill your mind with a sense of dread... especially knowing that you don''t have the thirty-five apexis shards needed to summon forth its demon.', 1); -- BroadcastID: 21486

DELETE FROM `gossip_menu_option` WHERE `menu_id`=8671;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(8671, 0, 0, 'Place 35 Apexis Shards into the prism.', 1, 0, -1, 0, 867101, 0, 0, NULL, 467);

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN(867101);
INSERT INTO `dbscripts_on_gossip` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(867101,0,15,40958,0,0,0,0,0,0,0,0,2,'Fel Crystal Prism - Make player cast Blade''s Edge Terrace Demon Boss Summon Trigger',0,0,0,0);

DELETE FROM spell_script_target WHERE entry IN(40957,40959,40960,40961);
INSERT INTO spell_script_target (entry,type,targetentry,inverseEffectMask) VALUES
(40957,0,185927,0), -- Blade's Edge Terrace Demon Boss Summon 1
(40959,0,185927,0), -- Blade's Edge Terrace Demon Boss Summon 2
(40960,0,185927,0), -- Blade's Edge Terrace Demon Boss Summon 3
(40961,0,185927,0); -- Blade's Edge Terrace Demon Boss Summon 4

-- 23355 Zarcsin
-- 22281 Galvanoth
-- 23354 Mo'arg Incinerator
-- 23353 Braxxus

UPDATE creature_template SET SpeedRun=9.72222/7, UnitFlags=256 WHERE entry=23355;
UPDATE creature_model_info SET bounding_radius=6, combat_reach=7.2 WHERE modelid=21430;

UPDATE creature_template SET SpeedWalk=2.5/2.5, UnitFlags=256 WHERE entry=22281;
UPDATE creature_model_info SET bounding_radius=10.29085 WHERE modelid=18526;

UPDATE creature_template SET UnitFlags=256 WHERE entry=23354;
UPDATE creature_model_info SET bounding_radius=9.128922 WHERE modelid=19899;

UPDATE creature_template SET UnitFlags=33024 WHERE entry=23353;
UPDATE creature_model_info SET bounding_radius=1.75, combat_reach=20 WHERE modelid=21150;

