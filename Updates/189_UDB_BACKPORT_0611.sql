-- UDB - something something something
-- q.5168 'Heroes of Darrowshire'
-- Darrowshire Poltergeist
-- stats & equipment
UPDATE creature_template SET Expansion = 0, EquipmentTemplateId = 5264 WHERE Entry = 11296;

-- UDB: [573] Respawntimer fix for some Quest GO
-- Felix's Bucket of Bolts, Felix's Chest, Felix's Box
UPDATE gameobject SET spawntimesecs = 10 WHERE guid IN (1386,1394,1380);
-- Ammo Crate
UPDATE gameobject SET spawntimesecs = 10 WHERE guid = 10663;
-- The Holy Spring
UPDATE gameobject SET spawntimesecs = 10 WHERE guid = 10121;

-- UDB: [575] Cranky Benj (rare spawn)
UPDATE creature_template SET SpeedWalk = 1.0, Scale = 1.75 WHERE Entry = 14223;

-- UDB: [576] Jimmy the Bleeder (rare spawn)
-- http://jira.vengeancewow.com/browse/TBC-1844
UPDATE creature SET modelid = 3616 WHERE guid IN (91111);
UPDATE creature_template SET PickpocketlootID = 14281, MinLootGold = 44, MaxLootGold = 59 WHERE Entry = 14281;
DELETE FROM creature WHERE guid IN(98412);

DELETE FROM pickpocketing_loot_template WHERE entry = 14281;
INSERT INTO pickpocketing_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(14281,17124,0.9,0,1,1,0),
(14281,16882,0.15,0,1,1,0);

-- UDB: [577] Lo'Grosh (rare spawn)
UPDATE creature_template SET FactionAlliance = 45, FactionHorde = 45, SpeedWalk = 1.05 WHERE Entry = 2453;
-- 1st spawn
UPDATE creature SET MovementType = 2 WHERE guid = 69113;
DELETE FROM creature_movement WHERE id = 69113;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(69113,1,616.695,-675.454,151.824, 0, 0,3.76735, 0, 0),
(69113,2,612.288,-683.58,153.169, 0, 0,4.54096, 0, 0),
(69113,3,610.387,-695.678,152.379, 0, 0,4.4153, 0, 0),
(69113,4,606.786,-704.271,151.857, 0, 0,4.03831, 0, 0),
(69113,5,600.036,-710.78,151.199, 0, 0,3.66525, 0, 0),
(69113,6,587.783,-716.205,149.476, 0, 0,3.66918, 0, 0),
(69113,7,576.543,-725.898,150.469, 0, 0,3.88516, 0, 0),
(69113,8,586.344,-717.404,149.329, 0, 0,0.535435, 0, 0),
(69113,9,595.769,-712.303,149.753, 0, 0,0.374429, 0, 0),
(69113,10,600.992,-709.782,151.391, 0, 0,0.617902, 0, 0),
(69113,11,608.745,-700.329,151.574, 0, 0,0.884938, 0, 0),
(69113,12,614.029,-696.513,152.62, 0, 0,0.127029, 0, 0),
(69113,13,625.471,-693.985,153.691, 0, 0,0.657958, 0, 0),
(69113,14,633.585,-687.049,155.356, 0, 0,1.38445, 0, 0),
(69113,15,631.456,-679.19,154.09, 0, 0,2.17155, 0, 0),
(69113,16,624.023,-675.308,152.823, 0, 0,2.97344, 0, 0);

DELETE FROM creature WHERE guid IN(98402); -- clean up duplicate spawns

DELETE FROM creature WHERE guid = 119583; -- add second spawn
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(119583,2453,0,1,0,0,896.904,-547.316,142.524,3.53498,72000,0,0,1196,3075,0,0);
-- Death Howl - Pooling
DELETE FROM pool_creature_template WHERE id = 2453; -- synchronize pooling data
INSERT INTO pool_creature_template (id, pool_entry, chance, description) VALUES
(2453, 25564, 0, 'Alterac Mountains - Lo\'Grosh (Rare)');
DELETE FROM pool_template WHERE entry IN (25564,1003);
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25564, 1, 'Alterac Mountains - Lo\'Grosh (Rare)');

