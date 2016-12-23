-- ===================
-- Fixes by Killerwife
-- ===================
-- Fel Reavers No Thanks quest script
-- http://www.wowhead.com/quest=10855/fel-reavers-no-thanks


DELETE FROM conditions WHERE condition_entry=233; -- redundant condition
UPDATE creature_loot_template SET ChanceOrQuestChance=-25 WHERE entry=16949 AND item=31653; -- set proper way of item dropping, during quest without condition
UPDATE quest_template SET ReqSourceId1=31653,ReqSourceCount1=5,SpecialFlags=0 WHERE entry=10855; -- set proper way of item dropping, remove explored requirement (im quite sure its faulty data)
UPDATE creature_template SET MovementType=0 WHERE entry=22293;
UPDATE creature SET MovementType=0 WHERE id IN (22293);

DELETE FROM db_script_string WHERE entry=2000005788;
INSERT INTO db_script_string(entry,content_default,type,comment) VALUES ('2000005788','Fel Reaver begins to sputter as its engine malfunctions.',2,'Fel reaver SAY 1');

DELETE FROM dbscripts_on_quest_end WHERE id=10850;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10850','0','5','46','262912','0','0','0','0','0','0','0','0','0','0','0','Fel Reaver NPCFlags removed');
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10850','0','29','2','2','0','0','0','0','0','0','0','0','0','0','0','Fel Reaver NPCFlags removed');
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10850','0','29','1','2','0','0','0','0','0','0','0','0','0','0','0','Fel Reaver NPCFlags removed');
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10850','0','0','0','0','0','0','0','2000005788','0','0','0','0','0','0','0','Fel Reaver SAY 1');
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10850','1','20','1','5','0','0','0','0','0','0','0','0','0','0','0','Fel Reaver Set Random Movement');
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10850','5','8','22293','1','0','0','0','0','0','0','0','0','0','0','0','Fel Reaver Quest Credit');
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('10850','5','15','38763','0','0','0','0','0','0','0','0','0','0','0','0','Fel Reaver Suicide');


