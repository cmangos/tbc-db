/* Old values
INSERT INTO gameobject VALUES
('15125', '123330', '1', '1', '-1458.06', '-3972.06', '8.26139', '1.39626', '0', '0', '0', '0', '5', '100', '1'),
('15123', '123330', '1', '1', '-1462.45', '-3966.9', '7.56138', '-0.017453', '0', '0', '0', '0', '5', '100', '1'),
('15122', '123330', '1', '1', '-1453.02', '-3969.75', '7.56026', '2.49582', '0', '0', '0', '0', '5', '100', '1'),
('15121', '123330', '1', '1', '-1452.1', '-3966.4', '7.56134', '-3.07178', '0', '0', '0', '0', '5', '100', '1'),
('15120', '123330', '1', '1', '-1461.56', '-3970.03', '7.56018', '0.750492', '0', '0', '0', '0', '5', '100', '1'),
('15119', '123330', '1', '1', '-1456.44', '-3971.63', '7.56249', '1.8326', '0', '0', '0', '0', '5', '100', '1'),
('15683', '123331', '1', '1', '-1458.06', '-3972.06', '8.26139', '1.39626', '0', '0', '0', '0', '5', '100', '1'),
('15145', '123331', '1', '1', '-1463', '-3968.46', '7.56007', '0.069813', '0', '0', '0', '0', '5', '100', '1'),
('15702', '123333', '1', '1', '-1454.38', '-3971.26', '7.5598', '2.14675', '0', '0', '0', '0', '5', '100', '1');
*/

#1: 
#15119 this already existed for me
DELETE FROM gameobject WHERE guid=15119;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('150042', '123330', '1', '1', '-1456.44', '-3971.63', '7.56249', '1.8326', '0', '0', '0', '0', '5', '100', '1'),
('150043', '123331', '1', '1', '-1456.44', '-3971.63', '7.56249', '1.8326', '0', '0', '0', '0', '5', '100', '1'),
('150044', '123332', '1', '1', '-1456.44', '-3971.63', '7.56249', '1.8326', '0', '0', '0', '0', '5', '100', '1'),
('150045', '123333', '1', '1', '-1456.44', '-3971.63', '7.56249', '1.8326', '0', '0', '0', '0', '5', '100', '1'),
('150046', '123334', '1', '1', '-1456.44', '-3971.63', '7.56249', '1.8326', '0', '0', '0', '0', '5', '100', '1'),
('150047', '123355', '1', '1', '-1456.44', '-3971.63', '7.56249', '1.8326', '0', '0', '0', '0', '5', '100', '1');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
('150042', '16453', '0', 'Buccaneer\'s Strongbox 1-1'),
('150043', '16453', '0', 'Buccaneer\'s Strongbox 1-2'),
('150044', '16453', '15', 'Buccaneer\'s Strongbox 1-3'),
('150045', '16453', '15', 'Buccaneer\'s Strongbox 1-4');
	
#2: 
#15120 this already existed for me
    
DELETE FROM gameobject WHERE guid=15120;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('150048', '123330', '1', '1', '-1461.56', '-3970.03', '7.56018', '0.750492', '0', '0', '0', '0', '5', '100', '1'),
('150049', '123331', '1', '1', '-1461.56', '-3970.03', '7.56018', '0.750492', '0', '0', '0', '0', '5', '100', '1'),
('150050', '123332', '1', '1', '-1461.56', '-3970.03', '7.56018', '0.750492', '0', '0', '0', '0', '5', '100', '1'),
('150051', '123333', '1', '1', '-1461.56', '-3970.03', '7.56018', '0.750492', '0', '0', '0', '0', '5', '100', '1'),
('150052', '123334', '1', '1', '-1461.56', '-3970.03', '7.56018', '0.750492', '0', '0', '0', '0', '5', '100', '1'),
('150053', '123355', '1', '1', '-1461.56', '-3970.03', '7.56018', '0.750492', '0', '0', '0', '0', '5', '100', '1');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
('150048', '16454', '0', 'Buccaneer\'s Strongbox 2-1'),
('150049', '16454', '0', 'Buccaneer\'s Strongbox 2-2'),
('150050', '16454', '15', 'Buccaneer\'s Strongbox 2-3'),
('150051', '16454', '15', 'Buccaneer\'s Strongbox 2-4');
  
#3: 
#15121 this already existed for me
    
