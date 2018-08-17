
DELETE FROM `gameobject_loot_template` WHERE `entry`='16577' and`item`='13444';
DELETE FROM `gameobject_loot_template` WHERE `entry`='16577' and`item`='13446';
DELETE FROM `gameobject_loot_template` WHERE `entry`='16577' and`item`='1200701';
DELETE FROM `gameobject_loot_template` WHERE `entry`='16577' and`item`='1200702';
DELETE FROM `gameobject_loot_template` WHERE `entry`='16577' and`item`='1200703';
DELETE FROM `gameobject_loot_template` WHERE `entry`='16577' and`item`='1200704';

DELETE FROM `reference_loot_template` WHERE `entry` IN(12007,1200701,1200702,1200703,1200704);

REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('35033', '13444', '0', '1', '2', '3', '0', 'Major Mana Potion'),
('35033', '13446', '0', '1', '2', '3', '0', 'Major Healing Potion'),
('35034', '18475', '0', '1', '1', '1', '0', 'Oddly Magical Belt'),
('35035', '18476', '0', '1', '1', '1', '0', 'Mud Stained Boots'),
('35034', '18477', '0', '1', '1', '1', '0', 'Shaggy Leggings'),
('35035', '18478', '0', '1', '1', '1', '0', 'Hyena Hide Jerkin'),
('35035', '18479', '0', '1', '1', '1', '0', 'Carrion Scorpid Helm'),
('35034', '18480', '0', '1', '1', '1', '0', 'Scarab Plate Helm'),
('35035', '18481', '0', '1', '1', '1', '0', 'Skullcracking Mace'),
('35034', '18482', '0', '1', '1', '1', '0', 'Ogre Toothpick Shooter'),
('35038', '18495', '0', '1', '1', '1', '0', 'Redoubt Cloak'),
('35037', '18499', '0', '1', '1', '1', '0', 'Barrier Shield'),
('35036', '18500', '0', '1', '1', '1', '0', 'Tarnished Elven Ring'),
('35036', '18528', '0', '1', '1', '1', '0', 'Cyclone Spaulders'),
('35036', '18529', '0', '1', '1', '1', '0', 'Elemental Plate Girdle'),
('35037', '18530', '0', '1', '1', '1', '0', 'Ogre Forged Hauberk'),
('35037', '18531', '0', '1', '1', '1', '0', 'Unyielding Maul'),
('35037', '18532', '0', '1', '1', '1', '0', 'Mindsurge Robe'),
('35038', '18533', '0', '1', '1', '1', '0', 'Gordok Bracers of Power'),
('35038', '18534', '0', '1', '1', '1', '0', 'Rod of the Ogre Magi'),
('35038', '18537', '0', '1', '1', '1', '0', 'Counterattack Lodestone'),
('35038', '18538', '1', '1', '1', '1', '0', 'Treant\'s Bane'),
('35037', '18655', '0', '1', '1', '1', '0', 'Schematic: Major Recombobulator');

REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16577', '35033', '100', '0', '-35033', '2', '749', ''),
('16577', '35034', '100', '0', '-35034', '1', '748', ''),
('16577', '35035', '100', '0', '-35035', '1', '747', ''),
('16577', '35036', '100', '0', '-35036', '1', '746', ''),
('16577', '35037', '100', '0', '-35037', '1', '745', ''),
('16577', '35038', '100', '0', '-35038', '1', '744', '');

DELETE FROM conditions WHERE condition_entry BETWEEN 743 AND 749;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
(743, 18, 5, 0), -- 738
(744, 18, 6, 0), -- 739
(745, -2, 743, 744), -- 740
(746, -2, 246, 745), -- 741
(747, -2, 245, 746), -- 742
(748, -2, 244, 747), -- 743
(749, -2, 243, 748); -- 744
