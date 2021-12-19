ALTER TABLE db_version CHANGE COLUMN required_s2437_01_mangos_spawn_data_template_relay required_s2438_01_mangos_spawn_groups bit;

DROP TABLE IF EXISTS spawn_group;
CREATE TABLE spawn_group(
Id INT NOT NULL COMMENT 'Spawn Group ID',
Name VARCHAR(200) NOT NULL COMMENT 'Description of usage',
Type INT NOT NULL COMMENT 'Creature or GO spawn group',
MaxCount INT NOT NULL DEFAULT '0' COMMENT 'Maximum total count of all spawns in a group',
WorldState INT NOT NULL DEFAULT '0' COMMENT 'Worldstate which enables spawning of given group',
Flags INT UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Flags for various behaviour',
PRIMARY KEY(Id)
);

DROP TABLE IF EXISTS spawn_group_spawn;
CREATE TABLE spawn_group_spawn(
Id INT NOT NULL COMMENT 'Spawn Group ID',
Guid INT NOT NULL COMMENT 'Guid of creature or GO',
PRIMARY KEY(Id, Guid)
);

DROP TABLE IF EXISTS spawn_group_entry;
CREATE TABLE spawn_group_entry(
Id INT NOT NULL COMMENT 'Spawn Group ID',
Entry INT NOT NULL COMMENT 'Entry of creature or GO',
MinCount INT NOT NULL DEFAULT '0' COMMENT 'Minimum count of entry in a group before random',
MaxCount INT NOT NULL DEFAULT '0' COMMENT 'Maximum total count of entry in a group',
Chance INT NOT NULL DEFAULT '0' COMMENT 'Chance for entry to be selected',
PRIMARY KEY(Id, Entry)
);

DROP TABLE IF EXISTS spawn_group_linked_group;
CREATE TABLE spawn_group_linked_group(
Id INT NOT NULL COMMENT 'Spawn Group ID',
LinkedId INT NOT NULL COMMENT 'Linked Spawn Group ID',
PRIMARY KEY(Id, LinkedId)
);

DELETE FROM gameobject WHERE id IN(176150,176151);
INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
('45459', '0', '0', '1', '1382.42', '-1449.85', '56.969', '1.64061', '0', '0', '0.731354', '0.681998', '60', '60', '100', '1'),
('45460', '0', '0', '1', '1360.85', '-1458.26', '56.969', '0.645772', '0', '0', '0.317305', '0.948324', '60', '60', '100', '1'),
('45461', '0', '0', '1', '1374.15', '-1448.33', '56.969', '1.69297', '0', '0', '0.748956', '0.66262', '60', '60', '100', '1'),
('45462', '0', '0', '1', '1393.88', '-1457.68', '58.3282', '2.33874', '0', '0', '0.920505', '0.390732', '60', '60', '100', '1'),
('45463', '0', '0', '1', '1360.83', '-1448.93', '56.969', '1.95477', '0', '0', '0.829038', '0.559192', '60', '60', '100', '1'),
('45464', '0', '0', '1', '1394.99', '-1450.47', '58.3282', '0.855211', '0', '0', '0.414693', '0.909961', '60', '60', '100', '1'),
('45465', '0', '0', '1', '1356.51', '-1452.11', '57.8184', '-0.296706', '0', '0', '-0.147809', '0.989016', '60', '60', '100', '1'),
('45466', '0', '0', '1', '1385.29', '-1455.31', '56.9689', '0.017453', '0', '0', '0.00872639', '0.999962', '60', '60', '100', '1'),
('45467', '0', '0', '1', '1368.85', '-1449.31', '56.969', '0.279253', '0', '0', '0.139173', '0.990268', '60', '60', '100', '1'),
('45468', '0', '0', '1', '1380.05', '-1457.83', '56.9689', '1.71042', '0', '0', '0.754709', '0.65606', '60', '60', '100', '1');

REPLACE INTO spawn_group(Id, Name, Type, MaxCount, WorldState, Flags) VALUES
(1, 'EPL - Musty Tome - Annals of Darrowshire', 1, 0, 0, 0);

REPLACE INTO spawn_group_spawn VALUES
(1,45459),
(1,45460),
(1,45461),
(1,45462),
(1,45463),
(1,45464),
(1,45465),
(1,45466),
(1,45467),
(1,45468);

REPLACE INTO spawn_group_entry(Id, Entry, MaxCount, Chance) VALUES
(1,176150,1,0),
(1,176151,9,0);

DELETE FROM `pool_gameobject_template` WHERE `Id` IN (176150,176151); -- `pool_gameobject_template` has a non existing gameobject spawn (GUID: 0 Entry 45078) defined for pool id (16476), skipped.

