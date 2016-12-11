-- ========================================
-- Coilfang Reservoir: The Underbog
-- ========================================

-- ========================================================
-- All Bosses and Heroic Bosses Are Immune To Crowd Control -- Daze, Horror, Shackle, Banish, Polymorph, Knockout, Freeze, Stun, Snare, Sleep, Silence, Pacify, Root, Fear, Distract, Disarm, Confused, Charm
-- ========================================================
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|76234719 WHERE entry IN (17770,20169,18105,20168,17826,20183,17882,20184);


-- ===================
-- Some Misc NPC Fixes
-- ===================
UPDATE creature_template SET ModelId1=18722, ModelId2=0, ModelId3=0, ModelId4=0 WHERE entry IN (17732);

-- Wrong Rep gain For Spore Strider (Summoned During Heroic Final Boss Fight)
DELETE from creature_onkill_reputation where creature_id = 22300;


-- =========================
-- Missing Equipment Entries
-- =========================


-- =========================================
-- REMOVE NPC SPAWNS (WILL REUSE GUID)
-- =========================================
DELETE FROM creature WHERE guid=54187;
DELETE FROM creature_addon WHERE guid=54187;
DELETE FROM creature_movement WHERE id=54187;
DELETE FROM game_event_creature WHERE guid=54187;
DELETE FROM game_event_creature_data WHERE guid=54187;
DELETE FROM creature_battleground WHERE guid=54187;
DELETE FROM creature_linking WHERE guid=54187 OR master_guid=54187;
DELETE FROM creature WHERE guid=54210;
DELETE FROM creature_addon WHERE guid=54210;
DELETE FROM creature_movement WHERE id=54210;
DELETE FROM game_event_creature WHERE guid=54210;
DELETE FROM game_event_creature_data WHERE guid=54210;
DELETE FROM creature_battleground WHERE guid=54210;
DELETE FROM creature_linking WHERE guid=54210 OR master_guid=54210;
DELETE FROM creature WHERE guid=54213;
DELETE FROM creature_addon WHERE guid=54213;
DELETE FROM creature_movement WHERE id=54213;
DELETE FROM game_event_creature WHERE guid=54213;
DELETE FROM game_event_creature_data WHERE guid=54213;
DELETE FROM creature_battleground WHERE guid=54213;
DELETE FROM creature_linking WHERE guid=54213 OR master_guid=54213;
DELETE FROM creature WHERE guid=54246;
DELETE FROM creature_addon WHERE guid=54246;
DELETE FROM creature_movement WHERE id=54246;
DELETE FROM game_event_creature WHERE guid=54246;
DELETE FROM game_event_creature_data WHERE guid=54246;
DELETE FROM creature_battleground WHERE guid=54246;
DELETE FROM creature_linking WHERE guid=54246 OR master_guid=54246;
DELETE FROM creature WHERE guid=54247;
DELETE FROM creature_addon WHERE guid=54247;
DELETE FROM creature_movement WHERE id=54247;
DELETE FROM game_event_creature WHERE guid=54247;
DELETE FROM game_event_creature_data WHERE guid=54247;
DELETE FROM creature_battleground WHERE guid=54247;
DELETE FROM creature_linking WHERE guid=54247 OR master_guid=54247;
DELETE FROM creature WHERE guid=57013;
DELETE FROM creature_addon WHERE guid=57013;
DELETE FROM creature_movement WHERE id=57013;
DELETE FROM game_event_creature WHERE guid=57013;
DELETE FROM game_event_creature_data WHERE guid=57013;
DELETE FROM creature_battleground WHERE guid=57013;
DELETE FROM creature_linking WHERE guid=57013 OR master_guid=57013;
DELETE FROM creature WHERE guid=57015;
DELETE FROM creature_addon WHERE guid=57015;
DELETE FROM creature_movement WHERE id=57015;
DELETE FROM game_event_creature WHERE guid=57015;
DELETE FROM game_event_creature_data WHERE guid=57015;
DELETE FROM creature_battleground WHERE guid=57015;
DELETE FROM creature_linking WHERE guid=57015 OR master_guid=57015;
DELETE FROM creature WHERE guid=54389;
DELETE FROM creature_addon WHERE guid=54389;
DELETE FROM creature_movement WHERE id=54389;
DELETE FROM game_event_creature WHERE guid=54389;
DELETE FROM game_event_creature_data WHERE guid=54389;
DELETE FROM creature_battleground WHERE guid=54389;
DELETE FROM creature_linking WHERE guid=54389 OR master_guid=54389;
DELETE FROM creature WHERE guid=54394;
DELETE FROM creature_addon WHERE guid=54394;
DELETE FROM creature_movement WHERE id=54394;
DELETE FROM game_event_creature WHERE guid=54394;
DELETE FROM game_event_creature_data WHERE guid=54394;
DELETE FROM creature_battleground WHERE guid=54394;
DELETE FROM creature_linking WHERE guid=54394 OR master_guid=54394;
DELETE FROM creature WHERE guid=54405;
DELETE FROM creature_addon WHERE guid=54405;
DELETE FROM creature_movement WHERE id=54405;
DELETE FROM game_event_creature WHERE guid=54405;
DELETE FROM game_event_creature_data WHERE guid=54405;
DELETE FROM creature_battleground WHERE guid=54405;
DELETE FROM creature_linking WHERE guid=54405 OR master_guid=54405;
DELETE FROM creature WHERE guid=54396;
DELETE FROM creature_addon WHERE guid=54396;
DELETE FROM creature_movement WHERE id=54396;
DELETE FROM game_event_creature WHERE guid=54396;
DELETE FROM game_event_creature_data WHERE guid=54396;
DELETE FROM creature_battleground WHERE guid=54396;
DELETE FROM creature_linking WHERE guid=54396 OR master_guid=54396;
DELETE FROM creature WHERE guid=54406;
DELETE FROM creature_addon WHERE guid=54406;
DELETE FROM creature_movement WHERE id=54406;
DELETE FROM game_event_creature WHERE guid=54406;
DELETE FROM game_event_creature_data WHERE guid=54406;
DELETE FROM creature_battleground WHERE guid=54406;
DELETE FROM creature_linking WHERE guid=54406 OR master_guid=54406;
DELETE FROM creature WHERE guid=54408;
DELETE FROM creature_addon WHERE guid=54408;
DELETE FROM creature_movement WHERE id=54408;
DELETE FROM game_event_creature WHERE guid=54408;
DELETE FROM game_event_creature_data WHERE guid=54408;
DELETE FROM creature_battleground WHERE guid=54408;
DELETE FROM creature_linking WHERE guid=54408 OR master_guid=54408;
DELETE FROM creature WHERE guid=54407;
DELETE FROM creature_addon WHERE guid=54407;
DELETE FROM creature_movement WHERE id=54407;
DELETE FROM game_event_creature WHERE guid=54407;
DELETE FROM game_event_creature_data WHERE guid=54407;
DELETE FROM creature_battleground WHERE guid=54407;
DELETE FROM creature_linking WHERE guid=54407 OR master_guid=54407;
DELETE FROM creature WHERE guid=54412;
DELETE FROM creature_addon WHERE guid=54412;
DELETE FROM creature_movement WHERE id=54412;
DELETE FROM game_event_creature WHERE guid=54412;
DELETE FROM game_event_creature_data WHERE guid=54412;
DELETE FROM creature_battleground WHERE guid=54412;
DELETE FROM creature_linking WHERE guid=54412 OR master_guid=54412;
DELETE FROM creature WHERE guid=54410;
DELETE FROM creature_addon WHERE guid=54410;
DELETE FROM creature_movement WHERE id=54410;
DELETE FROM game_event_creature WHERE guid=54410;
DELETE FROM game_event_creature_data WHERE guid=54410;
DELETE FROM creature_battleground WHERE guid=54410;
DELETE FROM creature_linking WHERE guid=54410 OR master_guid=54410;
DELETE FROM creature WHERE guid=54409;
DELETE FROM creature_addon WHERE guid=54409;
DELETE FROM creature_movement WHERE id=54409;
DELETE FROM game_event_creature WHERE guid=54409;
DELETE FROM game_event_creature_data WHERE guid=54409;
DELETE FROM creature_battleground WHERE guid=54409;
DELETE FROM creature_linking WHERE guid=54409 OR master_guid=54409;
DELETE FROM creature WHERE guid=54411;
DELETE FROM creature_addon WHERE guid=54411;
DELETE FROM creature_movement WHERE id=54411;
DELETE FROM game_event_creature WHERE guid=54411;
DELETE FROM game_event_creature_data WHERE guid=54411;
DELETE FROM creature_battleground WHERE guid=54411;
DELETE FROM creature_linking WHERE guid=54411 OR master_guid=54411;
DELETE FROM creature WHERE guid=54421;
DELETE FROM creature_addon WHERE guid=54421;
DELETE FROM creature_movement WHERE id=54421;
DELETE FROM game_event_creature WHERE guid=54421;
DELETE FROM game_event_creature_data WHERE guid=54421;
DELETE FROM creature_battleground WHERE guid=54421;
DELETE FROM creature_linking WHERE guid=54421 OR master_guid=54421;
DELETE FROM creature WHERE guid=54420;
DELETE FROM creature_addon WHERE guid=54420;
DELETE FROM creature_movement WHERE id=54420;
DELETE FROM game_event_creature WHERE guid=54420;
DELETE FROM game_event_creature_data WHERE guid=54420;
DELETE FROM creature_battleground WHERE guid=54420;
DELETE FROM creature_linking WHERE guid=54420 OR master_guid=54420;
DELETE FROM creature WHERE guid=54427;
DELETE FROM creature_addon WHERE guid=54427;
DELETE FROM creature_movement WHERE id=54427;
DELETE FROM game_event_creature WHERE guid=54427;
DELETE FROM game_event_creature_data WHERE guid=54427;
DELETE FROM creature_battleground WHERE guid=54427;
DELETE FROM creature_linking WHERE guid=54427 OR master_guid=54427;
DELETE FROM creature WHERE guid=54424;
DELETE FROM creature_addon WHERE guid=54424;
DELETE FROM creature_movement WHERE id=54424;
DELETE FROM game_event_creature WHERE guid=54424;
DELETE FROM game_event_creature_data WHERE guid=54424;
DELETE FROM creature_battleground WHERE guid=54424;
DELETE FROM creature_linking WHERE guid=54424 OR master_guid=54424;
DELETE FROM creature WHERE guid=54637;
DELETE FROM creature_addon WHERE guid=54637;
DELETE FROM creature_movement WHERE id=54637;
DELETE FROM game_event_creature WHERE guid=54637;
DELETE FROM game_event_creature_data WHERE guid=54637;
DELETE FROM creature_battleground WHERE guid=54637;
DELETE FROM creature_linking WHERE guid=54637 OR master_guid=54637;
DELETE FROM creature WHERE guid=54701;
DELETE FROM creature_addon WHERE guid=54701;
DELETE FROM creature_movement WHERE id=54701;
DELETE FROM game_event_creature WHERE guid=54701;
DELETE FROM game_event_creature_data WHERE guid=54701;
DELETE FROM creature_battleground WHERE guid=54701;
DELETE FROM creature_linking WHERE guid=54701 OR master_guid=54701;
DELETE FROM creature WHERE guid=54700;
DELETE FROM creature_addon WHERE guid=54700;
DELETE FROM creature_movement WHERE id=54700;
DELETE FROM game_event_creature WHERE guid=54700;
DELETE FROM game_event_creature_data WHERE guid=54700;
DELETE FROM creature_battleground WHERE guid=54700;
DELETE FROM creature_linking WHERE guid=54700 OR master_guid=54700;
DELETE FROM creature WHERE guid=54703;
DELETE FROM creature_addon WHERE guid=54703;
DELETE FROM creature_movement WHERE id=54703;
DELETE FROM game_event_creature WHERE guid=54703;
DELETE FROM game_event_creature_data WHERE guid=54703;
DELETE FROM creature_battleground WHERE guid=54703;
DELETE FROM creature_linking WHERE guid=54703 OR master_guid=54703;
DELETE FROM creature WHERE guid=55068;
DELETE FROM creature_addon WHERE guid=55068;
DELETE FROM creature_movement WHERE id=55068;
DELETE FROM game_event_creature WHERE guid=55068;
DELETE FROM game_event_creature_data WHERE guid=55068;
DELETE FROM creature_battleground WHERE guid=55068;
DELETE FROM creature_linking WHERE guid=55068 OR master_guid=55068;
DELETE FROM creature WHERE guid=54799;
DELETE FROM creature_addon WHERE guid=54799;
DELETE FROM creature_movement WHERE id=54799;
DELETE FROM game_event_creature WHERE guid=54799;
DELETE FROM game_event_creature_data WHERE guid=54799;
DELETE FROM creature_battleground WHERE guid=54799;
DELETE FROM creature_linking WHERE guid=54799 OR master_guid=54799;
DELETE FROM creature WHERE guid=55106;
DELETE FROM creature_addon WHERE guid=55106;
DELETE FROM creature_movement WHERE id=55106;
DELETE FROM game_event_creature WHERE guid=55106;
DELETE FROM game_event_creature_data WHERE guid=55106;
DELETE FROM creature_battleground WHERE guid=55106;
DELETE FROM creature_linking WHERE guid=55106 OR master_guid=55106;
DELETE FROM creature WHERE guid=55102;
DELETE FROM creature_addon WHERE guid=55102;
DELETE FROM creature_movement WHERE id=55102;
DELETE FROM game_event_creature WHERE guid=55102;
DELETE FROM game_event_creature_data WHERE guid=55102;
DELETE FROM creature_battleground WHERE guid=55102;
DELETE FROM creature_linking WHERE guid=55102 OR master_guid=55102;
DELETE FROM creature WHERE guid=55391;
DELETE FROM creature_addon WHERE guid=55391;
DELETE FROM creature_movement WHERE id=55391;
DELETE FROM game_event_creature WHERE guid=55391;
DELETE FROM game_event_creature_data WHERE guid=55391;
DELETE FROM creature_battleground WHERE guid=55391;
DELETE FROM creature_linking WHERE guid=55391 OR master_guid=55391;
DELETE FROM creature WHERE guid=55536;
DELETE FROM creature_addon WHERE guid=55536;
DELETE FROM creature_movement WHERE id=55536;
DELETE FROM game_event_creature WHERE guid=55536;
DELETE FROM game_event_creature_data WHERE guid=55536;
DELETE FROM creature_battleground WHERE guid=55536;
DELETE FROM creature_linking WHERE guid=55536 OR master_guid=55536;
DELETE FROM creature WHERE guid=55553;
DELETE FROM creature_addon WHERE guid=55553;
DELETE FROM creature_movement WHERE id=55553;
DELETE FROM game_event_creature WHERE guid=55553;
DELETE FROM game_event_creature_data WHERE guid=55553;
DELETE FROM creature_battleground WHERE guid=55553;
DELETE FROM creature_linking WHERE guid=55553 OR master_guid=55553;
DELETE FROM creature WHERE guid=55552;
DELETE FROM creature_addon WHERE guid=55552;
DELETE FROM creature_movement WHERE id=55552;
DELETE FROM game_event_creature WHERE guid=55552;
DELETE FROM game_event_creature_data WHERE guid=55552;
DELETE FROM creature_battleground WHERE guid=55552;
DELETE FROM creature_linking WHERE guid=55552 OR master_guid=55552;
DELETE FROM creature WHERE guid=55903;
DELETE FROM creature_addon WHERE guid=55903;
DELETE FROM creature_movement WHERE id=55903;
DELETE FROM game_event_creature WHERE guid=55903;
DELETE FROM game_event_creature_data WHERE guid=55903;
DELETE FROM creature_battleground WHERE guid=55903;
DELETE FROM creature_linking WHERE guid=55903 OR master_guid=55903;
DELETE FROM creature WHERE guid=56109;
DELETE FROM creature_addon WHERE guid=56109;
DELETE FROM creature_movement WHERE id=56109;
DELETE FROM game_event_creature WHERE guid=56109;
DELETE FROM game_event_creature_data WHERE guid=56109;
DELETE FROM creature_battleground WHERE guid=56109;
DELETE FROM creature_linking WHERE guid=56109 OR master_guid=56109;
DELETE FROM creature WHERE guid=56112;
DELETE FROM creature_addon WHERE guid=56112;
DELETE FROM creature_movement WHERE id=56112;
DELETE FROM game_event_creature WHERE guid=56112;
DELETE FROM game_event_creature_data WHERE guid=56112;
DELETE FROM creature_battleground WHERE guid=56112;
DELETE FROM creature_linking WHERE guid=56112 OR master_guid=56112;
DELETE FROM creature WHERE guid=56142;
DELETE FROM creature_addon WHERE guid=56142;
DELETE FROM creature_movement WHERE id=56142;
DELETE FROM game_event_creature WHERE guid=56142;
DELETE FROM game_event_creature_data WHERE guid=56142;
DELETE FROM creature_battleground WHERE guid=56142;
DELETE FROM creature_linking WHERE guid=56142 OR master_guid=56142;
DELETE FROM creature WHERE guid=56143;
DELETE FROM creature_addon WHERE guid=56143;
DELETE FROM creature_movement WHERE id=56143;
DELETE FROM game_event_creature WHERE guid=56143;
DELETE FROM game_event_creature_data WHERE guid=56143;
DELETE FROM creature_battleground WHERE guid=56143;
DELETE FROM creature_linking WHERE guid=56143 OR master_guid=56143;




