-- q.9423 'Return to Obadei'
-- afterscript
DELETE FROM dbscripts_on_quest_end WHERE id IN (9423);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9423,1,31,16833,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for 16833'),
(9423,100,0,0,0,0,16833,30,0,13997,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 9423 WHERE entry = 9423;
