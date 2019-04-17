SET @POOLENTRY := 272;  -- need a new pool_template entry for this
SET @GUID := 99461; -- need a new GUID for the 2nd spawn
SET @CGUID := 26081;  -- original TDB spawn

-- new spawn location (sniff)
DELETE FROM `creature` WHERE `guid`=@GUID;
INSERT INTO `creature` (`guid`, `id`, `map`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@GUID, 5786, 1, 1, -2780.27, -702.809, 6.526313, 0.1570796, 3600, 7200);

DELETE FROM `pool_template` WHERE `entry`=@POOLENTRY;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES
(@POOLENTRY, 1, 'Snagglespear');

DELETE FROM `pool_creature` WHERE `guid` IN (@CGUID, @GUID);
INSERT INTO `pool_creature` (`guid`,`pool_entry`,`chance`,`description`) VALUES
(@CGUID, @POOLENTRY, 0, 'Snagglespear Spawn 1'),
(@GUID, @POOLENTRY, 0, 'Snagglespear Spawn 2');

-- set to proper "uncommon" rare spawn time
UPDATE `creature` SET `spawntimesecsmin`=3600, `spawntimesecsmax`=7200 WHERE `guid`=@CGUID;


