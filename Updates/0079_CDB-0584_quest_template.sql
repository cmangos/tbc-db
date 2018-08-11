-- Fixed auto completion of quest 219 (Missing in Action)
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `entry` = 219;
