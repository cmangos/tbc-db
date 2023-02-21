-- Bo 797
UPDATE creature SET position_x = -9460.582, position_y = 94.233505, position_z = 58.354, spawndist = 0, MovementType = 2 WHERE guid = 80320;
DELETE FROM `creature_movement` WHERE `id` = 80320;
DELETE FROM creature_movement_template WHERE entry IN (797);
INSERT INTO creature_movement_template (`entry`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(797,1,-9460.582,94.233505,58.354,100,1,79701),
(797,2,-9460.582,94.233505,58.354,100,1,5),
(797,3,-9465.782,113.60075,57.917274,100,0,0),
(797,4,-9457.16,126.087,59.1066,100,0,0),
(797,5,-9444.896,135.82916,58.48393,100,0,0),
(797,6,-9435.158,135.1569,58.408245,100,0,0),
(797,7,-9425.547,129.19225,59.73195,100,1,79702),
(797,8,-9425.547,129.19225,59.73195,100,1,5),
(797,9,-9435.158,135.1569,58.408245,100,0,0),
(797,10,-9444.896,135.82916,58.48393,100,0,0),
(797,11,-9457.16,126.087,59.1066,100,0,0),
(797,12,-9465.782,113.60075,57.917274,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 79701 AND 79702;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(79701,0,20,1,2,40000,0,0,12,0,0,0,0,0,0,0,0,'Change Movement To 1 - Random (40secs TEMP) (around current location)'),
(79702,0,20,1,7,50000,0,0,12,0,0,0,0,0,0,0,0,'Change Movement To 1 - Random (50secs TEMP) (around current location)');
-- Mark 795 & Joshua 796
UPDATE creature SET spawndist = 7, MovementType = 1 WHERE id IN (795,796);

