-- Delete game_event_gameobject records pointing to nothing: no record in gameobject

-- SELECT * FROM game_event_gameobject WHERE guid NOT IN (SELECT guid FROM gameobject);
-- SELECT * FROM game_event_creature WHERE guid NOT IN (SELECT guid FROM creature);
-- SELECT * FROM game_event_creature_data WHERE guid NOT IN (SELECT guid FROM creature);

-- Event 28 - Noblegarden - Brightly Colored Eggs (Respawned) entry: 113769/113770/etc
-- `game_event_gameobject` guid (14728) does not exist in `gameobject`
-- `game_event_gameobject` guid (14819) does not exist in `gameobject`
-- `game_event_gameobject` guid (15159) does not exist in `gameobject`
-- `game_event_gameobject` guid (17855) does not exist in `gameobject`
-- `game_event_gameobject` guid (17856) does not exist in `gameobject`
-- `game_event_gameobject` guid (17858) does not exist in `gameobject`
DELETE FROM `game_event_gameobject` WHERE `guid` IN (14728,14819,15159,17855,17856,17858);

-- Event 26 - Brewfest (wotlk stuff) - entry: 195266
DELETE FROM `game_event_gameobject` WHERE `guid` = 31703; -- 113268
DELETE FROM `gameobject` WHERE `guid` IN (80835,80818,80811,80834,80833,80838,80832,80836,80822,80819,80824,80823,80821,80820,80810,80809,80830,80826,80828,80827,80829,80831,80837,80814,80825,80812,80813,80817,80816,80808,80839,80840,80841,80842,80843,80844,80845,80846,80847,80848,80849,80850,80851,80852,80853,80854,80855,80856,80857,80858,80859,80860,80861,80862,80863,80864,80865,80866,80867,80868,80869,80870,80871,80872,80873,80874,80875,80876,80877,80878,80879,80880,80881,80882,80883,80884,80885,80886,80887,80888,80889,80895,80896,80897,80898,80899,80900,80901,80902,80903,80904,80905,80906,80907,80908,80909,80910,80911,80912,80913,80914,80915,80916,80917,80918,80919,80920,80921,80922,80923,80924,80925,80926,80927,80928,80929,80930,80931,80932,80939,80940,80941,80942,80943,80944,80945,80946,80947,80948,80949,80950,80951,80952);
DELETE FROM `game_event_gameobject` WHERE `guid` IN (80835,80818,80811,80834,80833,80838,80832,80836,80822,80819,80824,80823,80821,80820,80810,80809,80830,80826,80828,80827,80829,80831,80837,80814,80825,80812,80813,80817,80816,80808,80839,80840,80841,80842,80843,80844,80845,80846,80847,80848,80849,80850,80851,80852,80853,80854,80855,80856,80857,80858,80859,80860,80861,80862,80863,80864,80865,80866,80867,80868,80869,80870,80871,80872,80873,80874,80875,80876,80877,80878,80879,80880,80881,80882,80883,80884,80885,80886,80887,80888,80889,80895,80896,80897,80898,80899,80900,80901,80902,80903,80904,80905,80906,80907,80908,80909,80910,80911,80912,80913,80914,80915,80916,80917,80918,80919,80920,80921,80922,80923,80924,80925,80926,80927,80928,80929,80930,80931,80932,80939,80940,80941,80942,80943,80944,80945,80946,80947,80948,80949,80950,80951,80952);

-- Event 12 - Hallow's End
-- `game_event_gameobject` guid (81086) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37675;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37675,81086); -- 190887

-- `game_event_gameobject` guid (81087) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37707;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37707,81087); -- 190888

-- `game_event_gameobject` guid (81088) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37677;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37677,81088); -- 190912

-- `game_event_gameobject` guid (81089) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 10428;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (10428,81089); -- 190889

-- `game_event_gameobject` guid (81090) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37673;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37673,81090); -- 190867

-- `game_event_gameobject` guid (81091) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37674;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37674,81091); -- 190868

-- `game_event_gameobject` guid (81092) does not exist in `gameobject`
DELETE FROM `game_event_gameobject` WHERE `guid` = 81092; -- 190913

-- `game_event_gameobject` guid (81093) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37676;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37676,81093); -- 190890

-- `game_event_gameobject` guid (81094) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37705;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37705,81094); -- 190869

-- `game_event_gameobject` guid (81095) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37691;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37691,81095); -- 190870

-- `game_event_gameobject` guid (81096) does not exist in `gameobject`
DELETE FROM `game_event_gameobject` WHERE `guid` = 81096; -- 190914

-- `game_event_gameobject` guid (81097) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37704;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37704,81097); -- 190871

-- `game_event_gameobject` guid (81098) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37702;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37702,81098); -- 190872

-- `game_event_gameobject` guid (81099) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37703;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37703,81099); -- 190873

-- `game_event_gameobject` guid (81100) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37692;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37692,81100); -- 190874

-- `game_event_gameobject` guid (81101) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37709;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37709,81101); -- 190893

-- `game_event_gameobject` guid (81102) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37682;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37682,81102); -- 190915

-- `game_event_gameobject` guid (81103) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37684;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37684,81103); -- 190917

