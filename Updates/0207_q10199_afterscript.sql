-- ---------------------------------------------------------
-- CompleteScript for quest That Little Extra Kick q.10199
-- Also add some waypoints to Nadja c.22279 and Soren c.22280
-- ---------------------------------------------------------

-- Bill 19621
-- Don't know why he's spawned all the way over at the tower.
UPDATE creature SET position_x=3077.083, position_y=3681.7715, position_z=142.49771, orientation=0.654593706130981445 WHERE id=19621;
-- Path used by quest_end_script
DELETE FROM `creature_movement_template` WHERE `entry`=19621;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19621,1,0,3041.5664,3642.967,142.94063,1000,7,100),
(19621,2,1,3056.9524,3657.7444,143.02864,0,0,100),
(19621,3,1,3076.6907,3674.27,142.49771,0,0,100),
(19621,4,1,3083.7832,3679.7456,142.49771,0,0,100),
(19621,5,1,3085.4863,3684.0413,142.62271,0,0,100),
(19621,6,1,3084.0596,3686.4263,142.49771,1000,7,100),
(19621,7,1,3080.0566,3686.2236,143.81647,1000,7,100),
(19621,8,1,3077.083,3681.7715,142.49771,1000,3,0.654593706130981445);

-- Fix some positions
UPDATE creature SET position_x=3089.3896, position_y=3684.7473, position_z=143.46904, orientation=1.93731546401977539 WHERE id=19623; -- Doc
UPDATE creature SET position_x=3080.57, position_y=3681.9878, position_z=143.36987, orientation=2.216568231582641601 WHERE id=19780; -- Off-Duty Engineer
UPDATE creature SET position_x=3080.5122, position_y=3684.4033, position_z=142.5328, orientation=5.410520553588867187 WHERE id=19617; -- Boots

-- Nadja 22279 and Soren 22280
-- Path and Linking with Nadja as master
DELETE FROM creature_linking_template WHERE master_entry=22279;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(22280,530,22279,512,0);

UPDATE creature SET MovementType=0, spawndist=0 WHERE id=22280;
DELETE FROM creature_movement WHERE id IN(SELECT guid FROM creature WHERE id IN(22279,22280));
DELETE FROM `creature_movement_template` WHERE `entry`=22279;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(22279,1,0,3090.9727,3681.8176,142.62833,0,5,100),
(22279,2,0,3097.2456,3673.091,143.22977,0,0,100),
(22279,3,0,3089.1353,3663.8972,142.73978,0,0,100),
(22279,4,0,3090.1077,3653.0793,142.74844,0,0,100),
(22279,5,0,3098.48,3661.888,142.50357,0,0,100),
(22279,6,0,3101.6396,3674.1497,143.36064,0,0,100),
(22279,7,0,3078.8606,3668.9236,142.53934,0,0,100),
(22279,8,0,3072.3813,3661.13,142.97354,0,0,100),
(22279,9,0,3086.1602,3655.8438,142.87344,0,0,100),
(22279,10,0,3093.1934,3664.8372,142.25272,0,0,100),
(22279,11,0,3094.016,3674.958,142.84207,0,0,100),
(22279,12,0,3082.68,3673.1042,142.37271,0,0,100),
(22279,13,0,3088.5596,3666.6267,142.68375,0,0,100),
(22279,14,0,3098.2373,3669.9614,143.09866,0,0,100),
(22279,15,0,3103.1929,3679.2588,142.86064,0,0,100),
(22279,16,0,3101.086,3686.3972,143.05351,0,0,100),
(22279,17,0,3092.6875,3677.4463,142.68277,0,0,100),
(22279,18,0,3080.1172,3675.4822,142.49771,0,0,100),
(22279,19,0,3071.3625,3668.251,142.37271,0,0,100),
(22279,20,0,3067.256,3660.048,142.845,0,0,100),
(22279,21,0,3083.9548,3656.7305,142.87344,0,0,100),
(22279,22,0,3095.1877,3663.7532,142.21133,0,0,100),
(22279,23,0,3104.4258,3669.7363,143.48564,0,0,100),
(22279,24,0,3091.447,3668.8372,142.21158,0,0,100),
(22279,25,0,3098.3806,3676.8503,143.22,0,0,100),
(22279,26,0,3085.4695,3668.4675,142.74771,0,0,100),
(22279,27,0,3091.006,3657.7266,142.87344,0,0,100),
(22279,28,0,3075.1543,3657.558,143.24844,0,0,100),
(22279,29,0,3072.4868,3664.1948,142.62344,0,0,100),
(22279,30,0,3064.506,3666.7495,142.2696,0,0,100),
(22279,31,0,3077.805,3671.5266,142.3693,0,0,100),

