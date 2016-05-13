UPDATE creature_template SET ModelId1=16946,InhabitType=4,ExtraFlags=0 WHERE entry=22395;
UPDATE creature SET position_x=-4548.163574,position_y=1018.434509,position_z=13.877048,orientation=0.812045 WHERE id=22395;
DELETE FROM dbscripts_on_event WHERE id=14394;
INSERT INTO dbscripts_on_event(id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14394,0,15,39124,0,22417,78756,20,0,0,0,0,0,0,0,0,'Becoming a Shadoweave Tailor - cast visual'),
(14394,0,15,39124,0,22417,78757,20,0,0,0,0,0,0,0,0,'Becoming a Shadoweave Tailor - cast visual'),
(14394,1,8,22395,0,0,0,0,0,0,0,0,0,0,0,0,'Becoming a Shadoweave Tailor - Kill credit');


