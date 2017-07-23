-- Dumphry (Entry: 21209)
UPDATE creature SET MovementType=2 WHERE guid=74397;
DELETE FROM `creature_movement_template` WHERE `entry`=21209;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21209,1,-599.5605,2903.232,59.20822,0,0,0),
(21209,2,-604.0132,2905.874,59.20912,4000,2120901,100),
(21209,3,-592.6628,2899.054,59.20542,0,0,0),
(21209,4,-590.7303,2894.648,59.16483,0,0,0),
(21209,5,-592.0494,2889.868,58.62175,0,0,0),
(21209,6,-595.8579,2888.996,59.09826,0,0,0),
(21209,7,-595.788,2890.897,59.20404,20000,2120902,1.291544),
(21209,8,-590.0143,2890.569,58.49395,0,0,0),
(21209,9,-586.4984,2891.897,59.08528,0,0,0),
(21209,10,-583.6595,2893.531,59.17667,0,0,0),
(21209,11,-584.432,2895.453,59.16199,20000,2120902,100),
(21209,12,-589.1031,2891.028,58.59459,0,0,0),
(21209,13,-591.6568,2895.601,59.20427,0,0,0);

DELETE FROM dbscripts_on_creature_movement WHERE id IN(2120901,2120902);
INSERT INTO dbscripts_on_creature_movement (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES 
(2120901,1,28,8,0,0,0,0,0,0,0,0,0,'Dumphry - Set Stand State Kneel',0,0,0,0),
(2120901,4,28,0,0,0,0,0,0,0,0,0,0,'Dumphry - Set Stand State Stand',0,0,0,0),

(2120902,0,1,133,0,0,0,0,0,0,0,0,0,'Dumphry - STATE_USESTANDING_NOSHEATHE',0,0,0,0),
(2120902,20,1,0,0,0,0,0,0,0,0,0,0,'Dumphry - ONESHOT_NONE',0,0,0,0);

