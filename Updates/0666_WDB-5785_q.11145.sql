-- q.11145 'Prisoners of the Grimtotems'
-- cage should close with npc spawn
DELETE FROM dbscripts_on_relay WHERE id IN (9987);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9987,1,12,0,0,0,186287,10,7,0,0,0,0,0,0,0,0,'Part of Theramore Prisoner 23720 EAI: Close Object');
