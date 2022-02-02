-- Remove unneeded Refloot for Sapphiron - Naxxramas
-- 34043	23040	1
-- 34043	23041	1
-- 34043	23043	1
-- 34043	23045	1
-- 34043	23046	1
-- 34043	23047	1
-- 34043	23048	1
-- 34043	23049	1
-- 34043	23050	1
-- 34043	23242	1
DELETE FROM `reference_loot_template` WHERE (`entry` = '34043');
DELETE FROM `creature_loot_template` WHERE (`entry` = '15989') and (`item` IN ('34043','23040','23041','23043','23045','23242','23046','23047','23048','23049','23050','23072'));

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('15989', '23040', '0', '3', '1', '1', '0', 'Glyph of Deflection'),
('15989', '23041', '0', '3', '1', '1', '0', 'Slayer\'s Crest'),
('15989', '23043', '0', '3', '1', '1', '0', 'The Face of Death'),
('15989', '23045', '0', '3', '1', '1', '0', 'Shroud of Dominion'),
('15989', '23242', '0', '3', '1', '1', '0', 'Claw of the Frost Wyrm'),

('15989', '23046', '0', '4', '1', '1', '0', 'The Restrained Essence of Sapphiron'),
('15989', '23047', '0', '4', '1', '1', '0', 'Eye of the Dead'),
('15989', '23048', '0', '4', '1', '1', '0', 'Sapphiron\'s Right Eye'),
('15989', '23049', '0', '4', '1', '1', '0', 'Sapphiron\'s Left Eye'),
('15989', '23050', '0', '4', '1', '1', '0', 'Cloak of the Necropolis'),

-- Added in TBC - https://wowwiki-archive.fandom.com/wiki/Fists_of_the_Unrelenting
-- https://tbc.wowhead.com/item=23072/fists-of-the-unrelenting - currently sits at ~5% vs ~20% of other items
('15989', '23072', '15', '0', '1', '1', '0', 'Fists of the Unrelenting'); -- 15 out of 115 kills ~13% chance, unconfirmed if this belongs to any group

