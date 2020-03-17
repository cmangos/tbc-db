-- ------------------------------------------------
-- 1.13.3.33302_ScarletMonasteryExterior_parsed.txt
-- ------------------------------------------------
-- 21650 Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - Master Pool
-- 21651 Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #1
-- 2027 Master Mineral Pool - Tirisfal Glades
-- 13020 Master Herb Pool - Tirisfal Glades
-- 1802 Western Plaguelands - Blood of Heroes (176213)
-- 1803 Eastern Plaguelands - Blood of Heroes (176213)

INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
 -- Earthroot
(170021,1619,0,1,1963.523,-625.2772,61.48457,0.5235979,0,0,0.2588186,0.9659259,45,90,100,1), -- .go xyz 1963.523 -625.2772 61.48457 0
 -- Blood of Heroes
(170022,176213,0,1,1645.174,-710.9218,55.31115,0.4712385,0,0,0.2334452,0.97237,7200,7200,100,1), -- .go xyz 1645.174 -710.9218 55.31115 0
 -- Food Crate
(170023,153472,0,1,1741.417,-738.5953,59.64463,0.7853968,0,0,0.3826828,0.9238798,900,900,100,1); -- .go xyz 1741.417 -738.5953 59.64463 0

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170021, 13020, 0, "Tirisfal Glades - Earthroot");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170022, 1802, 0, "Blood of Heroes - Western Plaguelands");
INSERT INTO pool_template (entry, max_limit, description) VALUES
(21658, 1, "Tirisfal Glades - Food Crate (153472) / Water Barrel (???) - #8");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170023, 21658, 0, "Tirisfal Glades - Food Crate (153472) - #8");
INSERT INTO pool_pool (pool_id, mother_pool, chance, description) VALUES
(21658, 21650, 0, "Tirisfal Glades - Food Crate (153472) / Water Barrel (???) - #8");

-- ----------------------------------------------------------
-- dump_classic_Wow(1.13.2.31830)-14708_1568835879_parsed.txt
-- ----------------------------------------------------------
-- 40025 Burning Steppes - Solid Chest Pool
-- 13004 Master Herb Pool - Burning Steppes
-- 13015 Master Herb Pool - Searing Gorge
-- 40019 Searing Gorge - Solid Chest Pool
-- 13025 Master Herb Pool - Azshara
-- 2035 Master Mineral Pool - Azshara
-- 40037 Azshara - Solid Chest Pool
-- 13024 Master Herb Pool - Ashenvale
-- 39913 Ashenvale (18-30) - Master Chest Pool

INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
 -- Solid Chest
(170024,153453,0,1,-7971.752,-1322.263,132.9528,4.223697,0,0,-0.8571672,0.5150382,7200,7200,100,1), -- .go xyz -7971.752 -1322.263 132.9528 0
 -- Sungrass
(170025,142142,0,1,-8156.499,-2804.221,135.6109,4.293513,0,0,-0.8386698,0.5446402,45,90,100,1), -- .go xyz -8156.499 -2804.221 135.6109 0
 -- Volcanic Ash
(170026,181098,0,1,-8055.893,-2556.458,136.9308,5.864307,0,0,-0.2079115,0.9781476,180,300,100,1), -- .go xyz -8055.893 -2556.458 136.9308 0
 -- Sungrass
(170027,142142,0,1,-8206.89,-2190.296,131.9173,6.056293,0,0,-0.113203,0.9935719,45,90,100,1), -- .go xyz -8206.89 -2190.296 131.9173 0
 -- Thaurissan Relic
(170028,153556,0,1,-7829.122,-1853.601,133.1195,6.056293,0,0,-0.113203,0.9935719,180,180,100,1), -- .go xyz -7829.122 -1853.601 133.1195 0
 -- Thaurissan Relic
(170029,153556,0,1,-7759.265,-1889.665,133.439,0.4363316,0,0,0.2164392,0.9762961,180,180,100,1), -- .go xyz -7759.265 -1889.665 133.439 0
 -- Firebloom
