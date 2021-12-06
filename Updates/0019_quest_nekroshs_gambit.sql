DELETE FROM dbscripts_on_quest_end WHERE id = '465';
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `data_flags`, `dataint`, `comments`) VALUES 
('465', '0', '9', '6000000', '39', '0', '0', '0', 'Nek\'rosh\'s Gambit: Respawn GameObject Big Flame Emitter'),
('465', '0', '9', '6000001', '39', '0', '0', '0', 'Nek\'rosh\'s Gambit: Respawn GameObject Big Flame Emitter'),
('465', '0', '9', '6000002', '39', '0', '0', '0', 'Nek\'rosh\'s Gambit: Respawn GameObject Big Flame Emitter'),
('465', '0', '9', '6000003', '39', '0', '0', '0', 'Nek\'rosh\'s Gambit: Respawn GameObject Big Flame Emitter'),
('465', '0', '9', '6000004', '40', '0', '0', '0', 'Nek\'rosh\'s Gambit: Respawn GameObject Big Smoke  Emitter'),
('465', '4000', '9', '6000005', '37', '0', '0', '0', 'Nek\'rosh\'s Gambit: Respawn GameObject Big Flame Emitter'),
('465', '4000', '9', '6000006', '37', '0', '0', '0', 'Nek\'rosh\'s Gambit: Respawn GameObject Big Flame Emitter'),
('465', '4000', '9', '6000007', '37', '0', '0', '0', 'Nek\'rosh\'s Gambit: Respawn GameObject Big Flame Emitter'),
('465', '4000', '9', '6000008', '37', '0', '0', '0', 'Nek\'rosh\'s Gambit: Respawn GameObject Big Flame Emitter'),
('465', '4000', '9', '6000009', '37', '0', '0', '0', 'Nek\'rosh\'s Gambit: Respawn GameObject Black Smoke Emitter'),
('465', '34000', '9', '60000010', '32', '0', '0', '0', 'Nek\'rosh\'s Gambit: Respawn GameObject White Smoke Emitter'),
('465', '34000', '9', '60000011', '32', '0', '0', '0', 'Nek\'rosh\'s Gambit: Respawn GameObject White Smoke Emitter'),
('465', '34000', '9', '60000012', '32', '0', '0', '0', 'Nek\'rosh\'s Gambit: Respawn GameObject White Smoke Emitter'),
('465', '34000', '9', '60000013', '32', '0', '0', '0', 'Nek\'rosh\'s Gambit: Respawn GameObject White Smoke Emitter'),
('465', '34000', '9', '60000014', '32', '0', '0', '0', 'Nek\'rosh\'s Gambit: Respawn GameObject White Smoke Emitter'),
('465', '34000', '9', '60000015', '32', '0', '0', '0', 'Nek\'rosh\'s Gambit: Respawn GameObject White Smoke Emitter');

UPDATE `quest_template` SET `CompleteScript`=465 WHERE `entry`=465;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`) VALUES
(6000000, 1607, 0, -3444.01, -2352.07, 54.0603, 0.925024, 0, 0, 0.446198, 0.894935, -1, -1, 1, 100),
(6000001, 1607, 0, -3443.27, -2351.39, 51.9271, 4.71239, 0, 0, -0.707107, 0.707107, -1, -1, 1, 100),
(6000002, 1607, 0, -3444.09, -2353.4, 51.9224, 0.488691, 0, 0, 0.241921, 0.970296, -1, -1, 1, 100),
(6000003, 1607, 0, -3441.88, -2352.9, 52.9477, 5.37562, 0, 0, -0.438371, 0.898794, -1, -1, 1, 100),
(6000004, 1604, 0, -3444.03, -2352.13, 54.0601, 5.77704, 0, 0, -0.25038, 0.968148, -1, -1, 1, 100),
(6000005, 1607, 0, -3451.37, -2358.24, 52.8972, 5.77704, 0, 0, -0.25038, 0.968148, -1, -1, 1, 100),
(6000006, 1607, 0, -3453.76, -2358.25, 53.9704, 4.60767, 0, 0, -0.743144, 0.669131, -1, -1, 1, 100),
(6000007, 1607, 0, -3453.48, -2356.71, 53.742, 3.4034, 0, 0, -0.991445, 0.130528, -1, -1, 1, 100),
(6000008, 1607, 0, -3453.4, -2359.79, 51.8986, 2.86234, 0, 0, 0.990268, 0.139175, -1, -1, 1, 100),
(6000009, 1604, 0, -3453.85, -2358.36, 54.1786, 6.17847, 0, 0, -0.0523357, 0.99863, -1, -1, 1, 100),
(6000010, 1605, 0, -3445.06, -2351.94, 54.1847, 4.97419, 0, 0, -0.608761, 0.793354, -1, -1, 1, 100),
(6000011, 1605, 0, -3443.92, -2353.34, 53.5624, 2.86234, 0, 0, 0.990268, 0.139175, -1, -1, 1, 100),
(6000012, 1605, 0, -3443.19, -2351.28, 53.5596, 5.63741, 0, 0, -0.317305, 0.948324, -1, -1, 1, 100),
(6000013, 1605, 0, -3453.66, -2358.2, 54.0353, 0, 0, 0, 0, 1, -1, -1, 1, 100),
(6000014, 1605, 0, -3452.61, -2359.31, 53.5008, 0.488691, 0, 0, 0.241921, 0.970296, -1, -1, 1, 100),
(6000015, 1605, 0, -3452.63, -2357.11, 54.0741, 5.37562, 0, 0, -0.438371, 0.898794, -1, -1, 1, 100);