-- UDB: [578] Narillasanz (rare spawn)(elite)
-- Narillasanz is completely immune to fire damage
-- Also beware that he is immune to snare effects and to Stun and Sleep mechanics (can't hibernate this dragon).
UPDATE creature_template SET MechanicImmuneMask = 3584, SchoolImmuneMask = 4 WHERE entry = 2447;

-- UDB: [580] Stone Fury (rare spawn)
-- Stone Fury is completely immune to Nature damage
UPDATE creature_template SET SchoolImmuneMask = 8 WHERE entry = 2258;

-- NOTE: Questline appears to be locked on VoA currently
-- UDB: [583] Demonic Crystal Prisons(q.10528) -H -A
-- Spirit of Ar'tor corectly added with correct invis aura:
-- Will show up to player after 10528 complete, and remain visible until 10588 completed
DELETE FROM dbscripts_on_quest_end WHERE id = 10528;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10528,0,15,5,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(10528,4,0,0,0,21318,25,0,2000009036,0,0,0,0,0,0,0,'');
-- emote added into text
UPDATE db_script_string SET emote = 1 WHERE entry = 2000009036;
-- this part is not req. anymore
DELETE FROM dbscripts_on_creature_death WHERE id = 21292;
-- Spirit of Ar'tor
-- missing added - UDB free guids reused
DELETE FROM creature WHERE guid = 119584;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(119584,21318,530,1,0,0,-3800.38,2601.1,90.143,5.53429,300,0,0,6986,0,0,0);
-- apply Shadowmoon Ghost Invisibility
DELETE FROM creature_template_addon WHERE entry = 21318;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(21318,0,0,0,0,0,0,37497);
-- lets see our Spirit (Spectrecles)
DELETE FROM spell_area WHERE spell = 39841;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(39841,3752,10528,0,10588,0,0,0,2,1);
UPDATE creature_template SET GossipMenuId = 8287, UnitFlags = 32768, ExtraFlags = 2 WHERE Entry = 21318;
DELETE FROM gossip_menu WHERE entry = 8287;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8287, 10327, 0, 0);

-- q.10540 'The Cipher of Damnation - Ar'tor's Charge'
-- Script corrected
DELETE FROM dbscripts_on_creature_death WHERE id = 20427;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, buddy_entry, search_radius, data_flags, dataint, comments) VALUES
(20427, 0, 0, 0, 21332, 100, 0x20, 2000000330, 'say veneratus epilogue 1'),
(20427, 3, 0, 0, 21332, 100, 0x20, 2000000331, 'say veneratus epilogue 2'),
(20427, 5, 15, 36781, 21332, 100, 0x20, 0, 'cast Despawn Spirit Hunter'),
(20427, 6, 14, 36620, 0, 0, 0x06, 0, 'remove Spirit Hunter aura'),
(20427, 6, 18, 0, 21332, 100, 0x04 | 0x20, 0, 'despawn spirit hunter');
-- Spirit Hunter
UPDATE creature_template SET Expansion = 1, UnitClass = 2, MinLevelHealth = 27945, MaxLevelHealth = 27945, MinLevelMana = 3155, MaxLevelMana = 3155, RangedBaseAttackTime = 2000, MeleeAttackPower = 286, RangedAttackPower = 33, MinMeleeDmg = 249, MaxMeleeDmg = 346, MinRangedDmg = 122, MaxRangedDmg = 155, Armor = 6708 WHERE entry = 21332;

-- UDB 584
-- Veneratus Spawn Node
-- only one should be able to spawn
DELETE FROM creature WHERE guid IN (140594,74703,74704,74707,74705);
DELETE FROM creature_linking WHERE guid IN (140594,74703,74704,74707,74705) OR master_guid IN (140594,74703,74704,74707,74705);
-- should be spawned in random place in that area
UPDATE creature SET Spawntimesecs = 120, Spawndist = 0, MovementType = 2 WHERE guid = 74706;
DELETE FROM creature_movement WHERE id = 74706;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(74706,1,-4052.75,2586.53,127.789, 0, 0,4.76409, 0, 0),
(74706,2,-4050.5,2548.83,132.288, 0, 0,3.73522, 0, 0),
(74706,3,-4083.53,2537.06,137.527, 0, 0,3.34252, 0, 0),
(74706,4,-4114.67,2531.67,140.796, 0, 0,3.3386, 0, 0),
(74706,5,-4079.74,2540.31,137.45, 0, 0,0.303032, 0, 0),
(74706,6,-4058.69,2537.41,133.835, 0, 0,5.88721, 0, 0),
(74706,7,-4050.3,2523.88,134.341, 0, 0,4.98793, 0, 0),
(74706,8,-4049.14,2484.39,137.671, 0, 0,4.79551, 0, 0),
(74706,9,-4050.65,2528.64,134.363, 0, 0,1.63428, 0, 0),
(74706,10,-4051.78,2559.35,132.431, 0, 0,1.63821, 0, 0),
(74706,11,-4052.37,2582.25,127.946, 0, 0,1.59894, 0, 0),
(74706,12,-4052.56,2604.12,129.027, 0, 0,1.55182, 0, 0),
(74706,13,-4049.43,2631.94,124.874, 0, 0,1.68691, 0, 0),
(74706,14,-4042.84,2656.45,128.467, 0, 0,1.89111, 0, 0),
(74706,15,-4048.03,2673.24,133.098, 0, 0,2.00107, 0, 0),
(74706,16,-4053.59,2686.23,139.401, 0, 0,1.9775, 0, 0),
(74706,17,-4043.24,2659.54,129.091, 0, 0,4.80494, 0, 0),
(74706,18,-4044.65,2638.3,124.111, 0, 0,4.59681, 0, 0),
(74706,19,-4051.03,2616.96,127.649, 0, 0,4.45937, 0, 0);


