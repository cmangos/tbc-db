-- A Gift for Voren'thal/Socrethar's Shadow quest items should only drop while on quest.
UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE item=29624; -- First Half of Socrethar's Stone
UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE item=29625; -- Second Half of Socrethar's Stone

