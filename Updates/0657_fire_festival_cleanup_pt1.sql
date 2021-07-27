DELETE FROM gameobject WHERE guid=49313 AND id=187950; -- remove duplicate Horde Silithus Bonfire
UPDATE quest_template SET RequiredRaces=1101, OfferRewardText='Desecrate the Horde''s Silithus bonfire!' WHERE entry=11800; -- change to Alliance Silithus desecrate quest, not Horde
DELETE FROM gameobject WHERE guid=52464 AND id=188021; -- remove duplicate Horde Silithus Camp Pavilion
DELETE FROM gameobject WHERE guid IN (49312,50679) AND id=187943; -- remove duplicate Alliance Silithus Bonfire
DELETE FROM game_event_gameobject WHERE guid IN (49313,52464,49312,50679);

-- Shattrath City
-- Festival Loremaster should not start 11935 "Stealing Silvermoon's Flame" nor 9365 "A Thief's Reward"
DELETE FROM creature_questrelation WHERE id=16817 AND quest IN (9365,11935);

-- misc duplicate standing torch cleanups
-- technically it's correct for them to overlap Braziers in some places in TBC classic, but we'll opt for the fixed Cata+ positions instead
DELETE FROM gameobject WHERE guid IN (52205,51766,52186,52213,51767,122420,122400,122421);
DELETE FROM game_event_gameobject WHERE guid IN (52205,51766,52186,52213,51767,122420,122400,122421);

-- "Unusual Activity" quest should reward 7g 59s at max level
UPDATE quest_template SET RewOrReqMoney=75900 WHERE entry=11886;

UPDATE quest_template SET
-- "Incense for the Summer Scorchlings" should reward 75s at max level
RewOrReqMoney=7500,
-- add missing texts
OfferRewardText='Ah, and what is this?  Such a delightful aroma!  I am sure it will burn with a flame pure and bright!$b$bTake this blossom, $n.  Take it, and leave me be... I must attend to this precious fuel...',
RequestItemsText='A fiery salutations to you, honored $c.  Welcome to this hallowed ground of the Midsummer Fire Festival.'
WHERE entry=11964;

-- Fire Eater should start 11882 "Playing with Fire"
DELETE FROM creature_questrelation WHERE id=25962;
INSERT INTO creature_questrelation (id, quest) VALUES
(25962, 11882);
-- Playing with Fire should reward 75s at max level
UPDATE quest_template SET RewOrReqMoney=7500 WHERE entry=11882;

-- missing lantern-like objects in Allerian Stronghold
-- missing Summer Scorchling in Allerian Stronghold camp

-- Terokkar Forest Flame Warden
UPDATE creature_template SET GossipMenuId=9203 WHERE Entry=25907;
DELETE FROM npc_text WHERE id=12504;
DELETE FROM npc_text_broadcast_text WHERE Id=12504;
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(12504, 0, 25101);
UPDATE quest_template SET OfferRewardText='Honor the Terokkar Forest flame.' WHERE entry=11825;

-- can't desecrate Horde Bonfire at Stonebreaker Hold, Bonfire spawned multiple times
UPDATE gameobject SET position_x=-2551.446, position_y=4278.528, position_z=21.06705, rotation2=0.9935713, rotation3=0.1132084 WHERE guid=122903 AND id=187970;
DELETE FROM gameobject WHERE guid=50975 AND id=187970;
DELETE FROM game_event_gameobject WHERE guid=50975;
UPDATE quest_template SET RequiredRaces=1101, OfferRewardText='Desecrate the Horde''s Terokkar Forest bonfire!' WHERE entry=11782;

-- Every "desecrate" quest should reward 11g 99s at max level
UPDATE quest_template SET RewOrReqMoney=119900 WHERE entry IN (11580,11581,11732,11734,11735,11736,11737,11738,11739,11740,11741,11742,11743,11744,11745,11746,11747,11748,11749,11750,11751,11752,11753,11754,11755,11756,11757,11758,11759,11760,11761,11762,11763,11764,11765,11766,11767,11768,11769,11770,11771,11772,11773,11774,11775,11776,11777,11778,11779,11780,11781,11782,11783,11784,11785,11786,11787,11799,11800,11801,11802,11803);
-- Every "honor" quest should reward 5g 95s at max level
UPDATE quest_template SET RewOrReqMoney=59500 WHERE entry IN (11583,11584,11804,11805,11806,11807,11808,11809,11810,11811,11812,11813,11814,11815,11816,11817,11818,11819,11820,11821,11822,11823,11824,11825,11826,11827,11828,11829,11830,11831,11832,11833,11834,11835,11836,11837,11838,11839,11840,11841,11842,11843,11844,11845,11846,11847,11848,11849,11850,11851,11852,11853,11854,11855,11856,11857,11858,11859,11860,11861,11862,11863);

