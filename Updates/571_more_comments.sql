ALTER TABLE db_version CHANGE COLUMN required_s2358_01_mangos_game_event_group required_s2360_01_mangos_comments bit;

ALTER TABLE conditions MODIFY comments VARCHAR(500) DEFAULT '';

ALTER TABLE dbscript_random_templates ADD comments VARCHAR(500) DEFAULT '' AFTER chance;

ALTER TABLE pickpocketing_loot_template ADD comments VARCHAR(300) DEFAULT '' AFTER condition_id;
ALTER TABLE mail_loot_template ADD comments VARCHAR(300) DEFAULT '' AFTER condition_id;


