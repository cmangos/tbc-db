-- Add Drop-Off Point 180660 for the "Bag of Gold" item. This is a portion of the total update required for the quest Quest ID:8606, Decoy!
DELETE FROM `gameobject` WHERE `id` = 180660 AND `guid` = 15;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`,`animprogress`, `state`) VALUES
(15, 180660, 1, 1, 5086.19, -5116.32, 931.162, 4.78877, 0, 0, 0.679593, -0.733589, -150, -150, 0, 1);

