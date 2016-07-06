-- Added missing equipment for creature 14221 (Gravis Slipknot)
-- Thanks Scotty0100 for pointing and @beach-creature for providing the right values. This closes #615 
UPDATE `creature_template` SET `EquipmentTemplateId` = 2217 WHERE `Entry` = 14221;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 2217;
INSERT INTO `creature_equip_template_raw` VALUES
(2217, 4788, 0, 0, 33490690, 0, 0, 781, 0, 0);

-- NOTE: USED NEW ID AT VERY END OF EXISTING NON-CONVERTED ID FOR FUTURE CONVERSION


