-- Lady Sinestra - event 
-- multispawn error fixed
-- static spawn removed
DELETE FROM creature_addon WHERE guid=140704;
DELETE FROM creature_movement WHERE Id=140704;
DELETE FROM game_event_creature WHERE guid=140704;
DELETE FROM game_event_creature_data WHERE guid=140704;
DELETE FROM creature_battleground WHERE guid=140704;
DELETE FROM creature_linking WHERE guid=140704
 OR master_guid=140704;
DELETE FROM creature WHERE guid=140704;

-- event moved To EAI on Random Timer
DELETE FROM dbscripts_on_relay WHERE id IN (19957);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19957,1,31,23283,500,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Overlord Mor\'ghor EAI: search for 23283 - terminate if found'),
(19957,100,31,23284,500,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Overlord Mor\'ghor EAI:search for 23284 - terminate if found'),
(19957,500,10,23283,300000,0,0,0,0x08,0,0,0,20056,-5238.41,776.695,181.833,5.21307,'Part of Overlord Mor\'ghor EAI:summon - Lady Sinestra'); -- use 20056 instead of 3

DELETE FROM `creature_movement_template` WHERE `entry` IN (23283,23284);
INSERT INTO `creature_movement_template` (`entry`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(23283,1,-5238.002,775.7813,181.833,100,0,0),
(23283,2,-5245.779,722.9154,173.0642,100,0,0),
(23283,3,-5220.587,696.059,139.8698,100,0,0),
(23283,4,-5198.417,674.9192,95.42538,100,0,0),
(23283,5,-5182.404,660.5963,79.78647,100,0,0),
(23283,6,-5174.463,653.561,74.50871,5.61422,3000,2328301),
(23283,7,-5174.46,653.561,74.5087,5.61422,2000,2328401),
(23283,8,-5165.44,646.072,76.9296,5.5983,15000,2328402),
(23283,9,-5151.85,630.924,81.2474,5.33569,0,0),
(23283,10,-5124.81,602.463,84.488,4.89014,0,0),
(23283,11,-5122.96,595.403,84.8122,5.64961,0,0),
(23283,12,-5121.1,593.849,84.7659,6.16012,0,0),
(23283,13,-5100.86,592.517,85.869,5.62761,0,0),
(23283,14,-5090.69,585.07,86.909,5.49253,76000,2328403),
(23283,15,-5100,592.709,85.9701,2.45623,0,0),
(23283,16,-5114.07,606.045,85.083,2.74212,0,0),
(23283,17,-5128.75,606.723,84.0949,2.3557,0,0),
(23283,18,-5139.37,616.387,82.8233,2.23962,0,0),
(23283,19,-5147.5,627.142,82.0156,2.21527,0,0),
(23283,20,-5157.33,639.52,79.1886,2.21527,1000,2328404),
(23283,21,-5157.33,639.52,85.1946,2.21527,0,0),
(23283,22,-5169.544,650.3057,111.4463,100,0,0),
(23283,23,-5181.662,667.6545,111.4463,100,0,0),
(23283,24,-5195.687,680.8401,111.4463,100,0,0),
(23283,25,-5225.382,701.7169,111.4463,100,0,0),
(23283,26,-5258.488,726.2752,111.4463,100,0,0),
(23283,27,-5281.199,739.957,111.4463,100,0,0),
(23283,28,-5281.199,739.957,111.4463,100,1000,2328303);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (2328301,2328404,2328303,2328302);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2328301,500,44,23284,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'update entry - 23284'),
(2328301,501,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Fly OFF'),
(2328301,502,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN OFF'),
(2328404,500,44,23283,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'update entry - 23284'),
(2328404,501,39,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Fly ON'),
(2328404,502,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(2328303,1,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Despawn Self'),
(2328303,2,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Unactive');

-- remove default flying for Lady Sinestra 23283
UPDATE `creature_template` set inhabittype = inhabittype&~4 WHERE entry = 23283;

