-- =======================
-- SCHOLOMANCE TBC UPDATES
-- =======================

-- ======================================
-- All Bosses Are Immune To Crowd Control -- Daze, Horror, Shackle, Banish, Polymorph, Knockout, Freeze, Stun, Snare, Sleep, Silence, Pacify, Root, Fear, Distract, Disarm, Confused, Charm
-- ======================================
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|76234719 WHERE entry IN (14861,10506,14695,10503,11622,14516,10433,10432,10508,16118,11261,10901,10505,10502,10504,10507,1853);


-- ==============================================================
-- Fix Scholomance Door Now Closes After 20 Seconds Not 3 Seconds
-- ==============================================================
UPDATE gameobject_template SET data2=1310720 WHERE entry=174626;


-- ================
-- NPC Stats Tweaks
-- ================
-- Necrofiend (11551) - Bestiary Prob Wrong (100-138 Dmg Much Too Low)
UPDATE `creature_template` SET `MinMeleeDmg` = '352', `MaxMeleeDmg` = '467', `MinRangedDmg` = '413', `MaxRangedDmg` = '634', `DamageMultiplier` = '6.0', `DamageVariance` = '1.0' WHERE `entry` = '11551';


-- =========================================
-- Dungeon Aggro Linking and Missing Pathing
-- =========================================
-- Linked Aggro Group 1 - Reliquary
DELETE FROM creature_linking WHERE master_guid IN (49003);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91342','49003','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91373','49003','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91393','49003','3');

-- Linked Aggro Group 2 - Reliquary
DELETE FROM creature_linking WHERE master_guid IN (91341);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91350','91341','3');

-- Linked Aggro Group 3 - Reliquary
DELETE FROM creature_linking WHERE master_guid IN (91382);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48847','91382','3');

-- Linked Aggro Group 4 - Reliquary
DELETE FROM creature_linking WHERE master_guid IN (91397);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('49006','91397','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91349','91397','3');

-- Linked Aggro Group 5 - Reliquary
DELETE FROM creature_linking WHERE master_guid IN (91348);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('49008','91348','3');

-- Linked Aggro Group 6 - Reliquary
DELETE FROM creature_linking WHERE master_guid IN (91346);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91345','91346','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91347','91346','3');

-- Linked Aggro Group 7 - Reliquary
DELETE FROM creature_linking WHERE master_guid IN (48843);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91378','48843','3');

-- Linked Aggro Group 8 - Reliquary
DELETE FROM creature_linking WHERE master_guid IN (48842);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91343','48842','3');

-- Linked Aggro Group 9 - Reliquary
DELETE FROM creature_linking WHERE master_guid IN (49002);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91381','49002','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48845','49002','3');

-- Linked Aggro Group 10 - Reliquary
DELETE FROM creature_linking WHERE master_guid IN (48840);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91380','48840','3');

-- Linked Aggro Group 11 - Reliquary
DELETE FROM creature_linking WHERE master_guid IN (48841);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48848','48841','3');

-- Linked Aggro Group 12 - Reliquary
DELETE FROM creature_linking WHERE master_guid IN (48844);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('49009','48844','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91344','48844','3');

