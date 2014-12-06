-- Updated armor and health of the three Homing Robots. They previously had low life and 0 armor, making the quests more difficult to complete
-- Source: UDB
UPDATE `creature_template` SET `MinLevelHealth` = 1981, `MaxLevelHealth` = 1981 WHERE `Entry` IN (7784, 7806, 7807);

