UPDATE creature SET MovementType=2, spawndist=0 WHERE guid IN (91940,91946,92235,92264);
DELETE FROM creature_movement WHERE id IN (91940,91946,92235,92264);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id, comment) VALUES
(91940, 0, 2814.52, -3757.79, 122.507, 100, 10000, 855301, 'Necromancer - Cast Blackfathom Channeling'),
(91946, 0, 2855.31, -3232.34, 134.27, 100, 10000, 855301, 'Necromancer - Cast Blackfathom Channeling'),
(92235, 0, 3135.96, -3867.93, 135.447, 100, 10000, 855301, 'Necromancer - Cast Blackfathom Channeling'),
(92264, 0, 3185.53, -3456.8, 165.529, 100, 10000, 855301, 'Necromancer - Cast Blackfathom Channeling');

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = '855301';
INSERT INTO `dbscripts_on_creature_movement` (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('855301', '0', '0', '47', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stop Channeling'),
('855301', '5000', '0', '15', '8734', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cast Aura Blackfathom Channeling');


