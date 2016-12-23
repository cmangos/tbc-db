-- Bloodmyst Isle Part_2.

-- creatures
-- duplicates removed + missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (62684,62462,62453,60858,60861,60865,60867,60869,62188,62502,62506,62494,62497,62698,62629);
DELETE FROM creature_addon WHERE guid IN (62684,62462,62453,60858,60861,60865,60867,60869,62188,62502,62506,62494,62497,62698,62629);
DELETE FROM creature_movement WHERE id IN (62684,62462,62453,60858,60861,60865,60867,60869,62188,62502,62506,62494,62497,62698,62629);
DELETE FROM game_event_creature WHERE guid IN (62684,62462,62453,60858,60861,60865,60867,60869,62188,62502,62506,62494,62497,62698,62629);
DELETE FROM game_event_creature_data WHERE guid IN (62684,62462,62453,60858,60861,60865,60867,60869,62188,62502,62506,62494,62497,62698,62629);
DELETE FROM creature_battleground WHERE guid IN (62684,62462,62453,60858,60861,60865,60867,60869,62188,62502,62506,62494,62497,62698,62629);
DELETE FROM creature_linking WHERE guid IN (62684,62462,62453,60858,60861,60865,60867,60869,62188,62502,62506,62494,62497,62698,62629)
 OR master_guid IN (62684,62462,62453,60858,60861,60865,60867,60869,62188,62502,62506,62494,62497,62698,62629);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(62684,17352,530,1,0,0,-2426.68,-11740.7,15.3606,5.71709,300,10,0,273,0,0,1),
