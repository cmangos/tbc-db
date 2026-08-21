-- Flame Wave 19381 & Flame Wave II 22228 should not Chase
UPDATE `creature_template` SET `StaticFlags1` = `StaticFlags1`|33554432 WHERE `entry` IN (19381,22228);