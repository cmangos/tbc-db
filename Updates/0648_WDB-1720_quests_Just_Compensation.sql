-- Quests 'Just Compensation'
-- depends of players class
-- The Left Piece of Lord Valthalak's Amulet & Components of Importance
UPDATE `quest_template` SET `RequiredClasses`=  129 WHERE `entry` in (8962,8966); -- Warrior / Mage
UPDATE `quest_template` SET `RequiredClasses`= 1280 WHERE `entry` in (8963,8967); -- Druid / Warlock
UPDATE `quest_template` SET `RequiredClasses`=   12 WHERE `entry` in (8964,8968); -- Hunter / Rogue
UPDATE `quest_template` SET `RequiredClasses`=   82 WHERE `entry` in (8965,8969); -- Priest / Paladin / Shaman
-- The Right Piece of Lord Valthalak's Amulet & Components of Importance
UPDATE `quest_template` SET `RequiredClasses`=    9 WHERE `entry` in (8985,8990); -- Warrior / Rogue
UPDATE `quest_template` SET `RequiredClasses`= 1090 WHERE `entry` in (8986,8989); -- Druid / Paladin / Shaman
UPDATE `quest_template` SET `RequiredClasses`=  144 WHERE `entry` in (8987,8991); -- Priest / Mage
UPDATE `quest_template` SET `RequiredClasses`=  260 WHERE `entry` in (8988,8992); -- Hunter / Warlock

