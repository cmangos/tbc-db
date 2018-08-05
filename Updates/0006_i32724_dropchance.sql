-- Increase drop chance for Murkblood Escape Plans i.32724 from 2% -> 10%. Wowpedia and Wowhead comments mention chance being rather high for item to drop.
-- Drop chance on wowhead is lowered due to not every loot attempt being eligable for the quest item to drop.
UPDATE item_loot_template SET ChanceOrQuestChance=10 WHERE item=32724;

