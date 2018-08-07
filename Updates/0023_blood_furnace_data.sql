-- Broggok Poison Cloud 17662,18602
UPDATE `creature_template` SET `HeroicEntry` = 18602, `UnitFlags` = 33947648 WHERE `entry` = 17662;
UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 70, `FactionAlliance` = 14, `FactionHorde` = 14, `UnitFlags` = 33947648 WHERE `entry` = 18602; -- 524288

-- Broggok 17380,18601
UPDATE `creature_template` SET `UnitFlags` = 32832 WHERE `entry` = 17380;
UPDATE `creature_template` SET `UnitFlags` = 32832 WHERE `entry` = 18601;

-- Fel Orc Neophyte 17429,18603
UPDATE `creature_template` SET `FactionAlliance` = 16, `FactionHorde` = 16, `UnitFlags` = 32832 WHERE `entry` IN (17429,18603);

-- Nascent Fel Orc 17398,18612
UPDATE `creature_template` SET `FactionAlliance` = 16, `FactionHorde` = 16, `UnitFlags` = 32832 WHERE `entry` IN (17398,18612);
