-- ----------------------------------------------------------------
-- 24015_2017-05-10_15-30-21-Pandaren58HellfirePeninsula_parsed.txt
-- ----------------------------------------------------------------
-- 13044 Master Herb Pool - Hellfire Peninsula

-- Burning Horde Siege Engine - despawned by default
UPDATE gameobject SET spawntimesecsmin=-180, spawntimesecsmax=-180 WHERE id=182817;

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16472, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 1");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200465, 16472, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 1"),
(23748, 16472, 0, "Hellfire Peninsula - Salvageable Wood - Spawn 1"),
(23784, 16473, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 1");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16473, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 2");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200467, 16473, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 2"),
(23572, 16473, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 2");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16474, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 3");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200468, 16474, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 3"),
(23583, 16474, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 3");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16475, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 4");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200469, 16475, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 4"),
(23567, 16475, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 4");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16476, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 5");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200471, 16476, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 5"),
(23591, 16476, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 5");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16477, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 6");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200472, 16477, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 6"),
(23570, 16477, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 6");

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200473, 13044, 0, "Hellfire Peninsula - Felweed");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16478, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 7");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200477, 16478, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 7"),
(23585, 16478, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 7");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16479, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 8");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200478, 16479, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 8"),
(23571, 16479, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 8");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16480, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 9");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200485, 16480, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 9"),
(23569, 16480, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 9");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16482, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 10");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200486, 16482, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 10"),
(23586, 16482, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 10");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16483, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 11");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200487, 16483, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 11"),
(200502, 16495, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 11"),
(23800, 16483, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 11");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16484, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 12");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200488, 16484, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 12"),
(23791, 16484, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 12");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16485, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 13");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200489, 16485, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 13"),
(23789, 16485, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 13");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16486, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 14");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200490, 16486, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 14"),
(23786, 16486, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 14");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16487, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 15");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200492, 16487, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 15"),
(23778, 16487, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 15");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16488, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 16");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200494, 16488, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 16"),
(23779, 16488, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 16");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16489, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 17");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200495, 16489, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 17"),
(23799, 16489, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 17");

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200496, 13044, 0, "Hellfire Peninsula - Dreaming Glory");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16490, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 18");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200497, 16490, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 18"),
(23774, 16490, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 18");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16491, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 19");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200498, 16491, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 19"),
(23795, 16491, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 19");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16492, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 20");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200499, 16492, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 20"),
(23782, 16492, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 20");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16493, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 21");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200500, 16493, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 21"),
(23801, 16493, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 21");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16494, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 22");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200501, 16494, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 22"),
(23780, 16494, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 22");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(16495, 1, "Hellfire Peninsula - Salvageable Wood/Metal - Spawn 23");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200503, 16495, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 23"),
(23770, 16495, 0, "Hellfire Peninsula - Salvageable Metal - Spawn 23");

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200504, 13044, 0, "Hellfire Peninsula - Mountain Silversage");

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(200505, 13044, 0, "Hellfire Peninsula - Felweed");

INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
 -- Salvageable Metal
(200465,182937,530,1,-110.8529,2143.473,96.75474,4.956738,0,0,-0.6156607,0.7880114,180,180,100,1), -- .go xyz -110.8529 2143.473 96.75474 530
 -- Burning Horde Siege Engine
(200466,182817,530,1,-360.7708,2705.56,42.29053,0.6283169,0,0,0.3090162,0.9510568,-180,-180,100,1), -- .go xyz -360.7708 2705.56 42.29053 530
 -- Salvageable Metal
(200467,182798,530,1,-380.3319,2753.022,27.24293,5.009095,0,0,-0.5948229,0.8038568,180,180,100,1), -- .go xyz -380.3319 2753.022 27.24293 530
 -- Salvageable Metal
(200468,182797,530,1,-338.2308,2707.923,28.67361,2.460913,0,0,0.9426413,0.3338076,180,180,100,1), -- .go xyz -338.2308 2707.923 28.67361 530
 -- Salvageable Metal
(200469,182798,530,1,-276.9362,2409.101,48.62935,2.757613,0,0,0.9816265,0.1908124,180,180,100,1), -- .go xyz -276.9362 2409.101 48.62935 530
 -- Burning Horde Siege Engine
(200470,182817,530,1,-303.0657,2397.024,54.56127,3.036838,0,0,0.9986286,0.05235322,-180,-180,100,1), -- .go xyz -303.0657 2397.024 54.56127 530
 -- Salvageable Metal
