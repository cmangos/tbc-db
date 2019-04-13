-- Add Narain's Scrying Goggles 20951 to Molten Core Trash Loottables
-- https://web.archive.org/web/20060522233538/http://wow.allakhazam.com/db/item.html?witem=20951 - https://web.archive.org/web/20070910084330/http://wow.allakhazam.com:80/db/item.html?witem=20951
-- Based on classic-db & wotlk-db and https://github.com/lh-server/core/blob/development/sql/old_migrations/20170422145703_world.sql
DELETE FROM `creature_loot_template` WHERE `item` = 20951;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- cdb/tdb
(11502, 20951, -5, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Ragnaros
(11661, 20951, -5, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Flamewaker
(11982, 20951, -5, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Magmadar
(11988, 20951, -5, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Golemagg the Incinerator		//unconfirmed
(12056, 20951, -5, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Baron Geddon
(12057, 20951, -5, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Garr
(12118, 20951, -5, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Lucifron
(12259, 20951, -5, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Gehennas
(12264, 20951, -5, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Shazzrah
-- cdb/wdb
(12098, 20951, -5, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Sulfuron Harbinger		//unconfirmed
-- wdb/trash
(11658, 20951, -1, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Molten Giant
(11659, 20951, -1, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Molten Destroyer
(11662, 20951, -1, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Flamewaker Priest
(11663, 20951, -1, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Flamewaker Healer
(11664, 20951, -1, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Flamewaker Elite
(11665, 20951, -1, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Lava Annihilator
(11666, 20951, -1, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Firewalker
(11668, 20951, -1, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Firelord
(11673, 20951, -1, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Ancient Core Hound
(12076, 20951, -1, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Lava Elemental
(12100, 20951, -1, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Lava Reaver
(12101, 20951, -1, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Lava Surger
(12119, 20951, -1, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'); -- Flamewaker Protector
-- trinitycore
-- (11667, 20951, -1, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Flameguard		//unconfirmed
-- (11669, 20951, -1, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Flame Imp		//unconfirmed
-- (11671, 20951, -1, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Core Hound		//unconfirmed
-- (11672, 20951, -1, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'), -- Core Rager		//unconfirmed
-- (12099, 20951, -1, 0, 1, 1, 0, 'Narain\'s Scrying Goggles'); -- Firesworn		//unconfirmed