(170030,2866,0,1,-7316.47,-1566.922,316.0948,1.256636,0,0,0.5877848,0.8090174,45,90,100,1), -- .go xyz -7316.47 -1566.922 316.0948 0
 -- Tower Fire
(170031,149019,0,1,-6928.629,-1423.978,271.3888,5.410522,0,0,-0.4226179,0.9063079,-600,-600,100,1), -- .go xyz -6928.629 -1423.978 271.3888 0
 -- Tower Fire
(170032,149019,0,1,-6937.056,-1431.649,271.5136,5.864307,0,0,-0.2079115,0.9781476,-600,-600,100,1), -- .go xyz -6937.056 -1431.649 271.5136 0
 -- Tower Fire
(170033,149017,0,1,-7028.727,-1286.879,273.1174,2.44346,0,0,0.9396925,0.3420205,-600,-600,100,1), -- .go xyz -7028.727 -1286.879 273.1174 0
 -- Tower Fire
(170034,149017,0,1,-7025.736,-1292.023,276.1498,5.654869,0,0,-0.3090162,0.9510568,-600,-600,100,1), -- .go xyz -7025.736 -1292.023 276.1498 0
 -- Tower Smoke
(170035,149018,0,1,-7016.083,-1295.581,276.6865,3.176533,0,0,-0.9998474,0.01746928,-600,-600,100,1), -- .go xyz -7016.083 -1295.581 276.6865 0
 -- Tower Smoke
(170036,149018,0,1,-7022.2,-1287.731,277.6181,1.902409,0,0,0.8141155,0.580703,-600,-600,100,1), -- .go xyz -7022.2 -1287.731 277.6181 0
 -- Tower Fire
(170037,149017,0,1,-7022.358,-1286.55,276.976,5.585054,0,0,-0.34202,0.9396927,-600,-600,100,1), -- .go xyz -7022.358 -1286.55 276.976 0
 -- Dented Footlocker
(170038,179494,0,1,-6905.476,-1317.648,214.202,3.944446,0,0,-0.9205046,0.3907318,480,480,100,1), -- .go xyz -6905.476 -1317.648 214.202 0
 -- Dented Footlocker
(170039,179494,0,1,-6904.368,-1266.76,178.3672,2.513274,0,0,0.9510565,0.3090171,480,480,100,1), -- .go xyz -6904.368 -1266.76 178.3672 0
 -- Dented Footlocker
(170040,179494,0,1,-6755.825,-1268.045,184.0931,2.356195,0,0,0.9238796,0.3826832,480,480,100,1), -- .go xyz -6755.825 -1268.045 184.0931 0
 -- Dented Footlocker
(170041,179494,0,1,-6693.349,-1146.222,185.5533,4.380776,0,0,-0.8141155,0.580703,480,480,100,1), -- .go xyz -6693.349 -1146.222 185.5533 0
 -- Solid Chest
(170042,4149,0,1,-6469.35,-962.3958,335.6025,2.722713,0,0,0.9781475,0.2079121,7200,7200,100,1), -- .go xyz -6469.35 -962.3958 335.6025 0
 -- Dwarven Fire
(170043,22208,0,1,-5525.477,-672.8846,393.8925,4.860743,0,0,-0.6527596,0.7575652,900,900,100,1), -- .go xyz -5525.477 -672.8846 393.8925 0
 -- Dwarven Fire
(170044,22205,0,1,-5500.646,-709.0247,392.2415,5.314503,-0.006899357,0.005342484,-0.4655962,0.8849543,900,900,100,1), -- .go xyz -5500.646 -709.0247 392.2415 0
 -- Mossy Footlocker
(170045,179497,1,1,3800.036,-7206.78,26.48072,3.455756,0,0,-0.9876881,0.1564362,480,480,100,1), -- .go xyz 3800.036 -7206.78 26.48072 1
 -- Purple Lotus