-- =========================================
-- Dungeon Aggro Linking and Missing Pathing
-- =========================================
-- First Underbat (MAKE WAYPOINT AT SPAWN LOCATION AND SET RUN SPEED) - Avoid Players seeing Walking Speed to First Point
UPDATE creature SET MovementType=2 WHERE guid IN (54189);
DELETE FROM creature_movement WHERE id IN (54189);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54189','1','47.6626','-42.7119','-2.75061','0','5','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54189','2','62.1311','-52.4546','-2.74982','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54189','3','74.7862','-61.7448','-2.75402','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54189','4','62.4732','-52.6231','-2.75094','0','0','0','0','0','0','0','0','0','0','0','0');


-- Second Underbat (MAKE WAYPOINT AT SPAWN LOCATION AND SET RUN SPEED) - Avoid Players seeing Walking Speed to First Point
UPDATE creature SET MovementType=2 WHERE guid IN (54191);
DELETE FROM creature_movement WHERE id IN (54191);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54191','1','61.0508','-49.7516','-2.75102','0','5','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54191','2','72.3167','-67.1495','-2.75102','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54191','3','68.9484','-79.3753','-2.75102','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54191','4','54.9093','-99.7989','-2.74677','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54191','5','69.4635','-79.4921','-2.75098','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54191','6','72.8787','-66.5033','-2.75098','0','0','0','0','0','0','0','0','0','0','0','0');


