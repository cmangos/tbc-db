-- q.9420 'The Finest Down'
-- afterscript
DELETE FROM dbscripts_on_quest_end WHERE id IN (9420);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9420,1,15,32341,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''), -- 02:41:40.000
(9420,5000,0,0,0,0,0,0,0,15376,0,0,0,0,0,0,0,''); -- 02:41:45.000
UPDATE quest_template SET CompleteScript = 9420 WHERE entry IN (9420);
