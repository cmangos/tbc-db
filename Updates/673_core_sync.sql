ALTER TABLE db_version CHANGE COLUMN required_s2363_01_mangos_creature_movement_drops required_s2364_01_mangos_creature_template_leashing bit;

ALTER TABLE creature_template ADD COLUMN `Detection` INT(10) UNSIGNED NOT NULL DEFAULT '20' COMMENT 'Detection range for proximity' AFTER `SpeedRun`;
ALTER TABLE creature_template ADD COLUMN `CallForHelp` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Range in which creature calls for help?' AFTER `Detection`;
ALTER TABLE creature_template ADD COLUMN `Pursuit` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'When exceeded during pursuit creature evades?' AFTER `CallForHelp`;
ALTER TABLE creature_template ADD COLUMN `Leash` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Leash range from combat start position' AFTER `Pursuit`;
ALTER TABLE creature_template ADD COLUMN `Timeout` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Time for refreshing leashing before evade?' AFTER `Leash`;

ALTER TABLE db_version CHANGE COLUMN required_s2364_01_mangos_creature_template_leashing required_s2365_01_mangos_model_speeds bit;

ALTER TABLE creature_model_info ADD COLUMN `SpeedWalk` FLOAT NOT NULL DEFAULT '1' COMMENT 'Default walking speed for any creature with model' AFTER `combat_reach`;
ALTER TABLE creature_model_info ADD COLUMN `SpeedRun` FLOAT NOT NULL DEFAULT '1.14286' COMMENT 'Default running speed for any creature with model' AFTER `SpeedWalk`;

ALTER TABLE creature_template MODIFY COLUMN `SpeedWalk` FLOAT NOT NULL DEFAULT '0';
ALTER TABLE creature_template MODIFY COLUMN `SpeedRun` FLOAT NOT NULL DEFAULT '0';


