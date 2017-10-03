-- Give Lieutenant Fangore Immunity to shadow damage
-- 100% tested and working
UPDATE creature_template_addon SET `auras`='7743 0' WHERE `entry` IN ('703');

-- Add a pool for chests in Westfall (No pool existing at all)
 
-- Add template for battered chests 2 for westfall.
 
DELETE FROM `pool_template` WHERE entry=40002;
 
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (40002, 3, 'Westfall - Battered Chest Pool 2');
 
-- Add all battered chests 2 from westfall into the pool.
 
DELETE FROM `pool_gameobject` WHERE pool_entry=40002;
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (42684, 40002, 0, 'Westfall - Battered Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (42734, 40002, 0, 'Westfall - Battered Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (42748, 40002, 0, 'Westfall - Battered Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55462, 40002, 0, 'Westfall - Battered Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55464, 40002, 0, 'Westfall - Battered Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55466, 40002, 0, 'Westfall - Battered Chest Pool 2');

-- Fix princess (390) & adds (330)
 
-- Fix flag (FLAG_FOLLOW, FLAG_AGGRO_ON_AGGRO, FLAG_TO_AGGRO_ON_AGGRO)
 
UPDATE creature_linking_template SET `flag`='515' WHERE  `entry`=390;