(170046,142140,1,1,4165.295,-7376.703,11.92165,4.782203,0,0,-0.6819983,0.7313538,45,90,100,1), -- .go xyz 4165.295 -7376.703 11.92165 1
 -- Dreamfoil
(170047,176584,1,1,4350.747,-6867.515,95.17702,3.019413,0,0,0.9981346,0.06105176,45,90,100,1), -- .go xyz 4350.747 -6867.515 95.17702 1
 -- Golden Sansam
(170048,176583,1,1,4533.427,-6772.334,129.034,1.692969,0,0,0.7489557,0.6626201,45,90,100,1), -- .go xyz 4533.427 -6772.334 129.034 1
 -- Purple Lotus
(170049,142140,1,1,4675.047,-6700.342,129.2855,1.239183,0,0,0.5807028,0.8141156,45,90,100,1), -- .go xyz 4675.047 -6700.342 129.2855 1
 -- Golden Sansam
(170050,176583,1,1,4705.46,-6650.115,119.9485,0.01745246,0,0,0.00872612,0.9999619,45,90,100,1), -- .go xyz 4705.46 -6650.115 119.9485 1
 -- Khadgar's Whisker
(170051,2043,1,1,4666.719,-6522.819,113.8341,2.862335,0,0,0.9902678,0.1391754,45,90,100,1), -- .go xyz 4666.719 -6522.819 113.8341 1
 -- Sungrass
(170052,142142,1,1,4821.409,-6690.781,93.48244,4.555311,0,0,-0.7604055,0.6494485,45,90,100,1), -- .go xyz 4821.409 -6690.781 93.48244 1
 -- Mithril Deposit
(170053,2040,1,1,4915.539,-7019.001,108.375,3.211419,0,0,-0.9993906,0.03490613,45,90,100,1), -- .go xyz 4915.539 -7019.001 108.375 1
 -- Gold Vein
(170054,1734,1,1,4280.405,-7293.171,17.8182,1.518436,0,0,0.6883545,0.7253745,45,90,100,1), -- .go xyz 4280.405 -7293.171 17.8182 1
 -- Stranglekelp
(170055,2045,1,1,4122.782,-6782.198,-14.06946,1.53589,0,0,0.6946583,0.7193398,45,90,100,1), -- .go xyz 4122.782 -6782.198 -14.06946 1
 -- Mossy Footlocker
(170056,179497,1,1,4237.108,-6625.903,-14.48772,2.460913,0,0,0.9426413,0.3338076,480,480,100,1), -- .go xyz 4237.108 -6625.903 -14.48772 1
 -- Stranglekelp
(170057,2045,1,1,4341.05,-6369.841,-20.28324,2.251473,0,0,0.902585,0.4305117,45,90,100,1), -- .go xyz 4341.05 -6369.841 -20.28324 1
 -- Kim'jael's Equipment
(170058,153123,1,1,4258.225,-6276.522,90.32419,0.1745321,0,0,0.08715534,0.9961947,180,300,100,1), -- .go xyz 4258.225 -6276.522 90.32419 1
 -- Stranglekelp
(170059,2045,1,1,4036.028,-6188.354,-9.223963,3.769912,0,0,-0.9510565,0.3090171,45,90,100,1), -- .go xyz 4036.028 -6188.354 -9.223963 1
-- Patch of Elemental Water
(170060,180753,1,1,4022.644,-6045.29,0,1.850049,0,0,0.7986355,0.601815,1800,1800,100,1), -- .go xyz 4022.644 -6045.29 0 1
 -- Golden Sansam
(170061,176583,1,1,4117.755,-5711.803,127.3026,5.724681,0,0,-0.2756367,0.9612619,45,90,100,1), -- .go xyz 4117.755 -5711.803 127.3026 1
 -- Floating Wreckage
