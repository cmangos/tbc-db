-- ==================================================================
-- ==========         Shadow Labyrinth Development         ==========
-- ==================================================================

-- adding missing mobs in room of Ambassador Hellmaw boss
SET @GUID := 140000;
REPLACE INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecsmin,spawntimesecsmax,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(@GUID,18794,555,3,0,0,-138.855,-71.7374,8.15643,4.38077,7200,7200,0,0,16227,9240,0,0),
(@GUID + 1,18794,555,3,0,0,-174.658,-71.6582,8.15643,4.46804,7200,7200,0,0,16227,9240,0,0),
(@GUID + 2,18794,555,3,0,0,-157.189,-52.0085,8.15643,4.83456,7200,7200,0,0,16227,9240,0,0),
(@GUID + 3,18794,555,3,0,0,-157.366,-13.1208,8.15643,4.72984,7200,7200,0,0,16227,9240,0,0),
(@GUID + 4,18794,555,3,0,0,-138.492,6.14561,8.15643,4.76475,7200,7200,0,0,16227,9240,0,0),
(@GUID + 5,18794,555,3,0,0,-174.66,6.66753,8.15643,4.60767,7200,7200,0,0,16227,9240,0,0);

-- linking the new mobs to their respective packs
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(@GUID,67078,3),
(@GUID,67079,3),
(@GUID,67080,3),
(@GUID + 1,67075,3),
(@GUID + 1,67074,3),
(@GUID + 1,67076,3),
(@GUID + 2,67070,3),
(@GUID + 2,67071,3),
(@GUID + 2,67072,3),
(@GUID + 3,67068,3),
(@GUID + 3,67069,3),
(@GUID + 3,67067,3),
(@GUID + 4,67084,3),
(@GUID + 4,67077,3),
(@GUID + 4,67083,3),
(@GUID + 5,67073,3),
(@GUID + 5,67082,3),
(@GUID + 5,67081,3);

-- adding missing links to the rest of SL
-- first room
-- 2x Cabal Acolyte (18633) 1x Cabal Deathsworn (18635)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(66822,66856,3),
(66822,66821,3),
(66856,66821,3);
-- 1x Cabal Acolyte (18633) 1x Cabal Deathsworn (18635)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(66858,66827,3);
-- 2x Cabal Acolyte (18633) 1x Cabal Deathsworn (18635)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(66833,66859,3),
(66833,66828,3),
(66859,66828,3);
-- 3x Cabal Acolyte (18633)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(56056,66831,3),
(56056,66832,3),
(66831,66832,3);
-- 4x Cabal Acolyte (18633)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(66830,66829,3),
(66830,66823,3),
(66830,66824,3),
(66829,66823,3),
(66829,66824,3),
(66823,66824,3);
-- 2x Cabal Acolyte (18633) 1x Cabal Deathsworn (18635)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(66825,66857,3),
(66825,66826,3),
(66857,66826,3);
-- 1x Cabal Acolyte (18633) 2x Cabal Deathsworn (18635)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(66862,66836,3),
(66862,66861,3),
(66836,66861,3);
-- 1x Cabal Warlock (18640) 5x Cabal Familiar (18641)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(66894,66898,3),
(66894,66899,3),
(66894,66900,3),
(66894,66901,3),
(66894,66902,3),
(66898,66899,3),
(66898,66900,3),
(66898,66901,3),
(66898,66902,3),
(66899,66900,3),
(66899,66901,3),
(66899,66902,3),
(66900,66901,3),
(66900,66902,3),
(66901,66902,3);
-- 1x Cabal Warlock (18640) 1x Cabal Familiar (18641) 1x Fel Guardhound (18642)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(66905,66903,3),
(66905,66895,3),
(66903,66895,3);
-- room of "Blackheart the Inciter" boss
-- 1x Cabal Acolyte (18633) 2x Cabal Cultist (18631) 1x Cabal Deathsworn (18635)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(66799,66837,3),
(66799,66798,3),
(66799,66863,3),
(66837,66798,3),
(66837,66863,3),
(66798,66863,3);
-- 1x Cabal Acolyte (18633) 2x Cabal Cultist (18631) 1x Cabal Deathsworn (18635) 1x Cabal Shadowpriest (18637)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(66874,66801,3),
(66874,66865,3),
(66874,66800,3),
(66874,66838,3),
(66801,66865,3),
(66801,66800,3),
(66801,66838,3),
(66865,66800,3),
(66865,66838,3),
(66800,66838,3);
-- 2x Cabal Acolyte (18633) 1x Cabal Cultist (18631) 1x Cabal Deathsworn (18635) 1x Cabal Shadowpriest (18637)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(66866,66840,3),
(66866,66802,3),
(66866,66839,3),
(66866,66872,3),
(66840,66802,3),
(66840,66839,3),
(66840,66872,3),
(66802,66839,3),
(66802,66872,3),
(66839,66872,3);
-- 1x Cabal Acolyte (18633) 1x Cabal Cultist (18631) 1x Cabal Deathsworn (18635) 1x Cabal Shadowpriest (18637) 1x Cabal Warlock (18640) 1x Fel Guardhound (18642)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(66873,66864,3),
(66873,66842,3),
(66873,66804,3),
(66873,66906,3),
(66873,66897,3),
(66864,66842,3),
(66864,66804,3),
(66864,66906,3),
(66864,66897,3),
(66842,66804,3),
(66842,66906,3),
(66842,66897,3),
(66804,66906,3),
(66804,66897,3),
(66906,66897,3);
-- 1x Cabal Acolyte (18633) 1x Cabal Cultist (18631) 1x Cabal Deathsworn (18635) 1x Cabal Shadowpriest (18637) 1x Cabal Warlock (18640) 1x Cabal Familiar (18641)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(66803,66875,3),
(66803,66841,3),
(66803,66867,3),
(66803,66904,3),
(66803,66896,3),
(66875,66841,3),
(66875,66867,3),
(66875,66904,3),
(66875,66896,3),
(66841,66867,3),
(66841,66904,3),
(66841,66896,3),
(66867,66904,3),
(66867,66896,3),
(66904,66896,3);
-- 2x Cabal Cultist (18631)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(66807,66805,3);
-- 1x Cabal Cultist (18631) 1x Cabal Deathsworn (18635)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(66868,66806,3);
-- small room between 2nd and 3rd boss
-- 1x Cabal Acolyte (18633) 2x Cabal Deathsworn (18635)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(66843,66870,3),
(66843,66869,3),
(66870,66869,3);
-- 2x Cabal Cultist (18631)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(66809,66808,3);


