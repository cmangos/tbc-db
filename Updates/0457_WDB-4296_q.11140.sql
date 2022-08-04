-- q.11140 'Recover the Cargo!'
DELETE FROM dbscripts_on_quest_end WHERE id IN (11140);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11140,2000,0,0,0,0,0,0,0,22160,0,0,0,0,0,0,0,''),
(11140,2001,1,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(11140,8000,0,0,0,0,0,0,0,22161,0,0,0,0,0,0,0,''),
(11140,8001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(11140,12000,0,0,0,0,0,0,0,22162,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 11140 WHERE entry = 11140;
