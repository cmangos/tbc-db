-- Generic Scripts added - WDB
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 100 AND 106;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(100,1,51,100,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - formation change to - Random(0)'),
(101,1,51,100,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - formation change to - Queue(1)'),
(102,1,51,100,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - formation change to - Side bu side(2)'),
(103,1,51,100,3,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - formation change to - Geese(3)'),
(104,1,51,100,4,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - formation change to - Fanned out behind(4)'),
(105,1,51,100,5,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - formation change to - Fanned out in front(5)'),
(106,1,51,100,6,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - formation change to - Circle leader(6)');