DELETE FROM gameobject WHERE guid=15121;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('150054', '123330', '1', '1', '-1452.1', '-3966.4', '7.56134', '-3.07178', '0', '0', '0', '0', '5', '100', '1'),
('150055', '123331', '1', '1', '-1452.1', '-3966.4', '7.56134', '-3.07178', '0', '0', '0', '0', '5', '100', '1'),
('150056', '123332', '1', '1', '-1452.1', '-3966.4', '7.56134', '-3.07178', '0', '0', '0', '0', '5', '100', '1'),
('150057', '123333', '1', '1', '-1452.1', '-3966.4', '7.56134', '-3.07178', '0', '0', '0', '0', '5', '100', '1'),
('150058', '123334', '1', '1', '-1452.1', '-3966.4', '7.56134', '-3.07178', '0', '0', '0', '0', '5', '100', '1'),
('150059', '123355', '1', '1', '-1452.1', '-3966.4', '7.56134', '-3.07178', '0', '0', '0', '0', '5', '100', '1');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
('150054', '16455', '0', 'Buccaneer\'s Strongbox 3-1'),
('150055', '16455', '0', 'Buccaneer\'s Strongbox 3-2'),
('150056', '16455', '15', 'Buccaneer\'s Strongbox 3-3'),
('150057', '16455', '15', 'Buccaneer\'s Strongbox 3-4');
  
#4: 
#15122 this already existed for me
    
DELETE FROM gameobject WHERE guid=15122;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('150060', '123330', '1', '1', '-1453.02', '-3969.75', '7.56026', '2.49582', '0', '0', '0', '0', '5', '100', '1'),
('150061', '123331', '1', '1', '-1453.02', '-3969.75', '7.56026', '2.49582', '0', '0', '0', '0', '5', '100', '1'),
('150062', '123332', '1', '1', '-1453.02', '-3969.75', '7.56026', '2.49582', '0', '0', '0', '0', '5', '100', '1'),
('150063', '123333', '1', '1', '-1453.02', '-3969.75', '7.56026', '2.49582', '0', '0', '0', '0', '5', '100', '1'),
('150064', '123334', '1', '1', '-1453.02', '-3969.75', '7.56026', '2.49582', '0', '0', '0', '0', '5', '100', '1'),
('150065', '123355', '1', '1', '-1453.02', '-3969.75', '7.56026', '2.49582', '0', '0', '0', '0', '5', '100', '1');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
('150060', '16456', '0', 'Buccaneer\'s Strongbox 4-1'),
('150061', '16456', '0', 'Buccaneer\'s Strongbox 4-2'),
('150062', '16456', '15', 'Buccaneer\'s Strongbox 4-3'),
('150063', '16456', '15', 'Buccaneer\'s Strongbox 4-4');
  
#5: 
#15123 this already existed for me
    
DELETE FROM gameobject WHERE guid=15123;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('150066', '123330', '1', '1', '-1462.45', '-3966.9', '7.56138', '-0.017453', '0', '0', '0', '0', '5', '100', '1'),
('150067', '123331', '1', '1', '-1462.45', '-3966.9', '7.56138', '-0.017453', '0', '0', '0', '0', '5', '100', '1'),
('150068', '123332', '1', '1', '-1462.45', '-3966.9', '7.56138', '-0.017453', '0', '0', '0', '0', '5', '100', '1'),
('150069', '123333', '1', '1', '-1462.45', '-3966.9', '7.56138', '-0.017453', '0', '0', '0', '0', '5', '100', '1'),
('150070', '123334', '1', '1', '-1462.45', '-3966.9', '7.56138', '-0.017453', '0', '0', '0', '0', '5', '100', '1'),
('150071', '123355', '1', '1', '-1462.45', '-3966.9', '7.56138', '-0.017453', '0', '0', '0', '0', '5', '100', '1');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
('150066', '16457', '0', 'Buccaneer\'s Strongbox 5-1'),
('150067', '16457', '0', 'Buccaneer\'s Strongbox 5-2'),
('150068', '16457', '15', 'Buccaneer\'s Strongbox 5-3'),
('150069', '16457', '15', 'Buccaneer\'s Strongbox 5-4');
  
#6: 
#15125 this already existed for me

DELETE FROM gameobject WHERE guid IN(15125,15683);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('150072', '123330', '1', '1', '-1458.06', '-3972.06', '8.26139', '1.39626', '0', '0', '0', '0', '5', '100', '1'),
('150073', '123331', '1', '1', '-1458.06', '-3972.06', '8.26139', '1.39626', '0', '0', '0', '0', '5', '100', '1'),
('150074', '123332', '1', '1', '-1458.06', '-3972.06', '8.26139', '1.39626', '0', '0', '0', '0', '5', '100', '1'),
('150075', '123333', '1', '1', '-1458.06', '-3972.06', '8.26139', '1.39626', '0', '0', '0', '0', '5', '100', '1'),
('150076', '123334', '1', '1', '-1458.06', '-3972.06', '8.26139', '1.39626', '0', '0', '0', '0', '5', '100', '1'),
('150077', '123355', '1', '1', '-1458.06', '-3972.06', '8.26139', '1.39626', '0', '0', '0', '0', '5', '100', '1');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
('150072', '16458', '0', 'Buccaneer\'s Strongbox 6-1'),
('150073', '16458', '0', 'Buccaneer\'s Strongbox 6-2'),
('150074', '16458', '15', 'Buccaneer\'s Strongbox 6-3'),
('150075', '16458', '15', 'Buccaneer\'s Strongbox 6-4');
  