(22279,1,1,3085.5603,3675.2617,142.37271,1000,2227901,100); -- Used by quest_end_script

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2227901);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`priority`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2227901,0,0,32,1,0,0,0,0,0,0,0,0,0,'Nadja - Pause Waypoints',0,0,0,0),
(2227901,20203,0,36,0,0,0,0,0,0,0,19617,15,1,'Nadja - Face Boots',0,0,0,0),
(2227901,21406,0,45,10171,0,0,0,0,0,0,22280,10,7,'Soren - Face Boots',0,0,0,0);

-- Relay scripts for facing NPCs towards each other
DELETE FROM `dbscripts_on_relay` WHERE `id` IN(10170,10171) AND command=36;
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`priority`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10170,0,0,36,0,0,0,0,0,0,0,19623,15,3,'Doc - Face Off-Duty Engineer',0,0,0,0),
(10170,3344,0,36,0,0,0,0,0,0,0,19623,15,1,'Off-Duty Engineer - Face Doc',0,0,0,0),

(10171,0,0,36,0,0,0,0,0,0,0,19617,15,1,'Soren - Face Boots',0,0,0,0);

-- Gameobjects involved in script, despawned by default
DELETE FROM gameobject WHERE id IN(183796,183797) AND guid BETWEEN 161347 AND 161353;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(161347,183796,530,1,3081.9304,3687.2114,143.6298,0.017452462,0,0,0.00872612,0.9999619,-100,-100,100,1),
(161348,183796,530,1,3080.6858,3684.066,146.44376,1.6580619,0,0,0.73727703,0.6755905,-100,-100,100,1),
(161349,183796,530,1,3077.3364,3684.5903,143.08566,3.508117,0,0,-0.98325443,0.18223801,-100,-100,100,1),

(161350,183797,530,1,3080.4219,3684.2383,142.44888,4.9741898,0,0,-0.60876083,0.7933538,-100,-100,100,1),
(161351,183797,530,1,3082.0876,3687.0168,143.58765,0.13962449,0,0,0.069755554,0.99756414,-100,-100,100,1),
(161352,183797,530,1,3080.6528,3684.0356,146.30525,6.1261063,0,0,-0.078458786,0.99691737,-100,-100,100,1),
(161353,183797,530,1,3077.2632,3684.4253,143.08566,5.550147,0,0,-0.35836792,0.93358046,-100,-100,100,1);