(170062,180751,1,1,3785.949,-5740.698,0,3.124123,0,0,0.9999619,0.008734641,1800,1800,100,1), -- .go xyz 3785.949 -5740.698 0 1
 -- Mossy Footlocker
(170063,179497,1,1,3779.309,-5682.834,-6.049335,2.042035,0,0,0.8526402,0.5224986,480,480,100,1), -- .go xyz 3779.309 -5682.834 -6.049335 1
 -- Golden Sansam
(170064,176583,1,1,3628.935,-5387.712,115.502,4.799657,0,0,-0.6755896,0.7372779,45,90,100,1), -- .go xyz 3628.935 -5387.712 115.502 1
 -- Tablet of Beth'Amara
(170065,148516,1,1,3776.722,-5380.265,88.05559,3.647741,0,0,-0.9681473,0.2503814,180,300,100,1), -- .go xyz 3776.722 -5380.265 88.05559 1
 -- Tablet of Markri
(170066,148514,1,1,3809.105,-5268.597,93.89073,1.902409,0,0,0.8141155,0.580703,180,300,100,1), -- .go xyz 3809.105 -5268.597 93.89073 1
 -- Purple Lotus
(170067,142140,1,1,3788.438,-5311.637,85.68512,5.410522,0,0,-0.4226179,0.9063079,45,90,100,1), -- .go xyz 3788.438 -5311.637 85.68512 1
 -- Tablet of Markri
(170068,148514,1,1,3758.794,-5250.493,89.21308,3.996807,0,0,-0.9099607,0.4146944,180,300,100,1), -- .go xyz 3758.794 -5250.493 89.21308 1
 -- Tablet of Jin'yael
(170069,148513,1,1,3610.316,-5095.592,86.12157,4.433136,0,0,-0.7986355,0.601815,180,300,100,1), -- .go xyz 3610.316 -5095.592 86.12157 1
 -- Tablet of Sael'hai
(170070,148515,1,1,3502.905,-5112.538,83.91056,0.5585039,0,0,0.2756367,0.9612619,180,300,100,1), -- .go xyz 3502.905 -5112.538 83.91056 1
 -- Tablet of Beth'Amara
(170071,148516,1,1,3555.53,-5078.217,84.75977,4.834563,0,0,-0.6626196,0.7489561,180,300,100,1), -- .go xyz 3555.53 -5078.217 84.75977 1
 -- Tablet of Markri
(170072,148514,1,1,3475.798,-5088.159,84.52166,3.822273,0,0,-0.9426413,0.3338076,180,300,100,1), -- .go xyz 3475.798 -5088.159 84.52166 1
 -- Tablet of Beth'Amara
(170073,148516,1,1,3412.839,-5028.024,88.59391,4.886924,0,0,-0.642787,0.766045,180,300,100,1), -- .go xyz 3412.839 -5028.024 88.59391 1
 -- Solid Chest
(170074,153451,1,1,3448.358,-4623.756,103.7107,2.268925,0,0,0.9063072,0.4226195,7200,7200,100,1), -- .go xyz 3448.358 -4623.756 103.7107 1
 -- Dreamfoil
(170075,176584,1,1,3320.055,-4643.187,97.12299,4.625124,0,0,-0.737277,0.6755905,45,90,100,1), -- .go xyz 3320.055 -4643.187 97.12299 1
 -- Purple Lotus
(170076,142140,1,1,3336.85,-4491.029,97.73674,1.274088,0,0,0.5948219,0.8038574,45,90,100,1), -- .go xyz 3336.85 -4491.029 97.73674 1
 -- Purple Lotus
(170077,142140,1,1,2861.469,-4010.638,141.192,3.926996,0,0,-0.9238787,0.3826855,45,90,100,1), -- .go xyz 2861.469 -4010.638 141.192 1
 -- Mageroyal
(170078,1620,1,1,2939.443,-3543.784,109.2997,1.361356,0,0,0.6293201,0.7771462,45,90,100,1), -- .go xyz 2939.443 -3543.784 109.2997 1
 -- Sagefish School
