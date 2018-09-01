-- Improve Weapon Display for Commander Arcus 23452 - https://wow.zamimg.com/uploads/screenshots/normal/80256-commander-arcus.jpg
DELETE FROM `creature_addon` WHERE `guid` IN (13564);
UPDATE `creature_template_addon` SET `b2_0_sheath` = 2, `b2_1_flags` = 16 WHERE `entry` = 23452;

