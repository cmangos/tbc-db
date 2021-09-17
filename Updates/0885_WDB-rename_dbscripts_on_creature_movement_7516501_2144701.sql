-- Align Script with wotlk-db - https://github.com/cmangos/tbc-db/commit/a6299f1bee56d22c20ced7c0df13db229980a488#r48522668
-- (Format = creature.id * 100 + 1) = 21447 * 100 + 1 = 2144701
DELETE FROM creature_movement WHERE id=75165;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id, comment) VALUES
(75165, 1, 1960.02, 5586.95, 269.714, 100, 3600000, 2144701, '');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (7516501,2144701);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2144701, 0, 0, 10, 21441, 300000, 1, 0, 0, 0, 0, 0, 0, 0, 1913.6849, 5522.1875, 267.7038, 0.314159, 'Summon Station Sharpshooter 1'),
(2144701, 0, 1, 10, 21441, 300000, 2, 0, 0, 0, 0, 0, 0, 0, 1913.6348, 5520.9346, 267.7038, 1.343903, 'Summon Station Sharpshooter 2'),
(2144701, 0, 2, 10, 21441, 300000, 3, 0, 0, 0, 0, 0, 0, 0, 1915.1168, 5521.5146, 267.7038, 2.146754, 'Summon Station Sharpshooter 3'),
(2144701, 0, 3, 10, 21441, 300000, 4, 0, 0, 0, 0, 0, 0, 0, 1914.623, 5522.3853, 267.7038, 3.281219, 'Summon Station Sharpshooter 4'),
(2144701, 2000, 0, 10, 22089, 300000, 0, 0, 0, 0, 0, 0, 0, 0, 1914.598, 5513.3505, 318.3721, 1.37296, 'Summon Toshley Flying Machine'), -- guessed spawnpoint - it seems to fly in, but we lack data for the initial point
(2144701, 5000, 0, 0, 0, 0, 0, 21118, 250, 0, 2000010184, 2000010185, 2000010186, 2000010187, 0, 0, 0, 0, 'Razak Ironsides - Say Text (Event Start)'),

(2144701, 60000, 0, 0, 0, 0, 0, 21118, 250, 0, 2000010192, 2000010193, 0, 0, 0, 0, 0, 0, 'Razak Ironsides - Yell Guns'),

(2144701, 120000, 0, 0, 0, 0, 0, 21118, 250, 0, 2000010194, 2000010195, 0, 0, 0, 0, 0, 0, 'Razak Ironsides - Yell Call Backup'),
(2144701, 125000, 0, 10, 21426, 300000, 0, 0, 0, 0, 0, 0, 0, 0, 1876.3633, 5705.8467, 247.1551, 5.176036, 'Summon Gnome Defender - 209'),
(2144701, 125000, 1, 10, 21427, 300000, 0, 0, 0, 0, 0, 0, 0, 0, 1884.035, 5698.41, 249.87502, 5.114956, 'Summon Strider Jock 1'),
(2144701, 125000, 2, 10, 21427, 300000, 0, 0, 0, 0, 0, 0, 0, 0, 1877.7104, 5695.2476, 250.59474, 5.149606, 'Summon Strider Jock 2'),
(2144701, 125000, 3, 10, 21427, 300000, 0, 0, 0, 0, 0, 0, 0, 0, 1872.967, 5696.8286, 250.20753, 5.271997, 'Summon Strider Jock 3'),
(2144701, 125000, 4, 10, 21427, 300000, 0, 0, 0, 0, 0, 0, 0, 0, 1892.0914, 5690.191, 253.25493, 5.1773471, 'Summon Strider Jock 4'),

(2144701, 215000, 0, 0, 0, 0, 0, 21118, 250, 0, 2000010198, 2000010199, 0, 0, 0, 0, 0, 0, 'Razak Ironsides - Yell Encourage'),

(2144701, 275000, 0, 0, 0, 0, 0, 21118, 250, 0, 2000010200, 2000010201, 2000010202, 0, 0, 0, 0, 0, 'Razak Ironsides - Yell Last of Them'),

(2144701, 305000, 0, 0, 0, 0, 0, 21118, 250, 0, 2000010188, 0, 0, 0, 0, 0, 0, 0, 'Razak Ironsides - Say Text (Event End)'),
(2144701, 307000, 0, 0, 0, 0, 0, 21426, 250, 0, 2000010203, 2000010204, 0, 0, 0, 0, 0, 0, 'Gnome Defender - 209 - Say Text'),
(2144701, 310000, 0, 35, 6, 250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Send AI Event Custom B (Send Backup Away)'),

(2144701, 320000, 0, 35, 5, 250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Send AI Event Custom A (Send Sharpshooters Away)');

