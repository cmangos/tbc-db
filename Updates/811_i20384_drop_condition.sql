-- Fix for https://jira.vengeancewow.com/browse/TBC-2944
-- Added Drop-Condition for Silithid Carapace Fragments (20384) (Requires you to have Agent of Nozdormu (20402) in your bags)
-- Removed quest-drop restriction of Silithid Carapace Fragments (20384) (People without the quest, but with the item (20402) from the condition should be able to loot those)
DELETE FROM conditions WHERE condition_entry=1107 AND type=2;
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES 
(1107, 2, 20402, 1, "Player has 1 or more of Item ID 20402 in Inventory");
UPDATE creature_loot_template SET ChanceOrQuestChance = 80, condition_id = 1107 WHERE item = 20384 AND ChanceOrQuestChance = -80;
UPDATE creature_loot_template SET ChanceOrQuestChance = 100, condition_id = 1107 WHERE item = 20384 AND ChanceOrQuestChance = -100;

