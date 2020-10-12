-- Battered Chest (object=2843) Level 1-5 loot , ref: https://classic.wowhead.com/object=2843/battered-chest
-- With this implementation, the chests loot consists of 3 categories/groups (which means a maxium of 3 items can be looted)

DELETE FROM gameobject_loot_template WHERE entry=2265;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
-- group 0 water
('2265','159','35','0','1','2','0','Refreshing Spring Water'),
-- group 1 food
('2265','4536','19','1','1','2','0','Shiny Red Apple'),
('2265','4540','19','1','1','2','0','Tough Hunk of Bread'),
('2265','117','19','1','1','2','0','Tough Jerky'),
('2265','2070','18','1','1','2','0','Darnassian Bleu'),
-- group 2 armor
('2265','60000','100','0','-60000','1','0', 'NPC LOOT (Grey World Drop) - (Item Levels: 1-5) - (NPC Levels: 1-5)');

-- Battered Chest (object=106318) Level 5-10 loot , ref: https://classic.wowhead.com/object=106318/battered-chest
-- Tattered Chest 2845
-- With this implementation, the chests loot consists of 6 categories/groups (which means a maxium of 6 items can be looted) 

DELETE FROM gameobject_loot_template WHERE entry=2277;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
-- group 0 other (healing portion, pouches)
('2277','118','54','0','1','5','0','Minor Healing Potion'),
('2277','60400','2','0','-60400','1','0', 'NPC LOOT (White World Drop) - (Item Levels: 5 Pouches Only) - (NPC Levels: 1-5)'),
('2277','159','35','0','1','7','0','Refreshing Spring Water'),
-- group 1 food
('2277','2070','16','1','1','6','0','Darnassian Bleu'),
('2277','4604','16','1','1','6','0','Forest Mushroom Cap'),
('2277','4536','16','1','1','6','0','Shiny Red Apple'),
('2277','4540','16','1','1','6','0','Tough Hunk of Bread'),
('2277','117','16','1','1','6','0','Tough Jerky'),
-- group 2 profession
('2277','2318','18','2','1','6','0','Light Leather'),
('2277','2589','17','2','1','6','0','Linen Cloth'),
('2277','2770','9','2','1','4','0','Copper Ore'),
('2277','2835','9','2','1','6','0','Rough Stone'),
('2277','2842','9','2','1','1','0','Silver Bar'),
('2277','2449','6','2','1','4','0','Earthroot'),
('2277','2447','6','2','1','6','0','Peacebloom'),
('2277','765','6','2','1','9','0','Silverleaf'),
('2277','774','4','2','1','2','0','Malachite'),
('2277','818','1.2','2','1','1','0','Tigerseye'),
('2277','5498','0.9','2','1','1','0','Small Lustrous Pearl'),
-- refloot can not be put in a grpid with normal items
('2277','50502','3','0','-50502','1','0', 'NPC LOOT (Green World Drop) - (Item Levels: 10-15 (Profession Recipes)) - (NPC Levels: 6-20)'),
-- group 3 armor and weapon
('2277','60001','70','0','-60001','1','0', 'NPC LOOT (Grey World Drop) - (Item Levels: 6-10) - (NPC Levels: 6-10)');

