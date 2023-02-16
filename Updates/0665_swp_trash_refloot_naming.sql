-- Fix Naming for SWP Trash Refloots - copy pasta mistake?
UPDATE `reference_loot_template_names` SET `name` = 'Sunwell Plateau (Trash Loot) - Epic Items' WHERE `entry` = 36200; -- Sunwell Plateau (Trash Loot) - Profession (-Design,-Pattern,-Plans,-Schematic)
UPDATE `reference_loot_template_names` SET `name` = 'Sunwell Plateau (Trash Loot) - Profession (Schematic, Design, Pattern, Plans)' WHERE `entry` = 36201; -- Sunwell Plateau (Trash Loot) - Profession (-Design,-Pattern,-Plans,Study)

UPDATE `creature_template` SET `LootId` = `entry` WHERE `entry` IN (18327,19306); -- wotlkmangos
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(18327, 17056, 9.72, 0, 1, 1, 0, 'Light Feather'),
(18327, 19274, 0.03, 0, 1, 1, 0, 'Seven of Elementals'),
(18327, 21877, 24.15, 0, 2, 3, 0, 'Netherweave Cloth'),
(18327, 22146, 0.04, 0, 1, 1, 0, 'Book: Gift of the Wild III'),
(18327, 27854, 4.57, 0, 1, 1, 0, 'Smoked Talbuk Venison'),
(18327, 27860, 2.19, 0, 1, 1, 0, 'Purified Draenic Water'),
(18327, 31501, 0.03, 0, 1, 1, 0, 'Tome of Conjure Food VIII'),
(18327, 31952, 0.16, 0, 1, 1, 0, 'Khorium Lockbox'),
(18327, 61001, 5, 1, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(18327, 61122, 0.5, 1, -61122, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 108-114) - (NPC Levels: 69) - TBC NPC ONLY'),

(19306, 28058, 79.51, 0, 1, 1, 0, 'Shredded Wyrm Wing'),
(19306, 28059, 20.46, 0, 1, 1, 0, 'Iridescent Eye');

