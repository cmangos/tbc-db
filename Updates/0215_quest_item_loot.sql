-- Shattered Necklace should drop without quest requirement. Use wotlk-db dropchance
UPDATE creature_loot_template SET ChanceOrQuestChance=8 WHERE item=7666;

-- Remove items from creature drops that belongs to item loot template: Tactical Task Briefing X & Tactical Task Briefing IX
DELETE FROM creature_loot_template WHERE item IN(20943,20944);

