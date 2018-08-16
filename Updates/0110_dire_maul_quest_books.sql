-- Add name for the already existing reference template
DELETE FROM reference_loot_template_names WHERE entry=35016;
INSERT INTO reference_loot_template_names (entry,name) VALUES
(35016,'Dire Maul: Class Quest Books');

-- Foror's Compendium of Dragon Slaying has lower drop rate than the other items so it should not be in the same reference template
DELETE FROM reference_loot_template WHERE item=18401 AND entry=35016;

-- Remove current drops of the books
DELETE FROM `creature_loot_template` WHERE `item` BETWEEN 18356 AND 18364 OR `item` = 18401 OR mincountOrRef=-35016;
 
SET @ENTRY := 14354; -- Pusillin
INSERT INTO `creature_loot_template` (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id) VALUES
(@ENTRY, 35016, 2, 0, -35016, 1, 0),
(@ENTRY, 18401, 0.5, 0, 1, 1, 0);

SET @ENTRY := 13280; -- Hydrospawn
INSERT INTO `creature_loot_template` (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id) VALUES
(@ENTRY, 35016, 2, 0, -35016, 1, 0),
(@ENTRY, 18401, 0.5, 0, 1, 1, 0);

SET @ENTRY := 14327; -- Lethtendris
INSERT INTO `creature_loot_template` (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id) VALUES
(@ENTRY, 35016, 2, 0, -35016, 1, 0),
(@ENTRY, 18401, 0.5, 0, 1, 1, 0);

SET @ENTRY := 11490; -- Zevrim Thornhoof
INSERT INTO `creature_loot_template` (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id) VALUES
(@ENTRY, 35016, 2, 0, -35016, 1, 0),
(@ENTRY, 18401, 0.5, 0, 1, 1, 0);

SET @ENTRY := 11492; -- Alzzin the Wildshaper
INSERT INTO `creature_loot_template` (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id) VALUES
(@ENTRY, 35016, 2, 0, -35016, 1, 0),
(@ENTRY, 18401, 0.5, 0, 1, 1, 0);

SET @ENTRY := 11489; -- Tendris Warpwood
INSERT INTO `creature_loot_template` (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id) VALUES
(@ENTRY, 35016, 2, 0, -35016, 1, 0),
(@ENTRY, 18401, 0.5, 0, 1, 1, 0);

SET @ENTRY := 11488; -- Illyanna Ravenoak
INSERT INTO `creature_loot_template` (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id) VALUES
(@ENTRY, 35016, 2, 0, -35016, 1, 0),
(@ENTRY, 18401, 0.5, 0, 1, 1, 0);

SET @ENTRY := 11467; -- Tsu'zee
INSERT INTO `creature_loot_template` (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id) VALUES
(@ENTRY, 35016, 2, 0, -35016, 1, 0),
(@ENTRY, 18401, 0.5, 0, 1, 1, 0);

SET @ENTRY := 11487; -- Magister Kalendris
INSERT INTO `creature_loot_template` (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id) VALUES
(@ENTRY, 35016, 2, 0, -35016, 1, 0),
(@ENTRY, 18401, 0.5, 0, 1, 1, 0);

SET @ENTRY := 11496; -- Immol'thar
INSERT INTO `creature_loot_template` (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id) VALUES
(@ENTRY, 35016, 2, 0, -35016, 1, 0),
(@ENTRY, 18401, 0.5, 0, 1, 1, 0);

SET @ENTRY := 11486; -- Prince Tortheldrin
INSERT INTO `creature_loot_template` (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id) VALUES
(@ENTRY, 35016, 2, 0, -35016, 1, 0),
(@ENTRY, 18401, 0.5, 0, 1, 1, 0);

SET @ENTRY := 14326; -- Guard Mol'dar
INSERT INTO `creature_loot_template` (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id) VALUES
(@ENTRY, 35016, 2, 0, -35016, 1, 0),
(@ENTRY, 18401, 0.5, 0, 1, 1, 0);

SET @ENTRY := 14322; -- Stomper Kreeg
INSERT INTO `creature_loot_template` (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id) VALUES
(@ENTRY, 35016, 2, 0, -35016, 1, 0),
(@ENTRY, 18401, 0.5, 0, 1, 1, 0);

SET @ENTRY := 14321; -- Guard Fengus
INSERT INTO `creature_loot_template` (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id) VALUES
(@ENTRY, 35016, 2, 0, -35016, 1, 0),
(@ENTRY, 18401, 0.5, 0, 1, 1, 0);

SET @ENTRY := 14323; -- Guard Slip'kik
INSERT INTO `creature_loot_template` (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id) VALUES
(@ENTRY, 35016, 2, 0, -35016, 1, 0),
(@ENTRY, 18401, 0.5, 0, 1, 1, 0);

SET @ENTRY := 14325; -- Captain Kromcrush
INSERT INTO `creature_loot_template` (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id) VALUES
(@ENTRY, 35016, 2, 0, -35016, 1, 0),
(@ENTRY, 18401, 0.5, 0, 1, 1, 0);

SET @ENTRY := 14324; -- Cho'Rush the Observer
INSERT INTO `creature_loot_template` (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id) VALUES
(@ENTRY, 35016, 2, 0, -35016, 1, 0),
(@ENTRY, 18401, 0.5, 0, 1, 1, 0);

SET @ENTRY := 11501; -- King Gordok
INSERT INTO `creature_loot_template` (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id) VALUES
(@ENTRY, 35016, 2, 0, -35016, 1, 0),
(@ENTRY, 18401, 0.5, 0, 1, 1, 0);

 -- http://www.wowwiki.com/A_Dusty_Tome
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (16563, 16564);
INSERT INTO `gameobject_loot_template` (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id) VALUES
(16563, 18356, 0, 1, 1, 1, 0),
(16563, 18357, 0, 1, 1, 1, 0),
(16563, 18358, 0, 1, 1, 1, 0),
(16563, 18359, 0, 1, 1, 1, 0),
(16563, 18360, 0, 1, 1, 1, 0),
(16563, 18361, 0, 1, 1, 1, 0),
(16563, 18362, 0, 1, 1, 1, 0),
(16563, 18363, 0, 1, 1, 1, 0),
(16563, 18364, 0, 1, 1, 1, 0),
(16563, 18365, 79, 1, 1, 1, 0),
(16563, 18401, 0.5, 1, 1, 1, 0),
(16563, 5263, 100, 0, 1, 1, 0),

(16564, 18356, 0, 1, 1, 1, 0),
(16564, 18357, 0, 1, 1, 1, 0),
(16564, 18358, 0, 1, 1, 1, 0),
(16564, 18359, 0, 1, 1, 1, 0),
(16564, 18360, 0, 1, 1, 1, 0),
(16564, 18361, 0, 1, 1, 1, 0),
(16564, 18362, 0, 1, 1, 1, 0),
(16564, 18363, 0, 1, 1, 1, 0),
(16564, 18364, 0, 1, 1, 1, 0),
(16564, 18365, 79, 1, 1, 1, 0),
(16564, 18401, 0.5, 1, 1, 1, 0),
(16564, 5263, 100, 0, 1, 1, 0);

