UPDATE creature_template_addon SET auras='39311' WHERE entry IN(20243);
UPDATE creature_template SET FactionAlliance=16,FactionHorde=16 WHERE entry IN(20287);
DELETE FROM creature_linking_template WHERE entry IN(20287); -- script handles it

UPDATE creature_template SET SpeedWalk=(7/2.5), SpeedRun=(12/7) WHERE entry=20243;
UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(8/7), MovementType=2 WHERE entry=20287;

DELETE FROM creature_movement_template WHERE entry IN(20287) AND pathId > 0;
INSERT INTO creature_movement_template(entry, pathId, point, position_x, position_y, position_z, waittime, orientation, script_id) VALUES
(20287, 1, 1, 2556.563, 3969.015, 131.099, 0, 100, 0),
(20287, 1, 2, 2535.538, 3992.952, 137.4138, 1000, 100, 0),

(20287, 2, 1, 2538.997, 3957.29, 128.0989, 0, 100, 0),
(20287, 2, 2, 2527.418, 3972.693, 127.7893, 1000, 100, 0),

(20287, 3, 1, 2496.478, 3987.993, 129.061, 0, 100, 0),
(20287, 3, 2, 2510.035, 3995.931, 132.1609, 1000, 100, 0),

(20287, 4, 1, 2494.564, 4020.812, 133.1337, 0, 100, 0), -- these two last ones are guesswork
(20287, 4, 2, 2518.717, 4008.459, 133.8864, 100, 100, 0);


