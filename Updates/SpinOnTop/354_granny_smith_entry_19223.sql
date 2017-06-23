-- Pathing for  Entry: 19223 'UDB FORMAT' 
UPDATE `creature` SET `MovementType`=2 WHERE `guid`=68748;
UPDATE `creature_template` SET `MovementType`=2 WHERE `entry`=19223;
DELETE FROM `creature_movement_template` WHERE `entry`=19223;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(19223,1,-2070.778,5297.236,-37.32355,38000,0,0,0,0,0,0,0,0,100,0,0), -- pause
(19223,2,-2073.863,5301.942,-37.32355,0,0,0,0,0,0,0,0,0,0,0,0),
(19223,3,-2072.042,5301.753,-37.32355,33000,1922301,0,0,0,0,0,0,0,100,0,0), -- kneel
(19223,4,-2069.664,5304.104,-37.07355,0,0,0,0,0,0,0,0,0,0,0,0), 
(19223,5,-2068.286,5303.457,-37.32355,37000,1922302,0,0,0,0,0,0,0,100,0,0), -- use
(19223,6,-2072.012,5304.302,-37.07355,0,0,0,0,0,0,0,0,0,0,0,0),
(19223,7,-2071.77,5298.449,-37.07355,0,0,0,0,0,0,0,0,0,0,0,0),
(19223,8,-2073.409,5298.43,-37.32355,202000,0,0,0,0,0,0,0,0,100,0,0), -- pause
(19223,9,-2073.323,5289.782,-37.32355,0,0,0,0,0,0,0,0,0,0,0,0),
(19223,10,-2073.09,5289.942,-37.07355,0,0,0,0,0,0,0,0,0,0,0,0),
(19223,11,-2071.214,5288.761,-37.07355,0,0,0,0,0,0,0,0,0,0,0,0),
(19223,12,-2069.447,5289.957,-37.32355,7000,1922303,0,0,0,0,0,0,0,100,0,0), -- grok speech
(19223,13,-2073.529,5289.479,-37.07355,0,0,0,0,0,0,0,0,0,0,0,0),
(19223,14,-2073.485,5295.019,-37.07355,0,0,0,0,0,0,0,0,0,0,0,0),
(19223,15,-2069.132,5296.697,-37.07355,0,0,0,0,0,0,0,0,0,0,0,0);



DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000001224 AND 2000001228;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001224, 'I could have sworn I had more apples.  Grok!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Granny Smith (Entry: 19223)'),
(2000001225, 'What?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6, 'Grok (Entry: 22940)'),
(2000001226, 'It was dat angry orc.  He smushed dem!  Want Grok to smush him?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6, 'Grok (Entry: 22940)'),
(2000001227, 'Huh?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6, 'Grok (Entry: 22940)'),
(2000001228, 'Grok not eat all of the apples.  See, der one basket left!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6, 'Grok (Entry: 22940)');

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1922301,1922302,1922303);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`) VALUES
(1922301,0,28,8,0,0,0,0,0,0,0,0,'Granny Smith - UNIT_STAND_STATE_KNEEL'),
(1922301,31,28,0,0,0,0,0,0,0,0,0,'Granny Smith - UNIT_STAND_STATE_STAND'),

(1922302,0,1,69,0,0,0,0,0,0,0,0,'Granny Smith - STATE_USESTANDING'),
(1922302,34,1,0,0,0,0,0,0,0,0,0,'Granny Smith - ONESHOT_NONE'),

(1922303,0,0,0,0,2000001224,0,0,0,0,0,0,'Granny Smith - I could have sworn I had more apples.  Grok!'),
(1922303,4,36,0,0,0,0,0,0,22940,5,1,'Granny Smith - Face Grok'),
(1922303,4,0,0,0,2000001225,2000001226,2000001227,2000001228,22940,5,3,'Grok - Random text');


