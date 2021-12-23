-- Add missing Mark of the Illidari 32897 for SSC Trash Loot
-- https://web.archive.org/web/20080502070232/http://wow.allakhazam.com/db/item.html?witem=32897
-- https://tbc.wowhead.com/item=32897/mark-of-the-illidari#dropped-by;0-3-10-9+1
-- L4G DB had flat 15 for these values
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES
-- wowhead item 32897, old allakhazam, wowhead npc
(21218, 32897, 11), -- Vashj'ir Honor Guard (12, 8.89, 11)
(21220, 32897, 12), -- Coilfang Priestess (12, 12.14, 11)
(21221, 32897, 10), -- Coilfang Beast-Tamer (11, 6.79, 9)
(21224, 32897, 10), -- Tidewalker Depth-Seer (10, 9.38, 8)
(21225, 32897, 11), -- Tidewalker Warrior (12, 9.51, 9)
(21226, 32897, 10), -- Tidewalker Shaman (12, 8.07, 7)
(21227, 32897, 10), -- Tidewalker Harpooner (11, 11.05, 4)
(21228, 32897, 10), -- Tidewalker Hydromancer (12, 10.19, 7)
(21229, 32897, 13), -- Greyheart Tidecaller (15, 10.10, 12)
(21230, 32897, 14), -- Greyheart Nether-Mage (15, 11.83, 12)
(21231, 32897, 13), -- Greyheart Shield-Bearer (17, 10.67, 10)
(21232, 32897, 12), -- Greyheart Skulker (14, 10.17, 10)
(21251, 32897, 15), -- Underbog Colossus (19, 6.18, 15)
(21263, 32897, 11), -- Greyheart Technician (3, 14.04, 14)
(21298, 32897, 12), -- Coilfang Serpentguard (12, 9.64, 11)
(21299, 32897, 10), -- Coilfang Fathom-Witch (11, 6.87, 10)
(21301, 32897, 11), -- Coilfang Shatterer (12, 10.18, 10)
(21339, 32897, 11), -- Coilfang Hate-Screamer (11, 9.19, 11)
(21863, 32897, 8); -- Serpentshrine Lurker (8, 5.52, 7)

