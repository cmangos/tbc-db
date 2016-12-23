-- Conditions
-- Req. for q.9663 'Kessel run'
DELETE FROM conditions WHERE condition_entry BETWEEN 1037 AND 1039;

-- Exarch Menelaous
-- gossip corrected
UPDATE gossip_menu SET condition_id = 1039 WHERE entry = 7370 AND text_id = 9040;
DELETE FROM conditions WHERE condition_entry IN (1037,1039);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1037, 9, 9456, 0),
(1039, 8, 9663, 0);
-- gossip options also req. update
UPDATE gossip_menu_option SET condition_id = 1037 WHERE menu_id = 7370 AND id = 0;

-- Admiral Odesyus
-- gossip corrected
UPDATE gossip_menu SET condition_id = 1038 WHERE entry = 7399 AND text_id = 8865;
UPDATE gossip_menu SET condition_id = 1039 WHERE entry = 7399 AND text_id = 9038;
DELETE FROM conditions WHERE condition_entry = 1038;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1038, 8, 9506, 0);

-- High Chief Stillpine
-- gossip corrected
UPDATE gossip_menu SET condition_id = 1039 WHERE entry = 7434 AND text_id = 9039;

-- Archaeologist Adamant Ironheart
-- gossip corrected
UPDATE gossip_menu SET condition_id = 1041 WHERE entry = 7400 AND text_id = 8868;
DELETE FROM conditions WHERE condition_entry IN (1040,1041);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1040, 8, 9505, 0),
(1041, -2, 1038, 1040); 

-- Priestess Kyleen Il'dinare
DELETE FROM gossip_menu WHERE entry = 7398 AND text_id = 8866;
INSERT INTO gossip_menu VALUES
(7398, 8866, 0, 1042);
-- gossip corrected
UPDATE gossip_menu SET condition_id = 1038 WHERE entry = 7398 AND text_id = 8862;
UPDATE gossip_menu SET condition_id = 1057 WHERE entry = 7398 AND text_id = 8893;
DELETE FROM conditions WHERE condition_entry IN (1042,1057);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1042, 8, 9515, 0),
(1057, 8, 9537, 0);

-- Quest relations
-- Both quests available after q.9506 completed
-- 9513 -- Reclaiming the Ruins
UPDATE quest_template SET PrevQuestId = 9506 WHERE entry = 9513;
-- 9523 -- Precious and Fragile Things Need Special Handling
UPDATE quest_template SET PrevQuestId = 9506 WHERE entry = 9523;


