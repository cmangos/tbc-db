-- Fix spawn times for Pillar of Opal and Pillar of Amethyst

UPDATE `gameobject` SET `spawntimesecs` = '2' WHERE `id` IN ('2848','2858');

-- Rina's Diminution Powder should only be usable on Bloodmaul Dire Wolf
DELETE FROM item_required_target WHERE entry=30251;
insert into item_required_target (entry, type, targetEntry) VALUES (30251, 1, 20058);

-- Fix requirements to drop Dragonmaw Shinbones (7131) for quest 1846 (Dragonmaw Shinbones)

UPDATE `quest_template` SET `ReqSourceId1` = '7131' WHERE `entry` = '1846';

-- Fix drop chance of item 30689 (Razuun's Orders) for quests 10586, 10603 (Bring Down the Warbringer!)

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-100' WHERE `entry` = '21287' AND `item` = '30689';

-- Quests are not available for proper races
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` IN (10818, 10805, 10806);


