-- Starting chain
-- * Speak with the Ogre q.10984 - Optional
-- 	* Mog'dorg the Wizened q.10983/Mog'dorg the Wizened q.10989/The Trouble Below q.11057
-- 			* Grulloc Has Two Skulls q.10995
-- 			* Maggoc's Treasure Chest q.10996
-- 			* Even Gronn Have Standards q.10997
-- 				* Grim(oire) Business q.10998
-- 					* Into the Soulgrinder q.11000
-- 						* Speak with Mog'dorg q.11022 - Optional

-- Neutral quests
-- * Ogre Heaven q.11009
-- 	* The Crystals q.11025
-- 		* An Apexis Relic q.11058
-- 			* The Relic's Emanation q.11080
-- 			* Guardian of the Monument q.11059 (also req q.11062)
-- 		* Our Boy Wants To Be A Skyguard Ranger q.11030
-- 			* A Father's Duty q.11061
-- 				* A Fel Whip For Gahk q.11079
-- 			* The Skyguard Outpost q.11062
-- 				* Bombing Run q.11010/11102
-- 					* Bomb Them Again! q.11023
-- 					* Assault on Bash'ir Landing! q.11119
-- 					* Wrangle Some Aether Rays! q.11065
-- 						* Wrangle More Aether Rays! q.11066
-- 						* To Rule The Skies q.11078

-- Friendly quests
-- * A Special Thank You q.11091

-- Honored quests
-- * Banish the Demons q.11026
-- 	* Banish More Demons q.11051
-- 	* A Crystalforged Darkrune q.11060
-- 		* Yous Have Da Darkrune? q.11027 (also req q.11051)

-- Speak with the Ogre q.10984 - Lead-in quest that is closed after q.10983/q.11057/q.10989 is taken or rewarded
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10104, 22, 10983, 0),
(10105, 22, 11057, 0),
(10106, 22, 10989, 0),
(10107, -1, 10104, 10105),
(10108, -1, 10106, 10107); -- q.10983 and q.11057 and q.10989 not taken or rewarded
UPDATE quest_template SET RequiredCondition=10108 WHERE entry=10984; -- Speak with the Ogre q.10984

-- Mog'dorg the Wizened q.10983 - Exclusive with The Trouble Below q.11057 and Mog'dorg the Wizened q.10989
-- The Trouble Below q.11057 and Mog'dorg the Wizened q.10989 - Unavailable if q.10984 is taken
-- All three leads to Exclusivegroup -10995
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10109, 9, 10984, 0),
(10110, -3, 10109, 0); -- q.10984 NOT taken
UPDATE quest_template SET PrevQuestId=0, ExclusiveGroup=10983, NextQuestId=10995 WHERE entry=10983; -- Mog'dorg the Wizened
UPDATE quest_template SET RequiredCondition=10110, ExclusiveGroup=10983, NextQuestId=10995 WHERE entry=11057; -- The Trouble Below
UPDATE quest_template SET RequiredCondition=10110, ExclusiveGroup=10983, NextQuestId=10995 WHERE entry=10989; -- Mog'dorg the Wizened

-- Exclusivegroup -10995 requires q.10983 or q.11057 or q.10989 to be rewarded
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10111, 8, 10983, 0),
(10112, 8, 11057, 0),
(10113, 8, 10989, 0),
(10114, -2, 10111, 10112),
(10115, -2, 10113, 10114); -- q.10995 or q.10983 or q.10989 rewarded
UPDATE quest_template SET PrevQuestId=0, RequiredCondition=10115 WHERE entry=10995; -- Grulloc Has Two Skulls
UPDATE quest_template SET PrevQuestId=0, RequiredCondition=10115 WHERE entry=10996; -- Maggoc's Treasure Chest
UPDATE quest_template SET PrevQuestId=0, RequiredCondition=10115 WHERE entry=10997; -- Even Gronn Have Standards

-- Grim(oire) Business q.10998 requires Exclusivegroup -10995

-- Into the Soulgrinder q.11000 requires Grim(oire) Business q.10998

-- Speak with Mog'dorg q.11022 - Closed by Ogre Heaven q.11009
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10116, 22, 11009, 0);
UPDATE quest_template SET RequiredCondition=10116 WHERE entry=11022; -- Speak with Mog'dorg

-- Ogre Heaven q.11009 requires Into the Soulgrinder q.11000
UPDATE quest_template SET PrevQuestId=11000 WHERE entry=11009;

-- The Crystals q.11025 requires Ogre Heaven q.11009

-- An Apexis Relic q.11058 requires The Crystals q.11025

-- The Relic's Emanation q.11080 requires An Apexis Relic q.11058

-- Our Boy Wants To Be A Skyguard Ranger q.11030 requires The Crystals q.11025
UPDATE quest_template SET PrevQuestId=11025 WHERE entry=11030;

-- A Father's Duty q.11061 requires Our Boy Wants To Be A Skyguard Ranger q.11030

