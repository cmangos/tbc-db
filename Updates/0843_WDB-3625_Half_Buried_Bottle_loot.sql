-- Half-Buried Bottle 2560
-- loot redone
DELETE FROM gameobject_loot_template WHERE entry = 2032;
INSERT INTO gameobject_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(2032, 4098, 31, 0, 1, 1, 0, 'Carefully Folded Note'),
(2032, 4100, 18, 0, 1, 1, 0, 'Crumpled Note'),
(2032, 4101, 18, 0, 1, 1, 0, 'Ripped Note'),
(2032, 4102, 18, 0, 1, 1, 0, 'Torn Note'),
(2032, 50601, 5, 0, -50601, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 25 (Scrolls II)) - (NPC Levels ?-?)'),
(2032, 10312, 2, 0, 1, 1, 0, 'Pattern: Red Mageweave Gloves'),
(2032, 8029, 2, 0, 1, 1, 0, 'Plans: Wicked Mithril Blade'),
(2032, 7992, 2, 0, 1, 1, 0, 'Plans: Blue Glittering Axe'),
(2032, 10604, 2, 0, 1, 1, 0, 'Schematic: Mithril Heavy-bore Rifle'),
(2032, 21944, 2, 0, 1, 1, 0, 'Design: Truesilver Boar'); -- item level 47