-- NPC Group 1
DELETE FROM creature WHERE guid IN (101334,101335);
UPDATE creature SET position_x = '43.963459', position_y = '-105.658386', position_z = '-3.255890', orientation = '3.648173', SpawnDist=3, MovementType=1 WHERE guid = '54203';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101334','17725','546','3','0','0','55.5842','-117.855','-2.74473','2.92482','86400','3','0','16028','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101335','17871','546','3','0','0','59.6826','-98.5487','-2.75184','3.68823','86400','3','0','12394','5136','0','1');

DELETE FROM creature_linking WHERE master_guid IN (54203);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101334','54203','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101335','54203','3');


-- NPC Group 2
UPDATE creature SET position_x = '63.133221', position_y = '-159.357422', position_z = '-2.743999', orientation = '5.224465', SpawnDist=4, MovementType=1 WHERE guid = '54214';
UPDATE creature SET position_x = '63.945164', position_y = '-170.903748', position_z = '-3.275190', orientation = '4.717884', SpawnDist=4, MovementType=1 WHERE guid = '54217';
UPDATE creature SET position_x = '57.057602', position_y = '-168.072662', position_z = '-3.108125', orientation = '4.428857', SpawnDist=4, MovementType=1 WHERE guid = '54216';

DELETE FROM creature_linking WHERE master_guid IN (54214);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54217','54214','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54216','54214','3');


