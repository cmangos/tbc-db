
UPDATE `creature_template` SET `UnitFlags`='64', `SpeedWalk`='0.666668', `Rank`='2', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `ResistanceShadow`='0', `MovementType`='1' WHERE `Entry`='11447';
UPDATE `creature_template` SET `UnitFlags`='64', `SpeedWalk`='1', `Rank`='2', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MovementType`='1' WHERE `Entry`='11497';
UPDATE `creature_template` SET `SpeedWalk`='1', `Rank`='2', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MovementType`='1', `EquipmentTemplateId`='6' WHERE `Entry`='11498';

DELETE FROM `creature_equip_template_raw` WHERE `entry`='6';
INSERT INTO `creature_equip_template_raw` (`entry`, `equipmodel1`, `equipmodel2`, `equipmodel3`, `equipinfo1`, `equipinfo2`, `equipinfo3`, `equipslot1`, `equipslot2`, `equipslot3`) VALUES
('6', '782', '0', '0', '33489666', '0', '0', '781', '0', '0');



