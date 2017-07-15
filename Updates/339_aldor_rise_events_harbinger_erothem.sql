-- Harbinger Erothem 
-- Pathing for  Entry: 19346 'UDB FORMAT' 
UPDATE creature SET MovementType=2 WHERE guid=68962;
UPDATE creature_template SET MovementType=2 WHERE entry=19346;
DELETE FROM `creature_movement_template` WHERE `entry`=19346;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(19346,1,-1764.842,5726.246,126.5379,500,1934604,0,0,0,0,0,0,0,4.276057,0,0),
(19346,2,-1764.842,5726.246,126.5379,500,1934601,0,0,0,0,0,0,0,4.276057,0,0),
(19346,3,-1764.842,5726.246,126.5379,500,1934602,0,0,0,0,0,0,0,2.443461,0,0),
(19346,4,-1753.877,5758.066,136.9177,0,0,0,0,0,0,0,0,0,0,0,0),
(19346,5,-1752.697,5761.038,138.7543,0,0,0,0,0,0,0,0,0,0,0,0),
(19346,6,-1741.911,5794.957,146.5123,0,0,0,0,0,0,0,0,0,0,0,0),
(19346,7,-1734.54,5812.544,148.7986,0,0,0,0,0,0,0,0,0,0,0,0),
(19346,8,-1733.764,5814.145,148.6574,500,1934603,0,0,0,0,0,0,0,5.934119,0,0),
(19346,9,-1727.996,5824.952,148.6574,500,1934604,0,0,0,0,0,0,0,100,0,0),
(19346,10,-1741.497,5795.166,146.7986,0,0,0,0,0,0,0,0,0,0,0,0),
(19346,11,-1744.342,5788.361,146.6898,0,0,0,0,0,0,0,0,0,0,0,0),
(19346,12,-1749.211,5773.418,145.0416,0,0,0,0,0,0,0,0,0,0,0,0),
(19346,13,-1757.145,5750.438,132.9883,0,0,0,0,0,0,0,0,0,0,0,0),
(19346,14,-1763.291,5730.82,127.6633,0,0,0,0,0,0,0,0,0,0,0,0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1934601 AND 1934604;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`buddy_entry`,`search_radius`,`data_flags`,`comments`) VALUES
(1934601,0,32,1,0,0,0,0,0,'Harbinger Erothem - Pause Waypoints'),
(1934601,0,1,113,0,0,19337,68926,16,'Aldor Marksman - OneShotSaluteNoSheath'), -- 01:52:24.779
(1934601,0,1,113,0,0,19337,68927,16,'Aldor Marksman - OneShotSaluteNoSheath'),
(1934601,0,1,113,0,0,19337,68928,16,'Aldor Marksman - OneShotSaluteNoSheath'),
(1934601,0,1,113,0,0,19337,68929,16,'Aldor Marksman - OneShotSaluteNoSheath'),

(1934601,0,1,113,0,0,19153,68495,16,'Aldor Neophyte - OneShotSaluteNoSheath'),
(1934601,0,1,113,0,0,19153,68496,16,'Aldor Neophyte - OneShotSaluteNoSheath'),
(1934601,0,1,113,0,0,19153,68497,16,'Aldor Neophyte - OneShotSaluteNoSheath'),
(1934601,0,1,113,0,0,19153,68498,16,'Aldor Neophyte - OneShotSaluteNoSheath'),

(1934601,0,1,66,0,0,19390,69136,16,'Mounted Neophyte - ONESHOT_SALUTE'),
(1934601,0,1,66,0,0,19390,69137,16,'Mounted Neophyte - ONESHOT_SALUTE'),
(1934601,0,1,66,0,0,19390,69138,16,'Mounted Neophyte - ONESHOT_SALUTE'),
(1934601,0,1,66,0,0,19390,69139,16,'Mounted Neophyte - ONESHOT_SALUTE'), -- 01:52:24.779

(1934601,9,0,0,0,2000001146,0,0,0,'Harbinger Erothem - Listen up, soldiers!'), -- 01:52:35.683
(1934601,12,1,1,0,0,0,0,0,'Harbinger Erothem - Talk Emote'), -- 01:52:38.086
(1934601,13,0,0,0,2000001147,0,0,0,'Harbinger Erothem - You are here because you displayed exceptional aptitude and ability throughout your training period.'), -- 01:52:39.318
(1934601,23,0,0,0,2000001148,0,0,0,'Harbinger Erothem - You are now to be dispatched directly into a hostile environment on a treacherous mission.'), -- 01:52:49.162
(1934601,35,0,0,0,2000001149,0,0,0,'Harbinger Erothem - Nagrand, the land to the west, has recently become littered with enemy forge camps that threaten our security.'), -- 01:53:01.049
(1934601,46,0,0,0,2000001150,0,0,0,'Harbinger Erothem - With the bulk of our forces focused on Illidan, the task of cleansing these lands falls to you.'), -- 01:53:11.049
(1934601,57,0,0,0,2000001151,0,0,0,'Harbinger Erothem - You are to return in a week''s time with a detailed report of your actions.'), -- 01:53:21.937

(1934601,68,1,113,0,0,19337,68926,16,'Aldor Marksman - OneShotSaluteNoSheath'), -- 01:53:32.982
(1934601,68,1,113,0,0,19337,68927,16,'Aldor Marksman - OneShotSaluteNoSheath'),
(1934601,68,1,113,0,0,19337,68928,16,'Aldor Marksman - OneShotSaluteNoSheath'),
(1934601,68,1,113,0,0,19337,68929,16,'Aldor Marksman - OneShotSaluteNoSheath'),

