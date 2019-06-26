-- Peria and friends
DELETE FROM `creature_addon` WHERE `guid` IN (191183,191197,191184);
INSERT INTO `creature_addon` (`guid`, `emote`) VALUES
(191183, 21),
(191197, 10),
(191184, 4);
-- Make guards stationary
UPDATE `creature` SET `MovementType`=0 WHERE `guid` IN (191158,191159);
-- Change Guard to Mountaineer, add emotes
-- UPDATE `creature` SET `id`='727' WHERE `guid`=191164; -- already correct in tbc-db
DELETE FROM `creature_addon` WHERE `guid` IN (191164,191196);
INSERT INTO `creature_addon` (`guid`, `emote`) VALUES
(191164, 18),
(191196, 1);
-- Gnome Engineers
DELETE FROM `creature_addon` WHERE `guid` IN (191191,191192,191193,191194,191195);
INSERT INTO `creature_addon` (`guid`, `emote`) VALUES
(191191, 133),
(191192, 133),
(191193, 133),
(191194, 133),
(191195, 133);
-- Add the campfire
DELETE FROM `gameobject` WHERE `guid`=20592;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(20592, 3085, 0, 1, -4667.08, -1715.54, 503.324, 3.07425, 0, 0, 0.999433, 0.0336635, 25, 25, 100, 1);
-- Change guard into mountaineer, add emotes
-- UPDATE `creature` SET `id`='727' WHERE `guid`=191166; -- already correct in tbc-db
DELETE FROM `creature_addon` WHERE `guid` IN (191166,191154);
INSERT INTO `creature_addon` (`guid`, `emote`) VALUES
(191166, 66),
(191154, 22);
-- Flight Path Area
DELETE FROM `creature_addon` WHERE `guid` IN (191168,191156,191167,191198);
INSERT INTO `creature_addon` (`guid`, `emote`) VALUES
(191168, 3),
(191156, 28),
(191167, 1),
(191198, 1);
-- Change guard into Mountaineer & otherwise
-- UPDATE `creature` SET `id`='727' WHERE `guid` IN (191167,191168,191165,191160,191161); -- already correct in tbc-db
UPDATE `creature` SET `id`=5595 WHERE `guid` IN (191148,191146);


