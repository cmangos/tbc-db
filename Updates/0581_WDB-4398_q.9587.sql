-- q.9587 'Dark Tidings'
-- afterscript
DELETE FROM dbscripts_on_quest_end WHERE id IN (9587);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9587,1,31,17479,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for 17479'),
(9587,100,0,0,0,0,17479,40,0,46545,0,0,0,0,0,0,0,'buddy -> Player: say');
UPDATE quest_template SET CompleteScript = 9587 WHERE entry IN (9587);
UPDATE `broadcast_text` SET `ChatTypeID`= 4 WHERE `Id` IN (46545);