-- 4098	25	0	1	1	0	Carefully Folded Note
-- 4102	17.2	0	1	1	0	Torn Note
-- 4101	16.3	0	1	1	0	Ripped Note
-- 4100	15.5	0	1	1	0	Crumpled Note
-- 2290	4.4	0	1	1	0	Scroll of Intellect II
-- 1711	4.2	0	1	1	0	Scroll of Stamina II
-- 2289	2.7	0	1	1	0	Scroll of Strength II
-- 1477	2.5	0	1	1	0	Scroll of Agility II
-- assumption can contain patterns itemlevel 25 to 47;
-- old patterns item level 25-45
-- (2032, 11204, 0.1, 0, 1, 1, 0, 'Formula: Enchant Bracer - Greater Spirit');
-- (2032, 7975, 0.1, 0, 1, 1, 0, 'Plans: Heavy Mithril Pants');
-- (2032, 10300, 0.1, 0, 1, 1, 0, 'Pattern: Red Mageweave Vest');
-- (2032, 10301, 0.1, 0, 1, 1, 0, 'Pattern: White Bandit Mask');
-- (2032, 10606, 0.1, 0, 1, 1, 0, 'Schematic: Parachute Cloak');
-- (2032, 8387, 0.0725795, 0, 1, 1, 0, 'Pattern: Big Voodoo Mask');
-- (2032, 10302, 0.0653215, 0, 1, 1, 0, 'Pattern: Red Mageweave Pants');
-- (2032, 10604, 0.0653215, 0, 1, 1, 0, 'Schematic: Mithril Heavy-bore Rifle');
-- (2032, 8386, 0.0580636, 0, 1, 1, 0, 'Pattern: Big Voodoo Robe');
-- (2032, 8029, 0.0508056, 0, 1, 1, 0, 'Plans: Wicked Mithril Blade');
-- (2032, 8385, 0.0508056, 0, 1, 1, 0, 'Pattern: Turtle Scale Gloves');
-- (2032, 7992, 0.0508056, 0, 1, 1, 0, 'Plans: Blue Glittering Axe');
-- (2032, 9293, 0.0435477, 0, 1, 1, 0, 'Recipe: Magic Resistance Potion');
-- (2032, 10603, 0.0362897, 0, 1, 1, 0, 'Schematic: Catseye Ultra Goggles');
-- (2032, 10312, 0.0290318, 0, 1, 1, 0, 'Pattern: Red Mageweave Gloves');
-- (2032, 11202, 0.0290318, 0, 1, 1, 0, 'Formula: Enchant Shield - Stamina');
-- (2032, 5774, 0.02, 0, 1, 1, 0, 'Pattern: Green Silk Pack');
-- (2032, 7450, 0.02, 0, 1, 1, 0, 'Pattern: Green Whelp Armor');
-- (2032, 3870, 0.02, 0, 1, 1, 0, 'Plans: Green Iron Shoulders');
-- (2032, 11167, 0.02, 0, 1, 1, 0, 'Formula: Enchant Boots - Lesser Spirit');
-- (2032, 11165, 0.02, 0, 1, 1, 0, 'Formula: Enchant Weapon - Lesser Elemental Slayer');
-- (2032, 11164, 0.02, 0, 1, 1, 0, 'Formula: Enchant Weapon - Lesser Beastslayer');
-- (2032, 11098, 0.02, 0, 1, 1, 0, 'Formula: Enchant Cloak - Lesser Shadow Resistance');
-- (2032, 10424, 0.02, 0, 1, 1, 0, 'Plans: Silvered Bronze Leggings');
-- (2032, 10601, 0.02, 0, 1, 1, 0, 'Schematic: Bright-Eye Goggles');
-- (2032, 7449, 0.02, 0, 1, 1, 0, 'Pattern: Dusky Leather Leggings');
-- (2032, 7364, 0.02, 0, 1, 1, 0, 'Pattern: Heavy Earthen Gloves');
-- (2032, 7363, 0.02, 0, 1, 1, 0, 'Pattern: Pilferer\'s Gloves');
-- (2032, 4350, 0.02, 0, 1, 1, 0, 'Pattern: Spider Silk Slippers');
-- (2032, 4299, 0.02, 0, 1, 1, 0, 'Pattern: Guardian Armor');
-- (2032, 4298, 0.02, 0, 1, 1, 0, 'Pattern: Guardian Belt');
-- (2032, 3874, 0.02, 0, 1, 1, 0, 'Plans: Polished Steel Boots');
-- (2032, 3872, 0.02, 0, 1, 1, 0, 'Plans: Golden Scale Leggings');
-- (2032, 3869, 0.02, 0, 1, 1, 0, 'Plans: Shadow Crescent Axe');
-- (2032, 3868, 0.02, 0, 1, 1, 0, 'Plans: Frost Tiger Blade');
-- (2032, 3867, 0.02, 0, 1, 1, 0, 'Plans: Golden Iron Destroyer');
-- (2032, 3866, 0.02, 0, 1, 1, 0, 'Plans: Jade Serpentblade');
-- (2032, 3830, 0.02, 0, 1, 1, 0, 'Recipe: Elixir of Fortitude');
-- (2032, 4351, 0.02, 0, 1, 1, 0, 'Pattern: Shadow Hood');
-- (2032, 4352, 0.02, 0, 1, 1, 0, 'Pattern: Boots of the Enchanter');
-- (2032, 7360, 0.02, 0, 1, 1, 0, 'Pattern: Dark Leather Gloves');
-- (2032, 7090, 0.02, 0, 1, 1, 0, 'Pattern: Green Silk Armor');
-- (2032, 7085, 0.02, 0, 1, 1, 0, 'Pattern: Azure Shoulders');
-- (2032, 6454, 0.02, 0, 1, 1, 0, 'Manual: Strong Anti-Venom');
-- (2032, 6045, 0.02, 0, 1, 1, 0, 'Plans: Iron Counterweight');
-- (2032, 5543, 0.02, 0, 1, 1, 0, 'Plans: Iridescent Hammer');
-- (2032, 4417, 0.02, 0, 1, 1, 0, 'Schematic: Large Seaforium Charge');
-- (2032, 4416, 0.02, 0, 1, 1, 0, 'Schematic: Goblin Land Mine');
-- (2032, 4414, 0.02, 0, 1, 1, 0, 'Schematic: Portable Bronze Mortar');
-- (2032, 4412, 0.02, 0, 1, 1, 0, 'Schematic: Moonsight Rifle');
-- (2032, 3608, 0.02, 0, 1, 1, 0, 'Plans: Mighty Iron Hammer');