-- Every "Desecrate this Fire!" quest offered by Horde Bonfires should be available for Alliance, not Horde
UPDATE quest_template SET RequiredRaces=1101 WHERE entry IN (11580,11732,11755,11766,11786,11764,11765,11799,11801,11802,11803,11767,11768,11769,11770,11771,11772,11773,11774,11775,11776,11777,11778,11779,11780,11781,11783,11784,11785,11787);
-- Every "Desecrate this Fire!" quest offered by Alliance Bonfires should be available for Horde, not Alliance
UPDATE quest_template SET RequiredRaces=690 WHERE entry IN (11581,11745,11749,11734,11735,11736,11737,11738,11739,11740,11741,11742,11743,11744,11746,11747,11748,11750,11751,11752,11753,11754,11756,11757,11758,11759,11760,11761,11762,11763);

-- remove duplicate spawns in Horde Tanaris camp
DELETE FROM gameobject WHERE guid IN (50691,52488,50855,50712,50713,51595,51350,52282,50996,52357,52356,51602);
DELETE FROM game_event_gameobject WHERE guid IN (50691,52488,50855,50712,50713,51595,51350,52282,50996,52357,52356,51602);
-- remove duplicate spawns in Alliance Tanaris camp
DELETE FROM gameobject WHERE guid IN (50707,52485,50708,50683,50853,51346,52347,52350,52351,52348,51594,51017);
DELETE FROM game_event_gameobject WHERE guid IN (50707,52485,50708,50683,50853,51346,52347,52350,52351,52348,51594,51017);

