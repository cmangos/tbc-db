-- Moving https://github.com/cmangos/tbc-db/commit/619c5d85710f27034381f290fadcec7005105225 to other Range
DELETE FROM dbscripts_on_event WHERE id = 3361;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3361,0,10,8887,5000,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3361,1,0,1001,0,0,8887,10,3,0,0,0,0,0,0,0,0,''),
(3361,3,0,1002,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_random_templates WHERE id in (1001,1002);
INSERT INTO dbscript_random_templates (id,type,target_id,chance,comments) VALUES
(1001,0,2000000544,0,'8887 - Random Whisper'),
(1001,0,2000000546,0,'8887 - Random Whisper'),
(1001,0,2000000548,0,'8887 - Random Whisper'),
(1001,0,2000000550,0,'8887 - Random Whisper'),
(1001,0,2000001424,0,'8887 - Random Whisper'),
(1001,0,2000001426,0,'8887 - Random Whisper'),
(1001,0,2000001428,0,'8887 - Random Whisper'),
(1001,0,2000001430,0,'8887 - Random Whisper'),
(1002,0,2000000545,0,'8887 - Random Texts'),
(1002,0,2000000547,0,'8887 - Random Texts'),
(1002,0,2000000549,0,'8887 - Random Texts'),
(1002,0,2000000551,0,'8887 - Random Texts'),
(1002,0,2000001425,0,'8887 - Random Texts'),
(1002,0,2000001427,0,'8887 - Random Texts'),
(1002,0,2000001429,0,'8887 - Random Texts'),
(1002,0,2000001431,0,'8887 - Random Texts');

