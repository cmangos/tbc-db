-- UDB_268
-- q.10091 'The Soul Devices'
DELETE FROM dbscripts_on_quest_start WHERE id = 10091;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10091,1,13,0,0,182942,50,1,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 10091 WHERE entry = 10091;

DELETE FROM dbscripts_on_go_template_use WHERE id = 182942;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(182942,1,3,0,0,18891,67850,7 | 0x10,0,0,0,0,-63.5416,42.9283,0.206252,2.42972,'');
-- Cage - Update
-- need to be visible also in Heroic difficulty 
UPDATE gameobject SET spawnmask = 3 WHERE guid IN (23857,23858);

