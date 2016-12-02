ALTER TABLE npc_trainer ADD COLUMN `condition_id` mediumint(8) unsigned NOT NULL default '0' AFTER reqlevel;
ALTER TABLE npc_trainer_template ADD COLUMN `condition_id` mediumint(8) unsigned NOT NULL default '0' AFTER reqlevel;

