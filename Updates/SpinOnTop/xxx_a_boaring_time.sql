-- Update templates
UPDATE creature_template SET UnitFlags=256, SpeedRun=(11.5/7), MovementType=2, AIName='NullAI' WHERE entry=22114; -- Huffer. NullAI so huffer doesn't fight back
UPDATE creature_template SET UnitFlags=0, SpeedWalk=(5/2.5), SpeedRun=(10/7) WHERE entry=20216; -- Grulloc

-- Pathing for  Entry: 22114 'UDB FORMAT' 
DELETE FROM `creature_movement_template` WHERE `entry`=22114;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(22114,1,2665.906,5614.072,-11.82914,0,0,0),
(22114,2,2683.188,5581.683,-10.61614,2000,2211401,4.792895),
(22114,3,2707.491,5617.639,-10.53514,0,2211402,0),
(22114,4,2701.944,5645.743,-12.69522,0,2211402,0),
(22114,5,2680.619,5656.022,-13.51489,0,2211402,0),
(22114,6,2664.796,5643.087,-12.73781,0,2211402,0),
(22114,7,2662.155,5613.601,-11.42765,0,2211402,0),
(22114,8,2677.224,5599.287,-11.21807,0,2211402,0),
(22114,9,2694.866,5565.838,-9.163739,0,2211402,0),
(22114,10,2698.718,5544.333,-0.1193056,0,2211402,0),
(22114,11,2686.168,5520.344,0.3296351,0,2211402,0),
(22114,12,2667.503,5532.853,0.1390834,0,2211402,0),
(22114,13,2674.089,5559.439,-6.850751,0,2211402,0),
(22114,14,2692.573,5579.295,-10.49114,0,2211402,0),
(22114,15,2699.896,5594.83,-10.99114,0,2211402,0),
(22114,16,2693.533,5607.558,-11.24706,0,2211402,0),
(22114,17,2679.837,5604.298,-11.46666,0,2211402,0),
(22114,18,2675.792,5588.791,-10.58355,0,2211402,0),
(22114,19,2685.404,5553.056,-5.186688,2000,2211403,100);

DELETE FROM `dbscripts_on_event` WHERE `id`=14274;
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(14274,0,31,22114,200,0,0,0,0,0,0,0,8,'Terminate script if Huffer is found and alive',0,0,0,0),
(14274,1,10,22114,3000000,0,1,0,0,0,0,0,0,'A Boaring Time for Grulloc - Summon Huffer',2676.736,5660.475,-13.58335,4.370867);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2211401,2211402,2211403);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2211401,0,16,379,0,0,0,0,0,0,0,0,0,'Huffer - Play Sound',0,0,0,0),
(2211401,2,15,38360,0,0,0,0,0,0,0,0,0,'Huffer - Cast Huffer Threatens Grulloc',0,0,0,0),
(2211401,2,26,0,0,0,0,0,0,0,20216,100,3,'Grulloc - Attack Huffer',0,0,0,0),

(2211402,0,15,38360,0,0,0,0,0,0,0,0,0,'Huffer - Cast Huffer Threatens Grulloc',0,0,0,0),
(2211402,0,26,0,0,0,0,0,0,0,20216,100,3,'Grulloc - Attack Huffer',0,0,0,0),

(2211403,0,35,5,100,0,0,0,0,0,0,0,0,'Huffer - Throw AI Event Type 5 (A)',0,0,0,0),
(2211403,1,18,0,0,0,0,0,0,0,0,0,0,'Huffer - Despawn Self',0,0,0,0);

