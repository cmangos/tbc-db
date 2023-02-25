-- s2462_01_mangos_creature_drops
ALTER TABLE db_version CHANGE COLUMN required_s2461_01_mangos_addon_rename required_s2462_01_mangos_creature_drops bit;

-- SELECT * FROM creature where modelid != 0;
-- SELECT * FROM creature where currentwaypoint != 0;
-- SELECT * FROM creature where curhealth NOT IN (0,1);
-- SELECT * FROM creature where curmana NOT IN (0,1);
-- SELECT * FROM creature where DeathState != 0;
ALTER TABLE creature DROP COLUMN modelid;
ALTER TABLE creature DROP COLUMN currentwaypoint;
ALTER TABLE creature DROP COLUMN curhealth;
ALTER TABLE creature DROP COLUMN curmana;
ALTER TABLE creature DROP COLUMN DeathState;

-- s2463_01_mangos_spawn_data_equip
ALTER TABLE db_version CHANGE COLUMN required_s2462_01_mangos_creature_drops required_s2463_01_mangos_spawn_data_equip bit;

ALTER TABLE `creature_spawn_data_template` CHANGE `EquipmentId` `EquipmentId` MEDIUMINT(8) NOT NULL DEFAULT '-1';

UPDATE `creature_spawn_data_template` SET `EquipmentId` = -1 WHERE `EquipmentId` = 0;

-- todo: remove creature.equipment_id, port to creature_spawn_data_template.EquipmentId (-1) defaults to creature_template.equipmenttemplateid
-- 0 sets no equipment (used quite often, so this is a smart solution to remove equipment.)