-- Underbat Group Pathing
DELETE FROM creature_linking WHERE master_guid IN (54211);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54212','54211','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54215','54211','515');

UPDATE creature SET MovementType=2 WHERE guid IN (54211);
DELETE FROM creature_movement WHERE id IN (54211);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54211','1','37.1529','-186.697','-4.09001','0','5','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54211','2','12.7136','-189.214','-4.53172','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54211','3','-4.61627','-175.559','-4.53321','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54211','4','-11.1216','-151.478','-4.53321','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54211','5','-16.5465','-115.417','-4.53321','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54211','6','-14.0008','-134.204','-4.53321','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54211','7','-10.9275','-152.255','-4.53321','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54211','8','-4.3202','-175.864','-4.53321','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54211','9','13.2143','-189.608','-4.52055','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54211','10','37.5631','-186.846','-4.09456','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54211','11','59.8136','-170.884','-3.2806','0','0','0','0','0','0','0','0','0','0','0','0');


-- NPC Group 3
DELETE FROM creature WHERE guid IN (101336,101337);
UPDATE creature SET position_x = '6.955601', position_y = '-178.938644', position_z = '-4.533530', orientation = '2.823509', SpawnDist=5, MovementType=1 WHERE guid = '54218';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101336','17871','546','3','0','0','-5.53596','-185.897','-4.53353','3.79348','86400','5','0','12394','5136','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101337','17724','546','3','0','0','-10.6762','-173.151','-4.53353','1.45849','86400','5','0','16028','0','0','1');

DELETE FROM creature_linking WHERE master_guid IN (54218);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101336','54218','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101337','54218','3');


-- NPC Group 4 (Right Side)
DELETE FROM creature WHERE guid IN (101338,101339,101340);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101338','17725','546','3','0','0','2.1456','-104.805','-4.53348','3.08486','86400','5','0','15488','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101339','17725','546','3','0','0','-9.59432','-104.5','-4.53348','3.47835','86400','5','0','15488','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101340','17871','546','3','0','0','-2.33743','-121.77','-4.53348','5.40728','86400','5','0','12823','5240','0','1');

DELETE FROM creature_linking WHERE master_guid IN (101340);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101338','101340','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101339','101340','3');


-- First Bog Giant
DELETE FROM creature WHERE guid IN (54187);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54187','17723','546','3','0','0','9.45653','-217.647','-4.535','1.03342','86400','5','0','36478','0','0','1');


-- 3 Underbats Pathing Around Corner Near Underbog Lord
DELETE FROM creature WHERE guid IN (54210,54213,54246);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54210','17724','546','3','0','0','33.7465','-218.262','-4.53228','4.92976','86400','0','0','16028','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54213','17724','546','3','0','0','34.4875','-214.287','-4.53228','4.8418','86400','0','0','16028','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54246','17724','546','3','0','0','29.3626','-215.504','-4.53228','4.85751','86400','0','0','15488','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (54210);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54213','54210','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54246','54210','515');

DELETE FROM creature_movement WHERE id IN (54210);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54210','1','39.8324','-229.47','-4.53228','0','5','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54210','2','46.257','-241.332','-4.53228','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54210','3','57.8113','-245.067','-4.52833','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54210','4','46.2711','-241.162','-4.53319','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54210','5','39.8119','-229.012','-4.53319','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54210','6','33.0846','-220.049','-4.53319','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54210','7','31.4191','-201.583','-4.36945','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54210','8','33.423','-220.337','-4.53293','0','0','0','0','0','0','0','0','0','0','0','0');


-- NPC Group 5 Around Corner
DELETE FROM creature WHERE guid IN (101341,101342,101343);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101341','17725','546','3','0','0','66.8479','-252.837','-4.5064','2.47775','86400','3','0','16028','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101342','17871','546','3','0','0','74.7705','-239.747','-4.46798','3.06601','86400','3','0','12823','5240','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101343','17724','546','3','0','0','82.2946','-249.391','-4.49265','2.77463','86400','3','0','16028','0','0','1');

DELETE FROM creature_linking WHERE master_guid IN (101341);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101342','101341','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101343','101341','3');


-- NPC Group 6 (Lurker with Bats Circling Him)
DELETE FROM creature WHERE guid IN (54247,101344,101345);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54247','17725','546','3','0','0','-18.7489','-206.069','-4.5346','6.00498','86400','3','0','16028','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101344','17724','546','3','0','0','-11.3741','-201.951','-4.5346','2.38115','86400','0','0','15488','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101345','17724','546','3','0','0','-5.90108','-201.615','-4.5346','2.66625','86400','0','0','16028','0','0','0');

DELETE FROM creature_movement WHERE id IN (101344);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101344','1','-16.1929','-195.056','-4.5346','0','5','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101344','2','-25.5153','-200.953','-4.5346','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101344','3','-29.3152','-210.952','-4.5346','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101344','4','-23.6005','-219.281','-4.5346','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101344','5','-13.1108','-216.257','-4.5346','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101344','6','-8.01858','-207.823','-4.5346','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101344','7','-9.90976','-198.824','-4.5346','0','0','0','0','0','0','0','0','0','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101344);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101345','101344','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54247','101344','3');


-- NPC Group 7 (Lurker with Bats Circling behind Underbog Lord)
DELETE FROM creature WHERE guid IN (101346,101347,101348);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101346','17725','546','3','0','0','-14.7799','-237.359','-4.5346','4.60619','86400','3','0','15488','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101347','17724','546','3','0','0','-12.1956','-241.455','-4.5346','0.559034','86400','0','0','15488','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101348','17724','546','3','0','0','-13.8439','-244.951','-4.5346','0.325771','86400','0','0','16028','0','0','0');

