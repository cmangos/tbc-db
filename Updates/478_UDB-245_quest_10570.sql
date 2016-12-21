-- q.10570 'To Catch A Thistlehead'
-- wild object will despawn after collected by Envoy Icarius 
DELETE FROM dbscripts_on_creature_movement WHERE id = 2140904; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2140904,1,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2140904,6,0,2,0,0,0,0,2000005488,0,0,0,0,0,0,0,''),
(2140904,7,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(2140904,7,40,0,0,184798,50,7,0,0,0,0,0,0,0,0,'despawn object'),
(2140904,8,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');


