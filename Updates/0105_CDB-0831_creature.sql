-- Added missing NPC 12797 (Grunt Korf) and 12798 (Grunt Bek'rah) in Orgrimmar
-- Source: UDB
DELETE FROM `creature` WHERE `id` IN (12797, 12798);
INSERT INTO `creature` VALUES
(160695, 12797, 1, 1, 0, 0, 1643.48, -4217.4, 56.381908, 0.446869, 300, 300, 0, 0, 4079, 0, 0, 0),
(160696, 12798, 1, 1, 0, 0, 1656.62, -4224.73, 56.375851, 1.68466, 300, 300, 0, 0, 4079, 0, 0, 0);

