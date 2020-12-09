ALTER TABLE db_version CHANGE COLUMN required_s2416_01_mangos_command_ahbot required_s2419_01_mangos_power_regen bit;

UPDATE creature_template SET RegenerateStats=RegenerateStats*2 WHERE RegenerateStats>0;
-- not adding 0x001 because its unused and mobs generally do not regen hp in combat anyway
UPDATE creature_template SET RegenerateStats=RegenerateStats|0x008 WHERE RegenerateStats & 4;
UPDATE creature_template SET RegenerateStats=0x008+0x002 WHERE entry IN(15691,16524); -- aran and curator do not regen mana in combat



ALTER TABLE db_version CHANGE COLUMN required_s2419_01_mangos_power_regen required_s2422_01_mangos_creature_template_spells_extension bit;

ALTER TABLE creature_template_spells ADD COLUMN spell9 MEDIUMINT UNSIGNED NOT NULL DEFAULT '0' AFTER spell8;
ALTER TABLE creature_template_spells ADD COLUMN spell10 MEDIUMINT UNSIGNED NOT NULL DEFAULT '0' AFTER spell9;
ALTER TABLE creature_template_spells DROP PRIMARY KEY, ADD PRIMARY KEY(entry, setId);


