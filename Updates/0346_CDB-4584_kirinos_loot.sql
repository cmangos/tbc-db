INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('35039', '13956', '0', '1', '1', '1', '0', 'Clutch of Andros'),
('35039', '13957', '0', '1', '1', '1', '0', 'Gargoyle Slashers'),
('35039', '13960', '0', '1', '1', '1', '0', 'Heart of the Fiend'),
('35039', '13967', '0', '1', '1', '1', '0', 'Windreaver Greaves'),
('35039', '13969', '0', '1', '1', '1', '0', 'Loomguard Armbraces'),

('35040', '13955', '20', '1', '1', '1', '0', 'Stoneform Shoulders'),
('35040', '13983', '20', '1', '1', '1', '0', 'Gravestone War Axe'),
('35040', '14024', '20', '1', '1', '1', '0', 'Frightalon'),
('35040', '16734', '20', '1', '1', '1', '0', 'Boots of Valor');

INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('35039', 'Scholomance (Boss Loot) - Kirtonos the Herald - Blue Items (Group 1)'),
('35040', 'Scholomance (Boss Loot) - Kirtonos the Herald - Blue Items (Group 2)');

DELETE FROM `creature_loot_template` WHERE (`entry` = '10506') and (`item` = '13955');
DELETE FROM `creature_loot_template` WHERE (`entry` = '10506') and (`item` = '13956');
DELETE FROM `creature_loot_template` WHERE (`entry` = '10506') and (`item` = '13957');
DELETE FROM `creature_loot_template` WHERE (`entry` = '10506') and (`item` = '13960');
DELETE FROM `creature_loot_template` WHERE (`entry` = '10506') and (`item` = '13967');
DELETE FROM `creature_loot_template` WHERE (`entry` = '10506') and (`item` = '13969');
DELETE FROM `creature_loot_template` WHERE (`entry` = '10506') and (`item` = '13983');
DELETE FROM `creature_loot_template` WHERE (`entry` = '10506') and (`item` = '14024');
DELETE FROM `creature_loot_template` WHERE (`entry` = '10506') and (`item` = '16734');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('10506', '35039', '100', '1', '-35039', '1', '0', 'Scholomance (Boss Loot) - Kirtonos the Herald - Blue Items (Group 1)'),
('10506', '35040', '100', '1', '-35040', '1', '0', 'Scholomance (Boss Loot) - Kirtonos the Herald - Blue Items (Group 2)');

UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = '0' WHERE (`entry` = '35040') and (`item` = '13955');
UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = '0' WHERE (`entry` = '35040') and (`item` = '13983');
UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = '0' WHERE (`entry` = '35040') and (`item` = '14024');
UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = '0' WHERE (`entry` = '35040') and (`item` = '16734');

INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('35040', '60294', '0', '1', '-60294', '1', '0', 'NPC LOOT (Green World Drop) - (Item Levels: 59-63) - (NPC Levels: 60) - VANILLA NPC ONLY');

UPDATE `creature_loot_template` SET `groupid` = '0' WHERE (`entry` = '10506') and (`item` = '35039');
UPDATE `creature_loot_template` SET `groupid` = '0' WHERE (`entry` = '10506') and (`item` = '35040');

