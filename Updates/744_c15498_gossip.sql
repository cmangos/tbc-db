-- ----------------------------
-- Windcaller Yessendra (Entry: 15498)
-- All data is from classic-db

UPDATE creature_template SET GossipMenuId=6928, NpcFlags=NpcFlags|1 WHERE entry=15498;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15498);

DELETE FROM `gossip_menu` WHERE `entry`=6928;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6928, 8217, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id=6928;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(6928, 0, 0, 'I have lost my Band of Unending Life. Are you able to replace it for me?', 1, 1, -1, 0, 692801, 0, 0, NULL, 1452),
(6928, 1, 0, 'I have lost my Band of Vaulted Secrets. Are you able to replace it for me?', 1, 1, -1, 0, 692802, 0, 0, NULL, 1455),
(6928, 2, 0, 'I have lost my Band of Veiled Shadows. Are you able to replace it for me?', 1, 1, -1, 0, 692803, 0, 0, NULL, 1458),
(6928, 3, 0, 'I have lost my Ring of Eternal Justice. Are you able to replace it for me?', 1, 1, -1, 0, 692804, 0, 0, NULL, 1461),
(6928, 4, 0, 'I have lost my Ring of Infinite Wisdom. Are you able to replace it for me?', 1, 1, -1, 0, 692805, 0, 0, NULL, 1464),
(6928, 5, 0, 'I have lost my Ring of the Gathering Storm. Are you able to replace it for me?', 1, 1, -1, 0, 692806, 0, 0, NULL, 1467),
(6928, 6, 0, 'I have lost my Ring of Unspoken Names. Are you able to replace it for me?', 1, 1, -1, 0, 692807, 0, 0, NULL, 1470),
(6928, 7, 0, 'I have lost my Signet of the Unseen Path. Are you able to replace it for me?', 1, 1, -1, 0, 692808, 0, 0, NULL, 1473),
(6928, 8, 0, 'I have lost my Signet of Unyielding Strength. Are you able to replace it for me?', 1, 1, -1, 0, 692809, 0, 0, NULL, 1476);

DELETE FROM dbscripts_on_gossip WHERE id BETWEEN 692801 AND 692809;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(692801, 0, 17, 21408, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give Band of Unending Life'),
(692802, 0, 17, 21414, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give Band of Vaulted Secrets'),
(692803, 0, 17, 21405, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give Band of Veiled Shadows'),
(692804, 0, 17, 21396, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give Ring of Eternal Justice'),
(692805, 0, 17, 21411, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give Ring of Infinite Wisdom'),
(692806, 0, 17, 21399, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give Ring of the Gathering Storm'),
(692807, 0, 17, 21417, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give Ring of Unspoken Names'),
(692808, 0, 17, 21402, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give Signet of the Unseen Path'),
(692809, 0, 17, 21393, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give Signet of Unyielding Strength');

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 1450 AND 1476;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
(1450, 8, 8700, 0, 'Quest ID 8700 Rewarded'),
(1451, 24, 21408, 1, 'Player Has Less Than 1 of Item ID 21408 in Inventory/Bank'),
(1452, -1, 1450, 1451, '(Player Has Less Than 1 of Item ID 21408 in Inventory/Bank AND Quest ID 8700 Rewarded)'),
(1453, 8, 8699, 0, 'Quest ID 8699 Rewarded'),
(1454, 24, 21414, 1, 'Player Has Less Than 1 of Item ID 21414 in Inventory/Bank'),
(1455, -1, 1453, 1454, '(Player Has Less Than 1 of Item ID 21414 in Inventory/Bank AND Quest ID 8699 Rewarded)'),
(1456, 8, 8701, 0, 'Quest ID 8701 Rewarded'),
(1457, 24, 21405, 1, 'Player Has Less Than 1 of Item ID 21405 in Inventory/Bank'),
(1458, -1, 1456, 1457, '(Player Has Less Than 1 of Item ID 21405 in Inventory/Bank AND Quest ID 8701 Rewarded)'),
(1459, 8, 8703, 0, 'Quest ID 8703 Rewarded'),
(1460, 24, 21396, 1, 'Player Has Less Than 1 of Item ID 21396 in Inventory/Bank'),
(1461, -1, 1459, 1460, '(Player Has Less Than 1 of Item ID 21396 in Inventory/Bank AND Quest ID 8703 Rewarded)'),
(1462, 8, 8697, 0, 'Quest ID 8697 Rewarded'),
(1463, 24, 21411, 1, 'Player Has Less Than 1 of Item ID 21411 in Inventory/Bank'),
(1464, -1, 1462, 1463, '(Player Has Less Than 1 of Item ID 21411 in Inventory/Bank AND Quest ID 8697 Rewarded)'),
(1465, 8, 8698, 0, 'Quest ID 8698 Rewarded'),
(1466, 24, 21399, 1, 'Player Has Less Than 1 of Item ID 21399 in Inventory/Bank'),
(1467, -1, 1465, 1466, '(Quest ID 8698 Rewarded AND Player Has Less Than 1 of Item ID 21399 in Inventory/Bank)'),
(1468, 8, 8702, 0, 'Quest ID 8702 Rewarded'),
(1469, 24, 21417, 1, 'Player Has Less Than 1 of Item ID 21417 in Inventory/Bank'),
(1470, -1, 1468, 1469, '(Quest ID 8702 Rewarded AND Player Has Less Than 1 of Item ID 21417 in Inventory/Bank)'),
(1471, 8, 8704, 0, 'Quest ID 8704 Rewarded'),
(1472, 24, 21402, 1, 'Player Has Less Than 1 of Item ID 21402 in Inventory/Bank'),
(1473, -1, 1471, 1472, '(Quest ID 8704 Rewarded AND Player Has Less Than 1 of Item ID 21402 in Inventory/Bank)'),
(1474, 8, 8556, 0, 'Quest ID 8556 Rewarded'),
(1475, 24, 21393, 1, 'Player Has Less Than 1 of Item ID 21393 in Inventory/Bank'),
(1476, -1, 1474, 1475, '(Quest ID 8556 Rewarded AND Player Has Less Than 1 of Item ID 21393 in Inventory/Bank)');

