-- https://classic.wowhead.com/npc=16505/naxxramas-follower#screenshots:id=47030
-- https://classic.wowhead.com/npc=15953/grand-widow-faerlina#screenshots:id=75055
UPDATE `creature_template` SET `EquipmentTemplateId` = '16505' WHERE (`Entry` = '16505');
REPLACE INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(16505, 5491, 0, 0);