-- UDB 585
-- Grom'tors Script updated
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2129101 AND 2129105; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2129101,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2129101,0,21,1,0,21295,74576,7 | 0x10,0,0,0,0,0,0,0,0,'buddy active'),
(2129101,2,0,0,0,0,0,0,2000006000,0,0,0,0,0,0,0,''),
(2129101,7,0,0,0,0,0,0,2000006001,0,0,0,0,0,0,0,''),
(2129101,10,1,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2129101,14,0,0,0,21295,74576,7 | 0x10,2000006002,0,0,0,0,0,0,0,'force 21295 to: say text'),
(2129102,2,0,0,0,21295,74576,7 | 0x10,2000006003,0,0,0,0,0,0,0,'force 21295 to: say text'),
(2129102,5,0,0,0,0,0,0,2000006004,0,0,0,0,0,0,0,''),
(2129103,3,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2129103,6,0,0,0,0,0,0,2000006005,0,0,0,0,0,0,0,''),
(2129103,8,0,0,0,21295,74576,7 | 0x10,2000006006,0,0,0,0,0,0,0,'force 21295 to: say text'),
(2129104,1,0,0,0,0,0,0,2000006007,0,0,0,0,0,0,0,''),
(2129104,3,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2129104,4,1,36,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2129104,5,1,60,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2129104,6,1,36,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2129104,7,1,36,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2129104,8,1,60,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2129104,9,28,7,0,21295,74576,7 | 0x10,0,0,0,0,0,0,0,0,'force 21295 to:STATE_DEATH'),
(2129104,9,1,37,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2129104,9,15,36542,0,21295,74576,7 | 0x10,0,0,0,0,0,0,0,0,'cast 36542 b->b'),
(2129104,13,0,2,0,0,0,0,2000006008,0,0,0,0,0,0,0,''),
(2129104,15,0,0,0,0,0,0,2000006009,0,0,0,0,0,0,0,''),
(2129104,17,28,0,0,21295,74576,7 | 0x10,0,0,0,0,0,0,0,0,'force 21295 to:STATE_STAND'),
(2129104,17,0,2,0,21295,74576,7 | 0x10,2000006010,0,0,0,0,0,0,0,'force 21295 to: text_emote'),
(2129105,2,0,0,0,0,0,0,2000006011,0,0,0,0,0,0,0,''),
(2129105,4,0,0,0,21295,74576,7 | 0x10,2000006012,0,0,0,0,0,0,0,'force 21295 to: say text'),
(2129105,15,0,0,0,21295,74576,7 | 0x10,2000006013,0,0,0,0,0,0,0,'force 21295 to: say text'),
(2129105,17,21,0,0,21295,74576,7 | 0x10,0,0,0,0,0,0,0,0,'buddy unactive'),
(2129105,17,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');

-- emotes
UPDATE db_script_string SET emote = 6 WHERE entry = 2000006001;
UPDATE db_script_string SET emote = 15 WHERE entry = 2000006013;
UPDATE db_script_string SET emote = 25 WHERE entry = 2000006000;
UPDATE db_script_string SET emote = 273 WHERE entry = 2000006011;
UPDATE db_script_string SET emote = 274 WHERE entry = 2000006004;
UPDATE db_script_string SET emote = 5 WHERE entry IN (2000006007,2000006009);
UPDATE db_script_string SET emote = 1 WHERE entry IN (2000006002,2000006003,2000006005,2000006012);

-- UDB: [586] Newman's Landing - Update
-- missing sign added
DELETE FROM gameobject WHERE guid = 89080;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
(89080, 38927, 0, 1,-6383.69, 1252.43, 8.26695, 4.57277, 0, 0, 0.754707, -0.656062, 300, 255, 1); 

-- ClassicDB: [1494] AreaTriggers and SpellTargetPositions
-- Corrections based on sniff data by @evil-at-wow
-- AREATRIGGER

-- Ragefire Chasm
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Ragefire Chasm - Entering', `target_position_x`=0.797643, `target_position_y`=-8.23429, `target_position_z`=-15.5288, `target_orientation`=4.71239 WHERE `id`=2230;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Ragefire Chasm - Exiting', `target_position_x`=1814.99, `target_position_y`=-4419.23, `target_position_z`=-18.8151, `target_orientation`=1.91986 WHERE `id`=2226;

-- Deadmines
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Deadmines - Entering', `target_position_x`=-14.5732, `target_position_y`=-385.475, `target_position_z`=62.4561, `target_orientation`=1.5708 WHERE `id`=78;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Deadmines - Exiting', `target_position_x`=-11208.7, `target_position_y`=1675.9, `target_position_z`=24.5733, `target_orientation`=4.71239 WHERE `id`=119;
-- Exiting after ship
UPDATE `areatrigger_teleport` SET `name`='Deadmines - Exiting after ship', `target_position_x`=-11339.9, `target_position_y`=1572.45, `target_position_z`=94.3916, `target_orientation`=1.5708 WHERE `id`=121;

-- Shadowfang Keep
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Shadowfang Keep - Entering', `target_position_x`=-228.191, `target_position_y`=2111.41, `target_position_z`=76.8904, `target_orientation`=1.22173 WHERE `id`=145;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Shadowfang Keep - Exiting', `target_position_x`=-233.011, `target_position_y`=1567.5, `target_position_z`=76.8921, `target_orientation`=4.27606 WHERE `id`=194;

-- BlackFATHOM Deeps (wrongfully named Blackphantom in our table names)
-- Entering 	
UPDATE `areatrigger_teleport` SET `name`='Blackfathom Deeps - Entering', `target_position_x`=-150.234, `target_position_y`=106.594, `target_position_z`=-39.779, `target_orientation`=4.45059 WHERE `id`=257;

-- Stormwind Stockades
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Stormwind Stockades - Entering', `target_position_x`=48.9849, `target_position_y`=0.483882, `target_position_z`=-16.3942, `target_orientation`=0 WHERE `id`=101;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Stormwind stockades - Exiting', `target_position_x`=-8766.11, `target_position_y`=845.499, `target_position_z`=87.9952, `target_orientation`=3.83972 WHERE `id`=503;

-- Gnomeregan
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Gnomeregan - Entering', `target_position_x`=-329.098, `target_position_y`=-3.20722, `target_position_z`=-152.851, `target_orientation`=2.96706 WHERE `id`=324;

-- Razorfen Kraul
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Razorfen Kraul - Entering', `target_position_x`=1942.27, `target_position_y`=1544.23, `target_position_z`=81.805061, `target_orientation`=1.309 WHERE `id`=244;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Razorfen Kraul - Exiting', `target_position_x`=-4463.32, `target_position_y`=-1664.29, `target_position_z`=82.243629, `target_orientation`=3.92699 WHERE `id`=242;

-- Scarlet Monestary - Graveyard
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Scarlet Monestary Graveyard - Entering', `target_position_x`=1687.27, `target_position_y`=1050.09, `target_position_z`=18.6773, `target_orientation`=1.5708 WHERE `id`=45;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Scarlet Monestary Graveyard - Exiting', `target_position_x`=2915.34, `target_position_y`=-801.58, `target_position_z`=160.333, `target_orientation`=3.49066 WHERE `id`=602;

-- Scarlet Monestary - Library
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Scarlet Monestary Library - Entering', `target_position_x`=253.672, `target_position_y`=-206.624, `target_position_z`=18.6773, `target_orientation`=4.71239 WHERE `id`=614;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Scarlet Monestary Library - Exiting', `target_position_x`=2869.32, `target_position_y`=-820.818, `target_position_z`=160.333, `target_orientation`=0.349066 WHERE `id`=608;

-- Scarlet Monestary - Armory
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Scarlet Monestary Armory - Entering', `target_position_x`=1608.1, `target_position_y`=-318.919, `target_position_z`=18.6714, `target_orientation`=4.71239 WHERE `id`=612;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Scarlet Monestary Armory - Exiting', `target_position_x`=2885.96, `target_position_y`=-835.802, `target_position_z`=160.327, `target_orientation`=0.349066 WHERE `id`=606;

-- Scarlet Monestary - Cathedral
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Scarlet Monestary Cathedral - Entering', `target_position_x`=853.179, `target_position_y`=1319.18, `target_position_z`=18.6714, `target_orientation`=1.5708 WHERE `id`=610;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Scarlet Monestary Cathedral - Exiting', `target_position_x`=2915.13, `target_position_y`=-823.637, `target_position_z`=160.327, `target_orientation`=3.49066 WHERE `id`=604;

-- Uldaman
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Uldaman - Entering', `target_position_x`=-228.859, `target_position_y`=46.1018, `target_position_z`=-46.0186, `target_orientation`=1.5708 WHERE `id`=286;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Uldaman - Exiting', `target_position_x`=-6066.25, `target_position_y`=-2954.56, `target_position_z`=209.772, `target_orientation`=3.14159 WHERE `id`=288;

-- Zul'Farrak
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Zul\'Farrak - Entering', `target_position_x`=1212.67, `target_position_y`=842.04, `target_position_z`=8.93346, `target_orientation`=0 WHERE `id`=924;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Zul\'Farrak - Exiting', `target_position_x`=-6795.56, `target_position_y`=-2890.72, `target_position_z`=8.88742, `target_orientation`=3.14159 WHERE `id`=922;

-- Maraudon - Orange
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Maraudon Orange - Entering', `target_position_x`=1016.83, `target_position_y`=-458.52, `target_position_z`=-43.4737, `target_orientation`=0 WHERE `id`=3133;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Maraudon Orange - Exiting', `target_position_x`=-1468.2, `target_position_y`=2614.21, `target_position_z`=76.3804, `target_orientation`=0 WHERE `id`=3131;

-- Maraudon - Purple
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Maraudon Purple - Entering', `target_position_x`=755.078, `target_position_y`=-617.696, `target_position_z`=-32.9222, `target_orientation`=1.5708 WHERE `id`=3134;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Maraudon Purple - Exiting', `target_position_x`=-1182.8, `target_position_y`=2877.43, `target_position_z`=85.908, `target_orientation`=1.65806 WHERE `id`=3126;

-- Sunken Temple
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Altar of Atal\'Hakkar (Sunken Temple) - Entering', `target_position_x`=-315.903, `target_position_y`=100.197, `target_position_z`=-131.849, `target_orientation`=3.14159 WHERE `id`=446;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Altar of Atal\'Hakkar (Sunken Temple) - Exiting', `target_position_x`=-10176.6, `target_position_y`=-3995.35, `target_position_z`=-112.185, `target_orientation`=3.00197 WHERE `id`=448;

-- Blackrock Depths
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Blackrock Depths - Entering', `target_position_x`=456.929, `target_position_y`=34.0923, `target_position_z`=-69.561729, `target_orientation`=4.71239 WHERE `id`=1466;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Blackrock Depths - Exiting', `target_position_x`=-7178.41, `target_position_y`=-922.152, `target_position_z`=166.092, `target_orientation`=2.00713 WHERE `id`=1472;

-- Blackrock Spire
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Blackrock Spire - Entering', `target_position_x`=78.3534, `target_position_y`=-226.841, `target_position_z`=49.7662, `target_orientation`=4.71239 WHERE `id`=1468;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Blackrock Spire - Exiting', `target_position_x`=-7524.7, `target_position_y`=-1228.41, `target_position_z`=285.733185, `target_orientation`=1.74533 WHERE `id`=1470;

-- Dire Maul - East
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Dire Maul East - Entering', `target_position_x`=47.4501, `target_position_y`=-153.665, `target_position_z`=-2.71439, `target_orientation`=5.49779 WHERE `id`=3183;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Dire Maul East - Exiting', `target_position_x`=-3738.62, `target_position_y`=934.522, `target_position_z`=160.975, `target_orientation`=3.14159 WHERE `id`=3194;
-- Exiting after Alzzin
UPDATE `areatrigger_teleport` SET `name`='Dire Maul East - Exiting after Alzzin', `target_position_x`=-3585.84, `target_position_y`=847.367, `target_position_z`=138.641, `target_orientation`=2.35619 WHERE `id`=3197;

-- Dire Maul - East (Back Door)
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Dire Maul East - Entering Back Door', `target_position_x`=10.5786, `target_position_y`=-836.991, `target_position_z`=-32.3988, `target_orientation`=0 WHERE `id`=3185;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Dire Maul East - Exiting Back Door', `target_position_x`=-4031.25, `target_position_y`=129.345, `target_position_z`=26.4744, `target_orientation`=1.570797 WHERE `id`=3196;

-- Dire Maul - West
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Dire Maul West - Entering', `target_position_x`=-65.6559, `target_position_y`=159.561, `target_position_z`=-3.4647, `target_orientation`=2.35619 WHERE `id`=3186;

-- Dire Maul - West (Side Door)
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Dire Maul West - Entering Side Door', `target_position_x`=33.1083, `target_position_y`=158.977, `target_position_z`=-3.47126, `target_orientation`=0.785398 WHERE `id`=3187;

-- Dire Maul - North
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Dire Maul North - Entering', `target_position_x`=254.92, `target_position_y`=-19.463, `target_position_z`=-2.5596, `target_orientation`=5.49779 WHERE `id`=3189;

-- Stratholme - Front
-- Entering (Left)
UPDATE `areatrigger_teleport` SET `name`='Stratholme - Entering Left Front', `target_position_x`=3392.92, `target_position_y`=-3395.03, `target_position_z`=143.135, `target_orientation`=1.5708 WHERE `id`=2216;
-- Entering (Right)
UPDATE `areatrigger_teleport` SET `name`='Stratholme - Entering Right Front', `target_position_x`=3392.84, `target_position_y`=-3364.44, `target_position_z`=142.965, `target_orientation`=4.71239 WHERE `id`=2217;

-- Stratholme - UD
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Stratholme - Entering Back Door', `target_position_x`=3590.87, `target_position_y`=-3643.22, `target_position_z`=138.491, `target_orientation`=5.49779 WHERE `id`=2214;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Stratholme - Exiting Back Door', `target_position_x`=3233.06, `target_position_y`=-4048.3, `target_position_z`=108.442, `target_orientation`=2.00713 WHERE `id`=2221;

-- Scholomance
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Scholomance - Entering', `target_position_x`=190.819, `target_position_y`=126.329, `target_position_z`=137.227, `target_orientation`=0 WHERE `id`=2567;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Scholomance - Exiting', `target_position_x`=1273.91, `target_position_y`=-2553.09, `target_position_z`=90.632217, `target_orientation`=3.57793 WHERE `id`=2568;

-- Onyxia's Lair
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Onyxia\'s Lair - Entering', `target_position_x`=30.8916, `target_position_y`=-54.079, `target_position_z`=-5.02784, `target_orientation`=4.71239 WHERE `id`=2848;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Onyxia\'s Lair - Exiting', `target_position_x`=-4750.38, `target_position_y`=-3754.44, `target_position_z`=49.0485, `target_orientation`=0.785398 WHERE `id`=1064;

-- Zul'Gurub
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Zul\'Gurub - Entering', `target_position_x`=-11916.6, `target_position_y`=-1243.52, `target_position_z`=92.5338, `target_orientation`=4.71239 WHERE `id`=3928;

-- Blackwing Lair
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Blackwing Lair - Entering', `target_position_x`=-7672.32, `target_position_y`=-1107.05, `target_position_z`=396.651, `target_orientation`=0.785398 WHERE `id`=3726;

-- Ruins of Ahn'Qiraj
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Ruins of Ahn\'Qiraj - Entering', `target_position_x`=-8436.53, `target_position_y`=1519.17, `target_position_z`=31.907, `target_orientation`=2.61799 WHERE `id`=4008;

-- Ahn'Qiraj Temple
-- Entering
UPDATE `areatrigger_teleport` SET `name`='Ahn\'Qiraj Temple - Entering', `target_position_x`=-8221.35, `target_position_y`=2014.34, `target_position_z`=129.071, `target_orientation`=0.872665 WHERE `id`=4010;
-- Exiting
UPDATE `areatrigger_teleport` SET `name`='Ahn\'Qiraj Temple - Exiting', `target_position_x`=-8239.01, `target_position_y`=1993.25, `target_position_z`=129.071, `target_orientation`=4.01426 WHERE `id`=4012;

-- TARGET POSITION

-- Blackfathom Deeps
-- Exiting using Darnassus Portal
UPDATE `spell_target_position` SET `target_position_x`=9664.14, `target_position_y`=2526.36, `target_position_z`=1334.27, `target_orientation`=1.84454 WHERE `id`=3565;

-- Maraudon
-- Portal to Earth Song Falls (Princess run)
UPDATE `spell_target_position` SET `target_position_x`=386.27, `target_position_y`=33.4144, `target_position_z`=-130.934, `target_orientation`=0 WHERE `id`=21128;

-- Molten Core
-- Entering using High Elf (Attunement)
UPDATE `spell_target_position` SET `target_position_x`=1080, `target_position_y`=-483, `target_position_z`=-108, `target_orientation`=1 WHERE `id`=20534;
UPDATE `spell_target_position` SET `target_position_x`=1080, `target_position_y`=-483, `target_position_z`=-108, `target_orientation`=1 WHERE `id`=20618;

-- UDB 591
-- Engineer "Spark" Overgrind
-- correct waypoints + scripts
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 61966;
DELETE FROM creature_movement WHERE id = 61966;
UPDATE creature_template SET MovementType = 2 WHERE entry = 17243;
DELETE FROM creature_movement_template WHERE entry = 17243;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17243,1,-4687.08,-12524.2,3.00193, 0, 0,1.27474, 0, 0),
(17243,2,-4691.52,-12512.2,4.45467, 0, 0,2.31932, 0, 0),
(17243,3,-4715.23,-12495.1,3.38221, 0, 0,2.4921, 0, 0),
(17243,4,-4734.12,-12482.5,2.67546, 15000, 1724301,3.3851, 0, 0),
(17243,5,-4747.31,-12483.8,2.55358, 0, 0,3.22624, 0, 0),
(17243,6,-4754.23,-12470.8,2.04223, 0, 0,2.21883, 0, 0),
(17243,7,-4768.77,-12451,1.18869, 0, 0,1.93216, 0, 0),
(17243,8,-4775.69,-12422.9,0.489079, 0, 0,2.07746, 0, 0),
(17243,9,-4786.23,-12401.9,0.921945, 0, 0,1.88504, 0, 0),
(17243,10,-4794.04,-12370,0.741158, 0, 0,1.44521, 0, 0),
(17243,11,-4790.68,-12352.3,0.691541, 0, 0,0.493929, 0, 0),
(17243,12,-4782.91,-12348.3,0.939583, 0, 0,0.183234, 0, 0),
(17243,13,-4766.58,-12359.6,0.874762, 0, 0,5.11554, 0, 0),
(17243,14,-4759.47,-12380,1.61971, 0, 0,4.75426, 0, 0),
(17243,15,-4760.18,-12422.7,1.94675, 0, 0,4.99381, 0, 0),
(17243,16,-4749.6,-12455,2.9122, 0, 0,5.32367, 0, 0),
(17243,17,-4719.6,-12479,3.51961, 0, 0,5.68887, 0, 0),
(17243,18,-4707.1,-12486.7,6.54283, 0, 0,5.73207, 0, 0),
(17243,19,-4695.46,-12493.8,5.57615, 0, 0,5.55536, 0, 0),
(17243,20,-4684.7,-12504.4,7.53665, 0, 0,5.69594, 0, 0),
(17243,21,-4672.73,-12512.1,6.42865, 0, 0,5.2522, 0, 0),
(17243,22,-4668.15,-12529.4,4.10121, 0, 0,4.37637, 0, 0),
(17243,23,-4673.65,-12542.6,3.07812, 0, 0,3.9113, 0, 0),
(17243,24,-4683.79,-12546.3,2.7088, 0, 0,3.22408, 0, 0),
(17243,25,-4703.62,-12544.5,1.22952, 0, 0,2.79997, 0, 0),
(17243,26,-4729.17,-12533,0.937104, 0, 0,2.47795, 0, 0),
(17243,27,-4751.83,-12514.8,0.476912, 0, 0,1.95566, 0, 0),
(17243,28,-4754.63,-12492.5,1.47702, 0, 0,0.44377, 0, 0),
(17243,29,-4731.68,-12507.3,2.6218, 15000, 1724302,5.67845, 0, 0),
(17243,30,-4701.42,-12532.6,1.57419, 0, 0,0.0981874, 0, 0),
(17243,31,-4688.88,-12524.4,2.93557, 0, 0,1.4285, 0, 0),
(17243,32,-4692.19,-12511.3,4.4742, 0, 0,2.35998, 0, 0),
(17243,33,-4733.15,-12483.2,2.67166, 0, 0,2.64194, 0, 0),
(17243,34,-4754.18,-12471.3,2.04364, 0, 0,2.18248, 0, 0),
(17243,35,-4768.9,-12451.5,1.17257, 0, 0,1.85654, 0, 0),
(17243,36,-4775.31,-12423.8,0.499497, 0, 0,2.01362, 0, 0),
(17243,37,-4786.35,-12401.9,0.918026, 0, 0,1.85261, 0, 0),
(17243,38,-4794.38,-12370.6,0.730214, 0, 0,1.40886, 0, 0),
(17243,39,-4790.39,-12351.5,0.712131, 0, 0,0.530001, 0, 0),
(17243,40,-4781.23,-12348.4,0.92122, 0, 0,6.05606, 0, 0),
(17243,41,-4766.94,-12360.3,0.842588, 15000, 1724303,0.409809, 0, 0),
(17243,42,-4760.45,-12401.5,3.23353, 0, 0,4.6855, 0, 0),
(17243,43,-4760.38,-12423.3,1.9355, 0, 0,4.96824, 0, 0),
(17243,44,-4749.04,-12455.6,2.88199, 0, 0,5.37664, 0, 0),
(17243,45,-4714.79,-12481.8,3.95833, 0, 0,5.70651, 0, 0),
(17243,46,-4695.59,-12493.9,5.52503, 0, 0,5.61619, 0, 0),
(17243,47,-4685.13,-12503.2,7.64583, 0, 0,5.56906, 0, 0),
(17243,48,-4672.48,-12511.9,6.52731, 0, 0,4.94075, 0, 0),
(17243,49,-4668.66,-12532.5,3.46702, 0, 0,4.34779, 0, 0),
(17243,50,-4674.21,-12542.8,3.08838, 0, 0,3.75481, 0, 0),
(17243,51,-4684.13,-12547,2.64026, 0, 0,3.11079, 0, 0),
(17243,52,-4703.47,-12544.7,1.22739, 0, 0,2.72594, 0, 0),
(17243,53,-4728.7,-12532.7,0.967585, 0, 0,2.49032, 0, 0),
(17243,54,-4751.41,-12514.3,0.510997, 0, 0,2.07799, 0, 0),
(17243,55,-4754.1,-12492.7,1.49931, 0, 0,6.16363, 0, 0),
(17243,56,-4731.46,-12507.4,2.63618, 0, 0,5.67668, 0, 0),
(17243,57,-4711.94,-12522.4,1.26585, 0, 0,5.52746, 0, 0),
(17243,58,-4700.72,-12532.3,1.64324, 0, 0,0.394878, 0, 0),
(17243,59,-4692.21,-12528.2,2.45636, 0, 0,0.579446, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1724301 AND 1724303;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- first
(1724301,1,35,5,10,0,0,0,0,0,0,0,0,0,0,0,'THROW_AI_EVENT'),
(1724301,4,3,0,700,0,0,0,0,0,0,0,-4747.31,-12483.8,2.55358,3.22624,''),
(1724301,6,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1724301,9,0,0,0,0,0,0,2000001030,2000001031,0,0,0,0,0,0,''),
-- 2nd
(1724302,1,35,5,10,0,0,0,0,0,0,0,0,0,0,0,'THROW_AI_EVENT'),
(1724302,4,3,0,700,0,0,0,0,0,0,0,-4718.65,-12516.4,2.08761,5.68238,''),
(1724302,6,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1724302,9,0,0,0,0,0,0,2000001030,2000001031,0,0,0,0,0,0,''),
-- 3rd
(1724303,1,35,5,10,0,0,0,0,0,0,0,0,0,0,0,'THROW_AI_EVENT'),
(1724303,4,3,0,700,0,0,0,0,0,0,0,-4756.98,-12354.6,1.95457,0.40116,''),
(1724303,6,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1724303,9,0,0,0,0,0,0,2000001030,2000001031,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001030 AND 2000001031;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001030,'%s holds the shell up to his ear.',0,2,0,0,NULL),
(2000001031,'%s places the shell in his pack.',0,2,0,0,NULL);

-- Seashell - Duplicates Removed
DELETE FROM gameobject WHERE guid IN (22269,22271,22272,22273,22286,22288);
DELETE FROM game_event_gameobject WHERE guid IN (22269,22271,22272,22273,22286,22288);
DELETE FROM gameobject_battleground WHERE guid IN (22269,22271,22272,22273,22286,22288);

-- UDB 592
-- Draenei Zone - polishing PArt 3.

-- q.9505 'The Prophecy of Velen' 
UPDATE quest_template SET DetailsEmote1 = 1 WHERE entry = 9505;

-- Gossip for Tuluun Corrected
DELETE FROM gossip_menu WHERE entry = 7467;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7467, 8785, 0, 24),
(7467, 9050, 0, 17);

-- Stillpine Ancestor Akida
-- Run Speed reduced
UPDATE creature_template SET SpeedRun = 0.9 WHERE Entry = 17379;

-- Stillpine Ancestor Coo
-- Walk Speed reduced
UPDATE creature_template SET SpeedWalk = 1 WHERE Entry = 17391;

-- q.9513 'Reclaiming the Ruins' 
UPDATE quest_template SET DetailsEmote1 = 1, DetailsEmote2 = 1, DetailsEmote3 = 1, DetailsEmoteDelay2 = 2000, DetailsEmoteDelay3 = 5000 WHERE entry = 9513;


