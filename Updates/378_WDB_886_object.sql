-- Ras Frostwhisper
-- Door to his room should open automatic. without players intervention
DELETE FROM dbscripts_on_go_template_use WHERE id = 175617;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3,buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(175617, 5, 13, 0, 0, 0, 177370, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Scholomance - activate Ras Door');
