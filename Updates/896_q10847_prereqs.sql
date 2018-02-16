-- The Eyes of Skettis q.10847 has no prerequisites. q.10862, q.10863, q.10862 are just lead-in quests.
-- However, the player CAN complete more than one of the lead-in quests but can only have one in the quest log at once.
-- For example a horde player can complete q.10862 first and then go back to pick up q.10908 as well.
-- If The Eyes of Skettis q.10847 is taken or completed then none of the lead-ins are available.
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 10046 AND 10058;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10046, 22, 10847, 0), -- q.10847 NOT Taken AND NOT COMPLETED

(10047, 9, 10862, 0),
(10048, 9, 10863, 0),
(10049, 9, 10908, 0),

(10050, -3, 10047, 0),
(10051, -3, 10048, 0),
(10052, -3, 10049, 0),

(10053, -1, 10050, 10051), -- q.10862 and q.10863 NOT Taken
(10054, -1, 10053, 10046), -- (q.10862 and q.10863 NOT Taken) AND (q.10847 NOT Taken AND NOT COMPLETED)

(10055, -1, 10051, 10052), -- q.10863 and q.10908 NOT Taken
(10056, -1, 10055, 10046), -- (q.10863 and q.10908 NOT Taken) AND (q.10847 NOT Taken AND NOT COMPLETED)

(10057, -1, 10050, 10052), -- q.10862 and q.10908 NOT Taken
(10058, -1, 10057, 10046); -- (q.10862 and q.10908 NOT Taken) AND (q.10847 NOT Taken AND NOT COMPLETED)

UPDATE quest_template SET RequiredCondition=10054, ExclusiveGroup=0, NextQuestId=0 WHERE entry=10908; -- (N)
UPDATE quest_template SET RequiredCondition=10056, ExclusiveGroup=0, NextQuestId=0 WHERE entry=10862; -- (H)
UPDATE quest_template SET RequiredCondition=10058, ExclusiveGroup=0, NextQuestId=0 WHERE entry=10863; -- (A)

