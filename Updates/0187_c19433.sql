-- Fix UnitFlags for CoT Hillsbrad Despawn Trigger Unit 19433
UPDATE `creature_template` SET `UnitFlags` = 33554432 WHERE `entry` =  19433;

