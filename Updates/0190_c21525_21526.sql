-- Gatewatcher Gyro-Kill 21525 & Gatewatcher Iron-Hand 21526 should save to dungeon on heroic
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1 WHERE `entry` IN (21525,21526);

