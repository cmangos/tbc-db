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

# Armor and agility multiplier should be 0 for chess pieces as they have no armor
UPDATE `creature_template` SET `ArmorMultiplier` = '0', `AgilityMultiplier` = 0 WHERE (`Entry` = '17469');
UPDATE `creature_template` SET `ArmorMultiplier` = '0', `AgilityMultiplier` = 0 WHERE (`Entry` = '21748');
UPDATE `creature_template` SET `ArmorMultiplier` = '0', `AgilityMultiplier` = 0 WHERE (`Entry` = '21750');
UPDATE `creature_template` SET `ArmorMultiplier` = '0', `AgilityMultiplier` = 0 WHERE (`Entry` = '21747');
UPDATE `creature_template` SET `ArmorMultiplier` = '0', `AgilityMultiplier` = 0 WHERE (`Entry` = '21726');
UPDATE `creature_template` SET `ArmorMultiplier` = '0', `AgilityMultiplier` = 0 WHERE (`Entry` = '21752');
UPDATE `creature_template` SET `ArmorMultiplier` = '0', `AgilityMultiplier` = 0 WHERE (`Entry` = '17211');
UPDATE `creature_template` SET `ArmorMultiplier` = '0', `AgilityMultiplier` = 0 WHERE (`Entry` = '21664');
UPDATE `creature_template` SET `ArmorMultiplier` = '0', `AgilityMultiplier` = 0 WHERE (`Entry` = '21683');
UPDATE `creature_template` SET `ArmorMultiplier` = '0', `AgilityMultiplier` = 0 WHERE (`Entry` = '21682');
UPDATE `creature_template` SET `ArmorMultiplier` = '0', `AgilityMultiplier` = 0 WHERE (`Entry` = '21160');
UPDATE `creature_template` SET `ArmorMultiplier` = '0', `AgilityMultiplier` = 0 WHERE (`Entry` = '21684');