-- many more duplicate spawns
DELETE FROM gameobject WHERE guid IN (122171,122162,52069,51890,51850,50490,50541,52837,52896,52887,52900,52902,52906,52897,52841,52901,52908,52907,52909,52843,52905,53465,53198,53466,53467,53193,53065,53197,52895,53377,53192,53063,53195,53064,53489,53333,53060,53062,53061,53334,53497,53089,53378,53382,53200,53379,53496,53464,53490,53491,53199,52903,52885,52838,52899,52886,52873,52856,52840,52874,52839,50512,50483,50515,50545,50503,50517,50502,50521,50519,50520,50518,50546,50543,50542,50553,50682,50690,50743,50705,50741,50740,50785,50784,50802,50803,50845,50852,50871,50872,50897,50941,50993,51028,51030,51057,51058,51086,51087,51085,51900,51681,51887,51824,51509,51505,51691,51309,51310,51561,51323,51317,51559,51340,51933,52060,52090,52056,52064,51832,51797,51545,51820,51577,51562,51813,51812,51982,51815,51949,51931,51689,51831,51690,52142,52128,52140,51799,51804,51901,51932,51919,51822,51981,51917,51930,51943,52091,52137,52012,52119,52059,52089,52121,52129,52094,52096,52143,52139,52136,52131,52141,52268,52352,52403,52332,52395,52400,52398,52411,52409,52412,52345,52402,52405,52410,52483,52504,52509,52515,52513,52491,52495,52508,52512,52711,52600,52669,52648,52604,52732,52702,52703,52728,52666,52802,52715,52737,52786,52804,52736,52734,52738,52731,52733,52774,52759,52785,52770,52810,52798,52812,52806,52811,52809,52973,52915,52946,52918,52921,53039,52999,52974,53052,53022,53040,53051,53372,53340,53176,53175,53304,53305,53486,53347,53350,53370,53468,53469,53484,53291,53320,53321,53362,53485,53421,53442,53475,53472,53443,53481,53479,53483,53638,53663,53577,53528,53532,53660,53655,53647,53671,53759,53702,53779,53625,53748,53679,53793,123837,53596,123838,123839,53667,53668,53624,53746,53780,53798,53801,53745,53640,53661,53654,53653,53673,53669,53758,53788,53682,53685,53791,53810,53705,53737,53747,53787,53713,53739,53765,53799,53812,53811,53807,53792,53806,53800,53803,53795,53805,53809,53808,53876,53847,53846,53891,53848,53890,53958,53942,53955,53957,53953,53954,53956,53986,54002,54008,54009,54004,54005,54003,54007,123840,123841,123842,54211,54196,54136,54141,54182,54255,54215,54138,54206,54210,54273,54219,54238,54264,54274,54279,54272,54357,54404,54377,54355,54335,54334,54427,54344,54352,54378,54407,54354,54359,54396,54360,54428,54397,54431,54399,54439,54441,54443,54416,54445,54438,54446,54444,54517,54516,54500,54542,54596,54505,54597,54520,54552,54565,54578,54535,54592,54521,54553,54557,54534,54587,54569,54566,54593,54595,54551,54598,54585,54594,54811,54766,54858,54852,54789,54921,54813,54917,54900,54927,54883,54855,54854,54861,54901,54920,54933,54935,54937,54936,122036,122035,122052,122053,122054,122051,122065,122081,122156,122172,122178,122177,122241,122243,122242,122258,122259,122580,123632);
DELETE FROM game_event_gameobject WHERE guid IN (122171,122162,52069,51890,51850,50490,50541,52837,52896,52887,52900,52902,52906,52897,52841,52901,52908,52907,52909,52843,52905,53465,53198,53466,53467,53193,53065,53197,52895,53377,53192,53063,53195,53064,53489,53333,53060,53062,53061,53334,53497,53089,53378,53382,53200,53379,53496,53464,53490,53491,53199,52903,52885,52838,52899,52886,52873,52856,52840,52874,52839,50512,50483,50515,50545,50503,50517,50502,50521,50519,50520,50518,50546,50543,50542,50553,50682,50690,50743,50705,50741,50740,50785,50784,50802,50803,50845,50852,50871,50872,50897,50941,50993,51028,51030,51057,51058,51086,51087,51085,51900,51681,51887,51824,51509,51505,51691,51309,51310,51561,51323,51317,51559,51340,51933,52060,52090,52056,52064,51832,51797,51545,51820,51577,51562,51813,51812,51982,51815,51949,51931,51689,51831,51690,52142,52128,52140,51799,51804,51901,51932,51919,51822,51981,51917,51930,51943,52091,52137,52012,52119,52059,52089,52121,52129,52094,52096,52143,52139,52136,52131,52141,52268,52352,52403,52332,52395,52400,52398,52411,52409,52412,52345,52402,52405,52410,52483,52504,52509,52515,52513,52491,52495,52508,52512,52711,52600,52669,52648,52604,52732,52702,52703,52728,52666,52802,52715,52737,52786,52804,52736,52734,52738,52731,52733,52774,52759,52785,52770,52810,52798,52812,52806,52811,52809,52973,52915,52946,52918,52921,53039,52999,52974,53052,53022,53040,53051,53372,53340,53176,53175,53304,53305,53486,53347,53350,53370,53468,53469,53484,53291,53320,53321,53362,53485,53421,53442,53475,53472,53443,53481,53479,53483,53638,53663,53577,53528,53532,53660,53655,53647,53671,53759,53702,53779,53625,53748,53679,53793,123837,53596,123838,123839,53667,53668,53624,53746,53780,53798,53801,53745,53640,53661,53654,53653,53673,53669,53758,53788,53682,53685,53791,53810,53705,53737,53747,53787,53713,53739,53765,53799,53812,53811,53807,53792,53806,53800,53803,53795,53805,53809,53808,53876,53847,53846,53891,53848,53890,53958,53942,53955,53957,53953,53954,53956,53986,54002,54008,54009,54004,54005,54003,54007,123840,123841,123842,54211,54196,54136,54141,54182,54255,54215,54138,54206,54210,54273,54219,54238,54264,54274,54279,54272,54357,54404,54377,54355,54335,54334,54427,54344,54352,54378,54407,54354,54359,54396,54360,54428,54397,54431,54399,54439,54441,54443,54416,54445,54438,54446,54444,54517,54516,54500,54542,54596,54505,54597,54520,54552,54565,54578,54535,54592,54521,54553,54557,54534,54587,54569,54566,54593,54595,54551,54598,54585,54594,54811,54766,54858,54852,54789,54921,54813,54917,54900,54927,54883,54855,54854,54861,54901,54920,54933,54935,54937,54936,122036,122035,122052,122053,122054,122051,122065,122081,122156,122172,122178,122177,122241,122243,122242,122258,122259,122580,123632);

-- every Alliance Flame Warden should have gossip menu 9203
UPDATE creature_template SET GossipMenuId=9203 WHERE Entry IN (25883,25887,25888,25889,25890,25891,25892,25893,25894,25896,25897,25898,25899,25900,25901,25902,25903,25904,25905,25906,25908,25909,25910,25911,25912,25913,25914,25915,25916,25917);
-- every Horde Flame Keeper should have gossip menu 9278
UPDATE creature_template SET GossipMenuId=9278 WHERE Entry IN (25884,25918,25919,25920,25921,25922,25923,25925,25926,25927,25928,25929,25930,25931,25932,25933,25934,25935,25936,25937,25938,25939,25940,25941,25942,25943,25944,25945,25946,25947);

DELETE FROM gossip_menu WHERE entry=9278;
INSERT INTO gossip_menu (entry, text_id) VALUES
(9278, 12582);
DELETE FROM npc_text WHERE id=12582;
DELETE FROM npc_text_broadcast_text WHERE Id=12582;
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(12582, 0, 25402);

