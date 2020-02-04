UPDATE `creature_template` SET `MaxLootGold`='0', `EquipmentTemplateId`='15045' WHERE `entry`='15045'; -- Arathi Farmer
UPDATE `creature_template` SET `MaxLootGold`='0', `EquipmentTemplateId`='15046' WHERE `entry`='15046'; -- Forsaken Farmer
UPDATE `creature_template` SET `MaxLootGold`='0', `EquipmentTemplateId`='15062' WHERE `entry`='15062'; -- Arathi Lumberjack
UPDATE `creature_template` SET `MaxLootGold`='0', `EquipmentTemplateId`='15063' WHERE `entry`='15063'; -- Arathi Blacksmith
UPDATE `creature_template` SET `MaxLootGold`='0', `EquipmentTemplateId`='15064' WHERE `entry`='15064'; -- Forsaken Blacksmith
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='15065'; -- Lady
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='15066'; -- Cleo
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='15071'; -- Underfoot
UPDATE `creature_template` SET `MinLevel`='5', `MaxLevel`='5' WHERE `entry`='15072'; -- Spike
UPDATE `creature_template` SET `MaxLootGold`='0', `EquipmentTemplateId`='15074' WHERE `entry`='15074'; -- Arathi Miner
UPDATE `creature_template` SET `MaxLootGold`='0', `EquipmentTemplateId`='15075' WHERE `entry`='15075'; -- Forsaken Miner
UPDATE `creature_template` SET `MaxLootGold`='0', `EquipmentTemplateId`='15087' WHERE `entry`='15087'; -- Forsaken Stablehand
UPDATE `creature_template` SET `MaxLootGold`='0', `EquipmentTemplateId`='15089' WHERE `entry`='15089'; -- Forsaken Lumberjack
UPDATE `creature_template` SET `MaxLootGold`='0' WHERE `entry`='15107'; -- Arathi Horse
UPDATE `creature_template` SET `MaxLootGold`='0' WHERE `entry`='15108'; -- Forsaken Horse
UPDATE `creature_template` SET `EquipmentTemplateId`='15086' WHERE `entry`='15086'; -- Arathi Stablehand
UPDATE `creature_template` SET `EquipmentTemplateId`='15551' WHERE `entry`='15551'; -- Spectral Stable Hand
UPDATE `creature_template` SET `EquipmentTemplateId`='18278' WHERE `entry`='18278'; -- Pilot Marsha
UPDATE `creature_template` SET `EquipmentTemplateId`='18408' WHERE `entry`='18408'; -- Warden Moi'bff Jill
UPDATE `creature_template` SET `EquipmentTemplateId`='19159' WHERE `entry`='19159'; -- Allerian Peasant Cosmetic
UPDATE `creature_template` SET `EquipmentTemplateId`='19355' WHERE `entry`='19355'; -- Shadowmoon Peon
UPDATE `creature_template` SET `EquipmentTemplateId`='19425' WHERE `entry`='19425'; -- Orgrimmar Peon
UPDATE `creature_template` SET `EquipmentTemplateId`='19444' WHERE `entry`='19444'; -- Peasant Worker
UPDATE `creature_template` SET `EquipmentTemplateId`='19737' WHERE `entry`='19737'; -- Engineering Crewmember
UPDATE `creature_template` SET `EquipmentTemplateId`='20876' WHERE `entry`='20876'; -- Human Refugee

DELETE FROM `creature_equip_template` WHERE `entry` IN (55389,55087,55316);
REPLACE INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(15074, 1910, 0, 0),
(15075, 1910, 0, 0),
(15087, 1910, 0, 0),
(15089, 19015, 0, 0),
(15062, 19015, 0, 0),
(15063, 1903, 0, 0),
(15064, 1903, 0, 0),
(15045, 3367, 0, 0),
(15046, 3367, 0, 0),

(15086, 3367, 0, 0), -- 55389
(15551, 3367, 0, 0), -- 55389

(18278, 1903, 0, 0), -- 55316
(18408, 1903, 0, 0), -- 55316
(19159, 1903, 0, 0), -- 55316
(19355, 1903, 0, 0), -- 55316
(19425, 1903, 0, 0), -- 55316
(19444, 1903, 0, 0), -- 55316
(19737, 1903, 0, 0), -- 55316
(20876, 1903, 0, 0), -- 55316
-- Table `creature` have creature (Entry: 20203) with equipment_id 55316 not found in table `creature_equip_template` or `creature_equip_template_raw`, set to no equipment.
-- Table `creature` have creature (Entry: 20203) with equipment_id 55316 not found in table `creature_equip_template` or `creature_equip_template_raw`, set to no equipment.
-- Table `creature` have creature (Entry: 20203) with equipment_id 55316 not found in table `creature_equip_template` or `creature_equip_template_raw`, set to no equipment.
-- Table `creature` have creature (Entry: 20203) with equipment_id 55316 not found in table `creature_equip_template` or `creature_equip_template_raw`, set to no equipment.
(20203, 1903, 0, 0); -- 55316
-- https://www.wowhead.com/npc=1885/scarlet-smith#screenshots:id=54942
-- Table `creature` have creature (Entry: 1885) with equipment_id 55316 not found in table `creature_equip_template` or `creature_equip_template_raw`, set to no equipment.
-- Table `creature` have creature (Entry: 1885) with equipment_id 55316 not found in table `creature_equip_template` or `creature_equip_template_raw`, set to no equipment.

UPDATE `creature` SET `equipment_id` = 20203 WHERE `guid` IN (71807,71809,71816,71818) AND `id` = 20203;
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 1885; -- shield & hammer
