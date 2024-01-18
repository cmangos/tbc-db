-- WIP Childrens Week File - last edit Last edit January 23, 2022
UPDATE creature_template SET UnitFlags=33554432 WHERE entry IN(22829,22831,22833,22838,22839,22851,22866,22867,22872,22905,26400);
INSERT INTO creature (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(109773,26400,530,9500.0205,-7329.172,14.468428,0.122173048555850982,300,300,0,0);

UPDATE quest_template SET SpecialFlags=2 WHERE entry IN(10952,10950,10954,10956,10968,10962);
-- alliance first group
UPDATE quest_template SET ExclusiveGroup=-10950 WHERE entry IN(10952);
UPDATE quest_template SET ExclusiveGroup=-10950 WHERE entry IN(10950);
UPDATE quest_template SET ExclusiveGroup=-10950 WHERE entry IN(10954);
-- alliance second group
UPDATE quest_template SET PrevQuestId=10950 WHERE entry IN(10956, 10962);
UPDATE quest_template SET PrevQuestId=10956 WHERE entry IN(10968); -- call on the farseer
UPDATE quest_template SET ExclusiveGroup=-10968 WHERE entry IN(10968);
UPDATE quest_template SET ExclusiveGroup=-10968 WHERE entry IN(10962);
-- last quest
UPDATE quest_template SET PrevQuestId=10968 WHERE entry IN(10966);

UPDATE quest_template SET SpecialFlags=2 WHERE entry IN(10951,10945,10953,11975,10963);
-- horde first group
UPDATE quest_template SET ExclusiveGroup=-10945 WHERE entry IN(10951);
UPDATE quest_template SET ExclusiveGroup=-10945 WHERE entry IN(10945);
UPDATE quest_template SET ExclusiveGroup=-10945 WHERE entry IN(10953);
-- horde second group
UPDATE quest_template SET ExclusiveGroup=-10963 WHERE entry IN(11975);
UPDATE quest_template SET ExclusiveGroup=-10963 WHERE entry IN(10963);
UPDATE quest_template SET PrevQuestId=10945 WHERE entry IN(10963, 11975);
-- last quest
UPDATE quest_template SET PrevQuestId=10968 WHERE entry IN(10966);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`positionx`,`positiony`,`positionz`,`waittime`,`scriptid`,`orientation`) VALUES
(23170,1,1,-249.94986,955.13525,84.36633,0,0,100),
(23170,1,2,-248.83488,950.0382,84.36817,0,0,100),
(23170,1,3,-248.84224,953.1111,84.367065,60000,0,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`positionx`,`positiony`,`positionz`,`waittime`,`scriptid`,`orientation`) VALUES
(23170,2,1,-250.39006,1051.2136,54.315212,0,0,100),
(23170,2,2,-250.49617,1062.6967,54.317284,0,0,100),
(23170,2,3,-250.32948,1073.8336,54.305973,0,0,100),
(23170,2,4,-250.77644,1081.7523,49.43843,120000,0,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`positionx`,`positiony`,`positionz`,`waittime`,`scriptid`,`orientation`) VALUES
(23133,1,1,-3333.6555,4918.3394,-101.38294,0,0,100),
(23133,1,2,-3346.138,4893.872,-101.27104,0,0,100),
(23133,1,3,-3354.4937,4871.0073,-101.27104,0,0,100),
(23133,1,4,-3359.3782,4848.5005,-101.27104,0,0,100),
(23133,1,5,-3361.6653,4833.839,-101.27104,0,0,100),
(23133,1,6,-3362.631,4817.5425,-101.271034,0,0,100),
(23133,1,7,-3361.8396,4800.221,-101.271034,0,0,100),
(23133,1,8,-3362.0999,4741.4097,-101.04708,0,0,100),
(23133,1,9,-3361.79,4730.973,-101.0503,0,0,100),
(23133,1,10,-3360.992,4717.0396,-100.98514,0,0,100),
(23133,1,11,-3361.0815,4697.9326,-101.04861,0,0,100),
(23133,1,12,-3360.9854,4670.692,-101.048,0,0,100),
(23133,1,13,-3361.554,4660.892,-101.048256,1000,1,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`positionx`,`positiony`,`positionz`,`waittime`,`scriptid`,`orientation`) VALUES
(23171,1,1,-253.32765,952.7032,84.36719,0,0,100),
(23171,1,2,-251.18584,942.32324,84.37094,0,0,100),
(23171,1,3,-250.96686,947.6302,84.36903,0,0,100),
(23171,1,4,-243.01654,949.5075,84.3684,60000,0,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`positionx`,`positiony`,`positionz`,`waittime`,`scriptid`,`orientation`) VALUES
(23171,2,1,-250.39006,1051.2136,54.315212,0,0,100),
(23171,2,2,-250.49617,1062.6967,54.317284,0,0,100),
(23171,2,3,-250.32948,1073.8336,54.305973,0,0,100),
(23171,2,4,-250.77644,1081.7523,49.43843,120000,0,100);

UPDATE spell_target_position SET target_orientation=1.570799946784973144 WHERE Id IN(40361,40360);

UPDATE creature_template SET UnitFlags=768 WHERE entry IN(22906,22907,22908,22909);

INSERT INTO gameobject_template(entry,type,displayId,name,data3,data5,data10,data22) VALUES
(185871,10,1327,'Summoning Portal', 7864320, 1, 40234, 20512);

UPDATE creature SET position_x=-781.767,position_y=6945.905,position_z=33.39897 WHERE Id IN(22839);

INSERT INTO spell_script_target VALUES
(46974,1,25148,0),
(46974,1,25149,0),
(46974,1,25150,0),
(46974,1,25151,0),
(46974,1,25152,0);

DELETE FROM npc_text WHERE Id IN(10732,10734);
DELETE FROM npc_text_broadcast_text WHERE Id IN(10732,10734);
INSERT INTO npc_text_broadcast_text VALUES
(10732,1,1,1,1,1,1,1,1,20456,20465,20677,20678,20679,20680,20681,20682);
INSERT INTO npc_text_broadcast_text VALUES
(10734,1,1,1,1,1,1,1,1,20462,20470,20683,20684,20685,20686,20687,20688);

UPDATE creature_template SET GossipMenuId=8563 WHERE entry IN(22817);
UPDATE creature_template SET GossipMenuId=8565 WHERE entry IN(22818);
DELETE FROM gossip_menu WHERE entry IN(8565,8563);
INSERT INTO gossip_menu VALUES
(8565,10734,0,0),
(8563,10732,0,0);

