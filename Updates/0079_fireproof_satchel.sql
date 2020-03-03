-- Fix for Draenei Shaman quest Call of Fire - Ritual Torch and Orb of Returning should always come from Fireproof Satchel
UPDATE item_loot_template SET ChanceOrQuestChance=100 WHERE entry=24336;