(200471,182797,530,1,-356.87,2333.282,47.29356,3.211419,0,0,-0.9993906,0.03490613,180,180,100,1), -- .go xyz -356.87 2333.282 47.29356 530
 -- Salvageable Metal
(200472,182798,530,1,-308.1305,2387.883,46.23891,4.485497,0,0,-0.782608,0.6225148,180,180,100,1), -- .go xyz -308.1305 2387.883 46.23891 530
 -- Felweed
(200473,181270,530,1,-389.2929,2375.257,42.16885,2.687807,0,0,0.97437,0.2249513,45,90,100,1), -- .go xyz -389.2929 2375.257 42.16885 530
 -- Hellfire Spineleaf
(200474,181372,530,1,-393.4572,2475.547,41.14463,1.431168,0,0,0.6560583,0.7547102,180,180,100,1), -- .go xyz -393.4572 2475.547 41.14463 530
 -- Hellfire Spineleaf
(200475,181372,530,1,-421.7987,2427.96,39.625,0.9948372,0,0,0.4771585,0.8788173,180,180,100,1), -- .go xyz -421.7987 2427.96 39.625 530
 -- Salvageable Wood
(200476,182799,530,1,-337.6131,2595.075,44.89375,1.867502,0,0,0.8038568,0.5948228,180,180,100,1), -- .go xyz -337.6131 2595.075 44.89375 530
 -- Salvageable Metal
(200477,182797,530,1,-346.2938,2586.183,46.78684,3.979355,0,0,-0.9135447,0.4067384,180,180,100,1), -- .go xyz -346.2938 2586.183 46.78684 530
 -- Salvageable Metal
(200478,182798,530,1,-322.5699,2404.005,44.11963,5.742135,0,0,-0.2672377,0.9636307,180,180,100,1), -- .go xyz -322.5699 2404.005 44.11963 530
 -- Hellfire Spineleaf
(200479,181372,530,1,-339.542,2408.049,43.0724,3.211419,0,0,-0.9993906,0.03490613,180,180,100,1), -- .go xyz -339.542 2408.049 43.0724 530
 -- Hellfire Spineleaf
(200480,181372,530,1,-376.9642,2461.872,40.47638,4.310966,0,0,-0.8338852,0.5519379,180,180,100,1), -- .go xyz -376.9642 2461.872 40.47638 530
 -- Salvageable Metal
(200481,182798,530,1,-361.8156,2559.866,48.12726,5.602507,0,0,-0.333807,0.9426414,180,180,100,1), -- .go xyz -361.8156 2559.866 48.12726 530
 -- Hellfire Spineleaf
(200482,181372,530,1,-363.6239,2539.018,46.57136,6.108654,0,0,-0.08715534,0.9961947,180,180,100,1), -- .go xyz -363.6239 2539.018 46.57136 530
 -- Salvageable Wood
(200483,182799,530,1,-344.6161,2538.366,45.75002,3.804818,0,0,-0.9455185,0.3255684,180,180,100,1), -- .go xyz -344.6161 2538.366 45.75002 530
 -- Salvageable Metal
(200484,182798,530,1,-333.9286,2561.941,46.1121,3.263772,0,0,-0.9981346,0.06105176,180,180,100,1), -- .go xyz -333.9286 2561.941 46.1121 530
 -- Salvageable Metal
(200485,182798,530,1,-329.7991,2493.276,26.34254,0.06981169,0,0,0.03489876,0.9993908,180,180,100,1), -- .go xyz -329.7991 2493.276 26.34254 530
 -- Salvageable Metal
(200486,182797,530,1,-305.3879,2536.147,42.04373,5.253442,0,0,-0.4924231,0.870356,180,180,100,1), -- .go xyz -305.3879 2536.147 42.04373 530
 -- Salvageable Metal
(200487,182937,530,1,-141.8711,2568.403,41.01387,4.101525,0,0,-0.8870106,0.4617491,180,180,100,1), -- .go xyz -141.8711 2568.403 41.01387 530
 -- Salvageable Metal
(200488,182937,530,1,-142.5101,2920.252,22.24562,1.117009,0,0,0.5299187,0.8480484,180,180,100,1), -- .go xyz -142.5101 2920.252 22.24562 530
 -- Salvageable Metal
