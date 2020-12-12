DELETE FROM game_tele WHERE id=1429;
INSERT INTO game_tele (id, position_x, position_y, position_z, orientation, map, name) VALUES
(1429, 16226.412, 16403.41, -64.38, 3.155, 1, 'GMPrison');

DELETE FROM game_tele WHERE id=1430;
INSERT INTO game_tele (id, position_x, position_y, position_z, orientation, map, name) VALUES
(1430, -731.333, 7912.51, 53.3919, 5.83241, 530, 'RingOfBlood');

DELETE FROM game_tele WHERE id IN (1431,1432,1433,1434,1435);
INSERT INTO game_tele (id, position_x, position_y, position_z, orientation, map, name) VALUES
(1431, 2830.72, 4263.41, 162.792, 1.65212, 530, 'ManaforgeBnaar'),
(1432, 3858.29, 4072.52, 188.076, 5.73225, 530, 'ManaforgeAra'),
(1433, 3972.79, 2204.06, 237.951, 4.58074, 530, 'ManaforgeUltris'),
(1434, 3135.34, 2252.19, 149.824, 3.49223, 530, 'ManaforgeDuro'),
(1435, 2499.61, 2903.14, 132.257, 3.87709, 530, 'ManaforgeCoruu');


