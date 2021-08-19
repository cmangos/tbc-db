-- https://www.wowhead.com/item=32453/stars-tears#comments:id=89397
-- Correct BuyCount for Star's Tears 32453 & Star's Lament 32455
UPDATE `item_template` SET `BuyCount` = 5 WHERE `entry` IN (32453,32455);

