-- Correct Amount of Fish/Meat Rewarded from Barrel of Fish 33844 & Crate of Meat 33857
-- https://www.wowhead.com/item=33857/crate-of-meat#comments:id=221671:reply=31320 5-8
-- https://www.wowhead.com/item=33844/barrel-of-fish#contains 4-6
UPDATE `reference_loot_template` SET `maxcount` = 6 WHERE `entry` = 10003;
UPDATE `reference_loot_template` SET `maxcount` = 8 WHERE `entry` = 10004;
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (10003, 'Barrel of Fish 33844'),(10004, 'Crate of Meat 33857');

