-- classic-db
-- Correct Sellprices for DMT Loot (was probably altered to prevent abuse befor it was fixed by classic-db team)
UPDATE `item_template` SET `SellPrice` = 96748 WHERE `entry` = 18538; -- Treant's Bane
UPDATE `item_template` SET `SellPrice` = 20465 WHERE `entry` = 18528; -- Cyclone Spaulders
UPDATE `item_template` SET `SellPrice` = 16770 WHERE `entry` = 18495; -- Redoubt Cloak
UPDATE `item_template` SET `SellPrice` = 21629 WHERE `entry` = 18532; -- Mindsurge Robe
UPDATE `item_template` SET `SellPrice` = 31331 WHERE `entry` = 18530; -- Ogre Forged Hauberk
UPDATE `item_template` SET `SellPrice` = 10984 WHERE `entry` = 18533; -- Gordok Bracers of Power
UPDATE `item_template` SET `SellPrice` = 9963 WHERE `entry` = 18529; -- Elemental Plate Girdle
UPDATE `item_template` SET `SellPrice` = 31340 WHERE `entry` = 18500; -- Tarnished Elven Ring
UPDATE `item_template` SET `SellPrice` = 66135 WHERE `entry` = 18537; -- Counterattack Lodestone
UPDATE `item_template` SET `SellPrice` = 34589 WHERE `entry` = 18499; -- Barrier Shield
UPDATE `item_template` SET `SellPrice` = 65383 WHERE `entry` = 18531; -- Unyielding Maul
UPDATE `item_template` SET `SellPrice` = 71503 WHERE `entry` = 18534; -- Rod of the Ogre Magi
UPDATE `item_template` SET `SellPrice` = 17791 WHERE `entry` = 18479; -- Carrion Scorpid Helm
UPDATE `item_template` SET `SellPrice` = 11860 WHERE `entry` = 18480; -- Scarab Plate Helm
UPDATE `item_template` SET `SellPrice` = 19768 WHERE `entry` = 18478; -- Hyena Hide Jerkin
UPDATE `item_template` SET `SellPrice` = 7907 WHERE `entry` = 18475; -- Oddly Magical Belt
UPDATE `item_template` SET `SellPrice` = 19768 WHERE `entry` = 18477; -- Shaggy Leggings
UPDATE `item_template` SET `SellPrice` = 15149 WHERE `entry` = 18476; -- Mud Stained Boots
UPDATE `item_template` SET `SellPrice` = 30986 WHERE `entry` = 18482; -- Ogre Toothpick Shooter
UPDATE `item_template` SET `SellPrice` = 51451 WHERE `entry` = 18481; -- Skullcracking Mace

-- Add missing Schematic: Major Recombobulator 18655
-- Included in refloot 35037