(170079,180663,1,1,1966.27,-1948.305,94.75963,2.635444,0,0,0.9681473,0.2503814,180,3600,100,1), -- .go xyz 1966.27 -1948.305 94.75963 1
 -- Battered Chest
(170080,2849,1,1,3276.381,406.6078,3.426903,1.919862,0,0,0.8191519,0.5735767,7200,7200,100,1), -- .go xyz 3276.381 406.6078 3.426903 1
 -- Waterlogged Footlocker
(170081,179487,1,1,3786.109,867.0233,0.436485,3.787367,0,0,-0.9483232,0.3173059,480,480,100,1), -- .go xyz 3786.109 867.0233 0.436485 1
 -- Waterlogged Footlocker
(170082,179487,1,1,4049.471,883.9075,-0.795611,1.623156,0,0,0.7253742,0.6883547,480,480,100,1), -- .go xyz 4049.471 883.9075 -0.795611 1
 -- Waterlogged Footlocker
(170083,179487,1,1,4097.431,924.6395,5.392454,2.635444,0,0,0.9681473,0.2503814,480,480,100,1), -- .go xyz 4097.431 924.6395 5.392454 1
 -- Sapphire of Aku'Mai
(170084,178186,1,1,4178.299,946.1737,-12.77458,4.834563,0,0,-0.6626196,0.7489561,300,300,100,1), -- .go xyz 4178.299 946.1737 -12.77458 1
 -- Sapphire of Aku'Mai
(170085,178185,1,1,4154.235,940.4622,-18.17443,0.8552105,0,0,0.4146929,0.9099615,300,300,100,1), -- .go xyz 4154.235 940.4622 -18.17443 1
 -- Barrel of Milk
(170086,3705,1,1,4426.077,893.5558,-0.042792,2.984498,0,0,0.9969168,0.07846643,120,7200,100,1), -- .go xyz 4426.077 893.5558 -0.042792 1
 -- Barrel of Milk
(170087,3705,1,1,5315.07,564.5134,-0.190099,4.956738,0,0,-0.6156607,0.7880114,120,7200,100,1), -- .go xyz 5315.07 564.5134 -0.190099 1
 -- Firebloom
(170088,2866,0,1,-6937.42,-1396.063,169.3545,6.021387,0,0,-0.1305256,0.9914449,45,90,100,1); -- .go xyz -6937.42 -1396.063 169.3545 0

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170024, 40025, 0, "Burning Steppes - Solid Chest Pool");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170025, 13004, 0, "Burning Steppes - Sungrass");
-- 170026
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170027, 13004, 0, "Burning Steppes - Sungrass");
-- 170028
-- 170029
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170030, 13015, 0, "Searing Gorge - Firebloom");
-- 170031 - 170041
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170042, 40019, 0, "Searing Gorge - Solid Chest Pool");
-- 170043 - 170045
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170046, 13025, 0, "Azshara - Purple Lotus");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170047, 13025, 0, "Azshara - Dreamfoil");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170048, 13025, 0, "Azshara - Golden Sansam");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170049, 13025, 0, "Azshara - Purple Lotus");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170050, 13025, 0, "Azshara - Golden Sansam");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170051, 13025, 0, "Azshara - Khadgar's Whisker");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170052, 13025, 0, "Azshara - Sungrass");

INSERT INTO pool_pool (pool_id, mother_pool, chance, description) VALUES
(9266, 2035, 0, "Mineral Spawn Point 85 - Azshara");
INSERT INTO pool_template (entry, max_limit, description) VALUES
(9266, 1, "Mineral Spawn Point 85 - Azshara");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170053, 9266, 0, "Mineral Spawn Point 85 - Mithril");

