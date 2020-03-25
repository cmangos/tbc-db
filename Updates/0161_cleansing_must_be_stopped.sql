UPDATE dbscripts_on_event SET priority=1, datalong2=600000 WHERE id=10346;
DELETE FROM dbscripts_on_event WHERE id=10346 AND command IN (31,26);
INSERT INTO dbscripts_on_event (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10346, 0, 0, 31, 16994, 100, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'search for 16994'),
(10346, 2000, 0, 26, 0, 0, 0, 16994, 100, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Attack Player');


