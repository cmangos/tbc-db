-- remove old template for BT trash epics
DELETE FROM reference_loot_template WHERE entry=14099;

-- add proper reference templates
-- Dragonmaw Wind Reaver
DELETE FROM creature_loot_template WHERE entry=23330;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('23330', '21877', '30.63', '0', '2', '3', '0', 'Netherweave Cloth'),
('23330', '31952', '0.6', '0', '1', '1', '0', 'Khorium Lockbox'),
('23330', '32428', '3', '0', '1', '1', '0', 'Heart of Darkness'),
('23330', '32897', '14', '0', '1', '1', '0', 'Mark of the Illidari'),
('23330', '12005', '15', '1', '-12005', '1', '0', 'Epic Gem - TBC'),
('23330', '36198', '1', '1', '-36198', '1', '0', 'Black Temple (Trash Loot) - Epic Items'),
('23330', '36199', '1', '1', '-36199', '1', '0', 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
('23330', '49001', '0.1', '0', '-49001', '1', '0', 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
('23330', '50500', '0.1', '0', '-50500', '1', '0', 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('23330', '50501', '0.2', '0', '-50501', '1', '0', 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
('23330', '60345', '0.0005', '0', '-60345', '1', '0', 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
('23330', '61001', '5', '0', '-61001', '1', '0', 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('23330', '61126', '6', '0', '-61126', '1', '0', 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('23330', '61226', '0.02', '0', '-61226', '1', '0', 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');
-- Shadowmoon Deathshaper
DELETE FROM creature_loot_template WHERE entry=22882;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('22882', '21877', '36.86', '0', '2', '3', '0', 'Netherweave Cloth'),
('22882', '32428', '3', '0', '1', '1', '0', 'Heart of Darkness'),
('22882', '32897', '8.97', '0', '1', '1', '0', 'Mark of the Illidari'),
('22882', '12005', '15', '1', '-12005', '1', '0', 'Epic Gem - TBC'),
('22882', '36198', '1', '1', '-36198', '1', '0', 'Black Temple (Trash Loot) - Epic Items'),
('22882', '36199', '1', '1', '-36199', '1', '0', 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
('22882', '49001', '0.1', '0', '-49001', '1', '0', 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
('22882', '50500', '0.1', '0', '-50500', '1', '0', 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
('22882', '50501', '0.2', '0', '-50501', '1', '0', 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
('22882', '60345', '0.0005', '0', '-60345', '1', '0', 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
('22882', '61001', '5', '0', '-61001', '1', '0', 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('22882', '61126', '6', '0', '-61126', '1', '0', 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
('22882', '61226', '0.02', '0', '-61226', '1', '0', 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY');


