-- Kor'kron Wind Rider 21998 - NpcFlags update from 1 to 3 when Hover = false (landing)
UPDATE `creature_template` SET `ModelId2` = 20114, `ModelId3` = 20115, `ModelId4` = 20116, `SpeedWalk` = (5 / 2.5), `SpeedRun` = (16 / 7), `NpcFlags` = 3, `UnitFlags` = 32768, `MovementType` = 2 WHERE `entry` = 21998;

-- Wildhammer Gryphon Rider 22059 - NpcFlags update from 1 to 3 when Hover = false (landing)
UPDATE `creature_template` SET `SpeedWalk` = (5 / 2.5), `SpeedRun` = (16 / 7), `UnitFlags` = 32768, `MovementType` = 2 WHERE `entry` = 22059;
REPLACE INTO `creature_template_addon` (`entry`, `mount`) VALUES (22059, 17717);

