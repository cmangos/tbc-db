-- Mogor
-- Spawntime corrected
UPDATE creature SET spawntimesecs = 5 WHERE guid = 60873;
-- DB Part of EAI script
DELETE FROM dbscripts_on_spell WHERE id = 32343;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(32343,1,15,17683,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(32343,2,14,29266,0,0,0,0x04,0,0,0,0,0,0,0,0,'');


