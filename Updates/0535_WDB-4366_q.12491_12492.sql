-- q.12491 'Direbrew's Dire Brew'
-- q.12492 'Direbrew's Dire Brew'
-- afterscript
DELETE FROM dbscripts_on_quest_end WHERE id IN (12491,12492);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12491,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(12491,10,15,50552,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'self cast 50552'), -- 20:18:03.469
(12491,100,0,0,0,0,0,0,0,27418,0,0,0,0,0,0,0,''),
(12491,8010,15,50555,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'self cast 50555'), -- 20:18:11.473
(12491,8100,15,50532,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'self cast 50532'), -- 20:18:11.473
(12491,8200,0,0,0,0,0,0,0,27419,0,0,0,0,0,0,0,''),
(12491,10000,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12491,10200,0,0,0,0,0,0,0,27421,0,0,0,0,0,0,0,''),
(12491,13000,1,274,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12491,13001,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 12491 WHERE entry IN (12491,12492);

