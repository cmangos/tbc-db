-- fix position/movement of Station Technicians
UPDATE creature SET position_x=1916.855, position_y=5521.492, position_z=280.536316 WHERE guid=74217;
UPDATE creature SET position_x=1885.872, position_y=5575.559, position_z=259.612, MovementType=1, spawndist=5 WHERE guid=74216;
UPDATE creature SET MovementType=0, spawndist=0 WHERE guid IN (74148,74147,74149,74153,74154,74156,74157,74152,74151);
UPDATE creature SET position_x=1943.78, position_y=5599.0747, position_z=267.372 WHERE guid=74157;
DELETE FROM creature_movement WHERE id=74157;
DELETE FROM creature_addon WHERE guid=74154;

-- remove Sharpshooters which should only be present during attack event
DELETE FROM creature WHERE guid IN (84343,84349,84342,84348);

DELETE FROM dbscripts_on_relay WHERE id=10164;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10164, 0, 0, 15, 35132, 0, 0, 21234, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blade''s Edge Stalker - Cast Boom'),
(10164, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Station Technician - Stop Emote'),
(10164, 0, 2, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Station Technician - Set Run On'),
(10164, 0, 3, 20, 1, 5, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Station Technician - Timed Random Movement'),
(10164, 8000, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Station Technician - Set Run Off'),
(10164, 8000, 1, 14, 36301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Station Technician - Remove Aura On Fire');

-- Blade's Edge Invisible Stalker 21234
-- Should occasionally cast 35132 Boom (related to OOC event for Technicians, also used to clean up the attacking Gore-Scythe Ravagers?)