(200489,182937,530,1,-171.2676,2802.753,29.94288,2.234018,0,0,0.8987932,0.4383728,180,180,100,1), -- .go xyz -171.2676 2802.753 29.94288 530
 -- Salvageable Metal
(200490,182937,530,1,-148.8681,2772.121,39.52442,0.4537851,0,0,0.2249508,0.9743701,180,180,100,1), -- .go xyz -148.8681 2772.121 39.52442 530
 -- Salvageable Wood
(200491,182936,530,1,-111.1681,2441.389,51.67096,4.153885,0,0,-0.8746195,0.4848101,180,180,100,1), -- .go xyz -111.1681 2441.389 51.67096 530
 -- Salvageable Metal
(200492,182938,530,1,-129.0836,2465.467,47.37651,6.0912,0,0,-0.09584522,0.9953963,180,180,100,1), -- .go xyz -129.0836 2465.467 47.37651 530
 -- Salvageable Metal
(200493,182938,530,1,-125.5226,2489.887,46.90596,3.717554,0,0,-0.9588194,0.2840165,180,180,100,1), -- .go xyz -125.5226 2489.887 46.90596 530
 -- Salvageable Metal
(200494,182938,530,1,-159.8712,2506.636,43.83366,3.368496,0,0,-0.9935713,0.1132084,180,180,100,1), -- .go xyz -159.8712 2506.636 43.83366 530
 -- Salvageable Metal
(200495,182937,530,1,-159.8314,2528.962,42.73311,5.881761,0,0,-0.1993675,0.9799248,180,180,100,1), -- .go xyz -159.8314 2528.962 42.73311 530
 -- Dreaming Glory
(200496,181271,530,1,-158.3342,2694.866,41.20483,4.01426,0,0,-0.9063072,0.4226195,45,90,100,1), -- .go xyz -158.3342 2694.866 41.20483 530
 -- Salvageable Metal
(200497,182938,530,1,-179.1962,2662.683,40.92733,4.06662,0,0,-0.8949337,0.4461992,180,180,100,1), -- .go xyz -179.1962 2662.683 40.92733 530
 -- Salvageable Metal
(200498,182937,530,1,-169.8094,2632.885,40.83386,1.762782,0,0,0.7716246,0.6360782,180,180,100,1), -- .go xyz -169.8094 2632.885 40.83386 530
 -- Salvageable Metal
(200499,182938,530,1,-136.0144,2650.636,47.66688,4.188792,0,0,-0.866025,0.5000008,180,180,100,1), -- .go xyz -136.0144 2650.636 47.66688 530
 -- Salvageable Metal
(200500,182937,530,1,-125.6514,2620.123,47.81688,1.151916,0,0,0.5446386,0.8386708,180,180,100,1), -- .go xyz -125.6514 2620.123 47.81688 530
 -- Salvageable Metal
(200501,182938,530,1,-143.668,2606.719,43.60686,4.555311,0,0,-0.7604055,0.6494485,180,180,100,1), -- .go xyz -143.668 2606.719 43.60686 530
 -- Salvageable Wood
(200502,182936,530,1,-141.1273,2569.239,40.94544,1.082103,0,0,0.5150375,0.8571676,180,180,100,1), -- .go xyz -141.1273 2569.239 40.94544 530
 -- Salvageable Metal
(200503,182938,530,1,-108.5033,2073.529,99.75175,6.03884,0,0,-0.1218691,0.9925462,180,180,100,1), -- .go xyz -108.5033 2073.529 99.75175 530
 -- Mountain Silversage
(200504,176586,530,1,334.6303,2515.02,161.6396,2.251473,0,0,0.902585,0.4305117,45,90,100,1), -- .go xyz 334.6303 2515.02 161.6396 530
 -- Felweed
(200505,181270,530,1,134.0439,2384.338,51.8842,2.076939,0,0,0.8616285,0.5075394,45,90,100,1), -- .go xyz 134.0439 2384.338 51.8842 530
 -- Hellfire Fire
(200506,183816,530,1,-82.97586,1873.247,79.14917,4.834563,0,0,-0.6626196,0.7489561,-90,-90,100,1), -- .go xyz -82.97586 1873.247 79.14917 530
 -- Hellfire Fire
(200507,183816,530,1,-78.30875,1886.154,79.82458,2.583081,0,0,0.9612608,0.2756405,-90,-90,100,1); -- .go xyz -78.30875 1886.154 79.82458 530


