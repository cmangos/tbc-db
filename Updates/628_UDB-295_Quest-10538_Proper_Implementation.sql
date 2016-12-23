-- UDB_295
-- q.10538 'Boiling Blood'
DELETE FROM spell_script_target WHERE entry = 36546;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(36546,0,184715);
DELETE FROM dbscripts_on_go_template_use WHERE id = 184715;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(184715,1,10,21308,4000,0,0,0,0,0,0,0,-967.271,2174.77,15.8136,3.94127,'');
UPDATE creature_template SET MovementType = 2 WHERE entry = 21308;
DELETE FROM creature_movement_template WHERE entry = 21308;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(21308,1,-967.271,2174.77,15.8136,10000,2130801,3.94127,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2130801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2130801,1,15,36555,0,0,0,0,0,0,0,0,0,0,0,0,'');

