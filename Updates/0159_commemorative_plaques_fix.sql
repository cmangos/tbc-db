/*small fix for the commemorative plaques in the royal gallery*/

DELETE FROM game_event_gameobject WHERE guid IN (31619);
-- shouldn't be part of a game event

DELETE FROM gameobject WHERE id IN (177200,177202,177201) AND guid IN (20458,20459,31619);
INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
('20458', '177200', '0', '1', '-8337.724', '519.8453', '122.939224', '-1.1194002628326416', '-0.66757154', '-0.23312569', '-0.66757107', '0.23312989', '120', '120', '100', '1'),
('31619', '177201', '0', '1', '-8338.468', '509.13562', '122.93091', '0', '-0.307199', '-0.63688946', '-0.30719852', '0.6368906', '120', '120', '100', '1'),
('20459', '177202', '0', '1', '-8347.636', '520.9723', '122.939224', '0', '-0.307199', '-0.63688946', '-0.30719852', '0.6368906', '120', '120', '100', '1');
