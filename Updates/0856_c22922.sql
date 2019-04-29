-- Innkeeper Aelerya 22922
UPDATE `creature` SET `position_x` = 3022.902, `position_y` = 5435.593, `position_z` = 146.7005, `orientation` = 2.146755 WHERE `id` = 22922;
UPDATE `creature_template` SET `NpcFlags` = 65537 WHERE `entry` = 22922;
DELETE FROM `npc_vendor` WHERE `entry` = 22922; -- i.21815,21829,21833 condition 474

