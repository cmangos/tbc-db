-- World's End Tavern - L70ETC Concert - event 60
-- Music will be played only inside tavern ..
DELETE FROM dbscripts_on_relay WHERE id IN (19999);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19999,0,16,11803,2,0,0,0,0,0,0,0,0,0,0,0,0,'Part of L70ETC - Power of the Horde Concert: play Sound');

-- Event times ajusted
-- thx to @Headbanger
update game_event_time set start_time = '2011-01-01 00:48:00' where entry = 57; -- 57	2011-01-01 02:48:00
update game_event_time set start_time = '2011-01-01 01:00:00' where entry = 58; -- 58	2011-01-01 03:00:00
update game_event_time set start_time = '2011-01-01 01:48:00' where entry = 59; -- 59	2011-01-01 03:48:00
update game_event_time set start_time = '2011-01-01 02:00:00' where entry = 60; -- 60	2011-01-01 01:00:00