DELETE FROM creature_movement WHERE id IN (101347);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101347','1','-8.69803','-238.84','-4.5346','0','5','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101347','2','-9.5604','-230.047','-4.5346','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101347','3','-15.0161','-226.882','-4.5346','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101347','4','-23.2355','-227.357','-4.5346','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101347','5','-26.9692','-234.205','-4.5346','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101347','6','-27.8243','-241.613','-4.5346','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101347','7','-20.714','-247.039','-4.5346','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101347','8','-13.0667','-243.931','-4.5346','0','0','0','0','0','0','0','0','0','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101347);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101348','101347','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101346','101347','3');


-- NPC Group at Bottom Of Ramp
DELETE FROM creature WHERE guid IN (101349,101350,101351);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101349','17871','546','3','0','0','-58.727','-240.545','-4.53704','0.0163302','86400','3','0','12823','5240','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101350','17725','546','3','0','0','-51.5945','-252.799','-4.53704','6.15108','86400','3','0','16028','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101351','17725','546','3','0','0','-58.3801','-262.106','-4.53704','0.507205','86400','3','0','15488','0','0','1');

DELETE FROM creature_linking WHERE master_guid IN (101349);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101350','101349','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101351','101349','3');


-- Bog Giant Right Side of Ramp
DELETE FROM creature WHERE guid IN (57013);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('57013','17723','546','3','0','0','-70.8978','-227.653','-4.53726','6.12987','86400','0','0','36478','0','0','2');

DELETE FROM creature_movement WHERE id IN (57013);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57013','1','-49.6079','-226.464','-4.53726','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57013','2','-71.8849','-228.623','-4.53726','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57013','3','-94.7028','-227.169','-4.42672','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57013','4','-115.076','-222.684','-4.2268','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57013','5','-94.4642','-227.416','-4.43295','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57013','6','-84.6416','-228.985','-4.53687','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57013','7','-70.676','-228.825','-4.53687','0','0','0','0','0','0','0','0','0','0','0','0');


-- Bog Giant Left Side of Ramp
DELETE FROM creature WHERE guid IN (57015);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('57015','17723','546','3','0','0','-43.9061','-270.25','-4.53655','3.97552','86400','0','0','36478','0','0','2');

DELETE FROM creature_movement WHERE id IN (57015);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57015','1','-53.5886','-282.635','-4.53655','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57015','2','-60.7925','-291.382','-4.53553','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57015','3','-80.7083','-297.585','-4.5355','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57015','4','-95.6855','-303.655','-4.5355','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57015','5','-80.7411','-296.923','-4.53504','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57015','6','-59.7556','-290.012','-4.53489','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57015','7','-53.1103','-282.506','-4.53489','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57015','8','-44.4014','-268.686','-4.53489','0','0','0','0','0','0','0','0','0','0','0','0');


-- Group of 3 NPC Pathing Behind Ramp
DELETE FROM creature WHERE guid IN (101352,101353,101354);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101352','17725','546','3','0','0','-145.091','-302.75','-4.93498','2.29949','86400','0','0','15488','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101353','17724','546','3','0','0','-140.125','-304.05','-4.83056','2.10235','86400','0','0','16028','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101354','17724','546','3','0','0','-143.433','-307.385','-4.75092','2.38038','86400','0','0','16028','0','0','0');

DELETE FROM creature_movement WHERE id IN (101352);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101352','1','-152.259','-289.44','-5.08661','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101352','2','-148.682','-264.474','-4.42244','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101352','3','-141.81','-238.556','-4.01658','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101352','4','-135.888','-218.673','-3.6982','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101352','5','-116.529','-221.073','-4.16141','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101352','6','-135.977','-218.777','-3.69805','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101352','7','-141.623','-239.203','-4.02839','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101352','8','-148.334','-264.216','-4.41369','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101352','9','-152.073','-289.688','-5.08668','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101352','10','-145.481','-302.304','-4.95381','0','0','0','0','0','0','0','0','0','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101352);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101353','101352','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101354','101352','515');


-- 3 Underbats Pathing on Ramp
DELETE FROM creature WHERE guid IN (101355,101356,101357);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101355','17724','546','3','0','0','-123.364','-279.999','6.66344','5.82671','86400','0','0','16028','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101356','17724','546','3','0','0','-126.891','-276.03','7.74376','5.75916','86400','0','0','16028','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101357','17724','546','3','0','0','-127.923','-280.288','6.30033','5.75916','86400','0','0','16028','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101355);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101356','101355','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101357','101355','515');

DELETE FROM creature_movement WHERE id IN (101355);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101355','1','-115.847','-285.199','5.1392','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101355','2','-105.771','-287.97','2.42811','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101355','3','-93.5685','-286.904','1.2005','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101355','4','-82.2968','-280.744','-0.566714','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101355','5','-68.6633','-270.637','-3.41147','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101355','6','-81.817','-280.928','-0.641059','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101355','7','-93.635','-287.021','1.20018','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101355','8','-106.065','-288.209','2.4624','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101355','9','-115.756','-285.266','5.11074','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101355','10','-124.226','-278.808','6.9993','15000','0','0','0','0','0','0','0','0','2.442430','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101355','11','-115.264','-268.381','12.3367','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101355','12','-109.103','-263.375','17.402','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101355','13','-103.433','-256.112','24.0147','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101355','14','-109.847','-262.667','17.5246','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101355','15','-116.98','-268.887','11.5461','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101355','16','-120.91','-275.611','8.12349','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101355','17','-123.049','-282.012','6.24447','20000','0','0','0','0','0','0','0','0','4.336024','0','0');


-- Bog Giants at Top of Ramp
DELETE FROM creature WHERE guid IN (101358,101359);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101358','17723','546','3','0','0','-133.297','-343.852','33.263','0.901479','86400','0','0','36478','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101359','17723','546','3','0','0','-97.5016','-346.704','32.4101','1.89736','86400','0','0','36478','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101358);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101359','101358','3');


-- Bog Giants Platform After Hungerfen
DELETE FROM creature WHERE guid IN (101360,101361);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101360','17723','546','3','0','0','4.89774','-377.926','27.2163','2.80529','86400','4','0','36478','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101361','17723','546','3','0','0','-24.5847','-343.96','31.1541','0.764037','86400','0','0','36478','0','0','2');

DELETE FROM creature_movement WHERE id IN (101361);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101361','1','-10.0184','-335.983','30.5336','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101361','2','4.66667','-325.538','30.6897','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101361','3','17.9423','-312.11','31.8369','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101361','4','37.0049','-300.393','32.391','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101361','5','23.6562','-306.835','32.0061','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101361','6','16.1901','-314.345','31.7554','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101361','7','4.18543','-326.219','30.6163','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101361','8','-10.6039','-335.549','30.6277','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101361','9','-23.295','-342.433','31.1087','0','0','0','0','0','0','0','0','0','0','0','0');