#7: 
#15145 this already existed for me
    
DELETE FROM gameobject WHERE guid=15145;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('150078', '123330', '1', '1', '-1463', '-3968.46', '7.56007', '0.069813', '0', '0', '0', '0', '5', '100', '1'),
('150079', '123331', '1', '1', '-1463', '-3968.46', '7.56007', '0.069813', '0', '0', '0', '0', '5', '100', '1'),
('150080', '123332', '1', '1', '-1463', '-3968.46', '7.56007', '0.069813', '0', '0', '0', '0', '5', '100', '1'),
('150081', '123333', '1', '1', '-1463', '-3968.46', '7.56007', '0.069813', '0', '0', '0', '0', '5', '100', '1'),
('150082', '123334', '1', '1', '-1463', '-3968.46', '7.56007', '0.069813', '0', '0', '0', '0', '5', '100', '1'),
('150083', '123355', '1', '1', '-1463', '-3968.46', '7.56007', '0.069813', '0', '0', '0', '0', '5', '100', '1');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
('150078', '16459', '0', 'Buccaneer\'s Strongbox 7-1'),
('150079', '16459', '0', 'Buccaneer\'s Strongbox 7-2'),
('150080', '16459', '15', 'Buccaneer\'s Strongbox 7-3'),
('150081', '16459', '15', 'Buccaneer\'s Strongbox 7-4');
  
#8: 
#15702 this already existed for me
    
DELETE FROM gameobject WHERE guid=15702;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('150084', '123330', '1', '1', '-1454.38', '-3971.26', '7.5598', '2.14675', '0', '0', '0', '0', '5', '100', '1'),
('150085', '123331', '1', '1', '-1454.38', '-3971.26', '7.5598', '2.14675', '0', '0', '0', '0', '5', '100', '1'),
('150086', '123332', '1', '1', '-1454.38', '-3971.26', '7.5598', '2.14675', '0', '0', '0', '0', '5', '100', '1'),
('150087', '123333', '1', '1', '-1454.38', '-3971.26', '7.5598', '2.14675', '0', '0', '0', '0', '5', '100', '1'),
('150088', '123334', '1', '1', '-1454.38', '-3971.26', '7.5598', '2.14675', '0', '0', '0', '0', '5', '100', '1'),
('150089', '123355', '1', '1', '-1454.38', '-3971.26', '7.5598', '2.14675', '0', '0', '0', '0', '5', '100', '1');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
('150084', '16460', '0', 'Buccaneer\'s Strongbox 8-1'),
('150085', '16460', '0', 'Buccaneer\'s Strongbox 8-2'),
('150086', '16460', '15', 'Buccaneer\'s Strongbox 8-3'),
('150087', '16460', '15', 'Buccaneer\'s Strongbox 8-4');
	
#pool_template entries:
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) 
	VALUES ('16453', '1', 'Buccaneer\'s Strongbox 1');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) 
	VALUES ('16454', '1', 'Buccaneer\'s Strongbox 2');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) 
	VALUES ('16455', '1', 'Buccaneer\'s Strongbox 3');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) 
	VALUES ('16456', '1', 'Buccaneer\'s Strongbox 4');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) 
	VALUES ('16457', '1', 'Buccaneer\'s Strongbox 5');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) 
	VALUES ('16458', '1', 'Buccaneer\'s Strongbox 6');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) 
	VALUES ('16459', '1', 'Buccaneer\'s Strongbox 7');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) 
	VALUES ('16460', '1', 'Buccaneer\'s Strongbox 8');
	
#pool_pool entires:
#INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) 
#	VALUES ('16453', '30001', '0', 'Barrens - Buccaneer\'s Strongbox 1');
#INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) 
#	VALUES ('16454', '30001', '0', 'Barrens - Buccaneer\'s Strongbox 2');
#INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) 
#	VALUES ('16455', '30001', '0', 'Barrens - Buccaneer\'s Strongbox 3');
#INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) 
#	VALUES ('16456', '30001', '0', 'Barrens - Buccaneer\'s Strongbox 4');	
#INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) 
#	VALUES ('16457', '30001', '0', 'Barrens - Buccaneer\'s Strongbox 5');
#INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) 
#	VALUES ('16458', '30001', '0', 'Barrens - Buccaneer\'s Strongbox 6');
#INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) 
#	VALUES ('16459', '30001', '0', 'Barrens - Buccaneer\'s Strongbox 7');
#INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) 
#	VALUES ('16460', '30001', '0', 'Barrens - Buccaneer\'s Strongbox 8');