-- Linked Aggro Group 13 - Reliquary
DELETE FROM creature_linking WHERE master_guid IN (49005);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('49011','49005','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48849','49005','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('49004','49005','3');

-- Linked Aggro Group 1 - Chamber of Summoning
DELETE FROM creature_linking WHERE master_guid IN (48972);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48788','48972','3');

-- Linked Aggro Group 2 - Chamber of Summoning
DELETE FROM creature_linking WHERE master_guid IN (48968);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91340','48968','3');

-- Linked Aggro Group 3 - Chamber of Summoning
DELETE FROM creature_linking WHERE master_guid IN (48970);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48791','48970','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91336','48970','3');

-- Linked Aggro Group 4 - Chamber of Summoning
DELETE FROM creature_linking WHERE master_guid IN (91338);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48974','91338','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48792','91338','3');

-- Linked Aggro Group 5 - Chamber of Summoning
DELETE FROM creature_linking WHERE master_guid IN (48971);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48790','48971','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48973','48971','3');

-- Linked Aggro Group 6 - Chamber of Summoning
DELETE FROM creature_linking WHERE master_guid IN (48793);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48969','48793','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91337','48793','3');

-- Remove Frail Skeletons in Chamber of Summoning (All Should Be Summoned During Combat)
DELETE FROM creature_addon WHERE guid IN (91422,91406,91405,91427,91407,91421);
DELETE FROM creature WHERE guid IN (91422,91406,91405,91427,91407,91421);

-- Linked Aggro Group 1 - Room After Chamber of Summoning
DELETE FROM creature_linking WHERE master_guid IN (48967);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48779','48967','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91326','48967','3');

-- Linked Aggro Group 2 - Room After Chamber of Summoning
DELETE FROM creature_linking WHERE master_guid IN (91329);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91328','91329','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91330','91329','3');

-- Linked Aggro Group 3 - Room After Chamber of Summoning
DELETE FROM creature_linking WHERE master_guid IN (91333);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91335','91333','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48966','91333','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91334','91333','3');

-- Linked Aggro Group 4 - Room After Chamber of Summoning
DELETE FROM creature_linking WHERE master_guid IN (48777);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48776','48777','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48775','48777','3');

-- Linked Aggro Group 5 - Room After Chamber of Summoning
DELETE FROM creature_linking WHERE master_guid IN (48961);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91322','48961','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48774','48961','3');

-- Linked Aggro Group 6 - Room After Chamber of Summoning
DELETE FROM creature_linking WHERE master_guid IN (48787);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48959','48787','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91372','48787','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91323','48787','3');

-- Linked Aggro Group 7 - Room After Chamber of Summoning
DELETE FROM creature_linking WHERE master_guid IN (48783);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48962','48783','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48964','48783','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91325','48783','3');

-- Linked Aggro Group 8 - Room After Chamber of Summoning
DELETE FROM creature_linking WHERE master_guid IN (48778);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91331','48778','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48958','48778','3');

-- Linked Aggro Group 9 - Room After Chamber of Summoning
DELETE FROM creature_linking WHERE master_guid IN (48780);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48786','48780','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48960','48780','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48784','48780','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48785','48780','3');

-- Linked Aggro Group 10 - Room After Chamber of Summoning
DELETE FROM creature_linking WHERE master_guid IN (48965);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91324','48965','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48782','48965','3');

-- Add Random Movement for Risen Abberation - Catacombs
UPDATE creature SET SpawnDist=8, MovementType=1 WHERE guid IN (49000);

-- Linked Aggro Group 1 - Catacombs
DELETE FROM creature_linking WHERE master_guid IN (48832);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48829','48832','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48828','48832','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48830','48832','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48831','48832','3');

-- Fix a few NPC Positions and Movement - Catacombs
UPDATE creature SET position_x = '278.737976', position_y = '169.591690', position_z = '95.822685', orientation = '3.122011', SpawnDist=3 WHERE guid = '48830';
UPDATE creature SET SpawnDist=3, MovementType=1 WHERE guid IN (48831,48832,48828);

-- Linked Aggro Group 2 - Catacombs
UPDATE creature SET SpawnDist=3, MovementType=1 WHERE guid IN (48997,48999,48998,48995);
DELETE FROM creature_linking WHERE master_guid IN (48996);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48997','48996','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48999','48996','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48998','48996','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48995','48996','3');

-- Linked Aggro Group 3 - Catacombs
UPDATE creature SET SpawnDist=3, MovementType=1 WHERE guid IN (48986,48985,48987);
DELETE FROM creature_linking WHERE master_guid IN (48837);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48838','48837','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48986','48837','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48985','48837','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48987','48837','3');

-- Linked Aggro Group 4 - Catacombs
DELETE FROM creature_linking WHERE master_guid IN (48836);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48835','48836','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48834','48836','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48833','48836','3');

-- Linked Aggro Group 5 - Catacombs
DELETE FROM creature_linking WHERE master_guid IN (48817);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48818','48817','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48819','48817','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48820','48817','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48821','48817','3');

-- Linked Aggro Group 6 - Catacombs
UPDATE creature SET position_x = '249.343018', position_y = '120.633377', position_z = '95.823135', orientation = '0.554546' WHERE guid = '48839';
DELETE FROM creature_linking WHERE master_guid IN (48994);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48839','48994','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48815','48994','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48816','48994','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48813','48994','3');

-- Linked Aggro Group 7 - Catacombs
UPDATE creature SET position_x = '265.898041', position_y = '117.590919', position_z = '95.823135', orientation = '0.005554' WHERE guid = '48814';
DELETE FROM creature_linking WHERE master_guid IN (48993);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48814','48993','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('49001','48993','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48992','48993','3');

-- Linked Aggro Group 8 - Catacombs
DELETE FROM creature_linking WHERE master_guid IN (48998);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48989','48998','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48991','48998','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48990','48998','3');

-- Linked Aggro Group 9 - Catacombs
DELETE FROM creature_linking WHERE master_guid IN (48827);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48822','48827','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48823','48827','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48824','48827','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48825','48827','3');

-- Linked Aggro Group 10 - Catacombs
UPDATE creature SET position_x = '259.718353', position_y = '98.439461', position_z = '95.823135', orientation = '3.436958' WHERE guid = '48826';
UPDATE creature SET position_x = '256.483826', position_y = '94.123596', position_z = '95.823135', orientation = '2.519617' WHERE guid = '48809';
DELETE FROM creature_linking WHERE master_guid IN (48826);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48811','48826','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48808','48826','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48809','48826','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48810','48826','3');

-- Linked Aggro Group 11 - Catacombs
DELETE FROM creature_linking WHERE master_guid IN (48983);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48984','48983','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48982','48983','3');

-- Linked Aggro Group 12 - Catacombs
UPDATE creature SET position_x = '234.418091', position_y = '100.174278', position_z = '95.823135', orientation = '3.903489' WHERE guid = '48981';
UPDATE creature SET SpawnDist=3, MovementType=1 WHERE guid IN (48981,48978,48979,48980);
DELETE FROM creature_linking WHERE master_guid IN (48981);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48978','48981','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48979','48981','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48980','48981','3');

-- Move Some Rats
UPDATE creature SET position_x = '242.411499', position_y = '198.114792', position_z = '95.845100', orientation = '0.549838' WHERE guid = '91423';
UPDATE creature SET position_x = '239.661316', position_y = '189.257202', position_z = '95.845100', orientation = '4.184662' WHERE guid = '91424';
UPDATE creature SET position_x = '219.120224', position_y = '197.730377', position_z = '103.838661', orientation = '2.562029' WHERE guid = '91425';
UPDATE creature SET position_x = '207.367050', position_y = '193.939713', position_z = '109.834335', orientation = '3.999308' WHERE guid = '91426';
UPDATE creature SET SpawnDist=5, MovementType=1 WHERE guid IN (91423,91424,91425,91426,48917);

-- ======================================
-- MASSIVE Spawn Cleanup Under Entry Area
-- ======================================
DELETE FROM creature WHERE guid=91410;
DELETE FROM creature_addon WHERE guid=91410;
DELETE FROM creature_movement WHERE id=91410;
DELETE FROM game_event_creature WHERE guid=91410;
DELETE FROM game_event_creature_data WHERE guid=91410;
DELETE FROM creature_battleground WHERE guid=91410;
DELETE FROM creature_linking WHERE guid=91410 OR master_guid=91410;
DELETE FROM creature WHERE guid=91412;
DELETE FROM creature_addon WHERE guid=91412;
DELETE FROM creature_movement WHERE id=91412;
DELETE FROM game_event_creature WHERE guid=91412;
DELETE FROM game_event_creature_data WHERE guid=91412;
DELETE FROM creature_battleground WHERE guid=91412;
DELETE FROM creature_linking WHERE guid=91412 OR master_guid=91412;
DELETE FROM creature WHERE guid=48570;
DELETE FROM creature_addon WHERE guid=48570;
DELETE FROM creature_movement WHERE id=48570;
DELETE FROM game_event_creature WHERE guid=48570;
DELETE FROM game_event_creature_data WHERE guid=48570;
DELETE FROM creature_battleground WHERE guid=48570;
DELETE FROM creature_linking WHERE guid=48570 OR master_guid=48570;
DELETE FROM creature WHERE guid=91409;
DELETE FROM creature_addon WHERE guid=91409;
DELETE FROM creature_movement WHERE id=91409;
DELETE FROM game_event_creature WHERE guid=91409;
DELETE FROM game_event_creature_data WHERE guid=91409;
DELETE FROM creature_battleground WHERE guid=91409;
DELETE FROM creature_linking WHERE guid=91409 OR master_guid=91409;
DELETE FROM creature WHERE guid=48585;
DELETE FROM creature_addon WHERE guid=48585;
DELETE FROM creature_movement WHERE id=48585;
DELETE FROM game_event_creature WHERE guid=48585;
DELETE FROM game_event_creature_data WHERE guid=48585;
DELETE FROM creature_battleground WHERE guid=48585;
DELETE FROM creature_linking WHERE guid=48585 OR master_guid=48585;
DELETE FROM creature WHERE guid=48575;
DELETE FROM creature_addon WHERE guid=48575;
DELETE FROM creature_movement WHERE id=48575;
DELETE FROM game_event_creature WHERE guid=48575;
DELETE FROM game_event_creature_data WHERE guid=48575;
DELETE FROM creature_battleground WHERE guid=48575;
DELETE FROM creature_linking WHERE guid=48575 OR master_guid=48575;
DELETE FROM creature WHERE guid=48563;
DELETE FROM creature_addon WHERE guid=48563;
DELETE FROM creature_movement WHERE id=48563;
DELETE FROM game_event_creature WHERE guid=48563;
DELETE FROM game_event_creature_data WHERE guid=48563;
DELETE FROM creature_battleground WHERE guid=48563;
DELETE FROM creature_linking WHERE guid=48563 OR master_guid=48563;
DELETE FROM creature WHERE guid=48479;
DELETE FROM creature_addon WHERE guid=48479;
DELETE FROM creature_movement WHERE id=48479;
DELETE FROM game_event_creature WHERE guid=48479;
DELETE FROM game_event_creature_data WHERE guid=48479;
DELETE FROM creature_battleground WHERE guid=48479;
DELETE FROM creature_linking WHERE guid=48479 OR master_guid=48479;
DELETE FROM creature WHERE guid=91418;
DELETE FROM creature_addon WHERE guid=91418;
DELETE FROM creature_movement WHERE id=91418;
DELETE FROM game_event_creature WHERE guid=91418;
DELETE FROM game_event_creature_data WHERE guid=91418;
DELETE FROM creature_battleground WHERE guid=91418;
DELETE FROM creature_linking WHERE guid=91418 OR master_guid=91418;
DELETE FROM creature WHERE guid=91417;
DELETE FROM creature_addon WHERE guid=91417;
DELETE FROM creature_movement WHERE id=91417;
DELETE FROM game_event_creature WHERE guid=91417;
DELETE FROM game_event_creature_data WHERE guid=91417;
DELETE FROM creature_battleground WHERE guid=91417;
DELETE FROM creature_linking WHERE guid=91417 OR master_guid=91417;
DELETE FROM creature WHERE guid=48478;
DELETE FROM creature_addon WHERE guid=48478;
DELETE FROM creature_movement WHERE id=48478;
DELETE FROM game_event_creature WHERE guid=48478;
DELETE FROM game_event_creature_data WHERE guid=48478;
DELETE FROM creature_battleground WHERE guid=48478;
DELETE FROM creature_linking WHERE guid=48478 OR master_guid=48478;
DELETE FROM creature WHERE guid=48548;
DELETE FROM creature_addon WHERE guid=48548;
DELETE FROM creature_movement WHERE id=48548;
DELETE FROM game_event_creature WHERE guid=48548;
DELETE FROM game_event_creature_data WHERE guid=48548;
DELETE FROM creature_battleground WHERE guid=48548;
DELETE FROM creature_linking WHERE guid=48548 OR master_guid=48548;
DELETE FROM creature WHERE guid=91411;
DELETE FROM creature_addon WHERE guid=91411;
DELETE FROM creature_movement WHERE id=91411;
DELETE FROM game_event_creature WHERE guid=91411;
DELETE FROM game_event_creature_data WHERE guid=91411;
DELETE FROM creature_battleground WHERE guid=91411;
DELETE FROM creature_linking WHERE guid=91411 OR master_guid=91411;
DELETE FROM creature WHERE guid=48766;
DELETE FROM creature_addon WHERE guid=48766;
DELETE FROM creature_movement WHERE id=48766;
DELETE FROM game_event_creature WHERE guid=48766;
DELETE FROM game_event_creature_data WHERE guid=48766;
DELETE FROM creature_battleground WHERE guid=48766;
DELETE FROM creature_linking WHERE guid=48766 OR master_guid=48766;
DELETE FROM creature WHERE guid=48476;
DELETE FROM creature_addon WHERE guid=48476;
DELETE FROM creature_movement WHERE id=48476;
DELETE FROM game_event_creature WHERE guid=48476;
DELETE FROM game_event_creature_data WHERE guid=48476;
DELETE FROM creature_battleground WHERE guid=48476;
DELETE FROM creature_linking WHERE guid=48476 OR master_guid=48476;
DELETE FROM creature WHERE guid=48477;
DELETE FROM creature_addon WHERE guid=48477;
DELETE FROM creature_movement WHERE id=48477;
DELETE FROM game_event_creature WHERE guid=48477;
DELETE FROM game_event_creature_data WHERE guid=48477;
DELETE FROM creature_battleground WHERE guid=48477;
DELETE FROM creature_linking WHERE guid=48477 OR master_guid=48477;
DELETE FROM creature WHERE guid=48470;
DELETE FROM creature_addon WHERE guid=48470;
DELETE FROM creature_movement WHERE id=48470;
DELETE FROM game_event_creature WHERE guid=48470;
DELETE FROM game_event_creature_data WHERE guid=48470;
DELETE FROM creature_battleground WHERE guid=48470;
DELETE FROM creature_linking WHERE guid=48470 OR master_guid=48470;
DELETE FROM creature WHERE guid=91419;
DELETE FROM creature_addon WHERE guid=91419;
DELETE FROM creature_movement WHERE id=91419;
DELETE FROM game_event_creature WHERE guid=91419;
DELETE FROM game_event_creature_data WHERE guid=91419;
DELETE FROM creature_battleground WHERE guid=91419;
DELETE FROM creature_linking WHERE guid=91419 OR master_guid=91419;
DELETE FROM creature WHERE guid=48768;
DELETE FROM creature_addon WHERE guid=48768;
DELETE FROM creature_movement WHERE id=48768;
DELETE FROM game_event_creature WHERE guid=48768;
DELETE FROM game_event_creature_data WHERE guid=48768;
DELETE FROM creature_battleground WHERE guid=48768;
DELETE FROM creature_linking WHERE guid=48768 OR master_guid=48768;
DELETE FROM creature WHERE guid=48767;
DELETE FROM creature_addon WHERE guid=48767;
DELETE FROM creature_movement WHERE id=48767;
DELETE FROM game_event_creature WHERE guid=48767;
DELETE FROM game_event_creature_data WHERE guid=48767;
DELETE FROM creature_battleground WHERE guid=48767;
DELETE FROM creature_linking WHERE guid=48767 OR master_guid=48767;
DELETE FROM creature WHERE guid=48769;
DELETE FROM creature_addon WHERE guid=48769;
DELETE FROM creature_movement WHERE id=48769;
DELETE FROM game_event_creature WHERE guid=48769;
DELETE FROM game_event_creature_data WHERE guid=48769;
DELETE FROM creature_battleground WHERE guid=48769;
DELETE FROM creature_linking WHERE guid=48769 OR master_guid=48769;
DELETE FROM creature WHERE guid=48764;
DELETE FROM creature_addon WHERE guid=48764;
DELETE FROM creature_movement WHERE id=48764;
DELETE FROM game_event_creature WHERE guid=48764;
DELETE FROM game_event_creature_data WHERE guid=48764;
DELETE FROM creature_battleground WHERE guid=48764;
DELETE FROM creature_linking WHERE guid=48764 OR master_guid=48764;
DELETE FROM creature WHERE guid=48765;
DELETE FROM creature_addon WHERE guid=48765;
DELETE FROM creature_movement WHERE id=48765;
DELETE FROM game_event_creature WHERE guid=48765;
DELETE FROM game_event_creature_data WHERE guid=48765;
DELETE FROM creature_battleground WHERE guid=48765;
DELETE FROM creature_linking WHERE guid=48765 OR master_guid=48765;
DELETE FROM creature WHERE guid=48761;
DELETE FROM creature_addon WHERE guid=48761;
DELETE FROM creature_movement WHERE id=48761;
DELETE FROM game_event_creature WHERE guid=48761;
DELETE FROM game_event_creature_data WHERE guid=48761;
DELETE FROM creature_battleground WHERE guid=48761;
DELETE FROM creature_linking WHERE guid=48761 OR master_guid=48761;
DELETE FROM creature WHERE guid=48762;
DELETE FROM creature_addon WHERE guid=48762;
DELETE FROM creature_movement WHERE id=48762;
DELETE FROM game_event_creature WHERE guid=48762;
DELETE FROM game_event_creature_data WHERE guid=48762;
DELETE FROM creature_battleground WHERE guid=48762;
DELETE FROM creature_linking WHERE guid=48762 OR master_guid=48762;
DELETE FROM creature WHERE guid=48760;
DELETE FROM creature_addon WHERE guid=48760;
DELETE FROM creature_movement WHERE id=48760;
DELETE FROM game_event_creature WHERE guid=48760;
DELETE FROM game_event_creature_data WHERE guid=48760;
DELETE FROM creature_battleground WHERE guid=48760;
DELETE FROM creature_linking WHERE guid=48760 OR master_guid=48760;
DELETE FROM creature WHERE guid=48772;
DELETE FROM creature_addon WHERE guid=48772;
DELETE FROM creature_movement WHERE id=48772;
DELETE FROM game_event_creature WHERE guid=48772;
DELETE FROM game_event_creature_data WHERE guid=48772;
DELETE FROM creature_battleground WHERE guid=48772;
DELETE FROM creature_linking WHERE guid=48772 OR master_guid=48772;
DELETE FROM creature WHERE guid=91413;
DELETE FROM creature_addon WHERE guid=91413;
DELETE FROM creature_movement WHERE id=91413;
DELETE FROM game_event_creature WHERE guid=91413;
DELETE FROM game_event_creature_data WHERE guid=91413;
DELETE FROM creature_battleground WHERE guid=91413;
DELETE FROM creature_linking WHERE guid=91413 OR master_guid=91413;
DELETE FROM creature WHERE guid=48770;
DELETE FROM creature_addon WHERE guid=48770;
DELETE FROM creature_movement WHERE id=48770;
DELETE FROM game_event_creature WHERE guid=48770;
DELETE FROM game_event_creature_data WHERE guid=48770;
DELETE FROM creature_battleground WHERE guid=48770;
DELETE FROM creature_linking WHERE guid=48770 OR master_guid=48770;
DELETE FROM creature WHERE guid=91414;
DELETE FROM creature_addon WHERE guid=91414;
DELETE FROM creature_movement WHERE id=91414;
DELETE FROM game_event_creature WHERE guid=91414;
DELETE FROM game_event_creature_data WHERE guid=91414;
DELETE FROM creature_battleground WHERE guid=91414;
DELETE FROM creature_linking WHERE guid=91414 OR master_guid=91414;
DELETE FROM creature WHERE guid=48771;
DELETE FROM creature_addon WHERE guid=48771;
DELETE FROM creature_movement WHERE id=48771;
DELETE FROM game_event_creature WHERE guid=48771;
DELETE FROM game_event_creature_data WHERE guid=48771;
DELETE FROM creature_battleground WHERE guid=48771;
DELETE FROM creature_linking WHERE guid=48771 OR master_guid=48771;
DELETE FROM creature WHERE guid=48773;
DELETE FROM creature_addon WHERE guid=48773;
DELETE FROM creature_movement WHERE id=48773;
DELETE FROM game_event_creature WHERE guid=48773;
DELETE FROM game_event_creature_data WHERE guid=48773;
DELETE FROM creature_battleground WHERE guid=48773;
DELETE FROM creature_linking WHERE guid=48773 OR master_guid=48773;
DELETE FROM creature WHERE guid=91416;
DELETE FROM creature_addon WHERE guid=91416;
DELETE FROM creature_movement WHERE id=91416;
DELETE FROM game_event_creature WHERE guid=91416;
DELETE FROM game_event_creature_data WHERE guid=91416;
DELETE FROM creature_battleground WHERE guid=91416;
DELETE FROM creature_linking WHERE guid=91416 OR master_guid=91416;
DELETE FROM creature WHERE guid=91415;
DELETE FROM creature_addon WHERE guid=91415;
DELETE FROM creature_movement WHERE id=91415;
DELETE FROM game_event_creature WHERE guid=91415;
DELETE FROM game_event_creature_data WHERE guid=91415;
DELETE FROM creature_battleground WHERE guid=91415;
DELETE FROM creature_linking WHERE guid=91415 OR master_guid=91415;
DELETE FROM creature WHERE guid=48586;
DELETE FROM creature_addon WHERE guid=48586;
DELETE FROM creature_movement WHERE id=48586;
DELETE FROM game_event_creature WHERE guid=48586;
DELETE FROM game_event_creature_data WHERE guid=48586;
DELETE FROM creature_battleground WHERE guid=48586;
DELETE FROM creature_linking WHERE guid=48586 OR master_guid=48586;
DELETE FROM creature WHERE guid=91408;
DELETE FROM creature_addon WHERE guid=91408;
DELETE FROM creature_movement WHERE id=91408;
DELETE FROM game_event_creature WHERE guid=91408;
DELETE FROM game_event_creature_data WHERE guid=91408;
DELETE FROM creature_battleground WHERE guid=91408;
DELETE FROM creature_linking WHERE guid=91408 OR master_guid=91408;
DELETE FROM creature WHERE guid=48763;
DELETE FROM creature_addon WHERE guid=48763;
DELETE FROM creature_movement WHERE id=48763;
DELETE FROM game_event_creature WHERE guid=48763;
DELETE FROM game_event_creature_data WHERE guid=48763;
DELETE FROM creature_battleground WHERE guid=48763;
DELETE FROM creature_linking WHERE guid=48763 OR master_guid=48763;


-- ReSpawn and Linked Aggro Group 1 - Area Under Entry
INSERT INTO creature VALUES (48763,10481,289,1,0,0,179.978,98.9187,104.715,3.23351,7200,4,0,1480,0,0,1);
INSERT INTO creature VALUES (91408,10495,289,1,0,0,182.254,97.0641,104.715,3.1157,7200,4,0,8883,0,0,1);
INSERT INTO creature VALUES (48586,10485,289,1,0,0,181.049,96.0861,104.715,3.85398,7200,4,0,2088,0,0,1);
INSERT INTO creature VALUES (91415,10485,289,1,0,0,181.117,96.33,104.715,5.95649,7200,4,0,2088,0,0,1);
DELETE FROM creature_linking WHERE master_guid IN (48763);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91408','48763','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48586','48763','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91415','48763','3');

-- ReSpawn and Linked Aggro Group 2 - Area Under Entry
INSERT INTO creature VALUES (91416,10495,289,1,0,0,184.724,70.8195,104.715,3.92938,7200,4,0,8883,0,0,1);
INSERT INTO creature VALUES (48773,10495,289,1,0,0,182.693,73.4182,104.715,3.00889,7200,4,0,8883,0,0,1);
INSERT INTO creature VALUES (48771,10485,289,1,0,0,181.687,70.4901,104.715,3.24766,7200,4,0,2088,0,0,1);
INSERT INTO creature VALUES (91414,10485,289,1,0,0,183.968,73.5285,104.715,0.677837,7200,4,0,2088,0,0,1);
DELETE FROM creature_linking WHERE master_guid IN (91416);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48773','91416','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48771','91416','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91414','91416','3');

-- ReSpawn and Linked Aggro Group 3 - Area Under Entry
INSERT INTO creature VALUES (48770,10495,289,1,0,0,219.852,73.3716,104.715,6.07981,7200,4,0,8883,0,0,1);
INSERT INTO creature VALUES (91413,10495,289,1,0,0,216.414,70.4501,104.715,6.07666,7200,4,0,8883,0,0,1);
INSERT INTO creature VALUES (48772,10485,289,1,0,0,222.061,72.0801,104.715,1.59126,7200,4,0,2153,0,0,1);
INSERT INTO creature VALUES (48760,10485,289,1,0,0,218.595,69.9652,104.715,2.62955,7200,4,0,2153,0,0,1);
DELETE FROM creature_linking WHERE master_guid IN (48770);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91413','48770','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48772','48770','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48760','48770','3');

-- ReSpawn and Linked Aggro Group 4 - Area Under Entry
INSERT INTO creature VALUES (48762,10495,289,1,0,0,220.959,99.256,104.715,1.03362,7200,4,0,8613,0,0,1);
INSERT INTO creature VALUES (48761,10481,289,1,0,0,217.318,102.436,104.715,1.95332,7200,4,0,1480,0,0,1);
INSERT INTO creature VALUES (48765,10485,289,1,0,0,220.335,102.439,104.715,5.55437,7200,4,0,2088,0,0,1);
INSERT INTO creature VALUES (48764,10485,289,1,0,0,217.323,98.7392,104.715,3.63879,7200,4,0,2088,0,0,1);
DELETE FROM creature_linking WHERE master_guid IN (48762);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48761','48762','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48765','48762','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48764','48762','3');

-- Add Missing Pathing Risen Warriors - Area Under Entry
INSERT INTO creature VALUES (48769,10486,289,1,0,0,212.287,99.7125,104.715,3.22647,7200,0,0,14805,0,0,2);
DELETE FROM creature_movement WHERE id IN (48769);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48769','1','188.468','98.9763','104.715','0','0','0','0','0','0','0','0','0','3.16128','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48769','2','188.558','91.2601','104.265','0','0','0','0','0','0','0','0','0','4.70852','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48769','3','188.207','99.9891','104.715','0','0','0','0','0','0','0','0','0','1.61091','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48769','4','211.335','100.99','104.715','0','0','0','0','0','0','0','0','0','0.043251','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48769','5','211.938','90.903','104.244','0','0','0','0','0','0','0','0','0','4.71166','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48769','6','211.646','101.844','104.715','0','0','0','0','0','0','0','0','0','3.97652','0','0');

INSERT INTO creature VALUES (48767,10486,289,1,0,0,196.812,81.1022,104.244,5.18839,7200,0,0,14805,0,0,2);
DELETE FROM creature_movement WHERE id IN (48767);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48767','1','204.93','76.9245','104.244','0','0','0','0','0','0','0','0','0','0.034611','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48767','2','206.419','91.5788','104.244','0','0','0','0','0','0','0','0','0','1.54179','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48767','3','191.585','91.0326','104.244','0','0','0','0','0','0','0','0','0','3.20841','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48767','4','192.422','79.17','104.244','0','0','0','0','0','0','0','0','0','4.79099','0','0');

-- Add Random Movement for All Plagued Hatchlings - The Great Ossuary
UPDATE creature SET SpawnDist=6, MovementType=1 WHERE id=10678 AND map=289;

-- Linked Aggro Group 1 - The Great Ossuary
DELETE FROM creature_linking WHERE master_guid IN (91296);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91363','91296','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48934','91296','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91294','91296','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91303','91296','3');

-- Linked Aggro Group 2 - The Great Ossuary
DELETE FROM creature_linking WHERE master_guid IN (91295);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48929','91295','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48933','91295','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48936','91295','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91367','91295','3');

-- Linked Aggro Group 3 - The Great Ossuary
DELETE FROM creature_linking WHERE master_guid IN (91302);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48931','91302','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91301','91302','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91364','91302','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91299','91302','3');

-- Linked Aggro Group 4 - The Great Ossuary
DELETE FROM creature_linking WHERE master_guid IN (91365);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91298','91365','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91369','91365','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48930','91365','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91297','91365','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91300','91365','3');

-- Linked Aggro Group 5 - The Great Ossuary
DELETE FROM creature_linking WHERE master_guid IN (48928);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48935','48928','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48932','48928','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91366','48928','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91368','48928','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48927','48928','3');

-- Move NPC To Prevent 3D Map Issues in Rattlegore Room
UPDATE creature SET position_x = '105.905174', position_y = '151.324234', position_z = '92.949997', orientation = '5.499394' WHERE guid = '48796';
UPDATE creature SET position_x = '123.906281', position_y = '144.727341', position_z = '92.870918', orientation = '5.929008' WHERE guid = '48976';
UPDATE creature SET position_x = '139.105179', position_y = '144.764572', position_z = '92.781654', orientation = '6.258875' WHERE guid = '48804';
UPDATE creature SET position_x = '156.303467', position_y = '149.242233', position_z = '93.104500', orientation = '0.232515' WHERE guid = '48799';
UPDATE creature SET position_x = '157.276093', position_y = '185.498154', position_z = '93.085205', orientation = '2.289474' WHERE guid = '48795';
UPDATE creature SET position_x = '138.522888', position_y = '189.363266', position_z = '93.994331', orientation = '3.028534' WHERE guid = '48803';
UPDATE creature SET position_x = '123.728676', position_y = '190.110794', position_z = '93.184067', orientation = '3.440868' WHERE guid = '48800';
UPDATE creature SET position_x = '104.339439', position_y = '187.882172', position_z = '93.085182', orientation = '3.219386' WHERE guid = '48977';

-- Link Vectus to Aggro All Students on Aggro - The Viewing Room
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('10475','289','10432','1','0'); -- Vectus
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('10433','289','10432','3','0'); -- Maduk
-- insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('10475','289','10433','1','0'); - Maduk (Requires Core Implementation to allow This Additional Same Entry)

-- Linked Aggro Group 1 - The Viewing Room
DELETE FROM creature_linking WHERE master_guid IN (48952);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48956','48952','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48951','48952','3');

-- Linked Aggro Group 2 - The Viewing Room
DELETE FROM creature_linking WHERE master_guid IN (48463);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48468','48463','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91314','48463','3');

-- Linked Aggro Group 3 - The Viewing Room
DELETE FROM creature_linking WHERE master_guid IN (91318);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48955','91318','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48464','91318','3');

-- Linked Aggro Group 4 - The Viewing Room
DELETE FROM creature_linking WHERE master_guid IN (48462);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91313','48462','3');

-- Linked Aggro Group 5 - The Viewing Room
DELETE FROM creature_linking WHERE master_guid IN (48465);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48460','48465','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91320','48465','3');

-- Linked Aggro Group 6 - The Viewing Room
DELETE FROM creature_linking WHERE master_guid IN (48948);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48466','48948','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91371','48948','3');

-- Add Missing Pathing of a Student - The Viewing Room
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid=91319;
DELETE FROM creature_movement WHERE id=91319;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('91319','1','105.548','92.4925','98.1446','0','0','0','0','0','0','0','0','0','1.60783','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('91319','2','103.687','99.33','98.1639','0','0','0','0','0','0','0','0','0','1.86702','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('91319','3','96.9677','104.686','97.832','0','0','0','0','0','0','0','0','0','2.40423','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('91319','4','98.083','116.21','97.4823','0','0','0','0','0','0','0','0','0','1.47432','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('91319','5','95.5224','120.022','97.4338','0','0','0','0','0','0','0','0','0','2.16232','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('91319','6','97.9831','113.725','97.4436','0','0','0','0','0','0','0','0','0','5.11621','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('91319','7','97.0701','104.489','97.8414','0','0','0','0','0','0','0','0','0','4.61198','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('91319','8','104.348','98.3558','98.0921','0','0','0','0','0','0','0','0','0','5.71468','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('91319','9','106.261','88.9515','98.3584','0','0','0','0','0','0','0','0','0','4.89316','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('91319','10','105.454','78.7395','98.6784','0','0','0','0','0','0','0','0','0','4.74707','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('91319','11','107.013','73.1658','98.8869','0','0','0','0','0','0','0','0','0','4.99055','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('91319','12','106.362','68.7445','98.5763','0','0','0','0','0','0','0','0','0','4.50203','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('91319','13','96.9881','61.2329','98.1248','0','0','0','0','0','0','0','0','0','3.81716','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('91319','14','97.045','67.3506','97.8027','0','0','0','0','0','0','0','0','0','1.56149','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('91319','15','106.062','68.9948','98.5646','0','0','0','0','0','0','0','0','0','0.178408','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('91319','16','106.44','79.3682','98.8192','0','0','0','0','0','0','0','0','0','1.5238','0','0');

-- Linked Aggro Group 7 - The Viewing Room
DELETE FROM creature_linking WHERE master_guid IN (48957);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48954','48957','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48467','48957','3');

-- Linked Aggro Group 8 - The Viewing Room
DELETE FROM creature_linking WHERE master_guid IN (48950);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48459','48950','3');

-- Linked Aggro Group 9 - The Viewing Room
DELETE FROM creature_linking WHERE master_guid IN (48461);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48953','48461','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91321','48461','3');

-- Linked Aggro Group 10 - The Viewing Room
DELETE FROM creature_linking WHERE master_guid IN (91316);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91312','91316','3');

-- Linked Aggro Group 11 - The Viewing Room
DELETE FROM creature_linking WHERE master_guid IN (91317);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91370','91317','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('91315','91317','3');

-- Linked Aggro Group 1 - The Laboratory
DELETE FROM creature_linking WHERE master_guid IN (48905);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48902','48905','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48900','48905','3');

-- Linked Aggro Group 2 - The Laboratory
DELETE FROM creature_linking WHERE master_guid IN (48906);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48908','48906','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48903','48906','3');

-- Linked Aggro Group 3 - The Laboratory
DELETE FROM creature_linking WHERE master_guid IN (48901);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48907','48901','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48904','48901','3');

-- Linked Aggro Group 1 - The Coven
DELETE FROM creature_linking WHERE master_guid IN (48868);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48898','48868','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48899','48868','3');

-- Linked Aggro Group 2 - The Coven
DELETE FROM creature_linking WHERE master_guid IN (48897);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48871','48897','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48896','48897','3');

-- Linked Aggro Group 3 - The Coven
DELETE FROM creature_linking WHERE master_guid IN (48870);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48869','48870','3');

-- Add Missing Pathing for Disased Ghouls - Hall of the Damned
UPDATE creature SET SpawnDist=5, MovementType=1 WHERE guid IN (48921,48924,48923,48922,48926);

-- Add Missing Pathing for Skeletons - Vault of the Ravenian
UPDATE creature SET position_x = '136.797897', position_y = '-11.881536', position_z = '75.397789', orientation = '3.107849' WHERE guid = '48856';
UPDATE creature SET position_x = '136.803650', position_y = '10.329500', position_z = '75.397789', orientation = '3.168324' WHERE guid = '48851';
UPDATE creature SET SpawnDist=5, MovementType=1 WHERE guid IN (48856,48852,48851);
UPDATE creature SET SpawnDist=3, MovementType=1 WHERE guid IN (48853,48855);

-- Linked Aggro Group 1 - Barov Family Vault
DELETE FROM creature_linking WHERE master_guid IN (48865);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48866','48865','3');

-- Linked Aggro Lord Alexi Barov and Adds - Barov Family Vault
DELETE FROM creature_linking WHERE master_guid IN (48863);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48864','48863','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('48862','48863','3');

-- Move BoneWarders and Add Pathing - The Shadow Vault
UPDATE creature SET position_x = '235.043015', position_y = '6.186200', position_z = '72.671654', orientation = '4.700638' WHERE guid = '48860';
UPDATE creature SET position_x = '221.546265', position_y = '0.201908', position_z = '72.671654', orientation = '6.263584' WHERE guid = '48859';
UPDATE creature SET position_x = '246.630890', position_y = '5.036689', position_z = '72.671677', orientation = '1.577902' WHERE guid = '48858';
UPDATE creature SET position_x = '240.535263', position_y = '5.564518', position_z = '72.673058', orientation = '1.492298' WHERE guid = '48861';


-- Add BoneWarders Pathing - The Shadow Vault
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid=48860;
DELETE FROM creature_movement WHERE id=48860;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48860','1','234.976','0.474594','72.6717','0','0','0','0','0','0','0','0','0','4.70064','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48860','2','235.101','-6.12439','72.6717','1000','0','0','0','0','0','0','0','0','4.72813','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48860','3','234.671','7.41997','72.6717','1000','0','0','0','0','0','0','0','0','1.54412','0','0');

UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid=48859;
DELETE FROM creature_movement WHERE id=48859;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48859','1','251.741','0.797263','72.6629','0','0','0','0','0','0','0','0','0','0.029879','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48859','2','262.871','0.828124','75.2505','0','0','0','0','0','0','0','0','0','6.27615','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48859','3','223.051','0.115298','72.6716','0','0','0','0','0','0','0','0','0','3.13849','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48859','4','251.741','0.797263','72.6629','0','0','0','0','0','0','0','0','0','0.029879','0','0');

UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid=48858;
DELETE FROM creature_movement WHERE id=48858;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48858','1','246.583','11.7845','72.6717','1000','0','0','0','0','0','0','0','0','1.5779','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48858','2','248.357','0.4974','72.6717','0','0','0','0','0','0','0','0','0','1.5779','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48858','3','246.491','-5.44543','72.6717','1000','0','0','0','0','0','0','0','0','4.73363','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48858','4','247.152','0.3285','72.6717','0','0','0','0','0','0','0','0','0','1.5779','0','0');

UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid=48861;
DELETE FROM creature_movement WHERE id=48861;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48861','1','240.704','12.3408','72.6731','1000','0','0','0','0','0','0','0','0','1.49937','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48861','2','240.069','-1.610291','72.6731','0','0','0','0','0','0','0','0','0','4.64724','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48861','3','241.189','-12.6058','72.6731','1000','0','0','0','0','0','0','0','0','4.69829','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('48861','4','240.565','0.692865','72.6731','0','0','0','0','0','0','0','0','0','1.51193','0','0');

-- Add Random Movement for Corpses in Hall of Secrets
UPDATE creature SET SpawnDist=3, MovementType=1 WHERE guid IN (48358,48941,91308,48436,48458,91305,91310,91311,48940,91307,91304,48944,91309,48945,91306,48942,48361,48375,48389,48938,48457,48947,48428,48943,48363,48939,48374);