-- 3 Underbats Pathing on Platform After Hungerfen
UPDATE creature SET MovementType=2 WHERE guid IN (54403);
UPDATE creature SET position_x = '-32.459560', position_y = '-331.724792', position_z = '31.098186', orientation = '5.123001' WHERE guid = '54399';

DELETE FROM creature_linking WHERE master_guid IN (54403);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54401','54403','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54397','54403','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54399','54403','515');

DELETE FROM creature_movement WHERE id IN (54403);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','1','-34.3835','-351.27','31.7325','0','5','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','2','-28.0925','-370.58','31.499','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','3','-22.0439','-387.499','30.5558','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','4','-9.32195','-385.082','27.7763','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','5','-4.36865','-376.687','27.6695','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','6','0.053027','-362.803','27.7873','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','7','10.6737','-352.422','27.5412','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','8','20.4162','-353.255','27.0755','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','9','26.7718','-361.177','27.0479','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','10','23.7875','-371.98','27.385','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','11','14.2827','-386.102','27.1874','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','12','4.69595','-394.849','27.1913','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','13','-5.21946','-393.285','27.3248','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','14','-10.9309','-381.411','28.2749','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','15','-8.53251','-372.185','28.0782','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','16','-1.14454','-360.161','27.905','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','17','5.57316','-345.07','29.3345','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','18','-2.07866','-330.937','30.3928','0','0','0','0','0','0','0','0','0','0','0','0'); -- 
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','19','4.06103','-322.758','30.787','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','20','-9.35236','-319.774','30.6651','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','21','-26.4411','-327.326','30.8124','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54403','22','-34.1909','-335.923','31.3118','0','0','0','0','0','0','0','0','0','0','0','0');


-- Bog Giant Pathing on Platform
DELETE FROM creature WHERE guid IN (54389);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54389','17723','546','3','0','0','45.1773','-294.602','32.6927','0.456166','86400','0','0','36478','0','0','2');

DELETE FROM creature_movement WHERE id IN (54389);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54389','1','62.3906','-285.428','32.4225','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54389','2','84.3246','-278.996','32.2227','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54389','3','96.1979','-287.668','32.193','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54389','4','99.2227','-306.218','32.2372','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54389','5','96.7146','-326.102','33.0259','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54389','6','100.885','-335.997','32.9329','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54389','7','105.837','-343.213','33.1692','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54389','8','102.557','-353.438','33.34','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54389','9','87.7988','-359.124','32.9724','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54389','10','94.9425','-350.576','33.2872','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54389','11','95.6895','-336','33.1454','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54389','12','97.553','-322.399','32.9633','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54389','13','98.9178','-306.005','32.234','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54389','14','94.7655','-287.677','32.1834','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54389','15','82.611','-279.856','32.2059','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54389','16','68.648','-281.995','32.1377','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54389','17','52.9245','-291.139','33.0841','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54389','18','42.6055','-296.852','32.5825','0','0','0','0','0','0','0','0','0','0','0','0');


-- Bog Giant at end of Platform
DELETE FROM creature WHERE guid IN (54394);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54394','17723','546','3','0','0','73.758','-384.513','33.2459','0.965887','86400','5','0','36478','0','0','1');


-- Wrathfin Myrmidon's Pathing on Bridge
DELETE FROM creature WHERE guid IN (54405,54396);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54405','17726','546','3','0','0','140.437','-417.474','48.6102','2.68512','86400','0','0','16573','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54396','17726','546','3','0','0','140.943','-415.869','48.6087','2.52333','86400','0','0','16573','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (54405);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54396','54405','515');

DELETE FROM creature_movement WHERE id IN (54405);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54405','1','134.715','-415.249','48.5812','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54405','2','128.385','-411.527','47.6209','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54405','3','117.755','-406.696','43.4651','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54405','4','108.485','-402.029','39.96','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54405','5','97.7692','-396.655','36.0888','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54405','6','89.2544','-391.865','34.2028','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54405','7','92.769','-393.057','34.5497','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54405','8','99.5091','-395.502','36.4238','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54405','9','109.779','-400.578','40.1346','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54405','10','119.615','-405.436','43.866','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54405','11','129.881','-410.394','47.749','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54405','12','141.263','-415.746','48.6074','0','0','0','0','0','0','0','0','0','0','0','0');


-- Wrathfin Sentry's Across Bridge
UPDATE creature SET position_x = '150.792892', position_y = '-417.078369', position_z = '48.533962', orientation = '2.584590' WHERE guid = '54615';
UPDATE creature SET position_x = '147.894226', position_y = '-424.254547', position_z = '48.545319', orientation = '2.647423' WHERE guid = '54622';

DELETE FROM creature_linking WHERE master_guid IN (54615);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54622','54615','3');


-- Group of 4 NPC Inside Tunnel
DELETE FROM creature WHERE guid IN (54406,54408,54407,54412);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54406','17728','546','3','0','0','161.486','-440.409','48.1614','1.67288','86400','0','0','16028','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54408','17771','546','3','0','0','166.579','-439.643','48.2113','2.19282','86400','0','0','13258','13525','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54407','17771','546','3','0','0','157.788','-444.414','48.1217','1.42077','86400','0','0','12823','13100','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54412','17735','546','3','0','0','162.562','-444.467','48.1923','2.07737','86400','0','0','16573','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (54406);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54408','54406','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54407','54406','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54412','54406','3');


-- Group of 3 Inside Tunnel
DELETE FROM creature WHERE guid IN (54410,54409,54411);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54410','17771','546','3','0','0','177.297','-412.062','48.1717','2.57139','86400','0','0','13258','13525','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54409','17728','546','3','0','0','175.626','-416.661','48.185','2.60751','86400','0','0','16573','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54411','17728','546','3','0','0','181.421','-409.67','48.1898','2.44415','86400','0','0','16028','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (54410);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54409','54410','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54411','54410','3');


-- Group of 3 NPC Inside Tunnel
DELETE FROM creature WHERE guid IN (101362,101363,101364);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101362','17730','546','3','0','0','178.773','-390.451','48.067','5.62579','86400','0','0','13258','13525','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101363','17728','546','3','0','0','183.345','-390.047','48.0901','5.36426','86400','0','0','16573','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101364','17729','546','3','0','0','184.42','-387.063','48.0728','5.36426','86400','0','0','12823','2620','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101362);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101363','101362','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101364','101362','3');