-- remove extra Desecrate quests associated with Silverpine Forest bonfire
DELETE FROM gameobject_questrelation WHERE id=187559 AND quest IN (11732,11755,11766,11786);

DELETE FROM gossip_menu WHERE entry IN (9379,9360,9357,9362,9364,9369,9377);
INSERT INTO gossip_menu (entry, text_id) VALUES
(9379, 12374),
(9360, 12374),
(9357, 12374),
(9362, 12374),
(9364, 12374),
(9369, 12374),
(9377, 12374);

UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Silverpine Forest bonfire!' WHERE entry=11580;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Arathi Highlands bonfire!' WHERE entry=11764;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Ashenvale bonfire!' WHERE entry=11765;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Netherstorm bonfire!' WHERE entry=11799;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Stranglethorn Vale bonfire!' WHERE entry=11801;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Tanaris bonfire!' WHERE entry=11802;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Winterspring bonfire!' WHERE entry=11803;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Blade''s Edge Mountains bonfire!' WHERE entry=11767;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Burning Steppes bonfire!' WHERE entry=11768;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Desolace bonfire!' WHERE entry=11769;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Durotar bonfire!' WHERE entry=11770;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Dustwallow Marsh bonfire!' WHERE entry=11771;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Eversong Woods bonfire!' WHERE entry=11772;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Feralas bonfire!' WHERE entry=11773;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Ghostlands bonfire!' WHERE entry=11774;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Hellfire Peninsula bonfire!' WHERE entry=11775;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Hillsbrad Foothills bonfire!' WHERE entry=11776;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Mulgore bonfire!' WHERE entry=11777;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Nagrand bonfire!' WHERE entry=11778;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Shadowmoon Valley bonfire!' WHERE entry=11779;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Stonetalon Mountains bonfire!' WHERE entry=11780;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Swamp of Sorrows bonfire!' WHERE entry=11781;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Barrens bonfire!' WHERE entry=11783;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Hinterlands bonfire!' WHERE entry=11784;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Thousand Needles bonfire!' WHERE entry=11785;
UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Zangarmarsh bonfire!' WHERE entry=11787;

DELETE FROM gameobject_questrelation WHERE id=187954 AND quest=11766;
INSERT INTO gameobject_questrelation (id, quest) VALUES
(187954, 11766);

UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Badlands bonfire!' WHERE entry=11766;

DELETE FROM gameobject_questrelation WHERE id=187974 AND quest=11786;
INSERT INTO gameobject_questrelation (id, quest) VALUES
(187974, 11786);

UPDATE quest_template SET OfferRewardText='Desecrate the Horde''s Tirisfal Glades bonfire!' WHERE entry=11786;

-- Camp Pavilion seems to be visible from very long distance - add far view flag
UPDATE gameobject_template SET ExtraFlags=ExtraFlags|0x00040000 WHERE entry=188021;

-- Fire/Flame Eater has no equipment by default, handled via script instead
UPDATE creature_template SET EquipmentTemplateId=0 WHERE Entry IN (25962,25994);
UPDATE creature_template_addon SET auras='' WHERE entry IN (25962,25994);

DELETE FROM dbscripts_on_relay WHERE id IN (10202,10203,10204);
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(10202, 1000, 0, 42, 0, 0, 0, 0, 0, 0, 2200, 0, 0, 0, 0, 0, 0, 0, 0, 'Fire/Flame Eater - Equip Monster - Item, Potion Green'),
(10202, 4000, 0, 1, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fire/Flame Eater - Emote OneShotEatNoSheathe'),
(10202, 7000, 0, 15, 46332, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fire/Flame Eater - Cast Midsummer Flame Breath'),
(10202, 13000, 0, 15, 46332, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fire/Flame Eater - Cast Midsummer Flame Breath'),
(10202, 19000, 0, 15, 46332, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fire/Flame Eater - Cast Midsummer Flame Breath'),
(10202, 23000, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fire/Flame Eater - Remove Equipment'),
(10202, 24000, 0, 15, 45407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fire/Flame Eater - Cast Reveler - Applause/Cheer'),

(10203, 1000, 0, 42, 0, 0, 0, 0, 0, 0, 1906, 2081, 0, 0, 0, 0, 0, 0, 0, 'Fire/Flame Eater - Equip Monster - Torch and Monster - Torch, Offhand'),
(10203, 4000, 0, 15, 46322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fire/Flame Eater - Cast NPC Juggle Torch (Juggling)'),
(10203, 20000, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fire/Flame Eater - Remove Equipment'),
(10203, 21000, 0, 15, 45407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fire/Flame Eater - Cast Reveler - Applause/Cheer'),

(10204, 3000, 0, 36, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fire/Flame Eater and Midsummer Celebrant - Reset Orientation');


