-- For The Horde!(q.4974) - update
DELETE FROM dbscripts_on_quest_end WHERE id = 4974;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4974,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Thrall active'),
(4974,1,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(4974,2,13,0,0,175787,20,1,0,0,0,0,0,0,0,0,'use gobject'),
(4974,3,0,0,0,0,0,0,2000005090,0,0,0,0,0,0,0,''),
(4974,8,15,16609,0,0,0,0,0,0,0,0,0,0,0,0,''),
(4974,11,0,0,0,0,0,0,2000005091,0,0,0,0,0,0,0,''),
(4974,15,28,5,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT'),
(4974,16,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Thrall unactive');
UPDATE db_script_string SET emote = 5, type = 6 WHERE entry = 2000005090;
UPDATE db_script_string SET emote = 1, type = 6 WHERE entry = 2000005091;