-- 2 Myrmidon's Pathing inside Tunnel
DELETE FROM creature WHERE guid IN (54420,54421);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54420','17726','546','3','0','0','163.49','-422.427','48.1125','4.47283','86400','0','0','16573','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54421','17726','546','3','0','0','165.36','-423.54','48.1376','4.42335','86400','0','0','16573','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (54420);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54421','54420','515');

DELETE FROM creature_movement WHERE id IN (54420);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54420','1','161.181','-435.977','48.1331','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54420','2','163.49','-423.861','48.1147','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54420','3','166.792','-417.063','48.1161','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54420','4','177.137','-401.096','48.1104','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54420','5','181.923','-393.897','48.1104','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54420','6','190.559','-388.147','48.1131','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54420','7','205.421','-379.071','48.1234','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54420','8','196.116','-384.822','48.1197','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54420','9','186.674','-390.992','48.116','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54420','10','179.924','-397.765','48.1154','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54420','11','173.863','-406.896','48.1165','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54420','12','166.878','-417.934','48.1204','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54420','13','163.492','-424.701','48.1181','0','0','0','0','0','0','0','0','0','0','0','0');


-- Group of 4 NPC Pathing at End of Tunnel
DELETE FROM creature WHERE guid IN (54427,54424,54637,54701);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54427','17735','546','3','0','0','203.64','-379.517','48.1194','6.11353','86400','0','0','16573','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54424','17728','546','3','0','0','202.445','-378.083','48.1024','6.09468','86400','0','0','16573','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54637','17728','546','3','0','0','201.91','-380.094','48.1144','6.06719','86400','0','0','16573','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54701','17729','546','3','0','0','200.915','-378.931','48.1004','6.17086','86400','0','0','12823','2620','0','0');

DELETE FROM creature_linking WHERE master_guid IN (54427);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54424','54427','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54637','54427','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54701','54427','515');

DELETE FROM creature_movement WHERE id IN (54427);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54427','1','211.702','-380.781','48.1706','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54427','2','219.298','-378.574','48.1772','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54427','3','228.64','-376.503','48.1903','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54427','4','240.787','-374.489','48.2244','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54427','5','228.163','-376.683','48.1922','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54427','6','219.533','-378.656','48.1803','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54427','7','211.634','-381.018','48.1742','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54427','8','201.99','-379.466','48.1103','0','0','0','0','0','0','0','0','0','0','0','0');


