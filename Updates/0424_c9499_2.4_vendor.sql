-- Update Plugger Spazzring 9499 Vendor to post ~2.4 tbc+
-- maybe related to introduction of brewfest
UPDATE `npc_vendor` SET `maxcount` = 0, `incrtime` = 0 WHERE `entry` = 9499 AND `item` = 13483;
DELETE FROM `npc_vendor` WHERE `entry` = 9499 AND `item` IN (38427,38428,38429,38430,38431,38432,38466);
INSERT INTO `npc_vendor` (`entry`,`item`) VALUES (9499, 38427),(9499, 38428),(9499, 38429),(9499, 38430),(9499, 38431),(9499, 38432),(9499, 38466);
UPDATE `item_template` SET `BuyCount` = 5 WHERE `entry` IN (38427,38428,38429,38430,38431);