-- A Fel Whip For Gahk q.11079 requires A Father's Duty q.11061

-- Guardian of the Monument q.11059 requires An Apexis Relic q.11058, The Skyguard Outpost q.11062
UPDATE quest_template SET ExclusiveGroup=-11058, NextQuestId=11059 WHERE entry=11058;
UPDATE quest_template SET ExclusiveGroup=-11058, NextQuestId=11059 WHERE entry=11062;
UPDATE quest_template SET PrevQuestId=0 WHERE entry=11059;

-- The Skyguard Outpost q.11062 requires Our Boy Wants To Be A Skyguard Ranger q.11030

-- Bombing Run (normal) q.11010/Bombing Run (druid) q.11102 requires The Skyguard Outpost q.11062
UPDATE quest_template SET PrevQuestId=11062 WHERE entry=11010; -- Bombing Run (normal)
UPDATE quest_template SET PrevQuestId=11062, RequiredClasses=1024 WHERE entry=11102; -- Bombing Run (druid)
UPDATE quest_template SET ExclusiveGroup=0, NextQuestId=0 WHERE entry=11030; -- Our Boy Wants To Be A Skyguard Ranger q.11030
UPDATE quest_template SET ExclusiveGroup=0, NextQuestId=0 WHERE entry=11058; -- An Apexis Relic q.11058
-- Missing relations for druid version
DELETE FROM creature_questrelation WHERE quest=11102;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(23120, 11102);
DELETE FROM creature_involvedrelation WHERE quest=11102;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(23120, 11102);

-- Bomb Them Again! q.11023 requires Bombing Run q.11010/11102 (normal/druid)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10117, 8, 11010, 0),
(10118, 8, 11102, 0),
(10119, -2, 10117, 10118); -- q.11010 or q.11102 rewarded
UPDATE quest_template SET PrevQuestId=0, RequiredCondition=10119 WHERE entry=11023;

-- Assault on Bash'ir Landing! q.11119 requires Bombing Run q.11010/11102 (normal/druid)
UPDATE quest_template SET PrevQuestId=0, RequiredCondition=10119 WHERE entry=11119;

-- Wrangle Some Aether Rays! q.11065 requires Bombing Run q.11010/11102 (normal/druid)
UPDATE quest_template SET PrevQuestId=0, RequiredCondition=10119 WHERE entry=11065;

-- Wrangle More Aether Rays! q.11066 requires Wrangle Some Aether Rays! q.11065

-- To Rule The Skies q.11078 requires Wrangle Some Aether Rays! q.11065
UPDATE quest_template SET PrevQuestId=11065 WHERE entry=11078;

-- A Special Thank You q.11091 requires friendly rep
UPDATE quest_template SET RequiredMinRepValue=3000 WHERE entry=11091;

-- Banish the Demons q.11026 requires honored rep
UPDATE quest_template SET RequiredMinRepValue=9000 WHERE entry=11026;

-- Banish More Demons q.11051 requires Banish the Demons q.11026
UPDATE quest_template SET ExclusiveGroup=-11051, NextQuestId=11027 WHERE entry=11051;

-- A Crystalforged Darkrune q.11060 requires Banish the Demons q.11026
UPDATE quest_template SET ExclusiveGroup=-11051, NextQuestId=11027, PrevQuestId=11026 WHERE entry=11060;

-- Yous Have Da Darkrune? q.11027 requires A Crystalforged Darkrune q.11060 and Banish More Demons q.11051
UPDATE quest_template SET PrevQuestId=0 WHERE entry=11027;

-- Add missing reputation for several Ogri'la quests
UPDATE quest_template SET RewRepFaction1=1038, RewRepFaction2=1031, RewRepValue1=500, RewRepValue2=500 WHERE entry IN(11010,11102,11023); -- Bombing Run and Bomb Them Again!
UPDATE quest_template SET RewRepFaction1=1038, RewRepFaction2=0, RewRepValue1=350, RewRepValue2=0 WHERE entry IN(11026,11051); -- Banish the Demons and Banish More Demons
UPDATE quest_template SET RewRepFaction1=1038, RewRepFaction2=1031, RewRepValue1=500, RewRepValue2=500 WHERE entry IN(11059); -- Guardian of the Monument
UPDATE quest_template SET RewRepFaction1=1038, RewRepFaction2=0, RewRepValue1=250, RewRepValue2=0 WHERE entry IN(11061); -- A Father's Duty
UPDATE quest_template SET RewRepFaction1=1031, RewRepFaction2=0, RewRepValue1=10, RewRepValue2=0 WHERE entry IN(11062); -- The Skyguard Outpost
UPDATE quest_template SET RewRepFaction1=1031, RewRepFaction2=0, RewRepValue1=500, RewRepValue2=0 WHERE entry IN(11078); -- To Rule The Skies
UPDATE quest_template SET RewRepFaction1=1038, RewRepFaction2=0, RewRepValue1=350, RewRepValue2=0 WHERE entry IN(11080); -- The Relic's Emanation

