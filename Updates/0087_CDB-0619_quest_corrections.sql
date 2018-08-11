
-- ------------------------------------

DELETE FROM `creature_involvedrelation` WHERE `quest`='934'; -- Crown of the Earth
DELETE FROM `creature_involvedrelation` WHERE `quest`='614'; -- The Captain's Chest

-- ---------------------------------

DELETE FROM `creature_questrelation` WHERE `quest`='934'; -- Crown of the Earth
DELETE FROM `creature_questrelation` WHERE `quest`='614'; -- The Captain's Chest

-- --------------------

UPDATE `quest_template` SET `NextQuestInChain`='7383' WHERE `entry`='933';                                  -- Crown of the Earth
UPDATE `quest_template` SET `PrevQuestId`='7383' WHERE `entry`='935';                                       -- Crown of the Earth
UPDATE `quest_template` SET `RequiredRaces`='0',`MinLevel`='40', `QuestLevel`='47' WHERE `entry`='8551';    -- The Captain's Chest

