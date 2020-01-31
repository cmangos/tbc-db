-- q.10273 'Troublesome Distractions'

-- Improve Timers so Linking can actually work for them
DELETE FROM dbscripts_on_creature_movement WHERE id = 2007101;
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2007101,1000,0,0,0,0,0,0,0,0,2000005787,0,0,0,0,0,0,0,''),
(2007101,3600,2,22,14,0x01 | 0x20,0,0,0,0,0,0,0,0,0,0,0,0,''), -- befor 3000
(2007101,3600,0,10,20101,60000,0,0,0,0,0,0,0,0,4322.216,2148.113,124.918,4.014257,'Summon Nether-stalker'), -- befor 6000 but he changes faction after 3.6secs after he says text
(2007101,3600,1,10,20101,60000,0,0,0,0,0,0,0,0,4327.583,2133.33,126.4966,3.508112,'Summon Nether-stalker'); -- befor 6000 and summons them at the same time and they aggro as soon as they spawn

