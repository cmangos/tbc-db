-- initial entry quests for Netherwing
UPDATE quest_template SET RequiredSkill=0,RequiredSkillValue=0 WHERE entry IN(11013);
UPDATE quest_template SET RewMaxRepValue1=0 WHERE entry IN(10870);

-- A Slow Death
UPDATE creature_loot_template SET ChanceOrQuestChance=-33 WHERE item IN(32502); -- pre 3.0.8

-- Booterang
UPDATE quest_template SET ReqSpellCast1=0 WHERE entry IN(11055);

-- The Soul Cannon of Reth'hedron improvement
DELETE FROM dbscripts_on_creature_movement WHERE id=2310201 AND delay=9 AND command=45;
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('2310201', '9', '45', '10090', '0', '0', '23100', '100', '4', '0', '0', '0', '0', '0', '0', '0', '0', 'Start relay script at Flawless Arcane Elemental');

INSERT INTO dbscripts_on_relay(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('10090', '1', '0', '0', '0', '0', '23093', '100', '2', '2000005824', '0', '0', '0', '0', '0', '0', '0', 'Flawless Arcane Elemental say at Sarthis'),
('10090', '3', '15', '35519', '0', '0', '23093', '100', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Flawless Arcane Elemental cast White Beam at Sarthis'),
('10090', '7', '15', '5', '0', '0', '23093', '100', '7', '0', '0', '0', '0', '0', '0', '0', '0', 'Flawless Arcane Elemental instakill Sarthis'),
('10090', '7', '47', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Flawless Arcane Elemental interrupt channel'),
('10090', '7', '5', '46', '256', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Flawless Arcane Elemental remove unitflag 256');

DELETE FROM dbscript_string WHERE entry IN(2000005824);
INSERT INTO dbscript_string(entry,content_default) VALUES
(2000005824,'I require your life essence to maintain my existence in this realm.');

-- Deadliest Trap Ever Laid scripts data
INSERT INTO dbscript_random_templates(id, type, target_id, chance, comments) VALUES
(10049,0,-101,15,'Dragonmaw Skybreaker - Random Aggro yell'),
(10049,0,-102,15,'Dragonmaw Skybreaker - Random Aggro yell'),
(10049,0,-105,15,'Dragonmaw Skybreaker - Random Aggro yell'),
(10049,0,-1588,15,'Dragonmaw Skybreaker - Random Aggro yell'),
(10049,0,-1589,15,'Dragonmaw Skybreaker - Random Aggro yell'),
(10049,0,0,25,'Dragonmaw Skybreaker - Random Aggro yell');

DELETE FROM creature_linking_template WHERE entry IN(23435,23453);
INSERT INTO creature_linking_template(entry, map, master_entry, flag, search_range) VALUES
(23435, 530, 23434, 3, 0),
(23453, 530, 23452, 3, 0);

UPDATE creature_template SET UnitFlags=UnitFlags|32768 WHERE entry IN(23434,23452);
UPDATE creature_template SET MovementType=0,HealthMultiplier=3,PowerMultiplier=1,MinLevelHealth=19626,MaxLevelHealth=20958 WHERE entry = 23435;
UPDATE creature_template SET MovementType=0,HealthMultiplier=3,PowerMultiplier=1,MinLevelHealth=19626,MaxLevelHealth=20958 WHERE entry = 23453;
UPDATE creature_template SET MovementType=2,InhabitType=4 WHERE entry IN(23440,23441);
UPDATE creature_template SET HealthMultiplier=10,PowerMultiplier=10,DamageMultiplier=1.2 WHERE entry = 23434;
UPDATE creature_template SET HealthMultiplier=10,PowerMultiplier=10,DamageMultiplier=1.2,MinLevelHealth=57440,MaxLevelHealth=57440 WHERE entry = 23452;
UPDATE creature_template SET HealthMultiplier=1.3,PowerMultiplier=1,DamageMultiplier=1.25,SpeedRun=9.7/7,SpeedWalk=2.5/2.5,Detection=25,MinLevelHealth=7266,MaxLevelHealth=7266 WHERE entry = 23440;
UPDATE creature_template SET HealthMultiplier=1.3,PowerMultiplier=1,DamageMultiplier=1.25,SpeedRun=9.7/7,SpeedWalk=2.5/2.5,Detection=25,MinLevelHealth=7266,MaxLevelHealth=7266 WHERE entry = 23441;
DELETE FROM creature_template_addon WHERE entry IN(23440,23441);
INSERT INTO creature_template_addon(entry,mount) VALUES
(23440, 20684),
(23441, 20684);

DELETE FROM creature_movement_template WHERE entry IN(23434,23452);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23452,0,1,-3043.054,759.7127,-9.990043,0,0,100),
(23452,0,2,-3048.785,739.1032,-9.615043,0,0,100),
(23452,0,3,-3047.968,718.3279,-10.39042,0,0,100),
(23452,0,4,-3060.013,682.913,-12.94973,0,0,100),
(23452,0,5,-3080.659,675.9093,-13.93592,0,0,100),
(23452,0,6,-3096.214,680.7059,-17.85547,1000,0,5.969026);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23434,0,1,-4075.548,1081.408,33.41139,0,0,100),
(23434,0,2,-4066.637,1067.338,30.30718,0,0,2.234021);

DELETE FROM creature_movement_template WHERE entry IN(23440,23441);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23441,0,1,-3277.004,696.5723,35.61721,0,0,100),
(23441,0,2,-3260.446,692.0886,43.37934,0,0,100),
(23441,0,3,-3243.889,687.6049,51.14147,0,0,100),
(23441,0,4,-3202.349,669.6609,51.14147,0,0,100),
(23441,0,5,-3183.175,660.774,51.14147,0,0,100),
(23441,0,6,-3155.911,659.907,33.1137,0,0,100),
(23441,0,7,-3132.411,658.9521,3.419254,0,0,100),
(23441,0,8,-3111.927,665.2521,-7.941859,0,0,100),
(23441,0,9,-3101.477,664.6626,-10.55297,0,0,100),
(23441,0,10,-3101.477,664.6626,-10.55297,1000,7,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23441,1,1,-2953.928,533.5043,92.35249,0,0,100),
(23441,1,2,-2987.542,575.9792,58.82146,0,0,100),
(23441,1,3,-3021.155,618.4541,25.29044,0,0,100),
(23441,1,4,-3036.062,656.704,4.762658,0,0,100),
(23441,1,5,-3075.419,678.9683,-13.15401,0,0,100),
(23441,1,6,-3083.369,683.9141,-15.12623,0,0,100),
(23441,1,7,-3083.369,683.9141,-15.12623,1000,7,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23441,2,1,-3276.309,709.3771,25.12147,0,0,100),
(23441,2,2,-3259.423,708.5354,38.91116,0,0,100),
(23441,2,3,-3242.536,707.6937,52.70085,0,0,100),
(23441,2,4,-3219.229,703.2952,52.70085,0,0,100),
(23441,2,5,-3185.632,695.4233,37.25641,0,0,100),
(23441,2,6,-3147.685,685.7768,19.58973,0,0,100),
(23441,2,7,-3107.89,674.2289,6.561962,0,0,100),
(23441,2,8,-3107.89,674.2289,6.561962,1000,7,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23441,3,1,-2992.797,545.8665,70.36189,0,0,100),
(23441,3,2,-3006.446,564.1875,48.47219,0,0,100),
(23441,3,3,-3020.096,582.5085,26.5825,0,0,100),
(23441,3,4,-3037.433,610.5715,8.026941,0,0,100),
(23441,3,5,-3054.981,636.631,1.888052,0,0,100),
(23441,3,6,-3081.354,670.811,-6.723061,0,0,100),
(23441,3,7,-3081.354,670.811,-6.723061,1000,7,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23441,4,1,-3287.957,725.9796,51.60571,0,0,100),
(23441,4,2,-3271.62,722.7448,48.81123,0,0,100),
(23441,4,3,-3255.283,719.5101,46.01675,0,0,100),
(23441,4,4,-3222.521,717.1377,45.51199,0,0,100),
(23441,4,5,-3198.026,711.5237,35.56776,0,0,100),
(23441,4,6,-3167.25,706.0853,16.98442,0,0,100),
(23441,4,7,-3126.632,691.3753,-8.571138,0,0,100),
(23441,4,8,-3099.939,682.7796,-15.79336,0,0,100),
(23441,4,9,-3099.939,682.7796,-15.79336,1000,7,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23441,5,1,-3293.602,759.0432,44.21932,0,0,100),
(23441,5,2,-3268.516,750.7678,33.43524,0,0,100),
(23441,5,3,-3243.43,742.4925,22.65116,0,0,100),
(23441,5,4,-3213.966,746.0507,22.65116,0,0,100),
(23441,5,5,-3189.98,744.0554,26.48449,0,0,100),
(23441,5,6,-3150.682,757.6776,29.95671,0,0,100),
(23441,5,7,-3120.725,761.848,35.48449,0,0,100),
(23441,5,8,-3104.629,754.3845,29.56783,0,0,100),
(23441,5,9,-3082.14,720.248,3.762264,0,0,100),
(23441,5,10,-3085.231,701.8859,-12.29329,0,0,100),
(23441,5,11,-3089.73,692.963,-16.51551,0,0,100),
(23441,5,12,-3089.73,692.963,-16.51551,1000,7,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23441,6,1,-3286.902,732.0245,27.88107,0,0,100),
(23441,6,2,-3268.252,731.8698,32.24829,0,0,100),
(23441,6,3,-3249.601,731.7151,36.61551,0,0,100),
(23441,6,4,-3226.119,729.245,36.61551,0,0,100),
(23441,6,5,-3200.478,728.3207,36.61551,0,0,100),
(23441,6,6,-3154.492,724.6342,28.42106,0,0,100),
(23441,6,7,-3122.896,709.3549,13.36551,0,0,100),
(23441,6,8,-3108.942,698.5323,0.143284,0,0,100),
(23441,6,9,-3108.942,698.5323,0.143284,1000,7,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23441,7,1,-3016.981,534.4969,21.01351,0,0,100),
(23441,7,2,-3030.63,557.1302,34.2455,0,0,100),
(23441,7,3,-3044.279,579.7635,47.4775,0,0,100),
(23441,7,4,-3056.184,615.4034,25.78305,0,0,100),
(23441,7,5,-3071.745,646.9954,5.366384,0,0,100),
(23441,7,6,-3085.052,661.1487,-9.10583,0,0,100),
(23441,7,7,-3085.052,661.1487,-9.10583,1000,7,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23441,8,1,-3269.654,687.1747,33.11995,0,0,100),
(23441,8,2,-3247.28,681.7934,46.75871,0,0,100),
(23441,8,3,-3224.905,676.4121,60.39746,0,0,100),
(23441,8,4,-3197.438,662.9752,60.39745,0,0,100),
(23441,8,5,-3175.965,654.6516,60.39745,0,0,100),
(23441,8,6,-3159.431,646.17,60.39745,0,0,100),
(23441,8,7,-3121.375,624.6077,37.00856,0,0,100),
(23441,8,8,-3101.53,653.3373,2.008561,0,0,100),
(23441,8,9,-3101.53,653.3373,2.008561,1000,7,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23440,0,1,-4063.342,928.9622,82.92392,0,0,100),
(23440,0,2,-4063.14,960.3398,63.31019,0,0,100),
(23440,0,3,-4062.938,991.7175,43.69646,0,0,100),
(23440,0,4,-4068.471,1033.19,43.69646,0,0,100),
(23440,0,5,-4063.366,1066.369,36.36312,0,0,100),
(23440,0,6,-4063.366,1066.369,36.36312,1000,7,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23440,1,1,-4101.632,942.9062,58.77553,0,0,100),
(23440,1,2,-4100.46,962.1771,63.36372,0,0,100),
(23440,1,3,-4099.288,981.4479,67.95191,0,0,100),
(23440,1,4,-4094.489,1028.012,51.11858,0,0,100),
(23440,1,5,-4088.328,1055.027,41.36858,0,0,100),
(23440,1,6,-4088.328,1055.027,41.36858,1000,7,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23440,2,1,-3996.584,984.6102,39.35212,0,0,100),
(23440,2,2,-3998.63,983.618,49.09008,0,0,100),
(23440,2,3,-3999.102,983.3895,51.33347,0,0,100),
(23440,2,4,-3990.658,1017.784,56.13903,0,0,100),
(23440,2,5,-4006.103,1049.133,55.55569,0,0,100),
(23440,2,6,-4019.034,1080.705,35.30568,0,0,100),
(23440,2,7,-4053.284,1074.483,33.61127,0,0,100),
(23440,2,8,-4053.284,1074.483,33.61127,1000,7,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23440,3,1,-4059.524,924.002,65.44735,0,0,100),
(23440,3,2,-4050.938,959.9636,54.90167,0,0,100),
(23440,3,3,-4042.351,995.9251,44.35599,0,0,100),
(23440,3,4,-4043.522,1043.276,44.35599,0,0,100),
(23440,3,5,-4053.778,1066.186,35.71711,0,0,100),
(23440,3,6,-4053.778,1066.186,35.71711,1000,7,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23440,4,1,-4037.429,946.7924,83.17754,0,0,100),
(23440,4,2,-4021.847,968.2917,63.01559,0,0,100),
(23440,4,3,-4006.266,989.791,42.85365,0,0,100),
(23440,4,4,-3996.35,1025.583,42.85365,0,0,100),
(23440,4,5,-4003.674,1055.279,42.85365,0,0,100),
(23440,4,6,-4028.947,1082.609,42.85365,0,0,100),
(23440,4,7,-4045.464,1078.811,39.57587,0,0,100),
(23440,4,8,-4045.464,1078.811,39.57587,1000,7,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23440,5,1,-4088.804,925.6664,67.03867,0,0,100),
(23440,5,2,-4088.299,959.6094,60.73994,0,0,100),
(23440,5,3,-4087.793,993.5523,54.44122,0,0,100),
(23440,5,4,-4083.712,1036.664,35.0801,0,0,100),
(23440,5,5,-4081.107,1055.635,31.91343,0,0,100),
(23440,5,6,-4081.107,1055.635,31.91343,1000,7,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23440,6,1,-4037.43,934.6457,40.03371,0,0,100),
(23440,6,2,-4038.25,962.934,54.8684,0,0,100),
(23440,6,3,-4039.07,991.2224,69.70309,0,0,100),
(23440,6,4,-4044.945,1026.479,51.56422,0,0,100),
(23440,6,5,-4046.667,1054.005,34.70309,0,0,100),
(23440,6,6,-4054.33,1074.163,32.84199,0,0,100),
(23440,6,7,-4054.33,1074.163,32.84199,1000,7,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23440,7,1,-4079.224,931.5303,76.49546,0,0,100),
(23440,7,2,-4075.215,959.8802,56.39827,0,0,100),
(23440,7,3,-4071.206,988.23,36.30107,0,0,100),
(23440,7,4,-4066.255,1017.488,29.63441,0,0,100),
(23440,7,5,-4060.89,1066.8,31.10663,0,0,100),
(23440,7,6,-4060.89,1066.8,31.10663,1000,7,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23440,8,1,-4108.912,938.1812,94.50812,0,0,100),
(23440,8,2,-4113.976,970.8438,72.16011,0,0,100),
(23440,8,3,-4119.04,1003.506,49.8121,0,0,100),
(23440,8,4,-4113.92,1050.867,36.72876,0,0,100),
(23440,8,5,-4099.373,1059.496,33.64544,0,0,100),
(23440,8,6,-4093.058,1059.025,31.53433,0,0,100),
(23440,8,7,-4093.058,1059.025,31.53433,1000,7,100);


