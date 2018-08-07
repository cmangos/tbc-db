-- Unbound Void Zone 21101,21620
UPDATE `creature_template` SET `UnitFlags` = 33554496, `FactionAlliance` = 370, `FactionHorde` = 370 WHERE `entry` IN (21101,21620);

-- Destroyed Sentinel 21761
UPDATE `creature_template` SET `FactionAlliance` = 16, `FactionHorde` = 16 WHERE `entry` = 21761;

