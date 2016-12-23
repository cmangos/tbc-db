-- UDB_288
-- q.9927 'Ruthless Cunning'
-- 1 banner = 1 body
DELETE FROM dbscripts_on_spell WHERE id = 32307;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(32307,1,18,3000,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');

