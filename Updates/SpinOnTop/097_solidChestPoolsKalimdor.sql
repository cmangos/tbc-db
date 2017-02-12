-- Insert Solid Chest Pools Kalimdor
-- Solid Chest (2850, 2852, 2855, 2857, 4149, 153451, 153453, 153454)
-- Xinito

-- Add pool templates for each zone

DELETE FROM `pool_template` WHERE `entry` IN (40030, 40031, 40032, 40033, 40034, 40035, 40036, 40037, 40038);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (40030, 2, 'Stonetalon Mountains - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (40031, 3, 'Ashenvale - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (40032, 3, 'Thousand Needles - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (40033, 1, 'The Barrens - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (40034, 3, 'Desolace - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (40035, 5, 'Dustwallow Marsh - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (40036, 3, 'Tanaris - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (40037, 3, 'Azshara - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (40038, 2, 'Winterspring - Solid Chest Pool');

-- Add all gameobjects to correct pool

DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (40030, 40031, 40032, 40033, 40034, 40035, 40036, 40037, 40038);

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (47816, 40031, 0, 'Ashenvale - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (47817, 40031, 0, 'Ashenvale - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (47818, 40031, 0, 'Ashenvale - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (47819, 40031, 0, 'Ashenvale - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (47820, 40031, 0, 'Ashenvale - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (47824, 40031, 0, 'Ashenvale - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (47825, 40031, 0, 'Ashenvale - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (47826, 40031, 0, 'Ashenvale - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (47827, 40031, 0, 'Ashenvale - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55800, 40031, 0, 'Ashenvale - Solid Chest Pool');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (48362, 40037, 0, 'Azshara - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (48363, 40037, 0, 'Azshara - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (48364, 40037, 0, 'Azshara - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (48365, 40037, 0, 'Azshara - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (48366, 40037, 0, 'Azshara - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (48367, 40037, 0, 'Azshara - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (48368, 40037, 0, 'Azshara - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (48369, 40037, 0, 'Azshara - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (48370, 40037, 0, 'Azshara - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (48371, 40037, 0, 'Azshara - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55813, 40037, 0, 'Azshara - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55954, 40037, 0, 'Azshara - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55955, 40037, 0, 'Azshara - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55956, 40037, 0, 'Azshara - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55957, 40037, 0, 'Azshara - Solid Chest Pool');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (30169, 40034, 0, 'Desolace - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (30170, 40034, 0, 'Desolace - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (30171, 40034, 0, 'Desolace - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (30178, 40034, 0, 'Desolace - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (30182, 40034, 0, 'Desolace - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (30183, 40034, 0, 'Desolace - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (30184, 40034, 0, 'Desolace - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (56702, 40034, 0, 'Desolace - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (56703, 40034, 0, 'Desolace - Solid Chest Pool');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (9096, 40035, 0, 'Dustwallow Marsh - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (11755, 40035, 0, 'Dustwallow Marsh - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (13632, 40035, 0, 'Dustwallow Marsh - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (14618, 40035, 0, 'Dustwallow Marsh - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (14619, 40035, 0, 'Dustwallow Marsh - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (14931, 40035, 0, 'Dustwallow Marsh - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (40758, 40035, 0, 'Dustwallow Marsh - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (40772, 40035, 0, 'Dustwallow Marsh - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (40796, 40035, 0, 'Dustwallow Marsh - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55802, 40035, 0, 'Dustwallow Marsh - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55803, 40035, 0, 'Dustwallow Marsh - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55805, 40035, 0, 'Dustwallow Marsh - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55806, 40035, 0, 'Dustwallow Marsh - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55807, 40035, 0, 'Dustwallow Marsh - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55808, 40035, 0, 'Dustwallow Marsh - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55809, 40035, 0, 'Dustwallow Marsh - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55948, 40035, 0, 'Dustwallow Marsh - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55951, 40035, 0, 'Dustwallow Marsh - Solid Chest Pool');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (40712, 40030, 0, 'Stonetalon Mountains - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (40713, 40030, 0, 'Stonetalon Mountains - Solid Chest Pool');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (17298, 40036, 0, 'Tanaris - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (17299, 40036, 0, 'Tanaris - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (17300, 40036, 0, 'Tanaris - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (17329, 40036, 0, 'Tanaris - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (17330, 40036, 0, 'Tanaris - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (17331, 40036, 0, 'Tanaris - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55804, 40036, 0, 'Tanaris - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55812, 40036, 0, 'Tanaris - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55949, 40036, 0, 'Tanaris - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55950, 40036, 0, 'Tanaris - Solid Chest Pool');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (13079, 40033, 0, 'The Barrens - Solid Chest Pool');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (16715, 40032, 0, 'Thousand Needles - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (16718, 40032, 0, 'Thousand Needles - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (16719, 40032, 0, 'Thousand Needles - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (16720, 40032, 0, 'Thousand Needles - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (16721, 40032, 0, 'Thousand Needles - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (16722, 40032, 0, 'Thousand Needles - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55801, 40032, 0, 'Thousand Needles - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55947, 40032, 0, 'Thousand Needles - Solid Chest Pool');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49088, 40038, 0, 'Winterspring - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49089, 40038, 0, 'Winterspring - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49090, 40038, 0, 'Winterspring - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (49091, 40038, 0, 'Winterspring - Solid Chest Pool');