-- `game_event_gameobject` guid (81104) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37679;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37679,81104); -- 190919

-- `game_event_gameobject` guid (81105) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37686;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37686,81105); -- 190921

-- `game_event_gameobject` guid (81106) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37687;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37687,81106); -- 190922

-- `game_event_gameobject` guid (81107) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37681;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37681,81107); -- 190923

-- `game_event_gameobject` guid (81108) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 10427;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (10427,81108); -- 190865

-- `game_event_gameobject` guid (81109) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37720;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37720,81109); -- 190903

-- `game_event_gameobject` guid (81110) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37726;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37726,81110); -- 190935

-- `game_event_gameobject` guid (81111) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37708;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37708,81111); -- 190907

-- `game_event_gameobject` guid (81112) does not exist in `gameobject`
DELETE FROM `game_event_gameobject` WHERE `guid` = 81112; -- 190908

-- `game_event_gameobject` guid (81113) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37713;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37713,81113); -- 190909

-- `game_event_gameobject` guid (81114) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37712;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37712,81114); -- 190911

-- `game_event_gameobject` guid (81115) does not exist in `gameobject`
DELETE FROM `game_event_gameobject` WHERE `guid` = 81115; -- 190886

-- `game_event_gameobject` guid (81116) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37671;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37671,81116); -- 190938

-- `game_event_gameobject` guid (81117) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37688;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37688,81117); -- 190940

-- `game_event_gameobject` guid (81118) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37689;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37689,81118); -- 190941

-- `game_event_gameobject` guid (81119) does not exist in `gameobject`
DELETE FROM `gameobject` WHERE `guid` = 37729;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (37729,81119); -- 190944

-- Event 1 - Midsummer Fire Festival
-- `game_event_gameobject` guid (122959) does not exist in `gameobject`
-- `game_event_gameobject` guid (122960) does not exist in `gameobject`
DELETE FROM `game_event_gameobject` WHERE `guid` IN (122959,122960);

-- `game_event_creature` guid (54743) does not exist in `creature`
DELETE FROM `game_event_creature_data` WHERE `guid` = 54743; -- 3490254!?
-- `game_event_creature_data` guid (94920) does not exist in `creature`
DELETE FROM `game_event_creature_data` WHERE `guid` = 94920; -- 152966
-- `game_event_creature_data` guid (590006) does not exist in `creature`
DELETE FROM `game_event_creature_data` WHERE `guid` = 590006; -- 12805 removed in patch 2.0
-- `game_event_creature_data` guid (590007) does not exist in `creature`
DELETE FROM `game_event_creature_data` WHERE `guid` = 590007; -- 12799 removed in patch 2.0
-- Stranglethorn Fishing Extravaganza
DELETE FROM `game_event_creature` WHERE `event` IN (34,35,36);
-- `game_event_creature` guid (54687) does not exist in `creature`
DELETE FROM `game_event_creature_data` WHERE `guid` = 54687; -- 170631
-- `game_event_creature` guid (54688) does not exist in `creature`
DELETE FROM `game_event_creature_data` WHERE `guid` = 54688; -- 170632
-- `game_event_creature` guid (54742) does not exist in `creature`
DELETE FROM `game_event_creature_data` WHERE `guid` = 54742; -- 170635
-- `game_event_creature_data` guid (89407) does not exist in `creature`
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES (170609, 44);
DELETE FROM `game_event_creature_data` WHERE `guid` = 89407; -- 170635
-- `game_event_creature_data` guid (89408) does not exist in `creature`
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES (170610, 44);
DELETE FROM `game_event_creature_data` WHERE `guid` = 89408; -- 170610
-- `game_event_creature_data` guid (89409) does not exist in `creature`
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES (170611, 44);
DELETE FROM `game_event_creature_data` WHERE `guid` = 89409; -- 170611
-- `game_event_creature_data` guid (89410) does not exist in `creature`
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES (170612, 44);
DELETE FROM `game_event_creature_data` WHERE `guid` = 89410; -- 170612
-- `game_event_creature_data` guid (89420) does not exist in `creature`
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES (170613, 44);
DELETE FROM `game_event_creature_data` WHERE `guid` = 89420; -- 170613
-- `game_event_creature_data` guid (89421) does not exist in `creature`
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES (170614, 44);
DELETE FROM `game_event_creature_data` WHERE `guid` = 89421; -- 170614
-- `game_event_creature_data` guid (91579) does not exist in `creature`
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES (170601, 44);
DELETE FROM `game_event_creature_data` WHERE `guid` = 91579; -- 170601
-- `game_event_creature_data` guid (91580) does not exist in `creature`
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES (170602, 44);
DELETE FROM `game_event_creature_data` WHERE `guid` = 91580; -- 170602

DELETE FROM `game_event_creature_data` WHERE `modelid` = 16412; -- Gossip NPC Appearance - All, Pirate Day - Done in Core!

DELETE FROM `game_event_creature_data` WHERE `guid` = 94920; -- 170616

-- `game_event_creature` guid (105970) does not exist in `creature`
DELETE FROM `game_event_creature_data` WHERE `guid` = 105970; -- 170630

