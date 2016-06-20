-- Add a pool for chests in Westfall (No pool existing at all)
 
-- Add template for battered chests for westfall.
DELETE FROM pool_template WHERE entry=40000;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (40000, 3, 'Westfall - Battered Chest Pool');
 
-- Add all battered chests from westfall into the pool.
DELETE FROM pool_gameobject WHERE guid IN(42680,42681,42718,42719,42736,42738,42739,42749,42788,55545,55546,55548,55549,55550,55551,55552,55553,55554,55555);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (42680, 40000, 0, 'Westfall - Battered Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (42681, 40000, 0, 'Westfall - Battered Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (42718, 40000, 0, 'Westfall - Battered Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (42719, 40000, 0, 'Westfall - Battered Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (42736, 40000, 0, 'Westfall - Battered Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (42738, 40000, 0, 'Westfall - Battered Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (42739, 40000, 0, 'Westfall - Battered Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (42749, 40000, 0, 'Westfall - Battered Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (42788, 40000, 0, 'Westfall - Battered Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55545, 40000, 0, 'Westfall - Battered Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55546, 40000, 0, 'Westfall - Battered Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55548, 40000, 0, 'Westfall - Battered Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55549, 40000, 0, 'Westfall - Battered Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55550, 40000, 0, 'Westfall - Battered Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55551, 40000, 0, 'Westfall - Battered Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55552, 40000, 0, 'Westfall - Battered Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55553, 40000, 0, 'Westfall - Battered Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55554, 40000, 0, 'Westfall - Battered Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55555, 40000, 0, 'Westfall - Battered Chest Pool');


