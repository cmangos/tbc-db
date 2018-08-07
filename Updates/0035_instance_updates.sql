-- Zul'Farrak

DELETE FROM conditions WHERE condition_entry IN (456,457,458,459,460,461,462,463,484,485);
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
(456, 33, 2, 1, 'Waypoint >= 2'),
(457, 33, 8, 0, 'Waypoint == 8'),
(458, 33, 8, 2, 'Waypoint <= 8'),
(459, 33, 10, 2, 'Waypoint <= 10'),
(460, -1, 456, 459, 'Waypoint >= 2 AND Waypoint <= 10)'),
(461, -1, 456, 458, 'Waypoint >= 2 AND Waypoint <= 8)'),
(462, 33, 1, 0, 'Waypoint == 1'),
(463, 33, 10, 0, 'Waypoint == 10'),
(484, 9, 2768, 0, 'Quest ID 2768 Taken'),
(485, -1, 484, 457, 'Quest ID 2768 Taken AND Waypoint == 8');

DELETE FROM gossip_menu WHERE entry IN (940,941);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
-- weegli
(940, 1511, 0, 462),
(940, 1513, 0, 460),
(940, 1514, 0, 463),
-- bly
(941, 1515, 0, 462),
(941, 1516, 0, 461),
(941, 1517, 0, 457);

DELETE FROM gossip_menu_option WHERE menu_id IN (940, 941);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_script_id, condition_id) VALUES
(940, 0, 0, 'Will you blow up that door now?', 1, 1, 94001, 463),
(941, 0, 0, 'Hey Bly! Bilgewizzle wants his divino-matic rod back!', 1, 1, 94101, 485),
(941, 1, 0, 'That''s it! I''m tired of helping you out. It''s time we settled things on the battlefield!', 1, 1, 94101, 457);

-- Dire Maul

DELETE FROM `conditions` WHERE `condition_entry` IN (3147,3148,3309,3332,3338);
INSERT INTO `conditions` (`condition_entry`,`type`,`value1`,`value2`,`comments`) VALUES
(3147, 18, 7, 0, 'Terminate if encounter is not in FAIL or NOT_STARTED status (SD2 condition)'),
(3148, 18, 8, 0, 'Terminate if encounter is not in SPECIAL status (SD2 condition)'),
-- (3301, 33, 1, 0, 'Waypoint == 1'), -- 462
(3309, 33, 9, 0, 'Waypoint == 9'),
-- (3319, 33, 19, 0, 'Waypoint == 19'), -- 1096
(3332, 33, 32, 0, 'Waypoint == 32'),
(3338, 33, 38, 0, 'Waypoint == 38');

DELETE FROM gossip_menu WHERE entry=5709;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
('5709', '6877', '0', '462'),
('5709', '6878', '0', '3309'),
('5709', '6879', '0', '1096'),
('5709', '6880', '0', '3332'),
('5709', '6881', '0', '3338');

DELETE FROM gossip_menu_option WHERE menu_id=5709;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES 
('5709', '0', '0', 'Game? Are you crazy?', '1', '1', '-1', '0', '570901', '0', '0', NULL, '462'),
('5709', '1', '0', 'Why you little...', '1', '1', '-1', '0', '570902', '0', '0', NULL, '3309'),
('5709', '2', '0', 'Mark my words, I will catch you, imp. And when I do!', '1', '1', '-1', '0', '570903', '0', '0', NULL, '1096'),
('5709', '3', '0', 'DIE!', '1', '1', '-1', '0', '570904', '0', '0', NULL, '3332'),
('5709', '4', '0', 'Prepare to meet your maker.', '1', '1', '-1', '0', '570905', '0', '0', NULL, '3338');

-- MGT

-- For seperate update
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (24761,24781,26579); -- Brightscale Wyrm, Nether Energy, Anveena Replica
UPDATE `creature_template` SET `MovementType`=2 WHERE `entry` IN (24762,24781); -- Sunblade Keeper, Nether Energy

-- Broken Sentinel 24808,25546
UPDATE `creature_template` SET `UnitFlags` = 570721088, `DynamicFlags`=64, `InhabitType` = 3  WHERE `entry` IN (24808,25546);


