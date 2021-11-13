-- Add more civililan cases from classic_combined_sniff_db & tbcc_brute_force_db
-- First diffed with what vmangos has complared to classic_combined_sniff_db and tbcc_brute_force_db
-- Then add new all db cases for classic which have both classic_combined_sniff_db and tbcc_brute_force_db TRUE
-- Then add new tbc+ cases which have tbcc_brute_force_db TRUE but are not present in classic_combined_sniff_db due to obv. reasons
-- thx @ modox

-- m_creature->IsCivilian() - Spawn Guard - s.43783 on Aggro if in correct area
-- https://github.com/TrinityCore/TrinityCore/issues/11563
-- https://github.com/TrinityCore/TrinityCore/blob/f94deace764f0b8d99249760d2bc2e85c891c387/src/server/game/Entities/Creature/CreatureData.h#L61
-- https://github.com/ccshiro/cc-buglist/issues/821
-- Remove cases where tbc wdb data and classic combined sniff db dont return civilian
-- civilian flag currently summons guard if in specific guard area and outputs zoneunderattack
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`&~65536 WHERE `entry` IN (
1021, -- Mottled Screecher
1747, -- Anduin Wrynn
1750, -- Grand Admiral Jes-Tereth
1751, -- Mithras Ironhill
1752, -- Caledra Dawnbreeze
2748, -- Archaedas
5699, -- Leona Tharpe
6173, -- Gazin Tenorm
7917, -- Brother Sarno
9016, -- Bael'Gar
9938, -- Magmus
11658, -- Molten Giant
11659, -- Molten Destroyer
11988, -- Golemagg the Incinerator
12203, -- Landslide
12206, -- Primordial Behemoth
12778, -- Lieutenant Rachel Vaccar
12779, -- Archmage Gaiman
12780, -- Sergeant Major Skyshadow
12781, -- Master Sergeant Biggins
12783, -- Lieutenant Karter
12784, -- Lieutenant Jackspring
12785, -- Sergeant Major Clate
12786, -- Guard Quine
12787, -- Guard Hammon
14363, -- Thief Catcher Shadowdelve
14365, -- Thief Catcher Farmountain
14367, -- Thief Catcher Thunderbrew
14375, -- Scout Stronghand
14376, -- Scout Manslayer
14377, -- Scout Tharr
14378, -- Huntress Skymane
14379, -- Huntress Ravenoak
14380, -- Huntress Leafrunner
14402, -- Seeker Cromwell
14403, -- Seeker Nahr
14404, -- Seeker Thompson
14423, -- Officer Jaxon
14438, -- Officer Pomeroy
14439, -- Officer Brady
14440, -- Hunter Sagewind
14441, -- Hunter Ragetotem
14442, -- Hunter Thunderhorn
14981, -- Elfarran
15007, -- Sir Malory Wheeler
15008, -- Lady Hoteshem

-- tbc+
18147, -- Silvermoon Ranger
18507 -- Silvermoon Farstrider
);

-- Adjust Factions to creaturedifficulty.sql
UPDATE `creature_template` SET `Faction` = 12 WHERE `entry` IN (12423,15708,16106);
UPDATE `creature_template` SET `Faction` = 29 WHERE `entry` IN (12430,15700,15460,15533,15736);
UPDATE `creature_template` SET `Faction` = 55 WHERE `entry` IN (12427,6030);
UPDATE `creature_template` SET `Faction` = 68 WHERE `entry` IN (12428,15193,15459,15703,16004,16108,16109);
UPDATE `creature_template` SET `Faction` = 80 WHERE `entry` IN (12429,16001);
UPDATE `creature_template` SET `Faction` = 104 WHERE `entry` IN (15477,15535,16008,15528);
UPDATE `creature_template` SET `Faction` = 126 WHERE `entry` IN (15508,15737,15704);
UPDATE `creature_template` SET `Faction` = 150 WHERE `entry` = 4947;
UPDATE `creature_template` SET `Faction` = 875 WHERE `entry` = 15707;

-- Diff Civilians with VMangos to identify Civilian Factions
-- Some Faction Leaders are marked as civilians in parser dbs, some are not we might want to mark them all civilian like vmangos did.
-- Vmangos npcs which have civilian in classic_combined_sniff_db and tbcc_brute_force_db
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|65536 WHERE `entry` IN (
-- Stormwind (11)
900,1448,

-- Stormwind (12)
54,66,74,78,152,190,196,198,244,246,248,250,251,253,258,261,263,266,267,268,270,271,272,274,276,278,295,302,313,325,328,343,344,346,372,375,377,379,383,384,459,465,514,523,633,661,777,
789,793,823,851,894,896,906,911,913,915,917,918,925,951,952,955,956,958,959,960,963,1103,1182,1213,1215,1218,1239,1249,1250,1284,1296,1322,1430,1451,1457,1459,1460,1462,1463,1632,1645,
1650,1651,1672,1673,1719,2046,2094,2329,2365,2668,2669,2697,2700,2708,2808,3085,3086,3087,3088,3089,3090,3091,3138,3178,3179,3298,3546,3935,4455,4732,4963,4996,5042,5082,5508,5620,6121,
6175,6181,6295,6306,6367,6373,6374,6727,6740,6774,6778,6790,7779,7852,7868,8150,9296,11072,11260,11824,11825,11940,11979,11994,12960,13283,15199,15431,15445,15448,15452,15735,

-- Orgrimmar (29)
980,981,982,983,984,985,986,987,988,989,1068,1147,1381,1382,1383,1385,1386,1407,1442,1443,1775,2229,2465,2792,2818,2819,2820,2821,2855,2856,2857,2908,3139,3142,3143,3144,3145,3147,3149,3150,
3153,3155,3156,3157,3158,3159,3160,3161,3163,3164,3165,3166,3167,3168,3169,3170,3171,3172,3173,3174,3175,3191,3193,3208,3216,3294,3312,3313,3314,3315,3316,3317,3319,3321,3323,3324,
3325,3326,3327,3328,3329,3330,3331,3332,3333,3334,3335,3336,3342,3344,3345,3346,3347,3348,3349,3350,3351,3352,3353,3354,3355,3356,3357,3358,3359,3360,3361,3362,3363,3364,3365,3366,
3368,3369,3370,3373,3403,3406,3407,3408,3409,3410,3412,3413,3421,3430,3433,3443,3620,3621,3622,3682,3708,3881,3882,3995,4043,4047,4485,4501,4502,4544,4752,4875,4879,4883,4884,4954,
5188,5591,5640,5641,5765,5811,5812,5814,5815,5816,5817,5882,5883,5885,5907,5943,5958,5994,6014,6018,6027,6567,6574,6586,6747,6786,6928,6929,6930,6986,7088,7230,7231,7294,7485,7623,
7643,7714,7737,7790,7792,7871,8176,8177,8306,9082,9501,9552,9555,9796,9976,9986,9988,10049,10050,10054,10088,10176,10266,10361,10556,11017,11025,11046,11066,11074,11378,
11821,11868,11943,12136,12137,12196,12430,12724,12776,12807,13445,13476,14498,15131,15460,15522,15533,15696,15700,15736,15765,16007,16094,

-- Friendly (35) - Cant be attacked anyways not really needed
2983,13431,13432,15745,

-- Human, Night Watch (53)
5385,

-- Ironforge (55)
167,222,658,713,829,895,912,916,926,945,954,1071,1075,1089,1090,1091,1092,1093,1104,1105,1153,1154,1155,1187,1214,1217,1226,1229,1231,1232,1234,1237,1238,1240,1241,
1243,1246,1247,1252,1254,1255,1256,1261,1265,1267,1273,1274,1340,1343,1344,1345,1355,1356,1362,1365,1374,1375,1376,1377,1378,1441,1450,1452,1453,1456,1458,1461,1465,1466,
1469,1470,1471,1473,1474,1681,1682,1683,1684,1685,1686,1687,1690,1691,1692,1694,1697,1698,1699,1701,1702,1703,1872,1901,1963,1965,1977,2086,2092,2097,2104,2111,2326,
2460,2461,2489,2679,2695,2737,2786,2790,2911,2912,2916,2918,3162,3177,3182,3545,3842,3948,3979,4254,4256,4258,4259,4772,4889,5049,5099,5101,5102,5103,5106,5107,5108,5109,5110,5111,5112,5113,
5115,5116,5117,5119,5120,5121,5122,5123,5124,5125,5126,5128,5129,5130,5133,5137,5138,5140,5141,5142,5143,5146,5147,5148,5149,5150,5153,5154,5155,5156,5159,5160,5161,5164,5165,5166,
5170,5171,5173,5174,5387,5388,5392,5570,6030,6031,6114,6178,6179,6241,6291,6294,6569,6734,6806,7208,7292,7298,7976,8022,8256,8517,8671,8720,8879,9177,9540,9859,9980,9984,9989,
10090,10216,10276,10277,10930,11065,11807,11865,11941,12427,13084,14121,15383,15432,15446,15663,15701,15734,15764,

714,786,836,837,1354,3836,6577,6886,12738,

-- Ironforge (57)
1266,

-- Gnomeregan Exiles (64)
3666,4941,6782,7937,7944,8856,9616,

-- Undercity (68)
1497,1499,1500,1515,1518,1521,1560,1568,1569,1570,1652,1661,1937,1938,1950,1951,1952,2113,2114,2115,2116,2117,2118,2119,2121,2122,2123,2124,2126,2127,2128,2129,2130,2131,2132,
2135,2136,2137,2140,2216,2307,2315,2388,2390,2391,2393,2397,2399,2401,2410,2418,2419,2437,3044,3045,3046,3047,3048,3049,3419,3522,3523,3548,3551,3552,3553,3554,3555,3556,3557,
3982,4488,4498,4583,4608,4731,4773,5543,5655,5656,5657,5658,5659,5660,5688,5695,5748,5749,5750,5759,5886,5957,6389,6739,6741,6784,6785,9553,9979,10055,10057,11945,
12428,12722,15193,15197,15459,15512,15525,15529,15703,15738,15768,16004,16108,16109,

-- Ratchet (69)
3339,3391,3442,3446,3453,3491,3492,3493,3494,3495,3496,3497,3498,3499,3572,3658,3665,3683,3684,6791,7161,7166,8119,8496,8738,9558,10063,16227,

-- Darnassus (80)
1695,2077,2078,2081,2083,2084,2303,2796,2803,3306,3515,3517,3561,3562,3567,3598,3599,3600,3601,3602,3603,3604,3605,3608,3609,3610,3611,3612,3613,3614,3649,3657,
3693,3700,3701,3702,3779,3880,3885,3901,3936,3951,3955,3956,3960,3963,3964,3965,4087,4088,4089,4090,4091,4138,4146,4156,4159,4160,4161,4163,4164,4167,4168,4169,4170,4171,4172,4173,
4175,4177,4180,4181,4182,4183,4185,4186,4189,4191,4193,4203,4204,4205,4208,4210,4211,4212,4213,4214,4215,4216,4217,4218,4219,4220,4221,4222,4223,4225,4226,4228,4229,4230,
4231,4232,4233,4234,4235,4236,4240,4241,4265,4266,4320,4521,4730,4753,5047,5191,5501,5782,6034,6094,6142,6286,6287,6288,6292,6297,6298,6299,6300,6301,6576,6735,6736,6781,
7296,7313,7315,7317,7736,7740,7764,7870,7877,7878,7879,7880,7900,7907,8026,8157,8665,8669,8723,8997,9465,10051,10056,10059,10089,10293,11041,11042,11050,11070,11081,11083,
11103,11104,11181,11700,11709,11866,11942,12429,14301,15315,15437,15451,15453,15457,15678,15679,15709,15731,15762,16001,16458,

2080,2107,3514,3519,3587,3588,3589,3590,3591,3592,3593,3594,3595,3596,3597,3606,3650,6091,8583,8584,

-- Horde Generic (83)
2947,2987,3387,3441,4926,4943,5087,5412,5599,5639,5667,5724,5770,5810,5875,5905,5908,5909,5910,6393,6394,6410,6446,9077,9078,9083,9084,9085,9086,11407,

-- Alliance Generic (84)
1156,

-- Thunder Bluff (104)
2798,2806,2948,2981,2982,2984,2985,2986,2993,2996,2997,2998,2999,3001,3002,3003,3004,3005,3007,3008,3009,3010,3011,3012,3013,3014,3015,3016,3017,3018,3019,3020,3021,3022,3023,
3025,3026,3027,3028,3029,3030,3031,3032,3033,3034,3036,3037,3038,3039,3040,3041,3042,3043,3050,3052,3054,3055,3059,3060,3061,3062,3063,3064,3065,3066,3067,3069,3072,3073,3074,3075,
3076,3077,3078,3079,3080,3081,3092,3093,3095,3233,3447,3500,3685,3688,3689,3690,3703,3704,3705,3883,3884,3978,4046,4451,4489,4722,4876,4877,4878,5054,5189,5390,5769,5888,5906,5938,
5939,5940,5944,6028,6290,6387,6746,6775,6776,7089,7776,7793,7854,8142,8143,8144,8145,8146,8152,8153,8158,8159,8356,8357,8358,8359,8360,8362,8363,8364,8385,8398,8401,8664,8674,8722,
8878,9548,9550,9551,9636,9983,10086,10278,10378,10379,10380,11047,11051,11071,11084,11098,11105,11106,11116,11117,11720,11833,11869,11944,12696,12723,13417,15477,15528,15532,15535,
15702,15739,15767,16008,

-- Undercity (118)
9079,

-- Booty Bay (120)
737,773,908,1411,2482,2486,2487,2488,2490,2491,2493,2494,2495,2496,2498,2499,2500,2501,2502,2542,2594,2622,2625,2626,2627,2663,2664,2670,2685,2699,2832,2834,2836,2837,2838,
2839,2840,2842,2843,2844,2845,2846,2847,2848,2849,3134,3945,4631,6807,7406,7794,7853,8123,8305,8417,9559,9858,10060,15677,15681,

-- Ironforge (122)
5637,5638,6166,8507,

-- Stormwind (123)
5393,5396,5752,10616,

-- Darnassus (124)
3585,3616,5642,7957,7999,8397,

-- Orgrimmar (125)
2771,2772,3389,4791,5395,5899,8021,8582,8587,9080,9081,10306,

-- Darkspear Trolls (126)
11702,15508,15704,15737,

-- Theramore (150)
4921,4947,

-- Silvermoon Remnant (371)
4456,

-- Ravenholdt (471)
6707,6768,6777,6779,7323,7324,7325,8309,

-- Gadgetzan (474)
4708,5411,5594,6568,7564,7583,7733,7799,7804,7881,8124,8125,8126,8128,8129,8131,8137,8139,8579,8661,8736,9985,10460,10583,11756,11757,14743,15165,

-- Gadgetzan (475)
7408,7724,7876,7882,

-- Cenarion Circle (635)
13698,16091,

-- Alliance Generic (694)
4782,5635,5636,7744,7778,8160,8161,9660,11097,11810,11812,11813,

-- Argent Dawn (794)
1253,4787,16256,16284,

-- Argent Dawn (814)
4783,4784,4786,

-- Everlook (855)
9857,10307,10978,11118,11182,11183,11184,11185,11186,11187,11188,11189,11191,11192,11193,11753,11754,13917,14742,

-- Gnomeregan Exiles (875)
374,460,944,1228,1268,1269,1454,1676,2682,3181,3290,5100,5114,5127,5132,5144,5145,5151,5152,5157,5158,5162,5163,5167,5169,5172,5175,5177,5178,5569,5612,
6119,6120,6169,6328,6376,6382,6826,7312,7950,7954,7955,7978,8416,8681,9099,10455,10456,11028,11029,11037,13000,15434,15450,15455,15456,15707,15733,15763,

-- Darkspear Trolls (876)
2704,8659,

-- Theramore (894)
4794,4885,4886,4888,4890,4891,4892,4893,4894,4896,4897,4898,4899,4900,4902,4964,5083,6272,6732,8140,8141,10047,11052,

-- Cenarion Circle (994)
4184,7940,12019,12021,12022,12023,12024,12025,12026,12029,12042,15419,

-- Orgrimmar (1074)
9620,

3230, -- later in outland, still civilian

-- Theramore (1075)
4895,4948,

-- Darnassus (1076)
11401,

-- Theramore (1077)
4944,4965,4967,

-- Stormwind (1078)
12425,12481,

-- Theramore (1096)
4968,

-- Undercity (1154)

-- Horde Generic (1494)
14731,14736,14737,14738,14739,14740,14741,17598,

-- Silverwing Sentinels (1514)
14733
);

-- All Flight Masters are Civilians (Their Aggro Texts now make sense) (10583,16227,523,10378,18791,20762 already were)
UPDATE `creature_template` SET `NpcFlags` = `NpcFlags`&~8192 WHERE `entry` IN (353,1574,1575); -- Had Flightmaster Flag assigned
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|65536
WHERE `SubName` LIKE '%Bat Handler%'
OR `SubName` LIKE '%Dragonhawk Master%'
OR `SubName` LIKE '%Emerald Circle Flight Master%'
OR `SubName` LIKE '%Flight Master%'
OR `SubName` LIKE '%Gryphon Master%'
OR `SubName` LIKE '%Hippogryph Master%'
OR `SubName` LIKE '%Wind Rider Master%';

-- Further Additions with above requirements (classic_combined_sniff_db and tbcc_brute_force_db.civilian = 1 and maxlevel > 1 + most only in a guard area for now and no faction 35 as it makes no sense)
-- Also excluding kids and animals / pets for now
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|65536 WHERE `entry` IN (
269, -- Role Dreuger
1198, -- Rallic Finn
1373, -- Jarven Thunderbrew
1464, -- Innkeeper Helbrek
1480, -- Caitlin Grassman
1484, -- Derina Rumdnul
1700, -- Paxton Ganter
1733, -- Zggi
1740, -- Deathguard Saltain
1776, -- Magtoor
1777, -- Dakk Blunderblast
2112, -- Farrin Daris
2150, -- Zenn Foulhoof
2155, -- Sentinel Shayla Nightbreeze
2309, -- Thomas Arlento
2310, -- Jamie Nore
2402, -- Shara Blazen
2616, -- Privateer Groy
2787, -- Zaruk
2980, -- Grull Hawkwind
3024, -- Tah Winterhoof
3318, -- Koma
3371, -- Tamaro
3372, -- Sarlek
4924, -- Combat Master Criton
4951, -- Theramore Practicing Guard
5090, -- Combat Master Szigeti
5095, -- Captain Andrews
5096, -- Captain Thomas
5199, -- Medic Tamberlyn
5200, -- Medic Helaina
5597, -- Grunt Komak
5603, -- Grunt Mojka
5605, -- Tisa Martine
5606, -- Goma
5609, -- Zazo
5610, -- Kozish
5611, -- Barkeep Morag
5614, -- Sarok
5661, -- Brother Malach
5679, -- Lysta Bancroft
5917, -- Clara Charles
6251, -- Strahad Farsan
6252, -- Acolyte Magaz
6253, -- Acolyte Fenrick
6254, -- Acolyte Wytula
6266, -- Menara Voidrender
6787, -- Yelnagi Blackarm
6887, -- Yalda
7407, -- Chief Engineer Bilgewhizzle
7763, -- Curgle Cranklehop
7826, -- Ambassador Ardalan
8178, -- Nina Lightbrew
8393, -- Thersa Windsong
8396, -- Sentinel Dalia Sunblade
8666, -- Lil Timmy
8673, -- Auctioneer Thathung
8724, -- Auctioneer Wabang
9047, -- Jenal
9076, -- Ghede
9087, -- Bashana Runetotem
9317, -- Rilli Greasygob
9856, -- Auctioneer Grimful
10182, -- Rokaro
10204, -- Misha -- later in outland still civilian
10303, -- Storm Shadowhoof
10305, -- Umi Rumplesnicker
10599, -- Hulfnar Stonetotem
10600, -- Thontek Rumblehoof
10618, -- Rivern Frostwind
10619, -- Glacier
10637, -- Malyfous Darkhammer
10877, -- Courier Hammerfall
11022, -- Alexi Barov
11023, -- Weldon Barov
11033, -- Smokey LaRue
11034, -- Lord Maxwell Tyrosus
11035, -- Betina Bigglezink
11036, -- Leonid Barthalomew the Revered
11038, -- Caretaker Alen
11039, -- Duke Nicholas Zverenhoff
11053, -- High Priestess MacDonnell
11055, -- Shadow Priestess Vandis
11056, -- Alchemist Arbington
11057, -- Apothecary Dithers
11079, -- Wynd Nightchaser
11119, -- Azzleby
11145, -- Myolor Sunderfury
11146, -- Ironus Coldsteel
11176, -- Krathok Moltenfist
11177, -- Okothos Ironrager
11178, -- Borgosh Corebender
11198, -- Broken Exile
11219, -- Liladris Moonriver
11276, -- Azshara Sentinel
11406, -- High Priest Rohan
11536, -- Quartermaster Miranda Breechlock
11546, -- Jack Sterling
11548, -- Loh'atu
11554, -- Grazle
11615, -- Mickey Levine
11616, -- Nathaniel Dumah
11703, -- Graw Cornerstone
11708, -- Coral Moongale
11715, -- Talendria
11716, -- Celes Earthborne
11717, -- Bethan Bluewater
11749, -- Feran Strongwind
11755, -- Harlo Wigglesworth
11758, -- Andi Lynn
11811, -- Narain Soothfancy
11817, -- Krah'ranik
11819, -- Jory Zaga
11823, -- Vark Battlescar
11829, -- Fahrak
11835, -- Theodore Griffs
11863, -- Azore Aldamort
11874, -- Masat T'andr
12757, -- Karang Amakkar
12863, -- Warsong Runner
12877, -- Ertog Ragetusk
12920, -- Doctor Gregory Victor
12939, -- Doctor Gustaf VanHowzen
12941, -- Jase Farlane
12942, -- Leonard Porter
12943, -- Werg Thickblade
12944, -- Lokhtos Darkbargainer
13085, -- Myrokos Silentform
13217, -- Thanthaldis Snowgleam
13444, -- Greatfather Winter
13699, -- Selendra
13737, -- Marandis' Sister
13817, -- Voggah Deathgrip
13841, -- Lieutenant Haggerdin
13842, -- Frostwolf Ambassador Rokhstrom
13843, -- Lieutenant Rotimer
14182, -- Bounty Hunter Kolark
14183, -- Artilleryman Sheldonore
14355, -- Azj'Tordin
14373, -- Sage Korolusk
14374, -- Scholar Runethorn
14392, -- Overlord Runthak
14394, -- Major Mattingly
14451, -- Orphan Matron Battlewail
14480, -- Alowicious Czervik
14567, -- Derotain Mudsipper
14622, -- Thorium Brotherhood Lookout
14624, -- Master Smith Burninate
14625, -- Overseer Oilfist
14626, -- Taskmaster Scrange
14627, -- Hansel Heavyhands
14628, -- Evonice Sootsmoker
14634, -- Lookout Captain Lolo Longstriker
14718, -- Horde Laborer
14720, -- High Overlord Saurfang
14721, -- Field Marshal Afrasiabi
14723, -- Mistina Steelshield
14724, -- Bubulo Acerbus
14725, -- Raedon Duskstriker
14726, -- Rashona Straglash
14728, -- Rumstag Proudstrider
14734, -- Revantusk Drummer
14842, -- Melnan Darkstone
14843, -- Kruban Darkblade
14875, -- Molthor
14876, -- Zandalar Headshrinker
14902, -- Jin'rokh the Breaker
14903, -- Al'tabim the All-Seeing
14904, -- Maywiki of Zuldazar
14905, -- Falthir the Sightless
14910, -- Exzhal
14911, -- Zandalar Enforcer
14912, -- Captured Hakkari Zealot
14921, -- Rin'wosho the Trader
14990, -- Defilers Emissary
14991, -- League of Arathor Emissary
15011, -- Wagner Hammerstrike
15012, -- Javnir Nashak
15070, -- Vinchaxa
15076, -- Zandalarian Emissary
15080, -- Servant of the Hand
15102, -- Silverwing Emissary
15103, -- Stormpike Emissary
15105, -- Warsong Emissary
15106, -- Frostwolf Emissary
15116, -- Grinkle
15119, -- Barrus
15169, -- Ralo'shan the Eternal Watcher
15174, -- Calandrath
15175, -- Khur Hornstriker
15176, -- Vargus
15179, -- Mishta
15180, -- Baristolth of the Shifting Sands
15181, -- Commander Mar'alith
15183, -- Geologist Larksbane
15187, -- Cenarion Emissary Jademoon
15191, -- Windcaller Proudhorn
15270, -- Huum Wildmane
15282, -- Aurel Goldleaf
15303, -- Maxima Blastenheimer
15306, -- Bor Wildmane
15350, -- Horde Warbringer
15351, -- Alliance Brigadier General
15353, -- Katrina Shimmerstar
15354, -- Rachelle Gothena
15395, -- Nafien
15458, -- Commander Stronghammer
15498, -- Windcaller Yessendra
15499, -- Warden Haro
15722, -- Squire Leoren Mal'derath
15797, -- Colossus Researcher Sophia
15798, -- Colossus Researcher Nestor
15799, -- Colossus Researcher Eazel
16003, -- Deathguard Tor
16009, -- Tormek Stoneriver
16113, -- Father Inigo Montoy
16114, -- Scarlet Commander Marjhan
16115, -- Commander Eligor Dawnbringer
16116, -- Archmage Angela Dosantos
16131, -- Rohan the Assassin
16132, -- Huntsman Leopold
16133, -- Mataus the Wrathcaster
16134, -- Rimblat Earthshatter
16135, -- Rayne
16283, -- Packmaster Stonebruiser
16376, -- Craftsman Wilhelm
17079, -- General Kirika



-- new map 0,1 spawn civilians
1076, -- Merrin Rockweaver
1077, -- Prospector Whelgar
1078, -- Ormer Ironbraid
1960, -- Pilot Hammerfoot
2316, -- Gol'dir
2683, -- Namdo Bizzfizzle
2698, -- George Candarte
2805, -- Deneb Walker
2917, -- Prospector Remtravel
2943, -- Ransin Donner
3661, -- Balthule Shadowstrike
3698, -- Bolyun
3916, -- Shael'dryn
4305, -- Kriggon Talsone
5757, -- Lilly
5758, -- Leo Sarn
5878, -- Thun'grim Firegaze
5900, -- Telf Joolam
6667, -- Gelkak Gyromast
6731, -- Harlown Darkweave
7007, -- Tiev Mordune
7024, -- Agent Kearnen
7867, -- Thorkaf Dragoneye
7951, -- Zas'Tysh
8308, -- Alenndaar Lapidaar
8320, -- Sprok
10993, -- Twizwick Sprocketgrind
11696, -- Chal Fairwind
11808, -- Grum Redbeard
14481, -- Emmithue Smails
16287, -- Ambassador Sunsorrow
16288, -- Advisor Sorrelon
17080, -- Marshal Bluewall
17092, -- Advisor Duskingdawn
17093, -- Magistrix Elosai
17094, -- Nemeth Hawkeye
17097, -- Advisor Sarophas
17098, -- Ambassador Dawnsinger
17099, -- Mehlar Dawnblade
17100, -- Advisor Sunsworn
17103, -- Emissary Taluun
17104, -- Anchorite Delan
17105, -- Emissary Valustraa
17106, -- Vindicator Palanaar
17109, -- Cersei Dusksinger
17127, -- Anchorite Avuun
17218, -- Huraan
17223, -- Ambassador Rualeth
17287, -- Sentinel Luciel Starwhisper
17291, -- Architect Nemos
17303, -- Vindicator Vedaar
17355, -- Valusha
17406, -- Artificer
17409, -- Apprentice Boulian
17412, -- Phaedra
17531, -- Draenei Protector
17541, -- Draenei Quartermaster
17613, -- Archmage Alturus
18165, -- Archmage Cedric
18221, -- Holaaru
18253, -- Archmage Leryda
18255, -- Apprentice Darius
19855, -- Sir Maximus Adams
19861, -- Bip Nigstrom
19905, -- The Black Bride
19906, -- Usha Eyegouge
19907, -- Grumbol Grimhammer
19908, -- Su'ura Swiftarrow
19910, -- Gargok
19912, -- Zeggon Botsnap
19914, -- Hutihu
19918, -- Time Watcher
19932, -- Andormu
19933, -- Nozari
19934, -- Zaladormu
19935, -- Soridormi
19936, -- Arazmodu
19950, -- Custodian of Time
19951, -- Warden of Time
19959, -- Imprisoned Infinite Dragonspawn
20055, -- Tarren Mill Peasant Specimen
20069, -- Night Elf Wisp Specimen
20080, -- Galgrom
20081, -- Bortega
20082, -- Yarley
20130, -- Andormu
20131, -- Nozari
20142, -- Steward of Time
20406, -- Champion Cyssa Dawnrose
20407, -- Farseer Umbrua
21643, -- Alurmi
22013, -- Eye of the Storm Emissary
22015, -- Eye of the Storm Envoy
22834, -- Clintar Dreamwalker
22837, -- Dreamwarden Lurosa
22936, -- Auhula
22985, -- Bradford Bridenbecker
23050, -- Little Noah
23103, -- Derek the Undying
23127, -- Farseer Javad
23128, -- Master Pyreanor
23131, -- Blood Knight Honor Guard
23566, -- Calia Hastings
23568, -- Captain Darill
23569, -- Renn McGill
23570, -- Gizzix Grimegurgle
23571, -- Razbo Rustgear
23572, -- Drazzit Dripvalve
23573, -- Krixil Slogswitch
23635, -- Krixx
23704, -- Cassa Crimsonwing
23713, -- Kraxx
23797, -- Moxie Steelgrille
23835, -- Sergeant Amelyn
23892, -- Babs Fizzletorque
23896, -- "Dirty" Michael Crowe
23905, -- Major Mills
23949, -- Lieutenant Nath
23950, -- Lieutenant Khand
23951, -- Lieutenant Aden
23995, -- Axle
24005, -- Mill Worker
24006, -- Foreman Tionn
24007, -- Mill Courier
24208, -- "Little" Logok
24729, -- Alicia
24734, -- Aleanna Edune
24735, -- Becanna Edune
24736, -- Sulan Dunadaire
25109, -- Rocket Chicken
27398, -- Gilbarta Grandhammer
27399, -- Muja
27703, -- Ysuria
27704, -- Horace Alder
27705, -- Lorrin Foxfire
29093, -- Ian Drake
29095, -- Edward Cairn

-- tbc+
-- map 530 low id range
15278, -- Magistrix Erona
15279, -- Julia Sunstriker
15280, -- Jesthenis Sunstriker
15281, -- Lanthan Perilon
15283, -- Summoner Teli'Larien
15284, -- Matron Arena
15285, -- Pathstalker Kariel
15287, -- Shara Sunwing
15289, -- Raelis Dawnstar
15291, -- Jainthess Thelryn
15292, -- Faraden Thelryn
15295, -- Well Watcher Solanian
15296, -- Arcanist Ithanas
15297, -- Arcanist Helion
15301, -- Outrunner Alarion
15397, -- Marniel Amberlight
15398, -- Larianna Riverwind
15399, -- Lieutenant Dawnrunner
15400, -- Arathel Sunforge
15401, -- Ley-Keeper Velania
15402, -- Apprentice Mirveda
15403, -- Aeldon Sunbrand
15404, -- Velendris Whitemorn
15405, -- Ley-Keeper Caidanis
15416, -- Ranger Jaela
15417, -- Velan Brightoak
15418, -- Magister Jaronis
15420, -- Prospector Anvilward
15433, -- Innkeeper Delaniel
15493, -- Marsilla Dawnstar
15494, -- Yasmine Teli'Larien
15501, -- Aleinia
15513, -- Ranger Sallina
15939, -- Ranger Degolien
15940, -- Ranger Selron
15941, -- Apprentice Ralen
15942, -- Ranger Sareyn
15945, -- Apprentice Meledor
15946, -- Apprentice Veya
15970, -- Instructor Antheol
15971, -- Silvermoon Apprentice
15991, -- Lady Dena Kennedy
16160, -- Magistrix Eredania
16161, -- Arcanist Sheynathren
16185, -- Anathos
16186, -- Vara
16187, -- Quartermaster Lymel
16191, -- Sathren Azuredawn
16213, -- Ranger Lethvalin
16217, -- Lieutenant Tomathren
16219, -- Ranger Valanna
16224, -- Rathis Tomber
16237, -- Magister Sylastor
16257, -- Geron
16258, -- Farsil
16259, -- Sheri
16260, -- Areyn
16261, -- Sathiel
16262, -- Landraelanis
16263, -- Paelarin
16264, -- Winaestra
16265, -- Smith Daelarin
16266, -- Celoenus
16267, -- Daestra
16268, -- Eralan
16269, -- Garridel
16270, -- Hannovia
16271, -- Telenus
16272, -- Kanaria
16273, -- Mathreyn
16274, -- Narina
16275, -- Noellene
16276, -- Ponaris
16277, -- Quarelestra
16278, -- Sathein
16279, -- Tannaria
16280, -- Perascamin
16291, -- Magister Quallestis
16362, -- Runewarden Deryan
16366, -- Sempstress Ambershine
16367, -- Botanist Tyniarrel
16397, -- Ardeyn Riverwind
16442, -- Vinemaster Suntouched
16443, -- Zalene Firstlight
16444, -- Halis Dawnstrider
16462, -- Ranger Krenn'an
16463, -- Farstrider Solanna
16464, -- Apothecary Venustus
16475, -- Megelon
16476, -- Jaeleil
16477, -- Proenitus
16483, -- Draenei Survivor
16499, -- Keilnei
16500, -- Valaatu
16501, -- Aurelon
16502, -- Zalduun
16503, -- Kore
16514, -- Botanist Taerix
16535, -- Vindicator Aldar
16542, -- Innkeeper Kalarin
16546, -- Tolaan
16551, -- Technician Dyvuun
16553, -- Caregiver Chellan
16554, -- Aeun
16568, -- Tandrine
16574, -- Far Seer Regulkut
16575, -- Shadow Hunter Ty'jin
16576, -- Overlord Hun Maimfist
16577, -- Martik Tor'seldori
16578, -- Blood Elf Pilgrim
16579, -- Falcon Watch Sentinel
16583, -- Rohok
16584, -- Watch Commander Krunk
16585, -- Cookie One-Eye
16586, -- Huntsman Torf Angerhoof
16588, -- Apothecary Antonivich
16589, -- Guard Captain Cragtar
16590, -- Injured Thrallmar Grunt
16591, -- Thrallmar Peon
16598, -- Eye of Thrallmar
16601, -- Dying Blood Elf
16602, -- Floyd Pinkus
16603, -- Farstrider Dusking
16610, -- Kredis
16611, -- Zalle
16612, -- Velanni
16613, -- Parnis
16614, -- Lothene
16615, -- Novia
16616, -- Periel
16617, -- Daenice
16618, -- Innkeeper Velandra
16619, -- Celana
16620, -- Mathaleron
16621, -- Ileda
16622, -- Ithene
16623, -- Zyandrel
16624, -- Gelanthis
16625, -- Keeli
16626, -- Tynna
16627, -- Ithillan
16628, -- Caidori
16629, -- Tandron
16630, -- Irodalmin
16631, -- Andra
16632, -- Oss
16633, -- Sedana
16634, -- Dolothos
16635, -- Lyna
16636, -- Zathanna
16637, -- Welethelon
16638, -- Deynna
16639, -- Galana
16640, -- Keelen Sheets
16641, -- Melaris
16642, -- Camberon
16643, -- Razia
16644, -- Botanist Nathera
16645, -- Ithren
16646, -- Alamma
16647, -- Talionia
16648, -- Zanien
16649, -- Torian
16650, -- Bithrus
16651, -- Zaedana
16652, -- Quithas
16653, -- Inethven
16654, -- Narinth
16655, -- Harene Plainwalker
16656, -- Shalenn
16657, -- Feera
16658, -- Aldrae
16659, -- Lotheolan
16660, -- Belestra
16661, -- Gez'li
16662, -- Alestus
16663, -- Belil
16664, -- Zelan
16665, -- Paniar
16666, -- Feledis
16667, -- Danwe
16668, -- Gloresse
16669, -- Bemarrin
16670, -- Eriden
16671, -- Mirvedon
16672, -- Tana
16673, -- Oninath
16674, -- Zandine
16675, -- Halthenis
16676, -- Sylann
16677, -- Quelis
16678, -- Rahein
16679, -- Osselan
16680, -- Ithelis
16681, -- Champion Bachi
16682, -- Thiel
16683, -- Darlia
16684, -- Zelanis
16685, -- Elara
16686, -- Nerisen
16687, -- Talmar
16688, -- Lynalis
16689, -- Zaralda
16690, -- Rathin
16691, -- Noraelath
16692, -- Tyn
16693, -- Winthren
16694, -- Karen Wentworth
16695, -- Gurak
16696, -- Krukk
16702, -- Telia
16703, -- Amin
16705, -- Altaa
16706, -- Musal
16707, -- Eoch
16708, -- Dekin
16709, -- Cuzi
16710, -- Kellag
16711, -- Herman Walker
16712, -- Ganaar
16713, -- Arras
16714, -- Ven
16715, -- Avelii
16716, -- Gornii
16718, -- Phea
16719, -- Mumman
16720, -- Oktan
16721, -- Shalannius
16722, -- Egomis
16723, -- Lucc
16724, -- Miall
16725, -- Nahogg
16726, -- Ockil
16727, -- Padaar
16728, -- Akham
16729, -- Refik
16731, -- Nus
16732, -- Onnis
16735, -- Muhaa
16736, -- Cemmorhan
16737, -- Berem
16738, -- Deremiis
16739, -- Caregiver Breel
16740, -- Edrem
16741, -- Deriz
16742, -- Kudrii
16743, -- Ghermas
16744, -- Driaan
16745, -- Feruul
16746, -- Kayaart
16747, -- Mahri
16748, -- Haferet
16749, -- Edirah
16750, -- Yil
16751, -- Merran
16752, -- Muaat
16753, -- Gotaan
16754, -- Fingle Dipswitch
16755, -- Lunaraa
16756, -- Caedmos
16757, -- Bildine
16758, -- Jahri
16759, -- Saran Nozzlevolt
16761, -- Baatun
16762, -- Treall
16763, -- Remere
16764, -- Arthaid
16765, -- Ellomin
16766, -- Issca
16767, -- Neii
16768, -- Nurguni
16771, -- Ahonan
16773, -- Handiir
16774, -- Erett
16780, -- Drathen
16782, -- Yatheon
16789, -- Ranger Captain Venn'ren
16790, -- Falconer Drenna Riverwind
16791, -- Ryathen the Somber
16792, -- Arcanist Calesthris Dawnstar
16793, -- Magistrix Carinda
16794, -- Apothecary Azethen
16796, -- Amaan the Wise
16797, -- Scout Vanura
16798, -- Provisioner Anir
16804, -- Night Elf Corpse
16819, -- Force Commander Danath Trollbane
16821, -- Magus Filinthus
16823, -- Humphry
16824, -- Master Sergeant Lorin Thalmerok
16825, -- Father Malgor Devidicus
16826, -- Sid Limbardi
16827, -- Honor Guard Wesilow
16828, -- Honor Guard Greyn
16829, -- Magus Zabraxis
16832, -- Prospector Murantus
16834, -- Anchorite Obadei
16835, -- Explorers' League Archaeologist
16839, -- Warp-Scryer Kryv
16840, -- Advisor Sevel
16841, -- Watch Commander Relthorn Netherwane
19254, -- Warlord Dar'toon
16849, -- Vindicator Xannar
16850, -- Gremni Longbeard
16851, -- Mirren Longbeard
16852, -- Sedai's Corpse
16853, -- Anterius Black
16856, -- Caretaker Dilandrus
16858, -- Grelag
16860, -- Jilanne
16862, -- Silanna
16865, -- Injured Stormwind Infantry
16866, -- Injured Nethergarde Infantry
16884, -- War Horse
16885, -- Amythiel Mistwalker
16886, -- Arator the Redeemer
16887, -- Eye of Honor Hold
16888, -- Mahuram Stouthoof
16889, -- Stormwind Celebrant
16890, -- Ironforge Celebrant
16892, -- Darnassus Celebrant
16893, -- Orgrimmar Celebrant
16894, -- Thunder Bluff Celebrant
16895, -- Undercity Celebrant
16897, -- Honor Hold Target Dummy Middle
16898, -- Honor Hold Target Dummy Right
16899, -- Honor Hold Target Dummy Left
16917, -- Aurok
16918, -- Jel
16919, -- Mura
16920, -- Ryosh
16923, -- Novice Ranger
16924, -- Sergeant Kan'ren
16971, -- Injured Draenei
16976, -- Ghostly Denizen
16991, -- Thiah Redmane
16994 -- Draenei Anchorite
); -- Further 17k+ but this already does most of the starter zones + hellfire

-- Remove Protector of the People spawns.
-- https://github.com/vmangos/core/commit/fd446e41acafc361c526eaaf871223e2c70a5329
DELETE FROM `creature` WHERE `id`=8096;