INSERT INTO pool_pool (pool_id, mother_pool, chance, description) VALUES
(9267, 2035, 0, "Mineral Spawn Point 86 - Azshara");
INSERT INTO pool_template (entry, max_limit, description) VALUES
(9267, 1, "Mineral Spawn Point 86 - Azshara");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170054, 9267, 0, "Mineral Spawn Point 86 - Gold");

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170055, 13025, 0, "Azshara - Stranglekelp");
-- 170056
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170057, 13025, 0, "Azshara - Stranglekelp");
-- 170058
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170059, 13025, 0, "Azshara - Stranglekelp");
-- 170060
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170061, 13025, 0, "Azshara - Golden Sansam");
-- 170062 - 170063
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170064, 13025, 0, "Azshara - Golden Sansam");
-- 170065 - 170066
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170067, 13025, 0, "Azshara - Purple Lotus");
-- 170068 - 170073
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170074, 40037, 0, "Azshara - Solid Chest Pool");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170075, 13025, 0, "Azshara - Dreamfoil");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170076, 13025, 0, "Azshara - Purple Lotus");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170077, 13025, 0, "Azshara - Purple Lotus");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170078, 13024, 0, "Ashenvale - Mageroyal");
-- 170079
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170080, 39913, 0, "Ashenvale - Battered Chest (2849)");
-- 170081 - 170087
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170088, 13015, 0, "Searing Gorge - Firebloom");

-- ----------------------------------------------------------
-- dump_classic_Wow(1.13.2.31727)-11792_1568004144_parsed.txt
-- ----------------------------------------------------------
-- 2055 Master Mineral Pool - Thousand Needles
-- 13033 Master Herb Pool - Feralas
-- 40032 Thousand Needles - Solid Chest Pool

INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
 -- Rocket Car Rubble
(170089,19868,1,1,-5980.433,-3654.721,-58.74995,3.228859,0,0,-0.9990482,0.04361926,180,300,100,1), -- .go xyz -5980.433 -3654.721 -58.74995 1
 -- Rocket Car Rubble
(170090,19870,1,1,-5819.381,-3514.214,-58.35702,3.804818,0,0,-0.9455185,0.3255684,300,300,100,1), -- .go xyz -5819.381 -3514.214 -58.35702 1
 -- Rocket Car Rubble
(170091,19869,1,1,-5807.534,-3616.333,-59.8394,3.019413,0,0,0.9981346,0.06105176,300,300,100,1), -- .go xyz -5807.534 -3616.333 -59.8394 1
 -- Rocket Car Rubble
(170092,19871,1,1,-5640.918,-3576.673,-58.75002,4.625124,0,0,-0.737277,0.6755905,300,300,100,1), -- .go xyz -5640.918 -3576.673 -58.75002 1
 -- Rocket Car Rubble
(170093,19868,1,1,-5701.279,-3539.569,-59.85594,0.9250238,0,0,0.4461975,0.8949345,180,300,100,1), -- .go xyz -5701.279 -3539.569 -59.85594 1
 -- Rocket Car Rubble
(170094,19873,1,1,-5695.18,-3507.515,-58.06757,2.234018,0,0,0.8987932,0.4383728,300,300,100,1), -- .go xyz -5695.18 -3507.515 -58.06757 1
 -- Tin Vein
(170095,1732,1,1,-4727.462,-1295.195,-35.92619,3.211419,0,0,-0.9993906,0.03490613,45,90,100,1), -- .go xyz -4727.462 -1295.195 -35.92619 1
 -- Gordunni Trap
(170096,144050,1,1,-4037.494,-145.4888,123.2249,3.455756,0,0,-0.9876881,0.1564362,900,900,100,1), -- .go xyz -4037.494 -145.4888 123.2249 1
 -- Gordunni Trap
(170097,144050,1,1,-4035.342,-138.6416,121.7496,0.2268925,0,0,0.113203,0.9935719,900,900,100,1), -- .go xyz -4035.342 -138.6416 121.7496 1
 -- Stonescale Eel Swarm
