-- Added missing npc 5081 (Connor Rivers) in Stormwind's Blue Recluse Inn.
-- Thanks Neotmiren for pointing and fixing.
-- Source: http://old.wowhead.com/npc=5081
DELETE FROM `creature` WHERE `id` = 5081;
INSERT INTO `creature` VALUES
(151462, 5081, 0, 1, 0, 0, -9102, 834.873, 105.117, 5.18, 600, 600, 0, 0, 1240, 0, 0, 0);

