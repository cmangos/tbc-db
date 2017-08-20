
DELETE FROM `reference_loot_template` WHERE `entry`='35025';

DELETE FROM `creature_loot_template` WHERE `entry`='10363' and`item`='35025';

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('10363', '12592', '1', '2', '1', '1', '0', 'Blackblade of Shahram'),
('10363', '12602', '0', '2', '1', '1', '0', 'Draconian Deflector'),
('10363', '13098', '0', '2', '1', '1', '0', 'Painweaver Band'),
('10363', '13141', '0', '2', '1', '1', '0', 'Tooth of Gnarr'),
('10363', '13142', '0', '2', '1', '1', '0', 'Brigam Girdle'),
('10363', '22253', '0', '3', '1', '1', '0', 'Tome of the Lost'),
('10363', '22267', '0', '3', '1', '1', '0', 'Spellweaver''s Turban'),
('10363', '22268', '0', '3', '1', '1', '0', 'Draconic Infused Emblem'),
('10363', '22269', '0', '3', '1', '1', '0', 'Shadow Prowler''s Cloak');

