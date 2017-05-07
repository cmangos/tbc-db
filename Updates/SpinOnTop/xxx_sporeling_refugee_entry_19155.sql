UPDATE `creature` SET `orientation`=0,`MovementType`=2,`spawndist`=0 WHERE `guid`=68526; -- Leader
UPDATE `creature` SET `orientation`=0,`position_x`=-1767.99,`position_y`=5241.28,`position_z`=-40.7035,`MovementType`=0,`spawndist`=0 WHERE `guid`=68525; -- Follower

DELETE FROM creature_linking WHERE master_guid=68526;
INSERT INTO creature_linking (guid,master_guid,flag) VALUES
(68525,68526,512);

-- Pathing for  Entry: 19155 'UDB FORMAT' 
DELETE FROM `creature_movement` WHERE `id`=68526;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(68526,1,-1754.282,5249.737,-40.20918,0,0,0),
(68526,2,-1737.983,5268.585,-40.20918,0,0,0),
(68526,3,-1715.286,5271.786,-41.50925,0,0,0),
(68526,4,-1738.62,5267.795,-40.10921,0,0,0),
(68526,5,-1761.505,5257.382,-39.95918,0,0,0),
(68526,6,-1774.505,5251.382,-39.95918,0,0,0),
(68526,7,-1789.755,5245.882,-39.95918,0,0,0),
(68526,8,-1805.005,5238.382,-42.20918,0,0,0),
(68526,9,-1815.755,5228.132,-41.20918,0,0,0),
(68526,10,-1834.055,5210.46,-40.20918,0,0,0),
(68526,11,-1820.181,5221.755,-41.637,0,0,0),
(68526,12,-1796.215,5221.762,-48.72382,0,0,0),
(68526,13,-1781.415,5224.892,-47.93328,0,0,0),
(68526,14,-1763.816,5243.585,-40.20918,0,0,0);