(62462,17352,530,1,0,0,-2466.92,-11753.3,13.8167,4.41333,300,10,0,247,0,0,1),
(62453,17347,530,1,0,0,-2520.1,-11545,28.4418,2.58728,300,10,0,247,0,0,1),
(60858,17347,530,1,0,0,-2546.21,-11569.3,28.8386,1.41209,300,10,0,247,0,0,1),
(60861,17347,530,1,0,0,-2538.46,-11616.8,24.2362,5.31648,300,10,0,273,0,0,1),
(60865,17343,530,1,0,0,-2473.86,-11593.6,24.8878,2.58722,300,10,0,247,0,0,1),
(60867,17343,530,1,0,0,-2440.89,-11626.7,24.4161,6.27073,300,10,0,222,0,0,1),
(60869,17343,530,1,0,0,-2614.07,-11195.5,17.6308,4.32688,300,10,0,222,0,0,1),
(62188,17347,530,1,0,0,-2004.52,-11654.4,48.578,2.83227,300,10,0,273,0,0,1);
-- more blizzlike movement
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE id IN (17343,17347);
-- Wilde creatures Update
UPDATE creature SET position_x = -2266.400879, position_y = -11742.095703, position_z = 23.109776 WHERE guid = 62455;
UPDATE creature SET position_x = -2444.105225, position_y = -11734.964844, position_z = 15.508304 WHERE guid = 62594;
UPDATE creature SET position_x = -2609.097900, position_y = -11739.420898, position_z = 10.395169 WHERE guid = 62460;
UPDATE creature SET position_x = -2600.915039, position_y = -11699.758789, position_z = 11.282938 WHERE guid = 62461;
UPDATE creature SET position_x = -2614.192871, position_y = -11613.033203, position_z = 18.898350 WHERE guid = 62608;
UPDATE creature SET position_x = -2596.900879, position_y = -11520.831055, position_z = 28.887001 WHERE guid = 62476;
UPDATE creature SET position_x = -2475.183838, position_y = -11532.606445, position_z = 29.281525 WHERE guid = 62613;
UPDATE creature SET position_x = -2589.035400, position_y = -11408.626953, position_z = 34.851734 WHERE guid = 62477;
UPDATE creature SET position_x = -2675.346924, position_y = -11364.487305, position_z = 16.269672 WHERE guid = 62479;
UPDATE creature SET position_x = -2698.498779, position_y = -11390.417969, position_z = 13.731531 WHERE guid = 62478;
UPDATE creature SET position_x = -2723.480225, position_y = -11277.781250, position_z = 9.501031 WHERE guid = 62471;
UPDATE creature SET position_x = -2735.597412, position_y = -11428.238281, position_z = 16.362879 WHERE guid = 62688;
UPDATE creature SET position_x = -2801.695557, position_y = -11202.958984, position_z = 1.628340 WHERE guid = 62212;
UPDATE creature SET position_x = -2837.942383, position_y = -11348.519531, position_z = 1.964164 WHERE guid = 62187;
UPDATE creature SET position_x = -2829.919434, position_y = -11375.751953, position_z = 2.305616 WHERE guid = 62199;
UPDATE creature SET position_x = -2825.080322, position_y = -11485.816406, position_z = 2.238363 WHERE guid = 62182;
UPDATE creature SET position_x = -2819.460693, position_y = -11466.369141, position_z = 2.958629 WHERE guid = 62198;
UPDATE creature SET position_x = -2765.083740, position_y = -11747.731445, position_z = 2.267746 WHERE guid = 62194;
UPDATE creature SET position_x = -2824.202637, position_y = -11746.158203, position_z = -2.84264 WHERE guid = 62193;
UPDATE creature SET position_x = -2786.075684, position_y = -11784.044922, position_z = -2.444721 WHERE guid = 62192;
UPDATE creature SET position_x = -2755.034180, position_y = -11764.095703, position_z = 1.311147 WHERE guid = 62173;
UPDATE creature SET position_x = -2868.456787, position_y = -11370.489258, position_z = -2.010995 WHERE guid = 62186;
UPDATE creature SET position_x = -2769.522461, position_y = -11208.001953, position_z = 2.258511 WHERE guid = 62214;
UPDATE creature SET position_x = -2748.671631, position_y = -11148.464844, position_z = -2.046975 WHERE guid = 62191;
UPDATE creature SET position_x = -2846.137695, position_y = -11207.194336, position_z = -1.984589 WHERE guid = 62202;
UPDATE creature SET position_x = -2834.095459, position_y = -11190.434570, position_z = -2.335025 WHERE guid = 62190;
UPDATE creature SET position_x = -2805.955811, position_y = -11432.189453, position_z = 8.172676 WHERE guid = 62197;
UPDATE creature SET position_x = -2800.717773, position_y = -11455.456055, position_z = 5.401843 WHERE guid = 62208;
UPDATE creature SET position_x = -2805.990967, position_y = -11502.715820, position_z = 3.762883 WHERE guid = 62206;
UPDATE creature SET position_x = -2813.263184, position_y = -11578.983398, position_z = 1.444373 WHERE guid = 62196;
UPDATE creature SET position_x = -2839.135254, position_y = -11674.480469, position_z = -2.510629 WHERE guid = 62177;
UPDATE creature SET position_x = -2795.468018, position_y = -11670.814453, position_z = 2.153513 WHERE guid = 62195;
UPDATE creature SET position_x = -2854.566895, position_y = -11579.612305, position_z = -2.330402 WHERE guid = 62179;
UPDATE creature SET position_x = -1997.725830, position_y = -12050.340820, position_z = 26.043154 WHERE guid = 62512;
UPDATE creature SET position_x = -2056.236328, position_y = -12099.364258, position_z = 31.992004 WHERE guid = 62501;
UPDATE creature SET position_x = -1913.269287, position_y = -12057.525391, position_z = 19.892935 WHERE guid = 62627;
UPDATE creature SET position_x = -1731.658081, position_y = -11854.990234, position_z = 17.363153 WHERE guid = 62519;
UPDATE creature SET position_x = -1936.084106, position_y = -11716.492188, position_z = 33.615047 WHERE guid = 62515;
UPDATE creature SET position_x = -2110.970947, position_y = -11639.894531, position_z = 44.288502 WHERE guid = 62619;
UPDATE creature SET position_x = -2160.916748, position_y = -11801.336914, position_z = 42.191963 WHERE guid = 62516;
UPDATE creature SET position_x = -2132.511230, position_y = -12081.735352, position_z = 31.304024 WHERE guid = 62622;
UPDATE creature SET position_x = -1890.241333, position_y = -12018.891602, position_z = 20.687574 WHERE guid = 62513;
UPDATE creature SET position_x = -1828.929199, position_y = -11889.196289, position_z = 24.099302 WHERE guid = 62529;
UPDATE creature SET position_x = -2404.188477, position_y = -11769.526367, position_z = 17.450071 WHERE guid = 62680;
UPDATE creature SET position_x = -2617.614746, position_y = -11271.717773, position_z = 25.135660 WHERE guid = 62612;

-- gameobjects
-- Duplicates
DELETE FROM gameobject WHERE guid IN (89631,89084,89632,89081,89082,89080,89634,89635);
DELETE FROM game_event_gameobject WHERE guid IN (89631,89084,89632,89081,89082,89080,89634,89635);
DELETE FROM gameobject_battleground WHERE guid IN (89631,89084,89632,89081,89082,89080,89634,89635);
-- pools
-- Blood Mushroom 
-- spawn max 10
DELETE FROM pool_template WHERE entry = 25536;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(25536,10,'Blood Mushroom');
DELETE FROM pool_gameobject_template WHERE pool_entry = 25536;
INSERT INTO pool_gameobject_template (id, pool_entry, chance, description) VALUES
(181891, 25536, 0, 'Blood Mushroom - 181891');