-- Group of 4 NPC at Top of Ramp (3 Other NPC Have Emotes)
DELETE FROM creature WHERE guid IN (54700,54703,55068,54799);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54700','17730','546','3','0','0','259.298','-367.914','72.1628','1.3061','86400','0','0','12823','13100','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54703','17728','546','3','0','0','269.333','-372.454','72.1628','0.429598','86400','0','0','16028','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('55068','17728','546','3','0','0','260.95','-382.128','72.3911','3.89713','86400','0','0','16028','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('54799','17735','546','3','0','0','245.111','-366.491','72.299','5.64385','86400','0','0','16573','0','0','2');

DELETE FROM creature_movement WHERE id IN (54799);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54799','1','249.748','-371.735','72.3417','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54799','2','257.418','-378.847','72.3756','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54799','3','265.702','-379.173','72.185','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54799','4','272.075','-379.584','72.1639','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54799','5','267.239','-377.304','72.1639','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54799','6','260.795','-377.11','72.2376','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54799','7','255.501','-378.555','72.4143','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54799','8','251.253','-373.074','72.3479','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('54799','9','245.014','-366.594','72.3052','0','0','0','0','0','0','0','0','0','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (54799);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54700','54799','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('54703','54799','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('55068','54799','3');


-- Group of 3 NPC Upper Path
DELETE FROM creature WHERE guid IN (55106,55102,55391);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('55106','17771','546','3','0','0','201.804','-384.21','72.3517','5.8622','86400','0','0','13258','13525','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('55102','17728','546','3','0','0','202.777','-388.729','72.4298','5.75539','86400','0','0','16573','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('55391','17730','546','3','0','0','195.673','-389.507','72.3691','5.95566','86400','0','0','13258','13525','0','0');

DELETE FROM creature_linking WHERE master_guid IN (55106);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('55102','55106','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('55391','55106','3');


-- Group of 4 NPC Upper Path
DELETE FROM creature WHERE guid IN (55536,55553,55552,55903);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('55536','17735','546','3','0','0','178.003','-404.4','72.3521','5.93289','86400','0','0','16573','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('55553','17728','546','3','0','0','172.318','-407.311','72.2999','0.0808839','86400','0','0','16028','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('55552','17771','546','3','0','0','171.977','-401.848','72.2351','0.190054','86400','0','0','13258','13525','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('55903','17771','546','3','0','0','175.756','-399.557','72.2645','6.27139','86400','0','0','13258','13525','0','0');

DELETE FROM creature_linking WHERE master_guid IN (55536);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('55553','55536','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('55552','55536','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('55903','55536','3');


-- Final Group of 4 NPC Upper Path
DELETE FROM creature WHERE guid IN (101365,101366,101367,101368);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101365','17729','546','3','0','0','160.997','-424.264','72.296','0.698207','86400','0','0','13258','2705','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101366','17728','546','3','0','0','158.257','-429.652','72.2774','0.000775896','86400','0','0','16028','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101367','17728','546','3','0','0','163.088','-435.968','72.3958','5.82372','86400','0','0','16028','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101368','17735','546','3','0','0','163.894','-429.711','72.3767','5.75539','86400','0','0','16573','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101365);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101366','101365','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101367','101365','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101368','101365','3');


-- 2 Wrathfin Myrmidons Pathing on Upper Path
DELETE FROM creature WHERE guid IN (101369,101370);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101369','17726','546','3','0','0','163.163','-454.468','72.5156','1.37287','86400','0','0','16573','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101370','17726','546','3','0','0','165.133','-454.598','72.5649','1.28176','86400','0','0','16573','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101369);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101370','101369','515');

DELETE FROM creature_movement WHERE id IN (101369);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101369','1','164.977','-444.46','72.4748','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101369','2','168.243','-432.663','72.4698','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101369','3','171.106','-423.684','72.4601','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101369','4','177.917','-415.11','72.4671','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101369','5','187.387','-403.586','72.4806','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101369','6','186.304','-407.877','72.5119','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101369','7','179.073','-417.039','72.5056','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101369','8','171.957','-425.85','72.4955','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101369','9','170.007','-434.729','72.5119','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101369','10','167.795','-446.08','72.5394','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101369','11','164.777','-454.54','72.5542','0','0','0','0','0','0','0','0','0','0','0','0');


-- Ghaz'an

-- COMMENTED OUT FOR TIME BEING UNTIL AREA TRIGGER CAN BE SCRIPTED TO MOVE HIM TO PLATFORM
/*

-- Move To New Spawn Point (Summon Should Happen With Trigger 4302)
UPDATE creature SET position_x = '222.243530', position_y = '-499.818146', position_z = '46.070023', orientation = '0.359711', MovementType=2 WHERE guid = '56111'; 
-- Add Movement in Water
UPDATE creature_template SET MovementType=2 WHERE entry IN (18105);
DELETE FROM creature_movement_template WHERE entry IN (18105);
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('18105','1','234.178','-492.714','46.07','0','5','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('18105','2','253.837','-483.431','46.07','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('18105','3','279.039','-480.18','46.07','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('18105','4','292.882','-473.168','46.07','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('18105','5','300.668','-454.322','46.07','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('18105','6','298.615','-442.019','46.07','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('18105','7','291.488','-430.961','46.07','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('18105','8','280.783','-419.957','46.07','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('18105','9','269.448','-412.182','46.07','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('18105','10','255.668','-407.269','46.07','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('18105','11','243.162','-406.604','46.07','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('18105','12','226.987','-412.599','46.07','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('18105','13','214.49','-423.775','46.07','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('18105','14','206.982','-433.13','46.07','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('18105','15','219.09','-453.604','46.07','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('18105','16','228.554','-469.606','46.07','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('18105','17','227.84','-487.078','46.07','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('18105','18','213.38','-497.864','46.07','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('18105','19','216.812','-509.081','46.07','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('18105','20','233.2','-507.532','46.07','0','0','0','0','0','0','0','0','0','0','0','0');



-- Points Used By Area Trigger 4303 Script
insert into `script_waypointid` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) values('18105','1','232.848','-474.423','49.083','0','Start Point In Water');
insert into `script_waypointid` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) values('18105','2','217.985','-477.927','50.466','0','');
insert into `script_waypointid` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) values('18105','3','207.899','-480.867','55.3968','0','');
insert into `script_waypointid` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) values('18105','4','198.473','-483.573','59.3397','0','');
insert into `script_waypointid` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) values('18105','5','190.843','-485.764','62.5321','0','');
insert into `script_waypointid` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) values('18105','6','181.605','-485.938','65.5802','0','');
insert into `script_waypointid` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) values('18105','7','175.53','-486.052','67.7562','0','');
insert into `script_waypointid` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) values('18105','8','170.833','-483.451','69.8526','0','');
insert into `script_waypointid` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) values('18105','9','162.8','-478.061','74.1008','0','');
insert into `script_waypointid` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) values('18105','10','159.189','-475.481','74.6265','0','');
insert into `script_waypointid` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) values('18105','11','160.128','-469.365','75.427','0','');
insert into `script_waypointid` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) values('18105','12','164.228','-466.289','75.4508','0','');
insert into `script_waypointid` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) values('18105','13','180.153','-469.931','76.7924','0','');
insert into `script_waypointid` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) values('18105','14','200.693','-470.385','78.2671','0','');
insert into `script_waypointid` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) values('18105','15','213.679','-478.392','80.5073','0','');
insert into `script_waypointid` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) values('18105','16','226.677','-472.965','81.3718','0','');
insert into `script_waypointid` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) values('18105','17','267.810','-463.213','81.3718','0','Past Point to Turn and Face Correct Direction');
insert into `script_waypointid` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) values('18105','18','252.492','-460.927','81.3728','0','Final Point On Platform');

*/

-- Move Earthbinder Rayge To Correct Position
UPDATE creature SET position_x = '297.272217', position_y = '-362.465576', position_z = '50.111042', orientation = '5.586528' WHERE guid = '86372';


-- Fen Rays Pathing in Lower Tunnel
DELETE FROM creature WHERE guid IN (56109,56112,56142);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('56109','17731','546','3','0','0','339.158','-360.541','33.6621','1.93678','86400','0','0','16573','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('56112','17731','546','3','0','0','340.864','-359.901','33.414','2.04281','86400','0','0','16573','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('56142','17731','546','3','0','0','337.152','-363.167','35.1389','1.30611','86400','0','0','16573','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (56109);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56112','56109','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56142','56109','515');

DELETE FROM creature_movement WHERE id IN (56109);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56109','1','340.508','-353.582','30.7496','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56109','2','333.886','-344.019','27.1394','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56109','3','318.282','-328.61','20.742','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56109','4','306.596','-322.238','20.2849','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56109','5','308.252','-313.344','18.7655','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56109','6','313.952','-314.499','18.45','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56109','7','324.563','-326.888','19.6578','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56109','8','333.852','-339.01','25.0277','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56109','9','337.774','-347.763','28.4854','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56109','10','341.537','-356.186','31.9701','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56109','11','337.844','-368.326','36.889','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56109','12','331.726','-373.947','40.9642','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56109','13','338.234','-368.014','36.6846','0','0','0','0','0','0','0','0','0','0','0','0');


-- Group of 3 Fen Rays in Lower Tunnel
DELETE FROM creature WHERE guid IN (56143,101371,101372);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('56143','17731','546','3','0','0','301.202','-318.574','20.2316','2.45201','86400','4','0','16573','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101371','17731','546','3','0','0','313.462','-307.5','19.8456','2.48028','86400','4','0','16573','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101372','17731','546','3','0','0','315.946','-321.598','19.6','2.05616','86400','4','0','16573','0','0','1');

DELETE FROM creature_linking WHERE master_guid IN (56143);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101371','56143','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101372','56143','3');


-- Stinger and 2 Wasps Pathing in Lower Tunnel
DELETE FROM creature WHERE guid IN (101373,101374,101375);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101373','19632','546','3','0','0','298.968','-306.99','18.7388','2.64678','86400','0','0','16573','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101374','17732','546','3','0','0','302.81','-308.275','18.6442','2.65857','86400','0','0','16028','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101375','17732','546','3','0','0','301.267','-310.22','19.0793','2.48813','86400','0','0','16028','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101373);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101374','101373','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101375','101373','515');

DELETE FROM creature_movement WHERE id IN (101373);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101373','1','286.064','-301.103','18.7929','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101373','2','277.106','-292.759','20.812','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101373','3','271.415','-281.385','24.2738','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101373','4','269.567','-264.837','26.2567','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101373','5','270.919','-244.975','27.4844','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101373','6','268.808','-267.803','25.1139','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101373','7','271.425','-283.426','24.1718','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101373','8','277.032','-293.642','20.6578','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101373','9','286.469','-301.608','18.8307','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101373','10','300.506','-307.683','18.7514','0','0','0','0','0','0','0','0','0','0','0','0');












