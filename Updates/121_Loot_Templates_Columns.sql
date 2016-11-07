-- ============================================
-- ADD ADDITIONAL COMMENT FIELDS TO LOOT TABLES
-- ============================================
ALTER TABLE disenchant_loot_template ADD comments VARCHAR(300) DEFAULT '';
ALTER TABLE fishing_loot_template ADD comments VARCHAR(300) DEFAULT '';
ALTER TABLE item_loot_template ADD comments VARCHAR(300) DEFAULT '';
ALTER TABLE prospecting_loot_template ADD comments VARCHAR(300) DEFAULT '';
ALTER TABLE skinning_loot_template ADD comments VARCHAR(300) DEFAULT '';
ALTER TABLE creature_loot_template ADD comments VARCHAR(300) DEFAULT '';
ALTER TABLE gameobject_loot_template ADD comments VARCHAR(300) DEFAULT '';
ALTER TABLE reference_loot_template ADD comments VARCHAR(300) DEFAULT '';

-- =================================
-- ADD NEW REFERENCE LOOT NAME TABLE
-- =================================
DROP TABLE IF EXISTS `reference_loot_template_names`;
CREATE TABLE `reference_loot_template_names` (
  `entry` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Reference Loot Template Names';


