-- add minor movement for Kalandrios 18102 & Incineratus 18100
UPDATE `creature` SET `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 64055 AND `id` = 18102; -- Kalandrios
UPDATE `creature` SET `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 64053 AND `id` = 18100; -- Incineratus

-- Should react to player pvp
UPDATE `creature_template` SET `Detection` = 66, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (16 / 7) WHERE `entry` = 18099; -- Gordawg
UPDATE `creature_template` SET `Detection` = 66, `SpeedWalk` = (8 / 2.5), `SpeedRun` = (16 / 7), `DamageMultiplier` = 200, `DamageSchool` = 2 WHERE `entry` = 18100; -- Incineratus
UPDATE `creature_template` SET `Detection` = 66, `SpeedWalk` = (8 / 2.5), `SpeedRun` = (16 / 7), `DamageSchool` = 4 WHERE `entry` = 18101; -- Aborius
UPDATE `creature_template` SET `Detection` = 66, `SpeedWalk` = (8 / 2.5), `SpeedRun` = (16 / 7) WHERE `entry` = 18102; -- Kalandrios

-- Doomclaw 19738
UPDATE `creature_template` SET `SpeedWalk` = (2.36111 / 2.5), `SpeedRun` = (6.66667 / 7) WHERE `entry` = 19738;


