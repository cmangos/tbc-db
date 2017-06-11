UPDATE creature SET MovementType=2 WHERE guid=69110;
UPDATE creature_template SET MovementType=2 WHERE entry=19378;

-- Pathing for  Entry: 19378 'UDB FORMAT' 
DELETE FROM `creature_movement_template` WHERE `entry`=19378;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
-- (19378,1,-1729.164,5813.11,148.6575,500,1937801,0,0,0,0,0,0,0,2.740167,0,0),
(19378,1,-1729.164,5813.11,148.6575,500,1937801,0,0,0,0,0,0,0,1.082104,0,0),
(19378,2,-1727.88,5816.611,148.9074,0,0,0,0,0,0,0,0,0,0,0,0),
(19378,3,-1727.38,5818.111,148.9074,0,0,0,0,0,0,0,0,0,0,0,0),
(19378,4,-1725.88,5823.611,148.9074,0,0,0,0,0,0,0,0,0,0,0,0),
(19378,5,-1724.219,5829.706,148.9074,0,0,0,0,0,0,0,0,0,0,0,0),
(19378,6,-1727.014,5833.12,148.6574,500,1937802,0,0,0,0,0,0,0,4.206244,0,0),
(19378,7,-1726.713,5822.525,148.9074,0,0,0,0,0,0,0,0,0,0,0,0),
(19378,8,-1726.463,5819.025,148.9074,0,0,0,0,0,0,0,0,0,0,0,0),
(19378,9,-1726.463,5817.525,148.9074,0,0,0,0,0,0,0,0,0,0,0,0),
(19378,10,-1727.788,5815.021,148.9075,0,0,0,0,0,0,0,0,0,0,0,0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1937801,1937802);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`buddy_entry`,`search_radius`,`data_flags`,`comments`) VALUES
(1937801,0,32,1,0,0,0,0,0,'Anchorite Nindumen - Pause Waypoints'),

(1937802,0,32,1,0,0,0,0,0,'Anchorite Nindumen - Pause Waypoints'),
(1937802,0,0,0,0,2000001157,0,0,0,'Anchorite Nindumen - My friends, please join me in humble supplication to the Light.'), -- 02:05:20.273
(1937802,4,28,8,0,0,19346,10,0,'Harbinger Erothem - Kneel'), -- 02:05:24.610
(1937802,5,28,8,0,0,0,0,0,'Anchorite Nindumen - Kneel'), -- 02:05:25.826

(1937802,5,28,8,0,0,19138,68443,16,'Anchorite Attendant - Kneel'),
(1937802,5,28,8,0,0,19138,68442,16,'Anchorite Attendant - Kneel'),
(1937802,5,28,8,0,0,19142,68462,16,'Aldor Anchorite - Kneel'),
(1937802,5,28,8,0,0,19142,68463,16,'Aldor Anchorite - Kneel'),
(1937802,5,28,8,0,0,19138,68441,16,'Anchorite Attendant - Kneel'),

(1937802,6,28,8,0,0,19142,68460,16,'Aldor Anchorite - Kneel'),
(1937802,6,28,8,0,0,19138,68438,16,'Anchorite Attendant - Kneel'),
(1937802,6,28,8,0,0,19138,68440,16,'Anchorite Attendant - Kneel'),

(1937802,7,28,8,0,0,19138,68437,16,'Anchorite Attendant - Kneel'),
(1937802,7,28,8,0,0,19138,68439,16,'Anchorite Attendant - Kneel'),

(1937802,16,0,0,0,2000001158,0,0,0,'Anchorite Nindumen - Light that we embrace, we beseech thee...'), -- 02:05:36.840
(1937802,27,0,0,0,2000001159,0,0,0,'Anchorite Nindumen - Into our struggle against the darkness we have sent our children.'), -- 02:05:47.807
(1937802,38,0,0,0,2000001160,0,0,0,'Anchorite Nindumen - Please bless and protect them, and grant them success over those who seek to do us harm...'), -- 02:05:58.758
(1937802,49,0,0,0,2000001161,0,0,0,'Anchorite Nindumen - Continue to bless this, our ancient home, we beg.'), -- 02:06:09.710
(1937802,60,0,0,0,2000001162,0,0,0,'Anchorite Nindumen - Bless us with tolerance for our elven visitors.'), -- 02:06:20.630
(1937802,71,0,0,0,2000001163,0,0,0,'Anchorite Nindumen - By the Naaru, may it be so.'), -- 02:06:31.628
(1937802,75,28,0,0,0,19346,10,0,'Harbinger Erothem - Stand'), -- 02:06:35.153
(1937802,75,0,0,0,2000001164,19346,10,0,'Harbinger Erothem - May it be so.'), -- 02:06:35.262

(1937802,77,28,0,0,0,19138,68443,16,'Anchorite Attendant - Stand'), -- 02:06:36.495
(1937802,77,28,0,0,0,19138,68442,16,'Anchorite Attendant - Stand'),
(1937802,77,28,0,0,0,19142,68462,16,'Aldor Anchorite - Stand'),
(1937802,77,28,0,0,0,19142,68463,16,'Aldor Anchorite - Stand'),
(1937802,77,28,0,0,0,19138,68441,16,'Anchorite Attendant - Stand'),
(1937802,77,0,0,0,2000001164,19142,68463,16,'Aldor Anchorite - May it be so.'),
(1937802,77,0,0,0,2000001164,19138,68441,16,'Anchorite Attendant - May it be so.'),

(1937802,79,28,0,0,0,19142,68460,16,'Aldor Anchorite - Stand'),
(1937802,79,28,0,0,0,19138,68438,16,'Anchorite Attendant - Stand'),
(1937802,79,28,0,0,0,19138,68440,16,'Anchorite Attendant - Stand'),
(1937802,79,0,0,0,2000001164,19138,68438,16,'Anchorite Attendant - May it be so.'),

(1937802,80,32,0,0,0,19346,10,0,'Harbinger Erothem - Resume Waypoints'),

(1937802,81,28,0,0,0,19138,68437,16,'Anchorite Attendant - Stand'),
(1937802,81,28,0,0,0,19138,68439,16,'Anchorite Attendant - Stand'),
(1937802,81,0,0,0,2000001164,19138,68437,16,'Anchorite Attendant - May it be so.'),
(1937802,81,0,0,0,2000001164,19138,68439,16,'Anchorite Attendant - May it be so.'),

(1937802,82,28,0,0,0,0,0,0,'Anchorite Nindumen - Stand'), -- 02:06:42.439
(1937802,86,32,0,0,0,0,0,0,'Anchorite Nindumen - Resume Waypoints'); -- 02:06:46.073

