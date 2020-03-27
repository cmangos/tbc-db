UPDATE creature SET MovementType=2 WHERE id=16204;
DELETE FROM creature_movement_template WHERE entry=16204;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id, comment) VALUES
(16204, 0, 1, 7198.52, -7093.96, 66.5416, 0.366519, 1800000, 1620401, 'Start Magister Idonis and Arcanist Janeda dialogue');
DELETE FROM dbscripts_on_creature_movement WHERE id=1620401;
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1620401, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000010179, 0, 0, 0, 0, 0, 0, 0, 'Magister Idoni - say text'),
(1620401, 6000, 0, 0, 0, 0, 0, 16240, 85878, 16, 2000010180, 0, 0, 0, 0, 0, 0, 0, 'Arcanist Janeda - say text');
DELETE FROM dbscript_string WHERE entry IN (2000010179,2000010180);
INSERT INTO dbscript_string (entry, content_default, broadcast_text_id, comment) VALUES
(2000010179,'Why doesn''t Kaendris move against Dar''Khan yet?  What is it we''re waiting for?',12594,'Magister Idonis 16204'),
(2000010180,'We must remain focused on our work.  Once the sanctum starts producing at full capacity, Silvermoon will be forced to send help.  Functioning arcane sanctums are in short supply.',12597,'Arcanist Janeda 16240');


