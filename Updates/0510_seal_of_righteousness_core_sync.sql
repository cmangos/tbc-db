ALTER TABLE db_version CHANGE COLUMN required_s2381_01_mangos_creature_template_faction_removal required_s2382_01_mangos_seal_of_righteousness_restored bit;

DELETE FROM `spell_chain` WHERE `spell_id` IN (20154, 21084, 20287, 20288, 20289, 20290, 20291, 20292, 20293, 27155);
INSERT INTO `spell_chain` VALUES
/* Seal of Righteousness (serverside extension) */
(20287,21084,20154,3,0),
(20288,20287,20154,4,0),
(20289,20288,20154,5,0),
(20290,20289,20154,6,0),
(20291,20290,20154,7,0),
(20292,20291,20154,8,0),
(20293,20292,20154,9,0),
(27155,20293,20154,10,0);

UPDATE `playercreateinfo_action` SET `action` = 20154 WHERE `action` = 21084 AND `type` = 0;

UPDATE `playercreateinfo_spell` SET `Spell` = 20154 WHERE `Spell` = 21084;

UPDATE `npc_trainer_template` SET `spell` = 10321 WHERE `spell` = 20271;

UPDATE `npc_trainer` SET `spell` = 10321 WHERE `spell` = 20271;

ALTER TABLE db_version CHANGE COLUMN required_s2382_01_mangos_seal_of_righteousness_restored required_s2383_01_mangos_seal_of_righteousness_proc_restored bit;

DELETE FROM `spell_chain` WHERE `spell_id` IN (25742, 25741, 25740, 25739, 25738, 25737, 25736, 25735, 25713, 27156);
INSERT INTO `spell_chain` VALUES
/* Seal of Righteousness Proc */
(25742,0,25742,1,0),
(25741,25742,25742,2,0),
(25740,25741,25742,3,0),
(25739,25740,25742,4,0),
(25738,25739,25742,5,0),
(25737,25738,25742,6,0),
(25736,25737,25742,7,0),
(25735,25736,25742,8,0),
(25713,25735,25742,9,0),
(27156,25713,25742,10,0);

ALTER TABLE db_version CHANGE COLUMN required_s2383_01_mangos_seal_of_righteousness_proc_restored required_s2384_01_mangos_seal_of_righteousness_cleanup bit;

DELETE FROM `npc_trainer_template` WHERE `spell` IN (20154, 20271, 21084);

DELETE FROM `npc_trainer` WHERE `spell` IN (20154, 20271, 21084);