(1934601,68,1,113,0,0,19153,68495,16,'Aldor Neophyte - OneShotSaluteNoSheath'),
(1934601,68,1,113,0,0,19153,68496,16,'Aldor Neophyte - OneShotSaluteNoSheath'),
(1934601,68,1,113,0,0,19153,68497,16,'Aldor Neophyte - OneShotSaluteNoSheath'),
(1934601,68,1,113,0,0,19153,68498,16,'Aldor Neophyte - OneShotSaluteNoSheath'),

(1934601,68,1,66,0,0,19390,69136,16,'Mounted Neophyte - ONESHOT_SALUTE'),
(1934601,68,1,66,0,0,19390,69137,16,'Mounted Neophyte - ONESHOT_SALUTE'),
(1934601,68,1,66,0,0,19390,69138,16,'Mounted Neophyte - ONESHOT_SALUTE'),
(1934601,68,1,66,0,0,19390,69139,16,'Mounted Neophyte - ONESHOT_SALUTE'), -- 01:53:32.982

(1934601,69,0,0,0,2000001152,0,0,0,'Harbinger Erothem - May the Light be with you... Dismissed!'), -- 01:53:34.417

(1934601,70,32,0,0,0,19337,68926,16,'Aldor Marksman - Unpause Waypoints'), -- 01:53:35.197
(1934601,70,32,0,0,0,19337,68927,16,'Aldor Marksman - Unpause Waypoints'),
(1934601,70,32,0,0,0,19337,68928,16,'Aldor Marksman - Unpause Waypoints'),
(1934601,70,32,0,0,0,19337,68929,16,'Aldor Marksman - Unpause Waypoints'), -- 01:53:35.197

(1934601,76,32,0,0,0,19153,68495,16,'Aldor Neophyte - Unpause Waypoints'), -- 01:53:41.297
(1934601,76,32,0,0,0,19153,68496,16,'Aldor Neophyte - Unpause Waypoints'),
(1934601,76,32,0,0,0,19153,68497,16,'Aldor Neophyte - Unpause Waypoints'),
(1934601,76,32,0,0,0,19153,68498,16,'Aldor Neophyte - Unpause Waypoints'), -- 01:53:41.297

(1934601,82,32,0,0,0,19390,69139,16,'Mounted Neophyte - Unpause Waypoints'), -- 01:53:47.350
(1934601,83,32,0,0,0,19390,69138,16,'Mounted Neophyte - Unpause Waypoints'), -- 01:53:49.768
(1934601,84,32,0,0,0,19390,69137,16,'Mounted Neophyte - Unpause Waypoints'), -- 01:53:52.186
(1934601,85,32,0,0,0,19390,69136,16,'Mounted Neophyte - Unpause Waypoints'), -- 01:53:53.418
(1934601,85,21,1,0,0,19390,69136,16,'Mounted Neophyte - Set Active Object'),

-- next sniff 02:02:03.088
(1934601,136,32,0,0,0,0,0,0,'Harbinger Erothem - Resume Waypoints'), -- 02:03:54.706

(1934602,0,32,1,0,0,0,0,0,'Harbinger Erothem - Pause Waypoints'),
(1934602,0,21,1,0,0,19377,69109,16,'Neophyte Nemarn - Set Active Object'),
(1934602,0,32,0,0,0,19377,69109,16,'Neophyte Nemarn - Resume Waypoints'),
(1934602,0,0,0,0,2000001153,0,0,0,'Harbinger Erothem - By your leave, sir, I have pressing matters to attend to.'), -- 02:03:54.815
(1934602,6,36,0,0,0,18537,15,3,'Adyen the Lightwarden - Face Harbinger Erothem'), -- 02:04:00.962
(1934602,6,0,0,0,2000001154,18537,15,3,'Adyen the Lightwarden - Of course, Harbinger. Dismissed.'), -- 02:04:00.962
(1934602,10,32,0,0,0,0,0,0,'Harbinger Erothem - Resume Waypoints'), -- 02:04:04.425
(1934602,11,36,1,0,0,18537,25,0,'Adyen the Lightwarden - Reset facing'), -- 02:04:05.595

(1934603,0,32,1,0,0,0,0,0,'Harbinger Erothem - Pause Waypoints'),
(1934603,0,0,0,0,2000001155,0,0,0,'Harbinger Erothem - Anchorite Nindumen, I have a request to make of you.'), -- 02:04:43.800
(1934603,6,36,0,0,0,19378,5,3,'Anchorite Nindumen - Face Harbinger Erothem'), -- 02:04:49.509
(1934603,6,0,0,0,2000001156,19378,5,3,'Anchorite Nindumen - Of course, my friend. How can I be of service to you?'), -- 02:04:49.603
(1934603,14,0,0,0,2000001157,0,0,0,'Harbinger Erothem - We''ve just sent another inexperienced squad into Nagrand. Might you offer a prayer for them?'), -- 02:04:57.980
(1934603,24,0,0,0,2000001158,19378,5,3,'Anchorite Nindumen - A noble request. It would be an honor, Erothem.'), -- 02:05:07.699
(1934603,30,32,0,0,0,19378,5,0,'Anchorite Nindumen - Resume Waypoints'), -- 02:05:13.658
(1934603,31,32,0,0,0,0,0,0,'Harbinger Erothem - Resume Waypoints'), -- 02:05:14.875

(1934604,0,32,1,0,0,0,0,0,'Harbinger Erothem - Pause Waypoints');


