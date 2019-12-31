-- original Classic-DB commit prompting research/rework https://github.com/cmangos/classic-db/commit/bed3e9f9af5fc07d4684742ed1d2f3b2188cb62e
-- goes with WorldState core commit https://gitlab.com/vengeancewow/tbc-vengeance/commit/df6ddbf3cf2af1afb66e88cecc7543fc1be6d602

-- Rework spawn for Emerald Dragons: they are not static spawn but should be randomly scattered amongst the four Emerald portals in the world at every server startup (early Classic settings)
-- Remove existing spawns, addons and static waypoints
DELETE FROM creature_movement WHERE id=4256;
DELETE FROM creature WHERE id IN (14890,14887,14889,14888);
DELETE FROM creature_addon WHERE guid IN (4256, 32343, 50012, 52350);

-- Add waypoints in each dragon template to be used by the one spawned in Duskwood
DELETE FROM creature_movement_template WHERE entry=14887;
INSERT INTO creature_movement_template VALUES (14887, 1, 1, -10432, -397.764, 44.0564, 3.74772, 0, 0, 'Ysondre in Duskwood');
INSERT INTO creature_movement_template VALUES (14887, 1, 2, -10446.3, -408.543, 43.0474, 3.78699, 0, 0, 'Ysondre in Duskwood');
INSERT INTO creature_movement_template VALUES (14887, 1, 3, -10467.4, -402.571, 42.3895, 3.17831, 0, 0, 'Ysondre in Duskwood');
INSERT INTO creature_movement_template VALUES (14887, 1, 4, -10501.2, -405.028, 51.5425, 4.16398, 0, 0, 'Ysondre in Duskwood');
INSERT INTO creature_movement_template VALUES (14887, 1, 5, -10504, -414.706, 49.6396, 4.56454, 0, 0, 'Ysondre in Duskwood');
INSERT INTO creature_movement_template VALUES (14887, 1, 6, -10505.4, -424.041, 49.1419, 4.53705, 0, 0, 'Ysondre in Duskwood');
INSERT INTO creature_movement_template VALUES (14887, 1, 7, -10506.5, -429.939, 47.9837, 4.95723, 0, 0, 'Ysondre in Duskwood');
INSERT INTO creature_movement_template VALUES (14887, 1, 8, -10506.9, -447.296, 48.5073, 4.59202, 0, 0, 'Ysondre in Duskwood');
INSERT INTO creature_movement_template VALUES (14887, 1, 9, -10510, -460.381, 47.8511, 4.70983, 0, 0, 'Ysondre in Duskwood');
INSERT INTO creature_movement_template VALUES (14887, 1, 10, -10507.3, -489.449, 53.4729, 5.93898, 0, 0, 'Ysondre in Duskwood');
INSERT INTO creature_movement_template VALUES (14887, 1, 11, -10495.8, -496.354, 52.7622, 6.00574, 0, 0, 'Ysondre in Duskwood');
INSERT INTO creature_movement_template VALUES (14887, 1, 12, -10474.3, -497.657, 51.3791, 0.488316, 0, 0, 'Ysondre in Duskwood');
INSERT INTO creature_movement_template VALUES (14887, 1, 13, -10458.5, -491.837, 52.7595, 0.720009, 0, 0, 'Ysondre in Duskwood');
INSERT INTO creature_movement_template VALUES (14887, 1, 14, -10444.1, -472.517, 50.125, 1.2423, 0, 0, 'Ysondre in Duskwood');
INSERT INTO creature_movement_template VALUES (14887, 1, 15, -10439, -457.246, 47.2037, 1.2423, 0, 0, 'Ysondre in Duskwood');
INSERT INTO creature_movement_template VALUES (14887, 1, 16, -10435.4, -426.287, 43.7389, 1.58002, 0, 0, 'Ysondre in Duskwood');
INSERT INTO creature_movement_template VALUES (14887, 1, 17, -10436.2, -405.776, 43.8583, 1.60751, 0, 0, 'Ysondre in Duskwood');

