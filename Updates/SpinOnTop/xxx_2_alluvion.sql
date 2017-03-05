
SET @CGUID := x; -- [-1/+4]
SET @CPOOL := y;

-- -----------------------------

DELETE FROM `creature` WHERE `id`=21730;

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CGUID + 01, '21730', '530', '1', '0', '0', '-3724.602', '3545.677', '252.3527', '5.759586', '600', '0', '0', '1', '0', '0', '0'),
(@CGUID + 02, '21730', '530', '1', '0', '0', '-3744.415', '3428.090', '249.5807', '4.153883', '600', '0', '0', '1', '0', '0', '0'),
(@CGUID + 03, '21730', '530', '1', '0', '0', '-3972.009', '3429.267', '263.5916', '4.276057', '600', '0', '0', '1', '0', '0', '0'),
(@CGUID + 04, '21730', '530', '1', '0', '0', '-3889.069', '3579.562', '249.9326', '5.759586', '600', '0', '0', '1', '0', '0', '0');

REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(@CPOOL, '1', 'Terokkar Forest - Alluvion');

REPLACE INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('21730', @CPOOL, '0', 'Terokkar Forest - Alluvion (21730)');

UPDATE `creature_template` SET `DamageSchool`='4' WHERE `Entry`='21730';