-- add old data for reference
-- (2265, 118, 25, 0, 1, 1, 0, 'Minor Healing Potion');
-- (2265, 774, 0.5, 0, 1, 1, 0, 'Malachite');
-- (2265, 805, 0.5, 0, 1, 1, 0, 'Small Red Pouch');
-- (2265, 828, 0.5, 0, 1, 1, 0, 'Small Blue Pouch');
-- (2265, 2598, 0.5, 0, 1, 1, 0, 'Pattern: Red Linen Robe');
-- (2265, 3609, 0.5, 0, 1, 1, 0, 'Plans: Copper Chain Vest');
-- (2265, 4496, 0.5, 0, 1, 1, 0, 'Small Brown Pouch');
-- (2265, 5571, 0.5, 0, 1, 1, 0, 'Small Black Pouch');
-- (2265, 5572, 0.5, 0, 1, 1, 0, 'Small Green Pouch');
-- (2265, 727, 0, 1, 1, 1, 0, 'Notched Shortsword');
-- (2265, 2958, 0, 1, 1, 1, 0, 'Journeyman\'s Pants');
-- (2265, 2962, 0, 1, 1, 1, 0, 'Burnt Leather Breeches');
-- (2265, 2966, 0, 1, 1, 1, 0, 'Warrior\'s Pants');
-- (2265, 4562, 0, 1, 1, 1, 0, 'Severing Axe');
-- (2265, 8178, 0, 1, 1, 1, 0, 'Training Sword');
-- (2265, 15925, 0, 1, 1, 1, 0, 'Journeyman\'s Stave');
-- (2265, 765, 0, 2, 1, 1, 0, 'Silverleaf');
-- (2265, 783, 0, 2, 1, 1, 0, 'Light Hide');
-- (2265, 785, 0, 2, 1, 1, 0, 'Mageroyal');
-- (2265, 2318, 0, 2, 1, 1, 0, 'Light Leather');
-- (2265, 2447, 0, 2, 1, 1, 0, 'Peacebloom');
-- (2265, 2449, 0, 2, 1, 1, 0, 'Earthroot');
-- (2265, 2589, 0, 2, 1, 1, 0, 'Linen Cloth');
-- (2265, 2770, 0, 2, 1, 1, 0, 'Copper Ore');
-- (2265, 2775, 0, 2, 1, 1, 0, 'Silver Ore');
-- (2265, 2835, 0, 2, 1, 1, 0, 'Rough Stone');
-- (2265, 2842, 0, 2, 1, 1, 0, 'Silver Bar');
-- (2265, 2996, 0, 2, 1, 1, 0, 'Bolt of Linen Cloth');
-- (2265, 766, 0, 3, 1, 1, 0, 'Flanged Mace');
-- (2265, 767, 0, 3, 1, 1, 0, 'Long Bo Staff');
-- (2265, 768, 0, 3, 1, 1, 0, 'Lumberjack Axe');
-- (2265, 1364, 0, 3, 1, 1, 0, 'Ragged Leather Vest');
-- (2265, 1369, 0, 3, 1, 1, 0, 'Ragged Leather Belt');
-- (2265, 1376, 0, 3, 1, 1, 0, 'Frayed Cloak');
-- (2265, 1411, 0, 3, 1, 1, 0, 'Withered Staff');
-- (2265, 1412, 0, 3, 1, 1, 0, 'Crude Bastard Sword');
-- (2265, 1413, 0, 3, 1, 1, 0, 'Feeble Sword');
-- (2265, 1414, 0, 3, 1, 1, 0, 'Cracked Sledge');
-- (2265, 1415, 0, 3, 1, 1, 0, 'Carpenter\'s Mallet');
-- (2265, 1416, 0, 3, 1, 1, 0, 'Rusty Hatchet');
-- (2265, 1417, 0, 3, 1, 1, 0, 'Beaten Battle Axe');
-- (2265, 1418, 0, 3, 1, 1, 0, 'Worn Leather Belt');
-- (2265, 1419, 0, 3, 1, 1, 0, 'Worn Leather Boots');
-- (2265, 1420, 0, 3, 1, 1, 0, 'Worn Leather Bracers');
-- (2265, 1421, 0, 3, 1, 1, 0, 'Worn Hide Cloak');
-- (2265, 1422, 0, 3, 1, 1, 0, 'Worn Leather Gloves');
-- (2265, 1423, 0, 3, 1, 1, 0, 'Worn Leather Pants');
-- (2265, 1425, 0, 3, 1, 1, 0, 'Worn Leather Vest');
-- (2265, 1427, 0, 3, 1, 1, 0, 'Patchwork Shoes');
-- (2265, 1429, 0, 3, 1, 1, 0, 'Patchwork Cloak');
-- (2265, 1430, 0, 3, 1, 1, 0, 'Patchwork Gloves');
-- (2265, 1431, 0, 3, 1, 1, 0, 'Patchwork Pants');
-- (2265, 1433, 0, 3, 1, 1, 0, 'Patchwork Armor');
-- (2265, 1438, 0, 3, 1, 1, 0, 'Warrior\'s Shield');
-- (2265, 2138, 0, 3, 1, 1, 0, 'Sharpened Letter Opener');
-- (2265, 2212, 0, 3, 1, 1, 0, 'Cracked Buckler');
-- (2265, 2213, 0, 3, 1, 1, 0, 'Worn Large Shield');
-- (2265, 2635, 0, 3, 1, 1, 0, 'Loose Chain Belt');
-- (2265, 2642, 0, 3, 1, 1, 0, 'Loose Chain Boots');
-- (2265, 2643, 0, 3, 1, 1, 0, 'Loose Chain Bracers');
-- (2265, 2644, 0, 3, 1, 1, 0, 'Loose Chain Cloak');
-- (2265, 2645, 0, 3, 1, 1, 0, 'Loose Chain Gloves');
-- (2265, 2646, 0, 3, 1, 1, 0, 'Loose Chain Pants');
-- (2265, 2648, 0, 3, 1, 1, 0, 'Loose Chain Vest');
-- (2265, 2652, 0, 3, 1, 1, 0, 'Flimsy Chain Cloak');
-- (2265, 2656, 0, 3, 1, 1, 0, 'Flimsy Chain Vest');
-- (2265, 2773, 0, 3, 1, 1, 0, 'Cracked Shortbow');
-- (2265, 2774, 0, 3, 1, 1, 0, 'Rust-covered Blunderbuss');
-- (2265, 2959, 0, 3, 1, 1, 0, 'Journeyman\'s Boots');
-- (2265, 2960, 0, 3, 1, 1, 0, 'Journeyman\'s Gloves');
-- (2265, 2963, 0, 3, 1, 1, 0, 'Burnt Leather Boots');
-- (2265, 2964, 0, 3, 1, 1, 0, 'Burnt Leather Gloves');
-- (2265, 2967, 0, 3, 1, 1, 0, 'Warrior\'s Boots');
-- (2265, 2968, 0, 3, 1, 1, 0, 'Warrior\'s Gloves');
-- (2265, 3189, 0, 3, 1, 1, 0, 'Wood Chopper');
-- (2265, 3190, 0, 3, 1, 1, 0, 'Beatstick');
-- (2265, 3200, 0, 3, 1, 1, 0, 'Burnt Leather Bracers');
-- (2265, 3214, 0, 3, 1, 1, 0, 'Warrior\'s Bracers');
-- (2265, 3365, 0, 3, 1, 1, 0, 'Frayed Bracers');
-- (2265, 3370, 0, 3, 1, 1, 0, 'Patchwork Belt');
-- (2265, 3373, 0, 3, 1, 1, 0, 'Patchwork Bracers');
-- (2265, 3641, 0, 3, 1, 1, 0, 'Journeyman\'s Bracers');
-- (2265, 4560, 0, 3, 1, 1, 0, 'Fine Scimitar');
-- (2265, 4563, 0, 3, 1, 1, 0, 'Billy Club');
-- (2265, 4565, 0, 3, 1, 1, 0, 'Simple Dagger');
-- (2265, 4658, 0, 3, 1, 1, 0, 'Warrior\'s Cloak');
-- (2265, 4659, 0, 3, 1, 1, 0, 'Warrior\'s Girdle');
-- (2265, 4662, 0, 3, 1, 1, 0, 'Journeyman\'s Cloak');
-- (2265, 4663, 0, 3, 1, 1, 0, 'Journeyman\'s Belt');
-- (2265, 4665, 0, 3, 1, 1, 0, 'Burnt Cloak');
-- (2265, 4666, 0, 3, 1, 1, 0, 'Burnt Leather Belt');
-- (2265, 6507, 0, 3, 1, 1, 0, 'Infantry Bracers');
-- (2265, 6508, 0, 3, 1, 1, 0, 'Infantry Cloak');
-- (2265, 6509, 0, 3, 1, 1, 0, 'Infantry Belt');
-- (2265, 6513, 0, 3, 1, 1, 0, 'Disciple\'s Sash');
-- (2265, 6514, 0, 3, 1, 1, 0, 'Disciple\'s Cloak');
-- (2265, 6517, 0, 3, 1, 1, 0, 'Pioneer Belt');
-- (2265, 6519, 0, 3, 1, 1, 0, 'Pioneer Bracers');
-- (2265, 6520, 0, 3, 1, 1, 0, 'Pioneer Cloak');
-- (2265, 7109, 0, 3, 1, 1, 0, 'Pioneer Buckler');
-- (2265, 7350, 0, 3, 1, 1, 0, 'Disciple\'s Bracers');
-- (2265, 8177, 0, 3, 1, 1, 0, 'Practice Sword');
-- (2265, 8179, 0, 3, 1, 1, 0, 'Cadet\'s Bow');
-- (2265, 8181, 0, 3, 1, 1, 0, 'Hunting Rifle');
-- (2265, 8182, 0, 3, 1, 1, 0, 'Pellet Rifle');
-- (2265, 15895, 0, 3, 1, 1, 0, 'Burnt Buckler');
-- (2265, 117, 0, 4, 1, 1, 0, 'Tough Jerky');
-- (2265, 159, 0, 4, 1, 1, 0, 'Refreshing Spring Water');
-- (2265, 2070, 0, 4, 1, 1, 0, 'Darnassian Bleu');
-- (2265, 4536, 0, 4, 1, 1, 0, 'Shiny Red Apple');
-- (2265, 4540, 0, 4, 1, 1, 0, 'Tough Hunk of Bread');
-- (2265, 4604, 0, 4, 1, 1, 0, 'Forest Mushroom Cap');

