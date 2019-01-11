-- Dire Maul Arena Rare Bosses
SET @GUID := 45758;
SET @POOL := 124;
DELETE FROM `creature` WHERE `id` IN (11447,11497,11498);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecsmin`,`spawntimesecsmax`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(@GUID  ,11447,1,1,0,0,-3799.62,1063.83,132.806,1.20424,21600,21600,0,0,60000,    0,0),
(@GUID+1,11497,1,1,0,0,-3731.22,1061.32,132.345,1.78150,21600,21600,0,0,73000,24340,0),
(@GUID+2,11498,1,1,0,0,-3690.96,1077.14,131.969,2.65172,21600,21600,0,0,57000,    0,0);
DELETE FROM `pool_template` WHERE `entry`=@POOL;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES
(@POOL,1,'Max 1 Rare in Dire Maul Arena');
DELETE FROM `pool_creature` WHERE `pool_entry`=@POOL;
INSERT INTO `pool_creature` (`guid`,`pool_entry`,`chance`,`description`) VALUES
(@GUID  ,@POOL,0, 'Rare Spawn Dire Maul Arena'),
(@GUID+1,@POOL,0, 'Rare Spawn Dire Maul Arena'),
(@GUID+2,@POOL,0, 'Rare Spawn Dire Maul Arena');


