-- Pathing for  Entry: 19377 'UDB FORMAT' 
DELETE FROM `creature` WHERE `guid`=69108; -- Delete duplicate
UPDATE `creature` SET position_x=-1978.887, position_y=5673.554, position_z=117.6499, orientation=3.752458, `MovementType`=2 WHERE `guid`=69109;
UPDATE `creature_template` SET `MovementType`=2 WHERE entry=19377;
DELETE FROM `creature_movement_template` WHERE `entry`=19377;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(19377,1,-1978.887,5673.554,117.6499,500,1937701,0,0,0,0,0,0,0,3.752458,0,0),
(19377,2,-1931.089,5720.728,124.5082,0,0,0,0,0,0,0,0,0,0,0,0),
(19377,3,-1922.898,5727.902,129.0465,0,0,0,0,0,0,0,0,0,0,0,0),
(19377,4,-1918.229,5731.971,129.3523,0,0,0,0,0,0,0,0,0,0,0,0),
(19377,5,-1913.227,5735.799,129.4535,0,0,0,0,0,0,0,0,0,0,0,0),
(19377,6,-1877.2,5754.718,129.6287,0,0,0,0,0,0,0,0,0,0,0,0),
(19377,7,-1848.056,5757.688,129.6179,0,0,0,0,0,0,0,0,0,0,0,0),
(19377,8,-1834.884,5756.401,131.1362,0,0,0,0,0,0,0,0,0,0,0,0),
(19377,9,-1811.401,5749.086,129.9691,0,0,0,0,0,0,0,0,0,0,0,0),
(19377,10,-1792.716,5736.938,128.5189,0,0,0,0,0,0,0,0,0,0,0,0),
(19377,11,-1779.978,5728.731,127.3369,0,0,0,0,0,0,0,0,0,0,0,0),
(19377,13,-1776.125,5726.785,126.5378,500,1937702,0,0,0,0,0,0,0,1.570796,0,0),
(19377,14,-1805.227,5746.896,128.9853,0,0,0,0,0,0,0,0,0,0,0,0),
(19377,15,-1818.763,5750.633,130.2381,0,0,0,0,0,0,0,0,0,0,0,0),
(19377,16,-1847.833,5759.405,129.9671,0,0,0,0,0,0,0,0,0,0,0,0),
(19377,17,-1895.131,5746.125,129.7035,0,0,0,0,0,0,0,0,0,0,0,0),
(19377,18,-1910.438,5738.782,129.5721,0,0,0,0,0,0,0,0,0,0,0,0),
(19377,19,-1911.448,5738.215,129.4891,0,0,0,0,0,0,0,0,0,0,0,0),
(19377,20,-1914.947,5735.202,129.4209,0,0,0,0,0,0,0,0,0,0,0,0),
(19377,21,-1916.99,5733.518,129.3232,0,0,0,0,0,0,0,0,0,0,0,0),
(19377,22,-1931.835,5721.791,124.5857,0,0,0,0,0,0,0,0,0,0,0,0),
(19377,23,-1961.703,5699.614,118.0866,0,0,0,0,0,0,0,0,0,0,0,0),
(19377,24,-1977.591,5675.536,117.9064,0,0,0,0,0,0,0,0,0,0,0,0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1937701,1937702);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`buddy_entry`,`search_radius`,`data_flags`,`comments`) VALUES
(1937701,0,21,0,0,0,0,0,0,'Neophyte Nemarn - Active Object Off'),
(1937701,0,32,1,0,0,0,0,0,'Neophyte Nemarn - Pause Waypoints'),

(1937702,0,32,1,0,0,0,0,0,'Neophyte Nemarn - Pause Waypoints'),
(1937702,0,1,2,0,0,0,0,0,'Neophyte Nemarn - OneShotBow'), -- 02:14:01.935
(1937702,4,0,0,0,2000001167,0,0,0,'Neophyte Nemarn - Sir, I am here to deliver my report from the Scryer''s Tier.'), -- 02:14:05.695
(1937702,12,0,0,0,2000001168,18537,10,3,'Adyen the Lightwarden - Well, out with it, neophyte...'), -- 02:14:13.152
(1937702,19,0,0,0,2000001169,0,0,0,'Neophyte Nemarn - Sir, it''s impossible to read anything into their actions.'), -- 02:14:20.312
(1937702,26,0,0,0,2000001170,0,0,0,'Neophyte Nemarn - Their movements are totally chaotic, as if they themselves know not what they are about.'), -- 02:14:27.582
(1937702,33,0,0,0,2000001171,0,0,0,'Neophyte Nemarn - My apologies, sir. I wish I had more to report.'), -- 02:14:34.867
(1937702,41,0,0,0,2000001172,18537,10,3,'Adyen the Lightwarden - It is exactly as I expected, soldier. They know we watch them closely.'), -- 02:14:42.417
(1937702,48,0,0,0,2000001173,18537,10,3,'Adyen the Lightwarden - They mask their intentions with meaningless movements to confuse us.'), -- 02:14:49.640
(1937702,56,0,0,0,2000001174,18537,10,3,'Adyen the Lightwarden - In time, you may learn to see through their deceptions.'), -- 02:14:56.863
(1937702,63,0,0,0,2000001175,18537,10,3,'Adyen the Lightwarden - Until then, your presence at your post will keep them on their toes.'), -- 02:15:04.086
(1937702,70,0,0,0,2000001176,0,0,0,'Neophyte Nemarn - As you command, sir.'), -- 02:15:11.324
(1937702,73,1,2,0,0,0,0,0,'Neophyte Nemarn - OneShotBow'), -- 02:15:14.834
(1937702,73,32,0,0,0,0,0,0,'Neophyte Nemarn - Resume Waypoints'); -- 02:15:14.834

