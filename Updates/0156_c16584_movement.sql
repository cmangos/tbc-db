-- Watch Commander Krunk (Entry: 16584)
UPDATE creature SET position_x=121.944, position_y=2709.22, position_z=88.9118, orientation=2.50658 WHERE guid=57557;
DELETE FROM creature_movement WHERE id=57557;
DELETE FROM creature_movement_template WHERE entry=16584;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id, comment) VALUES
(16584, 0, 1, 121.944, 2709.22, 88.9118, 2.50658, 0, 0, ''),
(16584, 0, 2, 142.177, 2701.69, 87.5098, 0.354571, 0, 0, ''),
(16584, 0, 3, 152.296, 2704.52, 87.5955, 0.209272, 0, 0, ''),
(16584, 0, 4, 141.349, 2702.37, 87.6533, 2.87177, 0, 0, '');


