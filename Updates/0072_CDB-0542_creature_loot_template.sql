-- Scourge Warder had too high drop chance for Essence of Undeath
-- Thanks Neotmiren for pointing.
-- Source: http://wowhead.com/item=12808#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `entry` IN (8525, 8529) AND `item` = 12808;