DELETE FROM creature_movement_template WHERE entry=14888;
INSERT INTO creature_movement_template VALUES (14888, 1, 1, -10432, -397.764, 44.0564, 3.74772, 0, 0, 'Lethon in Duskwood');
INSERT INTO creature_movement_template VALUES (14888, 1, 2, -10446.3, -408.543, 43.0474, 3.78699, 0, 0, 'Lethon in Duskwood');
INSERT INTO creature_movement_template VALUES (14888, 1, 3, -10467.4, -402.571, 42.3895, 3.17831, 0, 0, 'Lethon in Duskwood');
INSERT INTO creature_movement_template VALUES (14888, 1, 4, -10501.2, -405.028, 51.5425, 4.16398, 0, 0, 'Lethon in Duskwood');
INSERT INTO creature_movement_template VALUES (14888, 1, 5, -10504, -414.706, 49.6396, 4.56454, 0, 0, 'Lethon in Duskwood');
INSERT INTO creature_movement_template VALUES (14888, 1, 6, -10505.4, -424.041, 49.1419, 4.53705, 0, 0, 'Lethon in Duskwood');
INSERT INTO creature_movement_template VALUES (14888, 1, 7, -10506.5, -429.939, 47.9837, 4.95723, 0, 0, 'Lethon in Duskwood');
INSERT INTO creature_movement_template VALUES (14888, 1, 8, -10506.9, -447.296, 48.5073, 4.59202, 0, 0, 'Lethon in Duskwood');
INSERT INTO creature_movement_template VALUES (14888, 1, 9, -10510, -460.381, 47.8511, 4.70983, 0, 0, 'Lethon in Duskwood');
INSERT INTO creature_movement_template VALUES (14888, 1, 10, -10507.3, -489.449, 53.4729, 5.93898, 0, 0, 'Lethon in Duskwood');
INSERT INTO creature_movement_template VALUES (14888, 1, 11, -10495.8, -496.354, 52.7622, 6.00574, 0, 0, 'Lethon in Duskwood');
INSERT INTO creature_movement_template VALUES (14888, 1, 12, -10474.3, -497.657, 51.3791, 0.488316, 0, 0, 'Lethon in Duskwood');
INSERT INTO creature_movement_template VALUES (14888, 1, 13, -10458.5, -491.837, 52.7595, 0.720009, 0, 0, 'Lethon in Duskwood');
INSERT INTO creature_movement_template VALUES (14888, 1, 14, -10444.1, -472.517, 50.125, 1.2423, 0, 0, 'Lethon in Duskwood');
INSERT INTO creature_movement_template VALUES (14888, 1, 15, -10439, -457.246, 47.2037, 1.2423, 0, 0, 'Lethon in Duskwood');
INSERT INTO creature_movement_template VALUES (14888, 1, 16, -10435.4, -426.287, 43.7389, 1.58002, 0, 0, 'Lethon in Duskwood');
INSERT INTO creature_movement_template VALUES (14888, 1, 17, -10436.2, -405.776, 43.8583, 1.60751, 0, 0, 'Lethon in Duskwood');

DELETE FROM creature_movement_template WHERE entry=14889;
INSERT INTO creature_movement_template VALUES (14889, 1, 1, -10432, -397.764, 44.0564, 3.74772, 0, 0, 'Emeriss in Duskwood');
INSERT INTO creature_movement_template VALUES (14889, 1, 2, -10446.3, -408.543, 43.0474, 3.78699, 0, 0, 'Emeriss in Duskwood');
INSERT INTO creature_movement_template VALUES (14889, 1, 3, -10467.4, -402.571, 42.3895, 3.17831, 0, 0, 'Emeriss in Duskwood');
INSERT INTO creature_movement_template VALUES (14889, 1, 4, -10501.2, -405.028, 51.5425, 4.16398, 0, 0, 'Emeriss in Duskwood');
INSERT INTO creature_movement_template VALUES (14889, 1, 5, -10504, -414.706, 49.6396, 4.56454, 0, 0, 'Emeriss in Duskwood');
INSERT INTO creature_movement_template VALUES (14889, 1, 6, -10505.4, -424.041, 49.1419, 4.53705, 0, 0, 'Emeriss in Duskwood');
INSERT INTO creature_movement_template VALUES (14889, 1, 7, -10506.5, -429.939, 47.9837, 4.95723, 0, 0, 'Emeriss in Duskwood');
INSERT INTO creature_movement_template VALUES (14889, 1, 8, -10506.9, -447.296, 48.5073, 4.59202, 0, 0, 'Emeriss in Duskwood');
INSERT INTO creature_movement_template VALUES (14889, 1, 9, -10510, -460.381, 47.8511, 4.70983, 0, 0, 'Emeriss in Duskwood');
INSERT INTO creature_movement_template VALUES (14889, 1, 10, -10507.3, -489.449, 53.4729, 5.93898, 0, 0, 'Emeriss in Duskwood');
INSERT INTO creature_movement_template VALUES (14889, 1, 11, -10495.8, -496.354, 52.7622, 6.00574, 0, 0, 'Emeriss in Duskwood');
INSERT INTO creature_movement_template VALUES (14889, 1, 12, -10474.3, -497.657, 51.3791, 0.488316, 0, 0, 'Emeriss in Duskwood');
INSERT INTO creature_movement_template VALUES (14889, 1, 13, -10458.5, -491.837, 52.7595, 0.720009, 0, 0, 'Emeriss in Duskwood');
INSERT INTO creature_movement_template VALUES (14889, 1, 14, -10444.1, -472.517, 50.125, 1.2423, 0, 0, 'Emeriss in Duskwood');
INSERT INTO creature_movement_template VALUES (14889, 1, 15, -10439, -457.246, 47.2037, 1.2423, 0, 0, 'Emeriss in Duskwood');
INSERT INTO creature_movement_template VALUES (14889, 1, 16, -10435.4, -426.287, 43.7389, 1.58002, 0, 0, 'Emeriss in Duskwood');
INSERT INTO creature_movement_template VALUES (14889, 1, 17, -10436.2, -405.776, 43.8583, 1.60751, 0, 0, 'Emeriss in Duskwood');

