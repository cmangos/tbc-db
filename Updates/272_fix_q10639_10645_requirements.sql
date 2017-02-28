/*
10639 Teron Gorefiend, I am... (Horde)
10645 Teron Gorefiend, I am... (Alliance)
Both have PrevQuestId 10634

10635 Divination: Gorefiend's Cloak
10636 Divination: Gorefiend's Truncheon [2 players]
10634 Divination: Gorefiend's Armor [5 players]
All 3 have ExclusiveGroup -10634

Intended Behavior:
All 3 "Divination" quests must be completed before player can start "Teron Gorefiend, I am..."

Current Behavior:
Since PrevQuestId = 10634 for 10639/10645, this makes them available after only completing 10634 instead of all 3.

Fix:
Need to use NextQuestId with ExclusiveGroup for 10634, 10635, 10636 and make PrevQuestId = 0 for 10639/10645.
Can't do this since there would have to be two different IDs in NextQuestId for it to work this way.
This is because Horde/Alliance share 10634, 10635, 10636 but have separate quests for "Teron Gorefiend, I am...".

Need to use a special condition here instead...
*/

UPDATE quest_template SET ExclusiveGroup = 0 WHERE entry IN (10634,10635,10636);
UPDATE quest_template SET PrevQuestId = 0, RequiredCondition = 1124 WHERE entry IN (10639,10645);

DELETE FROM conditions WHERE condition_entry BETWEEN 1120 AND 1124;
INSERT INTO conditions (condition_entry,type,value1,value2) VALUES
(1120,8,10634,0),
(1121,8,10635,0),
(1122,8,10636,0),
(1123,-1,1121,1120),
(1124,-1,1123,1122);

-- Increase Gorefiend's Truncheon drop rate
-- There are 4 chances to get it, but it should be higher than 30%
-- Many people on wowhead specifically mention looting it after killing only 1 Ghostrider of Karabor
UPDATE creature_loot_template SET ChanceOrQuestChance = -100 WHERE entry = 21784 AND item = 30800;
