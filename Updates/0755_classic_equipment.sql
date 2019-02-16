-- Source classic-db
-- preparation work befor cherry picking https://github.com/cmangos/classic-db/commit/d81ec82a5a684581fac44fa4893d21b9a57634f3, which has alot of false data
-- Addition
UPDATE `creature_template` SET `EquipmentTemplateId`='1896' WHERE `entry`='1896'; -- Moonrage Elder
UPDATE `creature_template` SET `EquipmentTemplateId`='3533' WHERE `entry`='3533'; -- Moonrage Leatherworker
UPDATE `creature_template` SET `EquipmentTemplateId`='3875' WHERE `entry`='3875'; -- Haunted Servitor
UPDATE `creature_template` SET `EquipmentTemplateId`='12128' WHERE `entry`='12128'; -- Crimson Elite
UPDATE `creature_template` SET `EquipmentTemplateId`='14281' WHERE `entry`='14281'; -- Jimmy the Bleeder
UPDATE `creature_template` SET `EquipmentTemplateId`='14324' WHERE `entry`='14324'; -- Cho'Rush the Observer
UPDATE `creature_template` SET `EquipmentTemplateId`='14849' WHERE `entry`='14849'; -- Darkmoon Faire Carnie
UPDATE `creature_template` SET `EquipmentTemplateId`='16440' WHERE `entry`='16440'; -- Highlord Mograine Transform <The Ashbringer>

DELETE FROM `creature_equip_template` WHERE `entry` IN (1896,3533,3875,12128,14281,14324,14849,16440);
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES 
(1896, 5303, 0, 0),
(3533, 5284, 0, 0),
(3875, 2827, 0, 0),
(12128, 12403, 0, 0),
(14281, 2180, 2081, 2551),
(14324, 14618, 0, 0),
(14849, 3362, 13604, 0),
(16440, 22709, 0, 0);

-- Remove
UPDATE `creature_template` SET `EquipmentTemplateId`='0' WHERE `entry`='1458'; -- Telurinon Moonshadow
UPDATE `creature_template` SET `EquipmentTemplateId`='0' WHERE `entry`='1482'; -- Andrea Halloran
UPDATE `creature_template` SET `EquipmentTemplateId`='0' WHERE `entry`='3754'; -- Xavian Betrayer
UPDATE `creature_template` SET `EquipmentTemplateId`='0' WHERE `entry`='4054'; -- Laughing Sister
UPDATE `creature_template` SET `EquipmentTemplateId`='0' WHERE `entry`='4400'; -- Mudrock Snapjaw
UPDATE `creature_template` SET `EquipmentTemplateId`='0' WHERE `entry`='8402'; -- Enslaved Archaeologist
UPDATE `creature_template` SET `EquipmentTemplateId`='0' WHERE `entry`='9396'; -- Ground Pounder
UPDATE `creature_template` SET `EquipmentTemplateId`='0' WHERE `entry`='11598'; -- Risen Guardian
UPDATE `creature_template` SET `EquipmentTemplateId`='0' WHERE `entry`='14277'; -- Lady Zephris
UPDATE `creature_template` SET `EquipmentTemplateId`='0' WHERE `entry`='15312'; -- Obsidian Nullifier
UPDATE `creature_template` SET `EquipmentTemplateId`='0' WHERE `entry`='16167'; -- Bony Construct

DELETE FROM `creature_equip_template` WHERE `entry` IN (55439,55443,3754,4054,51074,55188,55280,55505,55023,51418,55071);
DELETE FROM `creature_equip_template_raw` WHERE `entry` IN (51074,51418);