DELETE FROM creature_movement_template WHERE entry=14890;
INSERT INTO creature_movement_template VALUES (14890, 1, 1, -10432, -397.764, 44.0564, 3.74772, 0, 0, 'Taerar in Duskwood');
INSERT INTO creature_movement_template VALUES (14890, 1, 2, -10446.3, -408.543, 43.0474, 3.78699, 0, 0, 'Taerar in Duskwood');
INSERT INTO creature_movement_template VALUES (14890, 1, 3, -10467.4, -402.571, 42.3895, 3.17831, 0, 0, 'Taerar in Duskwood');
INSERT INTO creature_movement_template VALUES (14890, 1, 4, -10501.2, -405.028, 51.5425, 4.16398, 0, 0, 'Taerar in Duskwood');
INSERT INTO creature_movement_template VALUES (14890, 1, 5, -10504, -414.706, 49.6396, 4.56454, 0, 0, 'Taerar in Duskwood');
INSERT INTO creature_movement_template VALUES (14890, 1, 6, -10505.4, -424.041, 49.1419, 4.53705, 0, 0, 'Taerar in Duskwood');
INSERT INTO creature_movement_template VALUES (14890, 1, 7, -10506.5, -429.939, 47.9837, 4.95723, 0, 0, 'Taerar in Duskwood');
INSERT INTO creature_movement_template VALUES (14890, 1, 8, -10506.9, -447.296, 48.5073, 4.59202, 0, 0, 'Taerar in Duskwood');
INSERT INTO creature_movement_template VALUES (14890, 1, 9, -10510, -460.381, 47.8511, 4.70983, 0, 0, 'Taerar in Duskwood');
INSERT INTO creature_movement_template VALUES (14890, 1, 10, -10507.3, -489.449, 53.4729, 5.93898, 0, 0, 'Taerar in Duskwood');
INSERT INTO creature_movement_template VALUES (14890, 1, 11, -10495.8, -496.354, 52.7622, 6.00574, 0, 0, 'Taerar in Duskwood');
INSERT INTO creature_movement_template VALUES (14890, 1, 12, -10474.3, -497.657, 51.3791, 0.488316, 0, 0, 'Taerar in Duskwood');
INSERT INTO creature_movement_template VALUES (14890, 1, 13, -10458.5, -491.837, 52.7595, 0.720009, 0, 0, 'Taerar in Duskwood');
INSERT INTO creature_movement_template VALUES (14890, 1, 14, -10444.1, -472.517, 50.125, 1.2423, 0, 0, 'Taerar in Duskwood');
INSERT INTO creature_movement_template VALUES (14890, 1, 15, -10439, -457.246, 47.2037, 1.2423, 0, 0, 'Taerar in Duskwood');
INSERT INTO creature_movement_template VALUES (14890, 1, 16, -10435.4, -426.287, 43.7389, 1.58002, 0, 0, 'Taerar in Duskwood');
INSERT INTO creature_movement_template VALUES (14890, 1, 17, -10436.2, -405.776, 43.8583, 1.60751, 0, 0, 'Taerar in Duskwood');

