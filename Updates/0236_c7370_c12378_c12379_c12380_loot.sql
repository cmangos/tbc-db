-- Fix a mish-mash of both vanilla and tbc items dropping from NPCs outside Karazhan (They were boosted to lvl 68-70 and got updated loot templates with the release of TBC)

-- Add a reference template similar to 42009 but for Major Pots
DELETE FROM reference_loot_template WHERE entry=42010;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(42010, 13446, 75, 0, 1, 1, 0, 'Major Healing Potion'),
(42010, 13444, 25, 0, 1, 1, 0, 'Major Mana Potion');
DELETE FROM reference_loot_template_names WHERE entry=42010;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES 
(42010, 'Major Healing/Mana Potion (75%)(25%)');

-- Restless Shade c.7370
DELETE FROM creature_loot_template WHERE entry=7370;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(7370, 21877, 37, 0, 1, 3, 0, 'Netherweave Cloth'),
(7370, 24480, -80, 0, 1, 1, 0, 'Ghostly Essence'),
(7370, 27859, 4, 0, 1, 1, 0, 'Zangar Caps'),
(7370, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(7370, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(7370, 50604, 0.8, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(7370, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(7370, 50501, 0.04, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(7370, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(7370, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(7370, 61121, 2, 0, -61121, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 105-114) - (NPC Levels: 68-69) - TBC NPC ONLY'),
(7370, 61221, 0.05, 0, -61221, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 106-115) - (NPC Levels: 68-69) - TBC NPC ONLY');

-- Wailing Spectre c.12377
DELETE FROM creature_loot_template WHERE entry=12377;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(12377, 21877, 37, 0, 1, 3, 0, 'Netherweave Cloth'),
(12377, 24480, -80, 0, 1, 1, 0, 'Ghostly Essence'),
(12377, 27859, 4, 0, 1, 1, 0, 'Zangar Caps'),
(12377, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(12377, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(12377, 50604, 0.8, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(12377, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(12377, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(12377, 50501, 0.04, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(12377, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(12377, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(12377, 61123, 2, 0, -61123, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 108-117) - (NPC Levels: 69-70) - TBC NPC ONLY'),
(12377, 61223, 0.05, 0, -61223, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 109-115) - (NPC Levels: 69-70) - TBC NPC ONLY');

-- Damned Soul c.12378
DELETE FROM creature_loot_template WHERE entry=12378;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(12378, 21877, 37, 0, 1, 3, 0, 'Netherweave Cloth'),
(12378, 24480, -80, 0, 1, 1, 0, 'Ghostly Essence'),
(12378, 27859, 4, 0, 1, 1, 0, 'Zangar Caps'),
(12378, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(12378, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(12378, 50604, 0.8, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(12378, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(12378, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(12378, 50501, 0.04, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(12378, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(12378, 61121, 2, 0, -61121, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 105-114) - (NPC Levels: 68-69) - TBC NPC ONLY'),
(12378, 61221, 0.05, 0, -61221, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 106-115) - (NPC Levels: 68-69) - TBC NPC ONLY');

-- Unliving Caretaker c.12379
DELETE FROM creature_loot_template WHERE entry=12379;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(12379, 21877, 37, 0, 1, 3, 0, 'Netherweave Cloth'),
(12379, 24480, -80, 0, 1, 1, 0, 'Ghostly Essence'),
(12379, 27859, 4, 0, 1, 1, 0, 'Zangar Caps'),
(12379, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(12379, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(12379, 50604, 0.8, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(12379, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(12379, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(12379, 50501, 0.04, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(12379, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(12379, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(12379, 61123, 2, 0, -61123, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 108-117) - (NPC Levels: 69-70) - TBC NPC ONLY'),
(12379, 61223, 0.05, 0, -61223, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 109-115) - (NPC Levels: 69-70) - TBC NPC ONLY');

-- Unliving Resident c.12380
-- Doesn't drop Ghostly Essence and for some reason drops Scrolls IV instead of V
DELETE FROM creature_loot_template WHERE entry=12380;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(12380, 8948, 5, 0, 1, 1, 0, 'Dried King Bolete'),
(12380, 8766, 2.5, 0, 1, 1, 0, 'Morning Glory Dew'),
(12380, 21877, 37, 0, 1, 3, 0, 'Netherweave Cloth'),
(12380, 50603, 0.8, 0, -50603, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 65 (Scrolls IV)) - (NPC Levels 55-62)'),
(12380, 42010, 2, 0, -42010, 1, 0, 'Major Healing/Mana Potion (75%)(25%)'),
(12380, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(12380, 50500, 0.1, 0, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(12380, 50501, 0.04, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(12380, 60345, 0.0005, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(12380, 61001, 5, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(12380, 61123, 2, 0, -61123, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 108-117) - (NPC Levels: 69-70) - TBC NPC ONLY'),
(12380, 61223, 0.05, 0, -61223, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 109-115) - (NPC Levels: 69-70) - TBC NPC ONLY');

