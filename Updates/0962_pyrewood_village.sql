-- Correct Stats for Pyrewood Village Npcs (2.4++)
-- Add VendorItems for Pyrewood Npcs
-- Add path for Pyrewood Tailor 3530
-- Resolves: https://github.com/cmangos/issues/issues/1674
-- Pyrewood Area became nonelite somewhere between 7799_V2_3_3_7799 and 9183_V3_0_3_9183
-- http://www.wowhead.com/quest=99/arugals-folly#comments:id=229671:reply=29513
-- http://www.wowhead.com/quest=450/a-recipe-for-death#comments:id=283546
-- https://www.wowhead.com/quest=452/pyrewood-ambush#comments:id=307673
-- Most values were already corrected in wotlk-db
UPDATE `creature_template` SET `Healthmultiplier` = 1, `MinLevelHealth` = 273, `MaxLevelHealth` = 300, `Damagemultiplier` = 1, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1892; -- Moonrage Watcher
UPDATE `creature_template` SET `Healthmultiplier` = 1, `MinLevelHealth` = 300, `MaxLevelHealth` = 328, `Damagemultiplier` = 1, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1893; -- Moonrage Sentry
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `Healthmultiplier` = 1, `MinLevelHealth` = 276, `MaxLevelHealth` = 301, `MinLevelHealth` = 276, `MaxLevelHealth` = 301, `Damagemultiplier` = 1, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1896; -- Moonrage Elder
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `Healthmultiplier` = 1, `MinLevelHealth` = 300, `MaxLevelHealth` = 328, `Damagemultiplier` = 1, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 3529; -- Moonrage Armorer
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `Healthmultiplier` = 1, `MinLevelHealth` = 300, `MaxLevelHealth` = 328, `Damagemultiplier` = 1, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 3531; -- Moonrage Tailor
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `Healthmultiplier` = 1, `MinLevelHealth` = 300, `MaxLevelHealth` = 328, `Damagemultiplier` = 1, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 3533; -- Moonrage Leatherworker

UPDATE `creature_template` SET `Healthmultiplier` = 1, `MinLevelHealth` = 273, `MaxLevelHealth` = 300, `Damagemultiplier` = 1 WHERE `entry` = 1891; -- Pyrewood Watcher
UPDATE `creature_template` SET `Healthmultiplier` = 1, `MinLevelHealth` = 300, `MaxLevelHealth` = 328, `Damagemultiplier` = 1 WHERE `entry` = 1894; -- Pyrewood Sentry
UPDATE `creature_template` SET `Healthmultiplier` = 1, `MinLevelHealth` = 276, `MaxLevelHealth` = 301, `Damagemultiplier` = 1 WHERE `entry` = 1895; -- Pyrewood Elder
UPDATE `creature_template` SET `Healthmultiplier` = 1, `MinLevelHealth` = 300, `MaxLevelHealth` = 328, `Damagemultiplier` = 1, `VendorTemplateId` = 239 WHERE `entry` = 3528; -- Pyrewood Armorer
UPDATE `creature_template` SET `Healthmultiplier` = 1, `MinLevelHealth` = 300, `MaxLevelHealth` = 328, `Damagemultiplier` = 1, `VendorTemplateId` = 201 WHERE `entry` = 3530; -- Pyrewood Tailor (Movement)
UPDATE `creature_template` SET `Healthmultiplier` = 1, `MinLevelHealth` = 300, `MaxLevelHealth` = 328, `Damagemultiplier` = 1, `VendorTemplateId` = 218 WHERE `entry` = 3532; -- Pyrewood Leatherworker

UPDATE `creature_template` SET `rank` = 0, `Healthmultiplier` = 1, `MinLevelHealth` = 247, `MaxLevelHealth` = 247, `Damagemultiplier` = 1 WHERE `entry` = 2060; -- Councilman Smithers (LvL 12)
UPDATE `creature_template` SET `rank` = 0, `Healthmultiplier` = 1, `MinLevelHealth` = 273, `MaxLevelHealth` = 273, `Damagemultiplier` = 1 WHERE `entry` IN (2061,2062,2063,2064,2065,2066,2067); -- Councilman (LvL 13)
UPDATE `creature_template` SET `rank` = 0, `Healthmultiplier` = 1, `MinLevelHealth` = 328, `MaxLevelHealth` = 328, `Damagemultiplier` = 1 WHERE `entry` = 2068; -- Lord Mayor Morrison (LvL 15)
UPDATE `creature_template` SET `rank` = 0, `Healthmultiplier` = 1, `MinLevelHealth` = 356, `MaxLevelHealth` = 356, `Damagemultiplier` = 1 WHERE `entry` = 2106; -- Apothecary Berard

UPDATE `creature` SET `spawndist` = 1, `MovementType` = 1 WHERE `id` = 2106; -- https://www.wowhead.com/npc=2106/apothecary-berard#screenshots:id=29703
UPDATE `creature` SET `spawndist` = 3 WHERE `guid` IN (19224,19229); -- walks into wall
UPDATE `creature` SET `position_x` = -328.9885, `position_y` = 1531.251, `position_z` = 18.00105, `orientation` = 4.031711, `MovementType` = 2 WHERE `id` = 3530;
DELETE FROM `creature_movement_template` WHERE `entry` = 3530;
INSERT INTO `creature_movement_template` (`entry`, `pathid`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`) VALUES
(3530, 0, 1, -331.5994, 1512.646, 17.06103, 100, 0),
(3530, 0, 2, -338.3188, 1509.113, 18.79338, 100, 0),
(3530, 0, 3, -345.9572, 1504.301, 18.79903, 100, 0),
(3530, 0, 4, -354.1824, 1497.598, 18.80909, 100, 0),
(3530, 0, 5, -360.7778, 1495.355, 17.22692, 100, 10000), -- old position Position: X: -360.2778, 1495.027, 17.19595, 0.8305263 i dont think path is concluded here
(3530, 0, 6, -354.1824, 1497.598, 18.80909, 100, 0),
(3530, 0, 7, -345.9572, 1504.301, 18.79903, 100, 0),
(3530, 0, 8, -338.3188, 1509.113, 18.79338, 100, 0),
(3530, 0, 9, -331.5994, 1512.646, 17.06103, 100, 0),
(3530, 0, 10, -328.9885, 1531.251, 18.00105, 4.031711, 60000);

DELETE FROM `npc_vendor` WHERE `entry` = 3528; -- additonal items apart from VendorTemplateId
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES (3528, 1202),(3528, 17187);