(170098,180712,1,1,-4798.631,2316.71,0,0.03490625,0,0,0.01745224,0.9998477,1800,3600,100,1), -- .go xyz -4798.631 2316.71 0 1
 -- Floating Wreckage
(170099,180751,1,1,-4731.542,2379.842,0,0.157079,0,0,0.07845879,0.9969174,1800,1800,100,1), -- .go xyz -4731.542 2379.842 0 1
 -- Oily Blackmouth School
(170100,180750,1,1,-4153.145,2618.199,0,2.740162,0,0,0.9799242,0.1993704,1800,3600,100,1), -- .go xyz -4153.145 2618.199 0 1
 -- Stranglekelp
(170101,2045,1,1,-5043.807,3413.84,-4.433046,0.9599299,0,0,0.4617481,0.8870111,45,90,100,1), -- .go xyz -5043.807 3413.84 -4.433046 1
 -- Oily Blackmouth School
(170102,180750,1,1,-4295.149,2371.784,0,3.752462,0,0,-0.9537163,0.3007079,1800,3600,100,1), -- .go xyz -4295.149 2371.784 0 1
 -- Purple Lotus
(170103,142140,1,1,-5027.815,1298.001,90.75114,3.089183,0,0,0.9996567,0.02620165,45,90,100,1), -- .go xyz -5027.815 1298.001 90.75114 1
 -- Firefin Snapper School
(170104,180752,1,1,-4791.426,1995.787,0,1.151916,0,0,0.5446386,0.8386708,1800,1800,100,1), -- .go xyz -4791.426 1995.787 0 1
 -- Sungrass
(170105,142142,1,1,-4600.776,1828.188,88.96333,3.42085,0,0,-0.9902678,0.1391754,45,90,100,1), -- .go xyz -4600.776 1828.188 88.96333 1
 -- Sungrass
(170106,142142,1,1,-4396.301,598.6336,62.97324,1.762782,0,0,0.7716246,0.6360782,45,90,100,1), -- .go xyz -4396.301 598.6336 62.97324 1
 -- Khadgar's Whisker
(170107,2043,1,1,-4191.154,-295.6196,47.98726,3.752462,0,0,-0.9537163,0.3007079,45,90,100,1), -- .go xyz -4191.154 -295.6196 47.98726 1
 -- Sungrass
(170108,142142,1,1,-4488.836,-517.1157,13.12978,4.71239,0,0,-0.7071066,0.7071069,45,90,100,1), -- .go xyz -4488.836 -517.1157 13.12978 1
 -- Iron Deposit
(170109,1735,1,1,-5457.665,-2200.77,-57.57911,3.455756,0,0,-0.9876881,0.1564362,45,90,100,1), -- .go xyz -5457.665 -2200.77 -57.57911 1
 -- Rocket Car Rubble
(170110,19871,1,1,-5619.273,-3557.651,-58.75002,4.956738,0,0,-0.6156607,0.7880114,300,300,100,1), -- .go xyz -5619.273 -3557.651 -58.75002 1
 -- Rocket Car Rubble
(170111,19873,1,1,-5640.918,-3576.673,-58.75002,4.625124,0,0,-0.737277,0.6755905,300,300,100,1), -- .go xyz -5640.918 -3576.673 -58.75002 1
 -- Rocket Car Rubble
(170112,19872,1,1,-5642.042,-3523.452,-58.48676,4.904376,0,0,-0.6360779,0.7716249,300,300,100,1), -- .go xyz -5642.042 -3523.452 -58.48676 1
 -- Rocket Car Rubble
(170113,19868,1,1,-5857.967,-3578.884,-58.74997,4.136433,0,0,-0.8788166,0.4771597,180,300,100,1), -- .go xyz -5857.967 -3578.884 -58.74997 1
 -- Rocket Car Rubble
