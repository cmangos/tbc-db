-- Fix Orc Warlock Poison Cloud targeting Orc units instead of Human units in Karazhan Chess Event
UPDATE `spell_script_target` SET `targetEntry` = '17211' WHERE (`entry` = '37469') and (`type` = '1') and (`targetEntry` = '17469');
UPDATE `spell_script_target` SET `targetEntry` = '21160' WHERE (`entry` = '37469') and (`type` = '1') and (`targetEntry` = '21726');
UPDATE `spell_script_target` SET `targetEntry` = '21664' WHERE (`entry` = '37469') and (`type` = '1') and (`targetEntry` = '21747');
UPDATE `spell_script_target` SET `targetEntry` = '21682' WHERE (`entry` = '37469') and (`type` = '1') and (`targetEntry` = '21748');
UPDATE `spell_script_target` SET `targetEntry` = '21683' WHERE (`entry` = '37469') and (`type` = '1') and (`targetEntry` = '21750');
UPDATE `spell_script_target` SET `targetEntry` = '21684' WHERE (`entry` = '37469') and (`type` = '1') and (`targetEntry` = '21752');

-- Fix Chess NPC action - Poison Cloud targeting Orc units instead of Human units in Karazhan Chess Event
UPDATE `spell_script_target` SET `targetEntry` = '17211' WHERE (`entry` = '37775') and (`type` = '1') and (`targetEntry` = '17469');
UPDATE `spell_script_target` SET `targetEntry` = '21160' WHERE (`entry` = '37775') and (`type` = '1') and (`targetEntry` = '21726');
UPDATE `spell_script_target` SET `targetEntry` = '21664' WHERE (`entry` = '37775') and (`type` = '1') and (`targetEntry` = '21747');
UPDATE `spell_script_target` SET `targetEntry` = '21682' WHERE (`entry` = '37775') and (`type` = '1') and (`targetEntry` = '21748');
UPDATE `spell_script_target` SET `targetEntry` = '21683' WHERE (`entry` = '37775') and (`type` = '1') and (`targetEntry` = '21750');
UPDATE `spell_script_target` SET `targetEntry` = '21684' WHERE (`entry` = '37775') and (`type` = '1') and (`targetEntry` = '21752');

-- Fix missing script targets for 37824 Shadow Mend Action
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES ('37824', '1', '17469', '0');
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES ('37824', '1', '21748', '0');
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES ('37824', '1', '21750', '0');
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES ('37824', '1', '21747', '0');
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES ('37824', '1', '21726', '0');
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES ('37824', '1', '21752', '0');

