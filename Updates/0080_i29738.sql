-- Vial of Void Horror Ooze i.29738 need to drop without quest active (the item itself starts the quest q.10413)
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE item=29738;