-- add old data for reference
-- (2277, 118, 25, 0, 1, 1, 0, 'Minor Healing Potion');
-- (2277, 774, 0.5, 0, 1, 1, 0, 'Malachite');
-- (2277, 805, 0.5, 0, 1, 1, 0, 'Small Red Pouch');
-- (2277, 828, 0.5, 0, 1, 1, 0, 'Small Blue Pouch');
-- (2277, 2598, 0.5, 0, 1, 1, 0, 'Pattern: Red Linen Robe');
-- (2277, 3609, 0.5, 0, 1, 1, 0, 'Plans: Copper Chain Vest');
-- (2277, 4496, 0.5, 0, 1, 1, 0, 'Small Brown Pouch');
-- (2277, 5571, 0.5, 0, 1, 1, 0, 'Small Black Pouch');
-- (2277, 5572, 0.5, 0, 1, 1, 0, 'Small Green Pouch');
-- (2277, 727, 0, 1, 1, 1, 0, 'Notched Shortsword');
-- (2277, 2958, 0, 1, 1, 1, 0, 'Journeyman\'s Pants');
-- (2277, 2962, 0, 1, 1, 1, 0, 'Burnt Leather Breeches');
-- (2277, 2966, 0, 1, 1, 1, 0, 'Warrior\'s Pants');
-- (2277, 4562, 0, 1, 1, 1, 0, 'Severing Axe');
-- (2277, 8178, 0, 1, 1, 1, 0, 'Training Sword');
-- (2277, 15925, 0, 1, 1, 1, 0, 'Journeyman\'s Stave');
-- (2277, 765, 0, 2, 1, 1, 0, 'Silverleaf');
-- (2277, 783, 0, 2, 1, 1, 0, 'Light Hide');
-- (2277, 785, 0, 2, 1, 1, 0, 'Mageroyal');
-- (2277, 2318, 0, 2, 1, 1, 0, 'Light Leather');
-- (2277, 2447, 0, 2, 1, 1, 0, 'Peacebloom');
-- (2277, 2449, 0, 2, 1, 1, 0, 'Earthroot');
-- (2277, 2589, 0, 2, 1, 1, 0, 'Linen Cloth');
-- (2277, 2770, 0, 2, 1, 1, 0, 'Copper Ore');
-- (2277, 2775, 0, 2, 1, 1, 0, 'Silver Ore');
-- (2277, 2835, 0, 2, 1, 1, 0, 'Rough Stone');
-- (2277, 2842, 0, 2, 1, 1, 0, 'Silver Bar');
-- (2277, 2996, 0, 2, 1, 1, 0, 'Bolt of Linen Cloth');
-- (2277, 766, 0, 3, 1, 1, 0, 'Flanged Mace');
-- (2277, 767, 0, 3, 1, 1, 0, 'Long Bo Staff');
-- (2277, 768, 0, 3, 1, 1, 0, 'Lumberjack Axe');
-- (2277, 1364, 0, 3, 1, 1, 0, 'Ragged Leather Vest');
-- (2277, 1369, 0, 3, 1, 1, 0, 'Ragged Leather Belt');
-- (2277, 1376, 0, 3, 1, 1, 0, 'Frayed Cloak');
-- (2277, 1411, 0, 3, 1, 1, 0, 'Withered Staff');
-- (2277, 1412, 0, 3, 1, 1, 0, 'Crude Bastard Sword');
-- (2277, 1413, 0, 3, 1, 1, 0, 'Feeble Sword');
-- (2277, 1414, 0, 3, 1, 1, 0, 'Cracked Sledge');
-- (2277, 1415, 0, 3, 1, 1, 0, 'Carpenter\'s Mallet');
-- (2277, 1416, 0, 3, 1, 1, 0, 'Rusty Hatchet');
-- (2277, 1417, 0, 3, 1, 1, 0, 'Beaten Battle Axe');
-- (2277, 1418, 0, 3, 1, 1, 0, 'Worn Leather Belt');
-- (2277, 1419, 0, 3, 1, 1, 0, 'Worn Leather Boots');
-- (2277, 1420, 0, 3, 1, 1, 0, 'Worn Leather Bracers');
-- (2277, 1421, 0, 3, 1, 1, 0, 'Worn Hide Cloak');
-- (2277, 1422, 0, 3, 1, 1, 0, 'Worn Leather Gloves');
-- (2277, 1423, 0, 3, 1, 1, 0, 'Worn Leather Pants');
-- (2277, 1425, 0, 3, 1, 1, 0, 'Worn Leather Vest');
-- (2277, 1427, 0, 3, 1, 1, 0, 'Patchwork Shoes');
-- (2277, 1429, 0, 3, 1, 1, 0, 'Patchwork Cloak');
-- (2277, 1430, 0, 3, 1, 1, 0, 'Patchwork Gloves');
-- (2277, 1431, 0, 3, 1, 1, 0, 'Patchwork Pants');
-- (2277, 1433, 0, 3, 1, 1, 0, 'Patchwork Armor');
-- (2277, 1438, 0, 3, 1, 1, 0, 'Warrior\'s Shield');
-- (2277, 2138, 0, 3, 1, 1, 0, 'Sharpened Letter Opener');
-- (2277, 2212, 0, 3, 1, 1, 0, 'Cracked Buckler');
-- (2277, 2213, 0, 3, 1, 1, 0, 'Worn Large Shield');
-- (2277, 2635, 0, 3, 1, 1, 0, 'Loose Chain Belt');
-- (2277, 2642, 0, 3, 1, 1, 0, 'Loose Chain Boots');
-- (2277, 2643, 0, 3, 1, 1, 0, 'Loose Chain Bracers');
-- (2277, 2644, 0, 3, 1, 1, 0, 'Loose Chain Cloak');
-- (2277, 2645, 0, 3, 1, 1, 0, 'Loose Chain Gloves');
-- (2277, 2646, 0, 3, 1, 1, 0, 'Loose Chain Pants');
-- (2277, 2648, 0, 3, 1, 1, 0, 'Loose Chain Vest');
-- (2277, 2652, 0, 3, 1, 1, 0, 'Flimsy Chain Cloak');
-- (2277, 2656, 0, 3, 1, 1, 0, 'Flimsy Chain Vest');
-- (2277, 2773, 0, 3, 1, 1, 0, 'Cracked Shortbow');
-- (2277, 2774, 0, 3, 1, 1, 0, 'Rust-covered Blunderbuss');
-- (2277, 2959, 0, 3, 1, 1, 0, 'Journeyman\'s Boots');
-- (2277, 2960, 0, 3, 1, 1, 0, 'Journeyman\'s Gloves');
-- (2277, 2963, 0, 3, 1, 1, 0, 'Burnt Leather Boots');
-- (2277, 2964, 0, 3, 1, 1, 0, 'Burnt Leather Gloves');
-- (2277, 2967, 0, 3, 1, 1, 0, 'Warrior\'s Boots');
-- (2277, 2968, 0, 3, 1, 1, 0, 'Warrior\'s Gloves');
-- (2277, 3189, 0, 3, 1, 1, 0, 'Wood Chopper');
-- (2277, 3190, 0, 3, 1, 1, 0, 'Beatstick');
-- (2277, 3200, 0, 3, 1, 1, 0, 'Burnt Leather Bracers');
-- (2277, 3214, 0, 3, 1, 1, 0, 'Warrior\'s Bracers');
-- (2277, 3365, 0, 3, 1, 1, 0, 'Frayed Bracers');
-- (2277, 3370, 0, 3, 1, 1, 0, 'Patchwork Belt');
-- (2277, 3373, 0, 3, 1, 1, 0, 'Patchwork Bracers');
-- (2277, 3641, 0, 3, 1, 1, 0, 'Journeyman\'s Bracers');
-- (2277, 4560, 0, 3, 1, 1, 0, 'Fine Scimitar');
-- (2277, 4563, 0, 3, 1, 1, 0, 'Billy Club');
-- (2277, 4565, 0, 3, 1, 1, 0, 'Simple Dagger');
-- (2277, 4658, 0, 3, 1, 1, 0, 'Warrior\'s Cloak');
-- (2277, 4659, 0, 3, 1, 1, 0, 'Warrior\'s Girdle');
-- (2277, 4662, 0, 3, 1, 1, 0, 'Journeyman\'s Cloak');
-- (2277, 4663, 0, 3, 1, 1, 0, 'Journeyman\'s Belt');
-- (2277, 4665, 0, 3, 1, 1, 0, 'Burnt Cloak');
-- (2277, 4666, 0, 3, 1, 1, 0, 'Burnt Leather Belt');
-- (2277, 6507, 0, 3, 1, 1, 0, 'Infantry Bracers');
-- (2277, 6508, 0, 3, 1, 1, 0, 'Infantry Cloak');
-- (2277, 6509, 0, 3, 1, 1, 0, 'Infantry Belt');
-- (2277, 6513, 0, 3, 1, 1, 0, 'Disciple\'s Sash');
-- (2277, 6514, 0, 3, 1, 1, 0, 'Disciple\'s Cloak');
-- (2277, 6517, 0, 3, 1, 1, 0, 'Pioneer Belt');
-- (2277, 6519, 0, 3, 1, 1, 0, 'Pioneer Bracers');
-- (2277, 6520, 0, 3, 1, 1, 0, 'Pioneer Cloak');
-- (2277, 7109, 0, 3, 1, 1, 0, 'Pioneer Buckler');
-- (2277, 7350, 0, 3, 1, 1, 0, 'Disciple\'s Bracers');
-- (2277, 8177, 0, 3, 1, 1, 0, 'Practice Sword');
-- (2277, 8179, 0, 3, 1, 1, 0, 'Cadet\'s Bow');
-- (2277, 8181, 0, 3, 1, 1, 0, 'Hunting Rifle');
-- (2277, 8182, 0, 3, 1, 1, 0, 'Pellet Rifle');
-- (2277, 15895, 0, 3, 1, 1, 0, 'Burnt Buckler');
-- (2277, 117, 0, 4, 1, 1, 0, 'Tough Jerky');
-- (2277, 159, 0, 4, 1, 1, 0, 'Refreshing Spring Water');
-- (2277, 2070, 0, 4, 1, 1, 0, 'Darnassian Bleu');
-- (2277, 4536, 0, 4, 1, 1, 0, 'Shiny Red Apple');
-- (2277, 4540, 0, 4, 1, 1, 0, 'Tough Hunk of Bread');
-- (2277, 4604, 0, 4, 1, 1, 0, 'Forest Mushroom Cap');

