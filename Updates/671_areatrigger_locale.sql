UPDATE areatrigger_teleport SET status_failed_text='You must be part of a Raid group, at least level 50 and have the Drakefire Amulet in your inventory to enter.' WHERE id IN(2848);
UPDATE areatrigger_teleport SET status_failed_text='You must be part of a Raid group and at least level 50 to enter.' WHERE id IN(3928);
UPDATE areatrigger_teleport SET status_failed_text='You must be level 70+, in a raid group and possess The Medallion of Karabor.' WHERE id IN(4598);
UPDATE areatrigger_teleport SET status_failed_text='You must be level 51+, in a Raid group, and be attuned to Naxxramas to enter.' WHERE id IN(4055);

ALTER TABLE db_version CHANGE COLUMN required_s2361_01_mangos_questgiver_greeting required_s2362_01_mangos_area_trigger_locales bit;

DROP TABLE IF EXISTS `locales_areatrigger_teleport`;
CREATE TABLE `locales_areatrigger_teleport` (
   `Entry` INT(11) UNSIGNED NOT NULL COMMENT 'Entry of Areatrigger Teleport',
   `Text_loc1` LONGTEXT COMMENT 'Text of the status_failed locale 1',
   `Text_loc2` LONGTEXT COMMENT 'Text of the status_failed locale 2',
   `Text_loc3` LONGTEXT COMMENT 'Text of the status_failed locale 3',
   `Text_loc4` LONGTEXT COMMENT 'Text of the status_failed locale 4',
   `Text_loc5` LONGTEXT COMMENT 'Text of the status_failed locale 5',
   `Text_loc6` LONGTEXT COMMENT 'Text of the status_failed locale 6',
   `Text_loc7` LONGTEXT COMMENT 'Text of the status_failed locale 7',
   `Text_loc8` LONGTEXT COMMENT 'Text of the status_failed locale 8',
   PRIMARY KEY(`Entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Areatrigger System';


