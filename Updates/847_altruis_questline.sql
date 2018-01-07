UPDATE creature_template SET UnitFlags=33344 WHERE entry IN(21506);
DELETE FROM dbscripts_on_creature_movement WHERE id IN(2150301) AND delay IN(0) AND command IN(15) AND datalong IN(38722);
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('2150301', '0', '15', '38722', '0', '0', '21506', '30', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Spellbind Azaloth - channel onto azaloth');

DELETE FROM dbscripts_on_event WHERE id IN(14139);
INSERT INTO dbscripts_on_event(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('14139', '0', '10', '21894', '360000', '0', '0', '0', '0', '0', '0', '0', '0', '568.9283', '8653.24', '19.95006', '3.508112', 'Spawn Xeleth');
UPDATE creature_model_info SET combat_reach=2.2,bounding_radius=3 WHERE modelid = 20217;


