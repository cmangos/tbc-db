-- Improve Stats for Hathyss the Wicked 22381
UPDATE `creature_template` SET `Faction` = 90, `SpeedRun` = (7.22222 / 7), `UnitFlags` = 32768 WHERE `entry` = 22381;
UPDATE `creature_equip_template` SET `equipentry2` = 0 WHERE `entry` = 22381; -- removes wrong dualwield https://www.wowhead.com/npc=22381/hathyss-the-wicked#screenshots:id=350262

