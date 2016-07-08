-- Add Missing GO Trap
DELETE FROM gameobject_template WHERE entry=12653;
insert into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `ScriptName`) values('12653','6','1287','Cat Figurine Trap','','','14','0','1','0','0','0','5968','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');


-- Clear Out All Old Spawns
DELETE FROM gameobject WHERE id IN (13359,13873,12653);


-- Add Required Trap Spawns (Initially Despawned So Proper GO Can Temp Spawn It)
DELETE FROM gameobject WHERE guid BETWEEN 120032 AND 120047;
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('120032','12653','1','1','7456.14','-1012.32','-9.80946','0','0','0','0','1','-1','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('120033','12653','1','1','7388.81','-1064.92','38.5052','-0.750491','0','0','0','0','-1','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('120034','12653','1','1','7312.25','-954.66','32.2666','1.78024','0','0','0','0','-1','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('120035','12653','1','1','7667.91','-994.121','35.5219','-3.01942','0','0','0','0','-1','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('120036','12653','1','1','7395.53','-782.862','7.89658','-1.51844','0','0','0','0','-1','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('120037','12653','1','1','7247.78','-864','30.767','-2','0','0','-0.841471','0.540302','-1','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('120038','12653','1','1','7286.63','-988','33.378','1.208','0','0','0.567939','0.82307','-1','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('120039','12653','1','1','7312.63','-951','32.62','1.78','0','0','0.777072','0.629412','-1','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('120040','12653','1','1','7357.62','-804','8.267','-3','0','0','-0.997495','0.0707372','-1','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('120041','12653','1','1','7369.33','-782','7.816','4.778','0','0','0.683534','-0.729919','-1','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('120042','12653','1','1','7381.15','-985','31.5038','2.88','0','0','0.991458','0.130424','-1','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('120043','12653','1','1','7389.11','-1065','38.538','-1','0','0','-0.479426','0.877583','-1','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('120044','12653','1','1','7408.14','-919','13.574','-2','0','0','-0.841471','0.540302','-1','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('120045','12653','1','1','7416.72','-1062','38.1199','2.635','0','0','0.968092','0.250596','-1','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('120046','12653','1','1','7417.82','-851','17.574','0.628','0','0','0.308866','0.951106','-1','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('120047','12653','1','1','7459.36','-836','1.29','4.28','0','0','0.84233','-0.538962','-1','255','1');



-- ====================================
-- Darkshore - Cat Figurine Master Pool
-- ====================================
-- Mother Pool
DELETE FROM pool_pool WHERE mother_pool = '29000';
INSERT INTO pool_pool (pool_id, mother_pool, chance, description) VALUES
('29001', '29000', '0', 'Darkshore - Cat Figurine Pool 1'),
('29002', '29000', '0', 'Darkshore - Cat Figurine Pool 2'),
('29003', '29000', '0', 'Darkshore - Cat Figurine Pool 3'),
('29004', '29000', '0', 'Darkshore - Cat Figurine Pool 4'),
('29005', '29000', '0', 'Darkshore - Cat Figurine Pool 5'),
('29006', '29000', '0', 'Darkshore - Cat Figurine Pool 6'),
('29007', '29000', '0', 'Darkshore - Cat Figurine Pool 7'),
('29008', '29000', '0', 'Darkshore - Cat Figurine Pool 8'),
('29009', '29000', '0', 'Darkshore - Cat Figurine Pool 9'),
('29010', '29000', '0', 'Darkshore - Cat Figurine Pool 10'),
('29011', '29000', '0', 'Darkshore - Cat Figurine Pool 11'),
('29012', '29000', '0', 'Darkshore - Cat Figurine Pool 12'),
('29013', '29000', '0', 'Darkshore - Cat Figurine Pool 13'),
('29014', '29000', '0', 'Darkshore - Cat Figurine Pool 14'),
('29015', '29000', '0', 'Darkshore - Cat Figurine Pool 15'),
('29016', '29000', '0', 'Darkshore - Cat Figurine Pool 16');

-- Master Pool Template
DELETE FROM pool_template WHERE entry = '29000';
INSERT INTO pool_template (entry, max_limit, description) VALUES
('29000', '4', 'Darkshore - Cat Figurine Master Pool');



-- -------------------------------
-- Darkshore - Cat Figurine Pool 1
-- -------------------------------
-- Gameobject Spawns
DELETE FROM gameobject WHERE guid BETWEEN '120000' AND '120001';
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
('120000', '13359', '1', '1', '7456.14', '-1012.32', '-9.80946', '0', '0', '0', '0', '1', '300', '255', '1'),
('120001', '13873', '1', '1', '7456.14', '-1012.32', '-9.80946', '0', '0', '0', '0', '1', '300', '255', '1');
-- Pool Templates
DELETE FROM pool_template WHERE entry = '29001';
INSERT INTO pool_template (entry, max_limit, description) VALUES
('29001', '1', 'Darkshore - Cat Figurine Pool 1');
-- Individual Gameobject Spawn Pools
DELETE FROM pool_gameobject WHERE pool_entry = '29001';
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
('120000', '29001', '0', 'Darkshore - Cat Figurine Pool 1 - Cat Figurine'),
('120001', '29001', '5', 'Darkshore - Cat Figurine Pool 1 - Cat Figurine');

-- -------------------------------
-- Darkshore - Cat Figurine Pool 2
-- -------------------------------
-- Gameobject Spawns
DELETE FROM gameobject WHERE guid BETWEEN '120002' AND '120003';
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
('120002', '13359', '1', '1', '7388.81', '-1064.92', '38.5052', '-0.750491', '0', '0', '0', '0', '300', '255', '1'),
('120003', '13873', '1', '1', '7388.81', '-1064.92', '38.5052', '-0.750491', '0', '0', '0', '0', '300', '255', '1');
-- Pool Templates
DELETE FROM pool_template WHERE entry = '29002';
INSERT INTO pool_template (entry, max_limit, description) VALUES
('29002', '1', 'Darkshore - Cat Figurine Pool 2');
-- Individual Gameobject Spawn Pools
DELETE FROM pool_gameobject WHERE pool_entry = '29002';
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
('120002', '29002', '0', 'Darkshore - Cat Figurine Pool 2 - Cat Figurine'),
('120003', '29002', '5', 'Darkshore - Cat Figurine Pool 2 - Cat Figurine');

-- -------------------------------
-- Darkshore - Cat Figurine Pool 3
-- -------------------------------
-- Gameobject Spawns
DELETE FROM gameobject WHERE guid BETWEEN '120004' AND '120005';
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
('120004', '13359', '1', '1', '7312.25', '-954.66', '32.2666', '1.78024', '0', '0', '0', '0', '300', '255', '1'),
('120005', '13873', '1', '1', '7312.25', '-954.66', '32.2666', '1.78024', '0', '0', '0', '0', '300', '255', '1');
-- Pool Templates
DELETE FROM pool_template WHERE entry = '29003';
INSERT INTO pool_template (entry, max_limit, description) VALUES
('29003', '1', 'Darkshore - Cat Figurine Pool 3');
-- Individual Gameobject Spawn Pools
DELETE FROM pool_gameobject WHERE pool_entry = '29003';
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
('120004', '29003', '0', 'Darkshore - Cat Figurine Pool 3 - Cat Figurine'),
('120005', '29003', '5', 'Darkshore - Cat Figurine Pool 3 - Cat Figurine');

-- -------------------------------
-- Darkshore - Cat Figurine Pool 4
-- -------------------------------
-- Gameobject Spawns
DELETE FROM gameobject WHERE guid BETWEEN '120006' AND '120007';
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
('120006', '13359', '1', '1', '7667.91', '-994.121', '35.5219', '-3.01942', '0', '0', '0', '0', '300', '255', '1'),
('120007', '13873', '1', '1', '7667.91', '-994.121', '35.5219', '-3.01942', '0', '0', '0', '0', '300', '255', '1');
-- Pool Templates
DELETE FROM pool_template WHERE entry = '29004';
INSERT INTO pool_template (entry, max_limit, description) VALUES
('29004', '1', 'Darkshore - Cat Figurine Pool 4');
-- Individual Gameobject Spawn Pools
DELETE FROM pool_gameobject WHERE pool_entry = '29004';
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
('120006', '29004', '0', 'Darkshore - Cat Figurine Pool 4 - Cat Figurine'),
('120007', '29004', '5', 'Darkshore - Cat Figurine Pool 4 - Cat Figurine');

-- -------------------------------
-- Darkshore - Cat Figurine Pool 5
-- -------------------------------
-- Gameobject Spawns
DELETE FROM gameobject WHERE guid BETWEEN '120008' AND '120009';
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
('120008', '13359', '1', '1', '7395.53', '-782.862', '7.89658', '-1.51844', '0', '0', '0', '0', '300', '255', '1'),
('120009', '13873', '1', '1', '7395.53', '-782.862', '7.89658', '-1.51844', '0', '0', '0', '0', '300', '255', '1');
-- Pool Templates
DELETE FROM pool_template WHERE entry = '29005';
INSERT INTO pool_template (entry, max_limit, description) VALUES
('29005', '1', 'Darkshore - Cat Figurine Pool 5');
-- Individual Gameobject Spawn Pools
DELETE FROM pool_gameobject WHERE pool_entry = '29005';
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
('120008', '29005', '0', 'Darkshore - Cat Figurine Pool 5 - Cat Figurine'),
('120009', '29005', '5', 'Darkshore - Cat Figurine Pool 5 - Cat Figurine');

-- -------------------------------
-- Darkshore - Cat Figurine Pool 6
-- -------------------------------
-- Gameobject Spawns
DELETE FROM gameobject WHERE guid BETWEEN '120010' AND '120011';
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
('120010', '13359', '1', '1', '7247.78', '-864', '30.767', '-2', '0', '0', '-0.841471', '0.540302', '300', '255', '1'),
('120011', '13873', '1', '1', '7247.78', '-864', '30.767', '-2', '0', '0', '-0.841471', '0.540302', '300', '255', '1');
-- Pool Templates
DELETE FROM pool_template WHERE entry = '29006';
INSERT INTO pool_template (entry, max_limit, description) VALUES
('29006', '1', 'Darkshore - Cat Figurine Pool 6');
-- Individual Gameobject Spawn Pools
DELETE FROM pool_gameobject WHERE pool_entry = '29006';
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
('120010', '29006', '0', 'Darkshore - Cat Figurine Pool 6 - Cat Figurine'),
('120011', '29006', '5', 'Darkshore - Cat Figurine Pool 6 - Cat Figurine');

-- -------------------------------
-- Darkshore - Cat Figurine Pool 7
-- -------------------------------
-- Gameobject Spawns
DELETE FROM gameobject WHERE guid BETWEEN '120012' AND '120013';
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
('120012', '13359', '1', '1', '7286.63', '-988', '33.378', '1.208', '0', '0', '0.567939', '0.82307', '300', '255', '1'),
('120013', '13873', '1', '1', '7286.63', '-988', '33.378', '1.208', '0', '0', '0.567939', '0.82307', '300', '255', '1');
-- Pool Templates
DELETE FROM pool_template WHERE entry = '29007';
INSERT INTO pool_template (entry, max_limit, description) VALUES
('29007', '1', 'Darkshore - Cat Figurine Pool 7');
-- Individual Gameobject Spawn Pools
DELETE FROM pool_gameobject WHERE pool_entry = '29007';
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
('120012', '29007', '0', 'Darkshore - Cat Figurine Pool 7 - Cat Figurine'),
('120013', '29007', '5', 'Darkshore - Cat Figurine Pool 7 - Cat Figurine');

-- -------------------------------
-- Darkshore - Cat Figurine Pool 8
-- -------------------------------
-- Gameobject Spawns
DELETE FROM gameobject WHERE guid BETWEEN '120014' AND '120015';
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
('120014', '13359', '1', '1', '7312.63', '-951', '32.62', '1.78', '0', '0', '0.777072', '0.629412', '300', '255', '1'),
('120015', '13873', '1', '1', '7312.63', '-951', '32.62', '1.78', '0', '0', '0.777072', '0.629412', '300', '255', '1');
-- Pool Templates
DELETE FROM pool_template WHERE entry = '29008';
INSERT INTO pool_template (entry, max_limit, description) VALUES
('29008', '1', 'Darkshore - Cat Figurine Pool 8');
-- Individual Gameobject Spawn Pools
DELETE FROM pool_gameobject WHERE pool_entry = '29008';
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
('120014', '29008', '0', 'Darkshore - Cat Figurine Pool 8 - Cat Figurine'),
('120015', '29008', '5', 'Darkshore - Cat Figurine Pool 8 - Cat Figurine');

-- -------------------------------
-- Darkshore - Cat Figurine Pool 9
-- -------------------------------
-- Gameobject Spawns
DELETE FROM gameobject WHERE guid BETWEEN '120016' AND '120017';
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
('120016', '13359', '1', '1', '7357.62', '-804', '8.267', '-3', '0', '0', '-0.997495', '0.0707372', '300', '255', '1'),
('120017', '13873', '1', '1', '7357.62', '-804', '8.267', '-3', '0', '0', '-0.997495', '0.0707372', '300', '255', '1');
-- Pool Templates
DELETE FROM pool_template WHERE entry = '29009';
INSERT INTO pool_template (entry, max_limit, description) VALUES
('29009', '1', 'Darkshore - Cat Figurine Pool 9');
-- Individual Gameobject Spawn Pools
DELETE FROM pool_gameobject WHERE pool_entry = '29009';
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
('120016', '29009', '0', 'Darkshore - Cat Figurine Pool 9 - Cat Figurine'),
('120017', '29009', '5', 'Darkshore - Cat Figurine Pool 9 - Cat Figurine');

-- --------------------------------
-- Darkshore - Cat Figurine Pool 10
-- --------------------------------
-- Gameobject Spawns
DELETE FROM gameobject WHERE guid BETWEEN '120018' AND '120019';
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
('120018', '13359', '1', '1', '7369.33', '-782', '7.816', '4.778', '0', '0', '0.683534', '-0.729919', '300', '255', '1'),
('120019', '13873', '1', '1', '7369.33', '-782', '7.816', '4.778', '0', '0', '0.683534', '-0.729919', '300', '255', '1');
-- Pool Templates
DELETE FROM pool_template WHERE entry = '29010';
INSERT INTO pool_template (entry, max_limit, description) VALUES
('29010', '1', 'Darkshore - Cat Figurine Pool 10');
-- Individual Gameobject Spawn Pools
DELETE FROM pool_gameobject WHERE pool_entry = '29010';
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
('120018', '29010', '0', 'Darkshore - Cat Figurine Pool 10 - Cat Figurine'),
('120019', '29010', '5', 'Darkshore - Cat Figurine Pool 10 - Cat Figurine');

-- --------------------------------
-- Darkshore - Cat Figurine Pool 11
-- --------------------------------
-- Gameobject Spawns
DELETE FROM gameobject WHERE guid BETWEEN '120020' AND '120021';
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
('120020', '13359', '1', '1', '7381.15', '-985', '31.5038', '2.88', '0', '0', '0.991458', '0.130424', '300', '255', '1'),
('120021', '13873', '1', '1', '7381.15', '-985', '31.5038', '2.88', '0', '0', '0.991458', '0.130424', '300', '255', '1');
-- Pool Templates
DELETE FROM pool_template WHERE entry = '29011';
INSERT INTO pool_template (entry, max_limit, description) VALUES
('29011', '1', 'Darkshore - Cat Figurine Pool 11');
-- Individual Gameobject Spawn Pools
DELETE FROM pool_gameobject WHERE pool_entry = '29011';
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
('120020', '29011', '0', 'Darkshore - Cat Figurine Pool 11 - Cat Figurine'),
('120021', '29011', '5', 'Darkshore - Cat Figurine Pool 11 - Cat Figurine');

-- --------------------------------
-- Darkshore - Cat Figurine Pool 12
-- --------------------------------
-- Gameobject Spawns
DELETE FROM gameobject WHERE guid BETWEEN '120022' AND '120023';
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
('120022', '13359', '1', '1', '7389.11', '-1065', '38.538', '-1', '0', '0', '-0.479426', '0.877583', '300', '255', '1'),
('120023', '13873', '1', '1', '7389.11', '-1065', '38.538', '-1', '0', '0', '-0.479426', '0.877583', '300', '255', '1');
-- Pool Templates
DELETE FROM pool_template WHERE entry = '29012';
INSERT INTO pool_template (entry, max_limit, description) VALUES
('29012', '1', 'Darkshore - Cat Figurine Pool 12');
-- Individual Gameobject Spawn Pools
DELETE FROM pool_gameobject WHERE pool_entry = '29012';
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
('120022', '29012', '0', 'Darkshore - Cat Figurine Pool 12 - Cat Figurine'),
('120023', '29012', '5', 'Darkshore - Cat Figurine Pool 12 - Cat Figurine');

-- --------------------------------
-- Darkshore - Cat Figurine Pool 13
-- --------------------------------
-- Gameobject Spawns
DELETE FROM gameobject WHERE guid BETWEEN '120024' AND '120025';
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
('120024', '13359', '1', '1', '7408.14', '-919', '13.574', '-2', '0', '0', '-0.841471', '0.540302', '300', '255', '1'),
('120025', '13873', '1', '1', '7408.14', '-919', '13.574', '-2', '0', '0', '-0.841471', '0.540302', '300', '255', '1');
-- Pool Templates
DELETE FROM pool_template WHERE entry = '29013';
INSERT INTO pool_template (entry, max_limit, description) VALUES
('29013', '1', 'Darkshore - Cat Figurine Pool 13');
-- Individual Gameobject Spawn Pools
DELETE FROM pool_gameobject WHERE pool_entry = '29013';
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
('120024', '29013', '0', 'Darkshore - Cat Figurine Pool 13 - Cat Figurine'),
('120025', '29013', '5', 'Darkshore - Cat Figurine Pool 13 - Cat Figurine');

-- --------------------------------
-- Darkshore - Cat Figurine Pool 14
-- --------------------------------
-- Gameobject Spawns
DELETE FROM gameobject WHERE guid BETWEEN '120026' AND '120027';
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
('120026', '13359', '1', '1', '7416.72', '-1062', '38.1199', '2.635', '0', '0', '0.968092', '0.250596', '300', '255', '1'),
('120027', '13873', '1', '1', '7416.72', '-1062', '38.1199', '2.635', '0', '0', '0.968092', '0.250596', '300', '255', '1');
-- Pool Templates
DELETE FROM pool_template WHERE entry = '29014';
INSERT INTO pool_template (entry, max_limit, description) VALUES
('29014', '1', 'Darkshore - Cat Figurine Pool 14');
-- Individual Gameobject Spawn Pools
DELETE FROM pool_gameobject WHERE pool_entry = '29014';
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
('120026', '29014', '0', 'Darkshore - Cat Figurine Pool 14 - Cat Figurine'),
('120027', '29014', '5', 'Darkshore - Cat Figurine Pool 14 - Cat Figurine');

-- --------------------------------
-- Darkshore - Cat Figurine Pool 15
-- --------------------------------
-- Gameobject Spawns
DELETE FROM gameobject WHERE guid BETWEEN '120028' AND '120029';
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
('120028', '13359', '1', '1', '7417.82', '-851', '17.574', '0.628', '0', '0', '0.308866', '0.951106', '300', '255', '1'),
('120029', '13873', '1', '1', '7417.82', '-851', '17.574', '0.628', '0', '0', '0.308866', '0.951106', '300', '255', '1');
-- Pool Templates
DELETE FROM pool_template WHERE entry = '29015';
INSERT INTO pool_template (entry, max_limit, description) VALUES
('29015', '1', 'Darkshore - Cat Figurine Pool 15');
-- Individual Gameobject Spawn Pools
DELETE FROM pool_gameobject WHERE pool_entry = '29015';
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
('120028', '29015', '0', 'Darkshore - Cat Figurine Pool 15 - Cat Figurine'),
('120029', '29015', '5', 'Darkshore - Cat Figurine Pool 15 - Cat Figurine');

-- --------------------------------
-- Darkshore - Cat Figurine Pool 16
-- --------------------------------
-- Gameobject Spawns
DELETE FROM gameobject WHERE guid BETWEEN '120030' AND '120031';
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
('120030', '13359', '1', '1', '7459.36', '-836', '1.29', '4.28', '0', '0', '0.84233', '-0.538962', '300', '255', '1'),
('120031', '13873', '1', '1', '7459.36', '-836', '1.29', '4.28', '0', '0', '0.84233', '-0.538962', '300', '255', '1');
-- Pool Templates
DELETE FROM pool_template WHERE entry = '29016';
INSERT INTO pool_template (entry, max_limit, description) VALUES
('29016', '1', 'Darkshore - Cat Figurine Pool 16');
-- Individual Gameobject Spawn Pools
DELETE FROM pool_gameobject WHERE pool_entry = '29016';
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
('120030', '29016', '0', 'Darkshore - Cat Figurine Pool 16 - Cat Figurine'),
('120031', '29016', '5', 'Darkshore - Cat Figurine Pool 16 - Cat Figurine');

