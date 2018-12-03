-- Crystalforge controller is not usable by players. Add correct faction
UPDATE `gameobject_template` SET `faction`=14 WHERE `entry` IN(185923,185924);

-- Missing condition for 50 apexis shards
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
(10124, 2, 32569, 50, 'Player Has 50 or more of Item ID 32569 in Inventory');

-- One missing text
INSERT INTO `npc_text` (`ID`, `text0_0`, `prob0`) VALUES 
('10915', '<As you place your apexis shards within the hollow of the Bash\'ir crystalforge and pull the lever, the device literally disintegrates them.  A few moments later your flasks appear at your feet.>', '1');

-- Spell target for item spells
DELETE FROM spell_script_target WHERE entry IN(40964,40965,40968,40970);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(40964,0,185919,5),
(40965,0,185919,5),

(40964,0,185920,5),
(40965,0,185920,5),

(40968,0,185921,5),
(40970,0,185921,5);

-- Fel Crystalforge (Entry: 185919,185920)
DELETE FROM gossip_menu WHERE entry IN(8672,8673,8674);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(8672, 10910, 0, 0),
(8672, 10922, 0, 502),
(8673, 10911, 0, 0),
(8674, 10912, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id IN(8672,8673,8674);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(8672, 0, 0, 'Purchase 1 Unstable Flask of the Beast for the cost of 10 Apexis Shards', 1, 1, 8673, 0, 867201, 0, 0, '', 503),
(8672, 1, 0, 'Purchase 5 Unstable Flasks of the Beast for the cost of 50 Apexis Shards', 1, 1, 8674, 0, 867202, 0, 0, '', 10124),

(8673, 0, 0, 'Use the fel crystalforge to make another purchase.', 1, 1, 8672, 0, 0, 0, 0, '', 0),
(8674, 0, 0, 'Use the fel crystalforge to make another purchase.', 1, 1, 8672, 0, 0, 0, 0, '', 0);

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN(8672,867201,867202);
INSERT INTO `dbscripts_on_gossip` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(867201,0,15,40964,0,0,0,0,0,0,0,0,4,'Fel Crystalforge: Create 1 Flask',0,0,0,0),
(867202,0,15,40965,0,0,0,0,0,0,0,0,4,'Fel Crystalforge: Create 5 Flasks',0,0,0,0);

-- ----------------------------
-- Bash'ir Crystalforge (Entry: 185921)
DELETE FROM gossip_menu WHERE entry IN(8675,8676,8677);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8675, 10915, 0, 0),
(8676, 10914, 0, 0),
(8677, 10913, 0, 0),
(8677, 10921, 0, 502);

DELETE FROM gossip_menu_option WHERE menu_id IN(8675,8676,8677);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(8675, 0, 0, 'Use the Bash\'ir crystalforge to make another purchase.', 1, 1, 8677, 0, 0, 0, 0, '', 0),
(8676, 0, 0, 'Use the Bash\'ir crystalforge to make another purchase.', 1, 1, 8677, 0, 0, 0, 0, '', 0),
(8677, 0, 0, 'Purchase 1 Unstable Flask of the Sorcerer for the cost of 10 Apexis Shards', 1, 1, 8676, 0, 867701, 0, 0, '', 503),
(8677, 1, 0, 'Purchase 5 Unstable Flasks of the Sorcerer for the cost of 50 Apexis Shards', 1, 1, 8675, 0, 867702, 0, 0, '', 10124);

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN(867701,867702);
INSERT INTO `dbscripts_on_gossip` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(867701,0,15,40968,0,0,0,0,0,0,0,0,4,'Bash''ir Crystalforge: Create 1 Flask',0,0,0,0),
(867702,0,15,40970,0,0,0,0,0,0,0,0,4,'Bash''ir Crystalforge: Create 5 Flasks',0,0,0,0);

