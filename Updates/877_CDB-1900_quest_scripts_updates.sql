-- Removed unused start script for quest 7041 (Vyletongue Corruption) and quest 986 (A Lost Master)
DELETE FROM dbscripts_on_quest_start WHERE id IN (986, 7041);
UPDATE quest_template SET StartScript=0 WHERE StartScript IN (986, 7041);

-- Added missing complete script for quests 986 (A Lost Master) and 1284 (Suspicious Hoofprints)
DELETE FROM dbscripts_on_quest_end WHERE id=1284;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1284, 0, 10, 5088, 180000, 0, 0, 0, 0, 0, 0, 0, 0, -3837.25, -4548.3, 9.29486, 0.786911, '');

UPDATE quest_template SET CompleteScript=1284 WHERE Entry=1284;

UPDATE dbscripts_on_quest_end SET id=985 WHERE id=986;
UPDATE quest_template SET CompleteScript=985 WHERE Entry=985;
UPDATE quest_template SET CompleteScript=986 WHERE Entry=986;

-- Source: WotLK-DB
SET @ID := 2000006105;
DELETE FROM dbscripts_on_quest_end WHERE id=986;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(986, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 1, 0, 0, 0, 0, 0, 0, 0, @ID, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 4, 0, 0, 0, 0, 0, 0, 0, @ID + 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM dbscript_string WHERE entry IN (@ID, @ID + 1);
INSERT INTO `dbscript_string` (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(@ID, 'I shall get started right away, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ID + 1, 'Now... where was my thread and needle. Ah! There it is...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);


