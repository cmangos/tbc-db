DELETE FROM `creature` WHERE `guid` = 51859 AND `id` = 5847;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
('51859', '5847', '1', '0', '0', '-4071.817626953125', '-2163.270751953125', '50.65045928955078125', '3.089232683181762695', '14400', '21600', '0', '0');

REPLACE INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('5847', '1258', '0', 'Heggin Stonewhisker (5847)'),
('599', '1220', '0', 'Marisa du''Paige (599)');

REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1258', '1', 'Heggin Stonewhisker (5847)'),
('1220', '1', 'Marisa du''Paige (599)');

