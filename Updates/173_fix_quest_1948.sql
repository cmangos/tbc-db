-- ================================
-- Fix Quest: 1948 "Items of Power" - Still Broken (Damn Trap Will NOT Trigger)
-- ================================
-- Add Missing Trap to Spawn Quest item
DELETE FROM `gameobject` WHERE `guid`=101391;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES('101391','103661','0','1','-1350.81','-2740.07','59.1623','3.14159','0','0','0','0','-1','100','1');
-- Fix Gameobjects To Work
UPDATE `gameobject_template` SET `data0`=303, `data1`=40 WHERE `entry`=174764;
UPDATE `gameobject_template` SET `faction`=114, `data0`=0, `data1`=0, `data2`=40 WHERE `entry`=103661;

