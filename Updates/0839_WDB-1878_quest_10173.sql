-- q.10173 'The Archmage's Staff' - Update
DELETE FROM dbscripts_on_event WHERE id = 13008; 
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13008,0,31,19493,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 19493 - terminate if alive'),
(13008,1,10,19493,360000,0,0,0,0,0,0,0,0,2766.21,3199.86,150.73,2.41,'quest 10173');
