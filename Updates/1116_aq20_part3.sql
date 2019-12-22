-- ayamiss landing points
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(15369,1,1,-9689.981,1548.296,33.27733,0,0,100),
(15369,1,2,-9682.716,1554.252,31.41621,0,0,100),
(15369,1,3,-9677.917,1558.839,27.24953,1000,0,100);

-- hack - this bypasses despawn prevention due to GO casting a hidden 6 second spell the GO should cast - note will be put down even in core
UPDATE gameobject_template SET data3=65536*6 WHERE entry IN(180619);

-- sand vortex - ossirian
UPDATE creature_template SET Faction=114,UnitFlags=33554432 WHERE entry IN(15428);