(170114,19868,1,1,-5807.534,-3616.333,-59.8394,3.019413,0,0,0.9981346,0.06105176,180,300,100,1), -- .go xyz -5807.534 -3616.333 -59.8394 1
 -- Rocket Car Rubble
(170115,19873,1,1,-5834.827,-3694.398,-58.74997,1.361356,0,0,0.6293201,0.7771462,300,300,100,1), -- .go xyz -5834.827 -3694.398 -58.74997 1
 -- Rocket Car Rubble
(170116,19868,1,1,-6436.917,-3811.532,-58.75005,4.782203,0,0,-0.6819983,0.7313538,180,300,100,1), -- .go xyz -6436.917 -3811.532 -58.75005 1
 -- Solid Chest
(170117,2852,1,1,-4604.497,-1285.008,-50.52379,2.757613,0,0,0.9816265,0.1908124,7200,7200,100,1); -- .go xyz -4604.497 -1285.008 -50.52379 1

INSERT INTO pool_template (entry, max_limit, description) VALUES
(9268, 1, "Rocket Car Rubble - Spawn 1");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170091, 9268, 0, "Rocket Car Rubble - Spawn 1"),
(170114, 9268, 0, "Rocket Car Rubble - Spawn 1"),
(17059, 9268, 0, "Rocket Car Rubble - Spawn 1");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(9269, 1, "Rocket Car Rubble - Spawn 2");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170092, 9269, 0, "Rocket Car Rubble - Spawn 2"),
(170111, 9269, 0, "Rocket Car Rubble - Spawn 2"),
(17038, 9269, 0, "Rocket Car Rubble - Spawn 2");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(9270, 1, "Rocket Car Rubble - Spawn 3");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170093, 9270, 0, "Rocket Car Rubble - Spawn 3"),
(17058, 9270, 0, "Rocket Car Rubble - Spawn 3");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(9271, 1, "Rocket Car Rubble - Spawn 4");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170094, 9271, 0, "Rocket Car Rubble - Spawn 4"),
(17070, 9271, 0, "Rocket Car Rubble - Spawn 4");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(9228, 1, "Mineral Spawn Point 261 - Thousand Needles");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170095, 9228, 0, "Mineral Spawn Point 261 - Tin");
INSERT INTO pool_pool (pool_id, mother_pool, chance, description) VALUES
(9228, 2055, 0, "Mineral Spawn Point 261 - Thousand Needles");

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170098, 68, 0, "Stonescale Eel Swarm");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170099, 72, 0, "Floating Wreckage");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170100, 47, 0, "Oily Blackmouth School");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170101, 13033, 0, "Feralas - Stranglekelp");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170102, 242, 0, "Oily Blackmouth School");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170103, 13033, 0, "Feralas - Purple Lotus");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170104, 245, 0, "Firefin Snapper School");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170105, 13033, 0, "Feralas - Sungrass");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170106, 13033, 0, "Feralas - Sungrass");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170107, 13033, 0, "Feralas - Khadgar's Whisker");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170108, 13033, 0, "Feralas - Sungrass");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(9272, 1, "Mineral Spawn Point 262 - Thousand Needles");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170109, 9272, 0, "Mineral Spawn Point 262 - Iron");
INSERT INTO pool_pool (pool_id, mother_pool, chance, description) VALUES
(9272, 2055, 0, "Mineral Spawn Point 262 - Thousand Needles");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(9273, 1, "Rocket Car Rubble - Spawn 5");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170110, 9273, 0, "Rocket Car Rubble - Spawn 5"),
(17049, 9273, 0, "Rocket Car Rubble - Spawn 5");

INSERT INTO pool_template (entry, max_limit, description) VALUES
(9274, 1, "Rocket Car Rubble - Spawn 6");
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170112, 9274, 0, "Rocket Car Rubble - Spawn 6"),
(17079, 9274, 0, "Rocket Car Rubble - Spawn 6");

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(170117, 40032, 0, "Thousand Needles - Solid Chest Pool");


