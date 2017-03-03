-- Arcane Container (First Fragment - Shadow Labs)
UPDATE gameobject_template SET data5 = 1 WHERE entry = 182196;
-- Arcane Container (Second Fragment - Steamvault)
UPDATE gameobject_template SET data5 = 1 WHERE entry = 182197;
-- Arcane Container (Third Fragment - Arcatraz)
UPDATE gameobject_template SET data5 = 1 WHERE entry = 182198;

DELETE FROM dbscripts_on_event WHERE id = 14592;
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`buddy_entry`,`search_radius`,`data_flags`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`x`,`y`,`z`,`o`,`comments`) VALUES
(14592,2,10,22890,300000,0,0,0,0,0,0,0,-107.64,-510.635,21.475,3,'Spawn First Fragment Guardian'), -- correct spawn position
(14592,3,26,0,0,22890,40,3,0,0,0,0,0,0,0,0,'First Fragment Guardian attack player');

DELETE FROM dbscripts_on_event WHERE id = 14593 AND delay = 3;
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`buddy_entry`,`search_radius`,`data_flags`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`x`,`y`,`z`,`o`,`comments`) VALUES
(14593,3,26,0,0,22891,40,3,0,0,0,0,0,0,0,0,'Second Fragment Guardian attack player');

DELETE FROM dbscripts_on_event WHERE id = 14595 AND delay = 3;
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`buddy_entry`,`search_radius`,`data_flags`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`x`,`y`,`z`,`o`,`comments`) VALUES
(14595,3,26,0,0,22892,40,3,0,0,0,0,0,0,0,0,'Third Fragment Guardian attack player');
