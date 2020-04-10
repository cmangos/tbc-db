-- q.9457 'An Unusual Patron' - Redone
DELETE FROM dbscripts_on_event WHERE id = 10554;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10554,10,31,17207,255,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for buddy - terminate if alive'),
(10554,100,10,17207,300000,0,0,0,0,0,0,0,0,-12129.6,955.959,4.66874,5.01439,'summon Naias');
