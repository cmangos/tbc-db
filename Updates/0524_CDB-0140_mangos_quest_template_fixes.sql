-- fixing the "you learn spell" from quest windows, from 6 quests of Dalar Dawnweaver, 
-- adding quest end scripts so dalar dawnweaver cast spell on Player, fixing the not enough mana bug.
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 99;
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 421;
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 422;
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 423;
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 424;
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 1014;

