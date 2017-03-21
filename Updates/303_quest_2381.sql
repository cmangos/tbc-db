-- Plundering the Plunderers (2381) 

-- Polly starts at level 50 until weakened
UPDATE creature_template SET MinLevel = 50, MaxLevel = 50, MinLevelHealth = 2215, MaxLevelHealth = 2215 WHERE entry = 7167;

-- Wrenix's Gizmotronic Apparatus gives player 2 items
UPDATE creature_template SET GossipMenuId = 524 WHERE entry = 7166;

DELETE FROM gossip_menu WHERE entry = 524;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(524, 1041, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id = 524;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`,`condition_id`) VALUES
(524, 0, 0, '[PH] Get E.C.A.C.', 1, 1, -1, 0, 524, 0, 0, '', 1174),
(524, 1, 0, '[PH] Get Thieves'' Tools', 1, 1, -1, 0, 50041, 0, 0, '', 1174);

DELETE FROM conditions WHERE condition_entry = 1174;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1174, 9, 2381, 0);

DELETE FROM dbscripts_on_gossip WHERE id = 524;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(524, 0, 15, 9977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Conjure E.C.A.C');

-- E.C.A.C. should not work on weakened Polly or Lathoric the Black
DELETE FROM spell_script_target WHERE entry = 9976 AND targetEntry IN (7168, 8391);

-- Weakened version of Polly should also drop Southsea Treasure
DELETE FROM creature_loot_template WHERE entry = 7168;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(7168, 7968, -100, 0, 1, 1, 0, 'Southsea Treasure');