-- Add texts
DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001649 AND 2000001663;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`, `broadcast_text_id`) VALUES 
(2000001649, 'Woot!  Here we go!', 0, 0, 0, 0, 'Boots (Entry: 19617)',17062),
(2000001650, 'Uh oh!', 0, 0, 0, 0, 'Boots (Entry: 19617)',17063),
(2000001651, 'I''m ok, I''m ok!  Ah well, back to the drawing board on that rocket fuel!', 0, 0, 0, 1, 'Boots (Entry: 19617)',17064),
(2000001652, 'Thanks...', 0, 0, 0, 0, 'Boots (Entry: 19617)',17082),

(2000001653, 'Yikes!  Someone call the fire marshal!  Medic!!!  Is there a doctor in the house?', 0, 0, 0, 5, 'Off-Duty Engineer (Entry: 19780)',17067),

(2000001654, 'I''m a doctor!  What seems to be the problem?', 0, 0, 0, 1, 'Doc (Entry: 19623)',17071),
(2000001655, 'Oh!  Someone needs to get those fires out so I can get in there and save that goblin!', 0, 0, 0, 5, 'Doc (Entry: 19623)',17072),
(2000001656, 'Right... let me in there!', 0, 0, 0, 0, 'Doc (Entry: 19623)',17074),
(2000001657, 'Everyone clear!', 0, 0, 0, 0, 'Doc (Entry: 19623)',17076),
(2000001658, 'Come on!  Clear!', 0, 0, 0, 0, 'Doc (Entry: 19623)',17077),
(2000001659, 'Dammit, Boots, I''m a doctor not a priest!  Clear!!!', 0, 0, 0, 0, 'Doc (Entry: 19623)',17078),
(2000001660, 'I''ve got a pulse!', 0, 0, 0, 0, 'Doc (Entry: 19623)',17079),

(2000001661, 'Someone called?', 0, 0, 0, 0, 'Bill (Entry: 19621)',17084),

(2000001662, 'Daddy!', 0, 0, 0, 0, 'Nadja (Entry: 22279)',20062),

(2000001663, 'Dad!', 0, 0, 0, 0, 'Soren (Entry: 22280)',20063);

-- Quest template
UPDATE quest_template SET CompleteScript=10199 WHERE entry=10199;

-- Defibrillate s.34332 target
DELETE FROM spell_script_target WHERE entry=34332;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(34332,1,19617,0);

-- Add scripts
DELETE FROM `dbscripts_on_quest_end` WHERE `id` IN(10199);
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`priority`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
-- Boots c.19617
(10199,0,0,21,1,0,0,0,0,0,0,0,0,0,'Boots - Set Active object on',0,0,0,0),
(10199,1672,0,29,3,2,0,0,0,0,0,0,0,0,'Boots - Remove NPCFlags 3',0,0,0,0),
(10199,5250,0,42,0,0,0,2200,12870,0,0,0,0,0,'Boots - Set Equipment',0,0,0,0),
(10199,8937,0,3,0,0,0,0,0,0,0,0,0,0,'Boots - Orientation',0,0,0,3.682644605636596679),
(10199,8937,0,1,133,0,0,0,0,0,0,0,0,0,'Boots - STATE_USESTANDING_NOSHEATHE',0,0,0,0),
(10199,8937,0,5,46,512,0,0,0,0,0,0,0,0,'Boots - Remove UNIT_FLAG_IMMUNE_TO_NPC',0,0,0,0),
(10199,9062,0,0,0,0,0,2000001649,0,0,0,0,0,0,'Boots - Woot!  Here we go!',0,0,0,0),
(10199,19891,0,15,30934,0,0,0,0,0,0,0,0,0,'Boots - Cast Explosion',0,0,0,0),
(10199,19891,0,15,29266,1,0,0,0,0,0,0,0,0,'Boots - Cast Permanent Feign Death',0,0,0,0),
(10199,19891,0,42,0,0,0,2704,0,0,0,0,0,0,'Boots - Set Equipment',0,0,0,0),
(10199,19984,0,0,0,0,0,2000001650,0,0,0,0,0,0,'Boots - Uh oh!',0,0,0,0),
(10199,20203,0,36,0,0,0,0,0,0,0,19880,17,3,'Nether-Stalker Khay''ji - Face Boots',0,0,0,0),
(10199,20203,0,36,0,0,0,0,0,0,0,17636,15,3,'Kalynna Lathred - Face Boots',0,0,0,0),
(10199,90797,0,14,29266,0,0,0,0,0,0,0,0,0,'Boots - Remove Permanent Feign Death',0,0,0,0),
(10199,90797,0,1,0,0,0,0,0,0,0,0,0,0,'Boots - ONESHOT_NONE',0,0,0,0),
(10199,91625,0,3,0,0,0,0,0,0,0,0,0,0,'Boots - Orientation',0,0,0,5.410520553588867187),
(10199,92844,0,0,0,0,0,2000001651,0,0,0,0,0,0,'Boots - I''m ok, I''m ok!  Ah well, back to the drawing board on that rocket fuel!',0,0,0,0),
(10199,99031,0,0,0,0,0,2000001652,0,0,0,0,0,0,'Boots - Thanks...',0,0,0,0),
(10199,100125,0,36,1,0,0,0,0,0,0,17636,15,0,'Kalynna Lathred - Reset Facing',0,0,0,0),
(10199,100125,0,36,1,0,0,0,0,0,0,19880,17,0,'Nether-Stalker Khay''ji - Reset Facing',0,0,0,0),
(10199,102547,0,29,3,1,0,0,0,0,0,0,0,0,'Boots - Add NPCFlags 3',0,0,0,0),
(10199,102547,0,4,46,512,0,0,0,0,0,0,0,0,'Boots - Add UNIT_FLAG_IMMUNE_TO_NPC',0,0,0,0),
(10199,103000,0,21,0,0,0,0,0,0,0,0,0,0,'Boots - Set Active object off',0,0,0,0),

-- Off-Duty Engineer c.19780
(10199,20203,0,25,1,0,0,0,0,0,0,19780,5,0,'Off-Duty Engineer - Set Run On',0,0,0,0),
(10199,20203,0,35,5,0,0,0,0,0,0,19780,5,0,'Off-Duty Engineer - Send AI Event 5 to self (Stops OOC emotes in AI)',0,0,0,0),
(10199,20203,1,3,0,0,0,0,0,0,0,19780,5,0,'Off-Duty Engineer - Move',3080.7644,3678.664,142.41501,100),
(10199,21094,0,36,0,0,0,0,0,0,0,19780,10,3,'Off-Duty Engineer - Face Boots',0,0,0,0),
(10199,21094,0,0,0,0,0,2000001653,0,0,0,19780,10,0,'Off-Duty Engineer - Yikes!  Someone call the fire marshal!  Medic!!!  Is there a doctor in the house?',0,0,0,0),
(10199,21406,0,45,10170,0,0,0,0,0,0,19780,10,7,'Doc - Face Off-Duty Engineer and vice versa',0,0,0,0),
(10199,28391,0,36,0,0,0,0,0,0,0,19780,10,3,'Off-Duty Engineer - Face Boots',0,0,0,0),
(10199,34469,0,35,6,0,0,0,0,0,0,19780,10,0,'Off-Duty Engineer - Send AI Event 6 to self (Resumes OOC emotes in AI)',0,0,0,0),
(10199,100125,0,25,0,0,0,0,0,0,0,19780,10,0,'Off-Duty Engineer - Set Run Off',0,0,0,0),
(10199,100125,1,3,0,0,0,0,0,0,0,19780,10,0,'Off-Duty Engineer - Move',3080.57,3681.9878,143.36987,2.216568231582641601),

-- Doc 19623
(10199,24859,0,0,0,0,0,2000001654,0,0,0,19623,12,0,'Doc - I''m a doctor!  What seems to be the problem?',0,0,0,0),
(10199,28391,0,36,0,0,0,0,0,0,0,19623,12,3,'Doc - Face Boots',0,0,0,0),
(10199,29719,0,0,0,0,0,2000001655,0,0,0,19623,12,0,'Doc - Oh!  Someone needs to get those fires out so I can get in there and save that goblin!',0,0,0,0),
(10199,49203,0,0,0,0,0,2000001656,0,0,0,19623,12,0,'Doc - Right... let me in there!',0,0,0,0),
(10199,50281,0,25,1,0,0,0,0,0,0,19623,12,0,'Doc - Set Run On',0,0,0,0),
(10199,50281,1,3,0,0,0,0,0,0,0,19623,12,0,'Doc - Move',3083.333,3685.9375,142.49771,100),
(10199,50281,1,42,0,0,0,0,0,0,0,19623,12,0,'Doc - Set Equipment',0,0,0,0),
(10199,51891,0,36,0,0,0,0,0,0,0,19623,12,3,'Doc - Face Boots',0,0,0,0),
(10199,54047,0,0,0,0,0,2000001657,0,0,0,19623,5,0,'Doc - Everyone clear!',0,0,0,0),
(10199,57578,0,15,34332,0,0,0,0,0,0,19623,5,7,'Doc - Cast Defibrillate',0,0,0,0),
(10199,66203,0,0,0,0,0,2000001658,0,0,0,19623,5,0,'Doc - Come on!  Clear!',0,0,0,0),
(10199,69703,0,15,34332,0,0,0,0,0,0,19623,5,7,'Doc - Cast Defibrillate',0,0,0,0),
(10199,74703,0,0,0,0,0,2000001659,0,0,0,19623,5,0,'Doc - Dammit, Boots, I''m a doctor not a priest!  Clear!!!',0,0,0,0),
(10199,79437,0,15,34332,0,0,0,0,0,0,19623,5,7,'Doc - Cast Defibrillate',0,0,0,0),
(10199,90516,0,0,0,0,0,2000001660,0,0,0,19623,5,0,'Doc - I''ve got a pulse!',0,0,0,0),
(10199,99234,0,25,0,0,0,0,0,0,0,19623,5,0,'Doc - Set Run Off',0,0,0,0),
(10199,99234,1,3,0,0,0,0,0,0,0,19623,5,0,'Doc - Move',3086.5122,3681.9973,142.64993,100),
(10199,102156,0,3,0,0,0,0,0,0,0,19623,12,0,'Doc - Move',3089.3896,3684.7473,143.46904,100),
(10199,103719,0,36,1,0,0,0,0,0,0,19623,12,0,'Doc - Reset Facing',0,0,0,0),
(10199,103719,0,42,0,0,0,13861,0,0,0,19623,12,0,'Doc - Set Equipment',0,0,0,0),

-- Bill 19621
(10199,0,0,21,1,0,0,0,0,0,0,19621,5,0,'Bill - Set Active object on',0,0,0,0),
(10199,24750,0,25,1,0,0,0,0,0,0,19621,5,0,'Bill - Set Run On',0,0,0,0),
(10199,24750,1,20,2,0,0,0,0,0,0,19621,5,0,'Bill - Set Waypoint Movement PathId 0',0,0,0,0),
(10199,30812,1,20,2,1,0,0,0,0,0,19621,60,0,'Bill - Set Waypoint Movement PathId 1',0,0,0,0),
(10199,39734,0,36,0,0,0,0,0,0,0,19621,6,3,'Bill - Face Boots',0,0,0,0),
(10199,39859,0,0,0,0,0,2000001661,0,0,0,19621,6,0,'Bill - Someone called?',0,0,0,0),
(10199,41781,0,15,34326,0,0,0,0,0,0,19621,6,7,'Bill - Cast Frost Nova',0,0,0,0),
(10199,42984,0,32,0,0,0,0,0,0,0,19621,6,0,'Bill - Resume Waypoints',0,0,0,0),
(10199,44903,0,15,34326,0,0,0,0,0,0,19621,6,7,'Bill - Cast Frost Nova',0,0,0,0), -- 44203
(10199,45422,0,32,0,0,0,0,0,0,0,19621,6,0,'Bill - Resume Waypoints',0,0,0,0),
(10199,47844,0,15,34326,0,0,0,0,0,0,19621,6,7,'Bill - Cast Frost Nova',0,0,0,0),
(10199,98906,0,15,37993,0,0,0,0,0,0,19621,6,7,'Bill - Cast Liquid Blast Visual',0,0,0,0),
(10199,103000,0,21,1,0,0,0,0,0,0,19621,5,0,'Bill - Set Active object off',0,0,0,0),

-- Nadja 22279 and Soren 22280
(10199,20203,0,20,2,1,0,0,0,0,0,22279,40,0,'Nadja - Set Waypoint Movement PathId 1',0,0,0,0),
(10199,20375,0,0,0,0,0,2000001662,0,0,0,22279,40,0,'Nadja - Daddy!',0,0,0,0),
(10199,20375,0,0,0,0,0,2000001663,0,0,0,22280,40,0,'Soren - Dad!',0,0,0,0),
(10199,99234,0,1,11,0,0,0,0,0,0,22279,15,0,'Nadja - OneShotLaugh',0,0,0,0),
(10199,99234,0,1,11,0,0,0,0,0,0,22280,15,0,'Soren - OneShotLaugh',0,0,0,0),
(10199,103719,0,20,2,0,0,0,0,0,0,22279,15,0,'Nadja - Set Waypoint Movement PathId 0',0,0,0,0),

-- GOBS
(10199,20203,0,9,161347,100,0,0,0,0,0,0,0,64,'Spawn Fire 1',0,0,0,0),
(10199,20203,0,9,161348,100,0,0,0,0,0,0,0,64,'Spawn Fire 2',0,0,0,0),
(10199,20203,0,9,161349,100,0,0,0,0,0,0,0,64,'Spawn Fire 3',0,0,0,0),

(10199,20203,0,9,161350,100,0,0,0,0,0,0,0,64,'Spawn Smoke 1',0,0,0,0),
(10199,42187,0,9,161351,100,0,0,0,0,0,0,0,64,'Spawn Smoke 2',0,0,0,0),
(10199,44609,0,9,161352,100,0,0,0,0,0,0,0,64,'Spawn Smoke 3',0,0,0,0),
(10199,48250,0,9,161353,100,0,0,0,0,0,0,0,64,'Spawn Smoke 4',0,0,0,0),

(10199,41781,0,40,0,0,0,0,0,0,0,0,161347,23,'Despawn Fire 1',0,0,0,0),
(10199,44203,0,40,0,0,0,0,0,0,0,0,161348,23,'Despawn Fire 2',0,0,0,0),
(10199,47844,0,40,0,0,0,0,0,0,0,0,161349,23,'Despawn Fire 3',0,0,0,0),

(10199,98094,0,40,0,0,0,0,0,0,0,0,161350,23,'Despawn Smoke 1',0,0,0,0),
(10199,99234,0,40,0,0,0,0,0,0,0,0,161351,23,'Despawn Smoke 2',0,0,0,0),
(10199,99234,0,40,0,0,0,0,0,0,0,0,161352,23,'Despawn Smoke 3',0,0,0,0),
(10199,99234,0,40,0,0,0,0,0,0,0,0,161353,23,'Despawn Smoke 4',0,0,0,0);





