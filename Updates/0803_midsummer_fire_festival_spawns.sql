-- Midsummer Fire Festival
-- Start: 2021/06/21 at 10:00 AM
-- End: 2021/07/05 at 10:00 AM

UPDATE quest_template SET RequiredRaces=1101, SrcItemId=34862, SrcItemCount=1 WHERE entry=11731; -- Torch Tossing
UPDATE quest_template SET RequiredRaces=690, SrcItemId=34862, SrcItemCount=1 WHERE entry=11922; -- Torch Tossing
UPDATE quest_template SET SrcItemId=34862, SrcItemCount=1 WHERE entry IN (11921,11926); -- More Torch Tossing
-- associate Horde version of Torch Tossing with Master Flame Eater
DELETE FROM creature_questrelation WHERE quest=11922 AND id=26113;
INSERT INTO creature_questrelation (quest, id) VALUES
(11922, 26113);

-- ---------
-- Creatures
-- ---------

DELETE FROM gossip_menu WHERE entry IN (9157,9203,9204);
INSERT INTO gossip_menu (entry, text_id) VALUES
(9157, 12390),
(9203, 12504),
(9204, 12506);
-- Earthen Ring Elder
UPDATE creature_template SET GossipMenuId=9157 WHERE Entry=26221;
-- Dun Morogh Flame Warden
UPDATE creature_template SET GossipMenuId=9203 WHERE Entry=25895;
-- Master Fire Eater
UPDATE creature_template SET GossipMenuId=9204 WHERE Entry=25975;
-- Fire Eater
UPDATE creature_template SET GossipMenuId=9204 WHERE Entry=25962;
-- Master Flame Eater
UPDATE creature_template SET GossipMenuId=9204 WHERE Entry=26113;
-- Flame Eater
UPDATE creature_template SET GossipMenuId=9204 WHERE Entry=25994;

SET @CGUID := 170355;
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+233;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID+0,26258,1,1,-4401.17,3484.65,12.3706,0,120,120,0,0), -- [DND] Midsummer Bonfire Faction Bunny - A
(@CGUID+1,16781,1,1,-4398.25,3458.71,11.294,2.40027,120,120,0,0), -- Midsummer Celebrant
(@CGUID+2,16781,1,1,-4412.49,3464.41,13.1593,4.2586,120,120,0,0), -- Midsummer Celebrant
(@CGUID+3,16781,1,1,-4397.76,3463.22,11.2262,3.00872,120,120,0,0), -- Midsummer Celebrant
(@CGUID+4,16781,1,1,-4414.7,3461.67,13.2285,1.44862,120,120,0,0), -- Midsummer Celebrant
(@CGUID+5,25899,1,1,-4400.1,3474.05,11.6697,5.86431,120,120,0,0), -- Feralas Flame Warden
(@CGUID+6,25962,1,1,-4404.1,3464.07,12.7717,4.66003,120,120,0,0), -- Fire Eater
(@CGUID+7,16781,0,1,-8821.67,881.414,98.7903,3.9968,120,120,0,0), -- Midsummer Celebrant
(@CGUID+8,16781,0,1,-8825.29,876.765,98.8218,1.02974,120,120,0,0), -- Midsummer Celebrant
(@CGUID+9,16781,530,1,9374.86,-6787.51,14.5221,3.01942,120,120,0,0), -- Midsummer Celebrant
(@CGUID+10,16781,530,1,9388.75,-6788,14.1069,2.79253,120,120,0,0), -- Midsummer Celebrant
(@CGUID+11,16781,530,1,9384.72,-6786.87,14.2066,6.07375,120,120,0,0), -- Midsummer Celebrant
(@CGUID+12,16781,530,1,9371.48,-6786.65,14.4389,5.88176,120,120,0,0), -- Midsummer Celebrant
(@CGUID+13,16781,0,1,2278.23,439.367,34.1417,4.97419,120,120,0,0), -- Midsummer Celebrant
(@CGUID+14,16781,0,1,2291.1,432.024,35.4786,4.59022,120,120,0,0), -- Midsummer Celebrant
(@CGUID+15,16781,0,1,2289.64,428.394,34.879,1.0472,120,120,0,0), -- Midsummer Celebrant
(@CGUID+16,16781,0,1,2279.18,435.57,34.1761,1.79769,120,120,0,0), -- Midsummer Celebrant
(@CGUID+17,16781,530,1,7674.28,-6840.68,79.92,1.13605,120,120,0,0), -- Midsummer Celebrant
(@CGUID+18,16781,530,1,7678.85,-6843.01,79.7801,2.79253,120,120,0,0), -- Midsummer Celebrant
(@CGUID+19,16781,530,1,7674.88,-6831.93,78.8845,0.585156,120,120,0,0), -- Midsummer Celebrant
(@CGUID+20,16781,530,1,7670.5,-6830.04,78.6948,0.150516,120,120,0,0), -- Midsummer Celebrant
(@CGUID+21,26188,0,1,-8814.53,876.836,98.8215,3.9619,120,120,0,0), -- [PH] Torch Catching Target Bunny
(@CGUID+22,26188,0,1,-4716.79,-1203.85,501.743,3.01942,120,120,0,0), -- [PH] Torch Catching Target Bunny
(@CGUID+23,26188,0,1,1826.76,254.811,59.9133,0.680678,120,120,0,0), -- [PH] Torch Catching Target Bunny
(@CGUID+24,16817,0,1,-8832.99,862.345,98.9646,0.296706,120,120,0,0), -- Festival Loremaster
(@CGUID+25,25535,0,1,-8816.22,854.917,100.761,2.51327,120,120,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+26,25535,0,1,-8821.53,862.878,100.686,4.92183,120,120,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+27,25535,0,1,-8819.54,848.562,100.829,2.54818,120,120,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+28,25535,0,1,-8825.81,845.633,100.721,2.61799,120,120,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+29,25535,0,1,-8817.78,859.743,100.936,4.34587,120,120,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+30,25535,0,1,-4685.86,-1219.04,503.361,4.92183,120,120,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+31,25535,0,1,1840.97,216.172,61.8509,5.70723,120,120,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+32,25535,0,1,1837.11,225.575,61.9962,3.68264,120,120,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+33,25535,0,1,1840.16,222.559,61.9884,4.34587,120,120,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+34,25535,0,1,1838.25,218.972,61.9281,2.51327,120,120,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+35,25535,0,1,1837.25,213.059,62.0698,3.63028,120,120,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+36,25933,530,1,7687.18,-6831.15,78.5602,1.46608,120,120,0,0), -- Ghostlands Flame Keeper
(@CGUID+37,25946,0,1,2278.42,447.481,34.1212,3.15905,120,120,0,0), -- Tirisfal Glades Flame Keeper
(@CGUID+38,26355,530,1,9388.86,-6770.24,14.0723,0,120,120,0,0), -- [DND] Midsummer Bonfire Faction Bunny - H
(@CGUID+39,26355,0,1,2281.25,458.009,33.9504,0,120,120,0,0), -- [DND] Midsummer Bonfire Faction Bunny - H
(@CGUID+40,26355,530,1,7695.53,-6834.51,77.8711,0,120,120,0,0), -- [DND] Midsummer Bonfire Faction Bunny - H
(@CGUID+41,25536,0,1,-8834.66,860.41,98.9212,1.51844,120,120,0,0), -- [DNT] Torch Tossing Target Bunny Controller
(@CGUID+42,25931,530,1,9380.33,-6772.76,14.1057,4.60767,120,120,0,0), -- Eversong Woods Flame Keeper
(@CGUID+43,25536,0,1,-4699.92,-1223.14,501.743,1.51844,120,120,0,0), -- [DNT] Torch Tossing Target Bunny Controller
(@CGUID+44,25536,0,1,1821.8,219.026,60.3553,1.51844,120,120,0,0), -- [DNT] Torch Tossing Target Bunny Controller
(@CGUID+45,25994,530,1,9376.36,-6782.64,13.9941,1.55334,120,120,0,0), -- Flame Eater
(@CGUID+46,25994,0,1,2283.6,437.622,34.4645,4.90438,120,120,0,0), -- Flame Eater
(@CGUID+47,25994,530,1,7679.88,-6828.62,78.5351,1.55334,120,120,0,0), -- Flame Eater
(@CGUID+48,26123,0,1,-8829.35,871.23,98.7679,4.53786,120,120,0,0), -- Midsummer Supplier
(@CGUID+49,26221,0,1,-8833.23,866.127,98.843,5.53269,120,120,0,0), -- Earthen Ring Elder
(@CGUID+50,16781,530,1,-3001.25,4140.33,2.03046,6.03804,120,120,0,0), -- Midsummer Celebrant
(@CGUID+51,16781,530,1,-2997.97,4145,2.97591,5.3169,120,120,0,0), -- Midsummer Celebrant
(@CGUID+52,16781,530,1,-2989.25,4142.83,5.04983,1.67552,120,120,0,0), -- Midsummer Celebrant
(@CGUID+53,16781,530,1,-2989.42,4146.61,5.53983,4.69494,120,120,0,0), -- Midsummer Celebrant
(@CGUID+54,16781,530,1,-3060.85,2395.11,61.7265,5.98777,120,120,0,0), -- Midsummer Celebrant
(@CGUID+55,16781,530,1,-3060.25,2398.68,61.3582,4.62512,120,120,0,0), -- Midsummer Celebrant
(@CGUID+56,16781,530,1,-3050.47,2388.16,62.449,1.27409,120,120,0,0), -- Midsummer Celebrant
(@CGUID+57,16781,530,1,-3049.1,2392.41,61.6765,2.94477,120,120,0,0), -- Midsummer Celebrant
(@CGUID+58,16781,530,1,-3961.43,2055.03,95.148,3.92699,120,120,0,0), -- Midsummer Celebrant
(@CGUID+59,16781,530,1,-3970.26,2046.13,95.1482,0.260414,120,120,0,0), -- Midsummer Celebrant
(@CGUID+60,16781,530,1,-3969.28,2043.57,95.1483,0.69949,120,120,0,0), -- Midsummer Celebrant
(@CGUID+61,16781,530,1,-3963.26,2052.79,95.148,4.49892,120,120,0,0), -- Midsummer Celebrant
(@CGUID+62,16781,530,1,-3814.24,-11505.8,-138.451,4.43314,120,120,0,0), -- Midsummer Celebrant
(@CGUID+63,16781,530,1,-3790.32,-11510.5,-134.645,1.54078,120,120,0,0), -- Midsummer Celebrant
(@CGUID+64,16781,530,1,-3815.92,-11510.3,-138.488,1.11701,120,120,0,0), -- Midsummer Celebrant
(@CGUID+65,16781,530,1,-3795.79,-11510.4,-134.709,0.174533,120,120,0,0), -- Midsummer Celebrant
(@CGUID+66,16781,530,1,-2235.3,-11914.3,26.0522,5.23599,120,120,0,0), -- Midsummer Celebrant
(@CGUID+67,16781,530,1,-2232.9,-11917.4,26.9251,2.21657,120,120,0,0), -- Midsummer Celebrant
(@CGUID+68,16781,530,1,-2222.74,-11892.7,27.4888,1.44862,120,120,0,0), -- Midsummer Celebrant
(@CGUID+69,16781,530,1,-2222.54,-11890.4,27.9706,4.2586,120,120,0,0), -- Midsummer Celebrant
(@CGUID+70,16781,530,1,9796.87,-7261.26,26.3524,3.01942,120,120,0,0), -- Midsummer Celebrant
(@CGUID+71,16781,530,1,9793.19,-7259.97,26.3159,5.88176,120,120,0,0), -- Midsummer Celebrant
(@CGUID+72,16781,530,1,9800.87,-7248.8,26.215,2.23402,120,120,0,0), -- Midsummer Celebrant
(@CGUID+73,16781,530,1,9797.41,-7244.81,26.1488,5.48033,120,120,0,0), -- Midsummer Celebrant
(@CGUID+74,16781,530,1,-4212.72,-12333.7,3.5945,1.44862,120,120,0,0), -- Midsummer Celebrant
(@CGUID+75,16781,530,1,-4211.91,-12297.8,1.91208,5.23599,120,120,0,0), -- Midsummer Celebrant
(@CGUID+76,16781,530,1,-4210.65,-12301.3,1.65479,2.21657,120,120,0,0), -- Midsummer Celebrant
(@CGUID+77,16781,530,1,-4211.76,-12330.5,3.18388,4.2586,120,120,0,0), -- Midsummer Celebrant
(@CGUID+78,16781,530,1,-2507.04,7551.84,-1.13188,5.0855,120,120,0,0), -- Midsummer Celebrant
(@CGUID+79,16781,530,1,-2510.17,7530.71,0.631805,0.693437,120,120,0,0), -- Midsummer Celebrant
(@CGUID+80,16781,530,1,-2506.73,7556,-1.40493,4.83456,120,120,0,0), -- Midsummer Celebrant
(@CGUID+81,16781,530,1,-2507.24,7532.45,0.469488,3.92699,120,120,0,0), -- Midsummer Celebrant
(@CGUID+82,16781,530,1,2031.36,6601.51,136.84,1.44862,120,120,0,0), -- Midsummer Celebrant
(@CGUID+83,16781,530,1,2041.98,6575.76,134.592,5.23599,120,120,0,0), -- Midsummer Celebrant
(@CGUID+84,16781,530,1,2033.85,6604.13,137.453,5.63212,120,120,0,0), -- Midsummer Celebrant
(@CGUID+85,16781,530,1,2044.86,6572.4,134.823,2.21657,120,120,0,0), -- Midsummer Celebrant
(@CGUID+86,16781,530,1,2263.68,6136.71,137.215,4.2586,120,120,0,0), -- Midsummer Celebrant
(@CGUID+87,16781,530,1,2263.91,6132.21,137.546,1.44862,120,120,0,0), -- Midsummer Celebrant
(@CGUID+88,16781,530,1,2296.05,6156.39,135.083,2.21657,120,120,0,0), -- Midsummer Celebrant
(@CGUID+89,16781,530,1,2293.9,6160.11,135.85,5.23599,120,120,0,0), -- Midsummer Celebrant
(@CGUID+90,16781,530,1,3109.27,3720.61,145.173,0.773154,120,120,0,0), -- Midsummer Celebrant
(@CGUID+91,16781,530,1,3125.48,3725.59,142.59,3.15026,120,120,0,0), -- Midsummer Celebrant
(@CGUID+92,16781,530,1,3126.44,3729.57,142.483,3.92699,120,120,0,0), -- Midsummer Celebrant
(@CGUID+93,16781,530,1,3109.51,3725.18,145.238,0.0671396,120,120,0,0), -- Midsummer Celebrant
(@CGUID+94,16781,530,1,2928.21,3698.05,143.808,2.21657,120,120,0,0), -- Midsummer Celebrant
(@CGUID+95,16781,530,1,2922.31,3666.27,145.194,1.44862,120,120,0,0), -- Midsummer Celebrant
(@CGUID+96,16781,530,1,2923.46,3669.01,144.924,4.2586,120,120,0,0), -- Midsummer Celebrant
(@CGUID+97,16781,530,1,2926.39,3701.31,143.776,5.23599,120,120,0,0), -- Midsummer Celebrant
(@CGUID+98,16817,530,1,-3787.91,-11506.1,-134.601,5.96903,120,120,0,0), -- Festival Loremaster
(@CGUID+99,16818,530,1,9807,-7246.82,26.2161,5.67232,120,120,0,0), -- Festival Talespinner
(@CGUID+100,25535,530,1,-3812.05,-11492.4,-136.653,5.67232,120,120,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+101,25535,530,1,-3810.84,-11496.9,-136.652,6.16101,120,120,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+102,25535,530,1,-3804.29,-11485.4,-136.533,5.27089,120,120,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+103,25535,530,1,-3807.57,-11490.8,-136.608,5.77704,120,120,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+104,25535,530,1,-3808.43,-11486.3,-136.544,5.70723,120,120,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+105,25535,530,1,9804.1,-7214.45,28.4953,4.50295,120,120,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+106,25535,530,1,9799.37,-7217.6,28.4873,5.28835,120,120,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+107,25535,530,1,9794.51,-7221.35,28.4597,5.60251,120,120,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+108,25535,530,1,9804.03,-7219.89,27.821,4.34587,120,120,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+109,25535,530,1,9799.37,-7222.61,27.7769,5.81195,120,120,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+110,25536,530,1,9805.51,-7239.36,26.129,1.51844,120,120,0,0), -- [DNT] Torch Tossing Target Bunny Controller
(@CGUID+111,25536,530,1,-3794.29,-11503.7,-134.666,1.51844,120,120,0,0), -- [DNT] Torch Tossing Target Bunny Controller
(@CGUID+112,25888,530,1,-4219.22,-12310.5,2.43919,5.93412,120,120,0,0), -- Azuremyst Isle Flame Warden
(@CGUID+113,25889,530,1,2024.91,6590.53,135.321,5.93412,120,120,0,0), -- Blade's Edge Flame Warden
(@CGUID+114,25891,530,1,-2234.83,-11895.9,26.6242,4.69494,120,120,0,0), -- Bloodmyst Isle Flame Warden
(@CGUID+115,25903,530,1,-2517.06,7555.08,-1.79316,5.37561,120,120,0,0), -- Nagrand Flame Warden
(@CGUID+116,25905,530,1,-3951.3,2045.65,95.148,4.5204,120,120,0,0), -- Shadowmoon Valley Flame Warden
(@CGUID+117,25907,530,1,-2998.85,4164.04,5.16901,0.593412,120,120,0,0), -- Terokkar Forest Flame Warden
(@CGUID+118,25913,530,1,3127.55,3743.15,141.771,6.16101,120,120,0,0), -- Netherstorm Flame Warden
(@CGUID+119,25918,530,1,2917.22,3693.41,143.77,2.93215,120,120,0,0), -- Netherstorm Flame Keeper
(@CGUID+120,25926,530,1,2286.71,6137.62,136.306,1.5708,120,120,0,0), -- Blade's Edge Flame Keeper
(@CGUID+121,25938,530,1,-3067.28,2387.9,62.1935,3.36849,120,120,0,0), -- Shadowmoon Valley Flame Keeper
(@CGUID+122,25962,530,1,-2993.38,4138.36,3.64225,5.91667,120,120,0,0), -- Fire Eater
(@CGUID+123,25962,530,1,-3964.37,2047.7,95.148,4.76475,120,120,0,0), -- Fire Eater
(@CGUID+124,25962,530,1,-2217.42,-11907.3,27.2967,2.3911,120,120,0,0), -- Fire Eater
(@CGUID+125,25962,530,1,-4199.05,-12309.1,1.36162,3.08923,120,120,0,0), -- Fire Eater
(@CGUID+126,25962,530,1,-2501.56,7537.86,0.207582,2.37365,120,120,0,0), -- Fire Eater
(@CGUID+127,25962,530,1,2046.73,6594.32,136.518,3.29867,120,120,0,0), -- Fire Eater
(@CGUID+128,25962,530,1,3114.27,3725.5,145.368,4.99164,120,120,0,0), -- Fire Eater
(@CGUID+129,25975,530,1,-3789.96,-11498.6,-134.597,0.925025,120,120,0,0), -- Master Fire Eater
(@CGUID+130,25994,530,1,-3057.36,2394.05,61.7111,0.366519,120,120,0,0), -- Flame Eater
(@CGUID+131,25994,530,1,2272.96,6157.62,138.149,4.86947,120,120,0,0), -- Flame Eater
(@CGUID+132,25994,530,1,2912.71,3669.58,144.751,3.56047,120,120,0,0), -- Flame Eater
(@CGUID+133,26113,530,1,9811.29,-7242.43,26.1795,5.32325,120,120,0,0), -- Master Flame Eater
(@CGUID+134,26123,530,1,-3792.68,-11515.7,-134.693,6.24828,120,120,0,0), -- Midsummer Supplier
(@CGUID+135,26124,530,1,9796.37,-7253.51,26.253,5.11381,120,120,0,0), -- Midsummer Merchant
(@CGUID+136,26188,530,1,9816.4,-7269.1,26.3151,4.4855,120,120,0,0), -- [PH] Torch Catching Target Bunny
(@CGUID+137,26188,530,1,-3769,-11506.2,-134.381,3.33358,120,120,0,0), -- [PH] Torch Catching Target Bunny
(@CGUID+138,26221,530,1,-3794.85,-11523.7,-134.994,0.0698132,120,120,0,0), -- Earthen Ring Elder
(@CGUID+139,26221,530,1,9807.3,-7232.68,26.1,0.0698132,120,120,0,0), -- Earthen Ring Elder
(@CGUID+140,0,530,1,-139.914,1220.76,39.7349,0.445922,360,360,5,1), -- Twilight Cryomancer/Frostblade
(@CGUID+141,0,530,1,-143.968,1176.46,41.5142,2.20426,360,360,5,1), -- Twilight Cryomancer/Frostblade
(@CGUID+142,0,530,1,-112.623,1217.24,44.3797,2.18088,360,360,5,1), -- Twilight Cryomancer/Frostblade
(@CGUID+143,0,530,1,-145.754,1203.62,40.9849,0.75617,360,360,5,1), -- Twilight Cryomancer/Frostblade
(@CGUID+144,0,530,1,-129.072,1152.14,41.4548,5.19023,360,360,5,1), -- Twilight Cryomancer/Frostblade
(@CGUID+145,0,530,1,-157.42,1128.98,43.9913,0.782341,360,360,5,1), -- Twilight Cryomancer/Frostblade
(@CGUID+146,0,530,1,-128.594,1205.7,42.0048,3.5249,360,360,5,1), -- Twilight Cryomancer/Frostblade
(@CGUID+147,0,530,1,-125,1178.12,41.2596,3.92746,360,360,5,1), -- Twilight Cryomancer/Frostblade
(@CGUID+148,0,530,1,-152.836,1152.89,41.6034,6.15855,360,360,5,1), -- Twilight Cryomancer/Frostblade
(@CGUID+149,0,530,1,-121.744,1136.89,41.5798,5.49131,360,360,5,1), -- Twilight Cryomancer/Frostblade
(@CGUID+150,0,530,1,-169.809,1103.4,42.0628,5.73304,360,360,5,1), -- Twilight Cryomancer/Frostblade
(@CGUID+151,0,530,1,-144.845,1138.8,41.6034,3.82217,360,360,5,1), -- Twilight Cryomancer/Frostblade
(@CGUID+152,0,530,1,-153.971,1189.31,41.3892,5.76704,360,360,5,1), -- Twilight Cryomancer/Frostblade
(@CGUID+153,0,530,1,-172.91,1205.8,40.9606,4.66013,360,360,5,1), -- Twilight Cryomancer/Frostblade
(@CGUID+154,26258,530,1,-2999.47,4155.46,4.71059,4.93928,120,120,0,0), -- [DND] Midsummer Bonfire Faction Bunny - A
(@CGUID+155,26258,530,1,-3943.54,2049.31,95.148,6.0912,120,120,0,0), -- [DND] Midsummer Bonfire Faction Bunny - A
(@CGUID+156,26258,530,1,-3792.9,-11502.7,-134.662,0,120,120,0,0), -- [DND] Midsummer Bonfire Faction Bunny - A
(@CGUID+157,26258,530,1,-2247.22,-11898.1,27.0128,1.67552,120,120,0,0), -- [DND] Midsummer Bonfire Faction Bunny - A
(@CGUID+158,26258,530,1,-4223.84,-12318.4,2.56028,2.93215,120,120,0,0), -- [DND] Midsummer Bonfire Faction Bunny - A
(@CGUID+159,26258,530,1,-2526.49,7551.51,-2.26869,2.14675,120,120,0,0), -- [DND] Midsummer Bonfire Faction Bunny - A
(@CGUID+160,26258,530,1,2019.8,6580.19,134.445,1.93732,120,120,0,0), -- [DND] Midsummer Bonfire Faction Bunny - A
(@CGUID+161,26258,530,1,3122,3751.69,141.732,0,120,120,0,0), -- [DND] Midsummer Bonfire Faction Bunny - A
(@CGUID+162,26355,530,1,9806.84,-7241.22,26.1482,1.95477,120,120,0,0), -- [DND] Midsummer Bonfire Faction Bunny - H
(@CGUID+163,26355,530,1,2274.42,6133.03,137.042,3.03687,120,120,0,0), -- [DND] Midsummer Bonfire Faction Bunny - H
(@CGUID+164,26355,530,1,2921.22,3685.22,143.735,0,120,120,0,0), -- [DND] Midsummer Bonfire Faction Bunny - H
(@CGUID+165,26355,530,1,-3059.86,2382.93,62.66,3.59538,120,120,0,0), -- [DND] Midsummer Bonfire Faction Bunny - H
(@CGUID+166,16781,530,1,183.656,6001.85,23.9098,5.76245,300,300,0,0), -- Midsummer Celebrant
(@CGUID+167,16781,530,1,183.666,5998.61,23.7887,1.12075,300,300,0,0), -- Midsummer Celebrant
(@CGUID+168,16781,530,1,181.842,5991.56,22.9939,0.808944,300,300,0,0), -- Midsummer Celebrant
(@CGUID+169,16781,530,1,184.16,5995.16,23.7236,4.20658,300,300,0,0), -- Midsummer Celebrant
(@CGUID+170,25962,530,1,191.919,5998.19,24.2443,4.56315,300,300,0,0), -- Fire Eater
(@CGUID+171,25912,530,1,195.944,6003.78,23.5325,5.86299,300,300,0,0), -- Zangarmarsh Flame Warden
(@CGUID+172,25936,1,1,-2321.77,-614.483,-9.27059,5.80089,300,300,0,0), -- Mulgore Flame Keeper
(@CGUID+173,0,1,1,3886.6,771.658,5.00204,3.78625,300,300,30,1), -- Twilight Flameguard/Firesworn
(@CGUID+174,0,1,1,3873.34,786.567,3.15877,1.19364,300,300,30,1), -- Twilight Flameguard/Firesworn
(@CGUID+175,0,1,1,3886.25,820.325,1.23753,1.74656,300,300,30,1), -- Twilight Flameguard/Firesworn
(@CGUID+176,0,1,1,3922.2,795.453,9.05771,3.07546,300,300,30,1), -- Twilight Flameguard/Firesworn
(@CGUID+177,0,1,1,3956.09,767.42,7.88992,5.17483,300,300,30,1), -- Twilight Flameguard/Firesworn
(@CGUID+178,0,1,1,3988.96,790.529,6.19678,0.208762,300,300,30,1), -- Twilight Flameguard/Firesworn
(@CGUID+179,0,1,1,3899.13,764.193,6.01616,5.62487,300,300,30,1), -- Twilight Flameguard/Firesworn
(@CGUID+180,0,1,1,3923.53,840.173,2.29151,2.07879,300,300,30,1), -- Twilight Flameguard/Firesworn
(@CGUID+181,0,1,1,3900.86,799.587,7.80664,1.37978,300,300,30,1), -- Twilight Flameguard/Firesworn
(@CGUID+182,0,1,1,3950.07,846.313,7.9843,4.16433,300,300,30,1), -- Twilight Flameguard/Firesworn
(@CGUID+183,0,1,1,3982.71,816.306,8.04045,4.0481,300,300,30,1), -- Twilight Flameguard/Firesworn
(@CGUID+184,0,1,1,3918.32,760.473,7.77712,1.94087,300,300,30,1), -- Twilight Flameguard/Firesworn
(@CGUID+185,25924,1,1,3916.05,783.268,9.0577,0.717698,300,300,0,0), -- Twilight Speaker Viktor
(@CGUID+186,25949,1,1,4196.1,1172.44,6.68073,0.688985,300,300,0,0), -- Ice Caller Briatha
(@CGUID+187,25994,1,1,-2344.99,-615.533,-7.06313,0.976602,300,300,0,0), -- Flame Eater
(@CGUID+188,16781,1,1,-2336.91,-619.347,-7.48957,1.3426,300,300,0,0), -- Midsummer Celebrant
(@CGUID+189,16781,1,1,-2336.15,-605.978,-8.47793,5.03898,300,300,0,0), -- Midsummer Celebrant
(@CGUID+190,25909,0,1,1008.57,-1452.78,61.661,5.27254,300,300,0,0), -- Western Plaguelands Flame Warden
(@CGUID+191,16781,1,1,-2333.01,-607.47,-8.5825,4.26458,300,300,0,0), -- Midsummer Celebrant
(@CGUID+192,16781,1,1,-2336.28,-611.022,-8.02869,1.1973,300,300,0,0), -- Midsummer Celebrant
(@CGUID+193,25535,1,1,-1048.85,299.991,136.202,0,300,300,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+194,25535,1,1,-1049.06,306.612,134.733,0,300,300,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+195,25535,1,1,-1042.59,306.597,136.243,0,300,300,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+196,25535,1,1,-1041.57,313.124,135.073,0,300,300,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+197,25535,1,1,-1035.84,312.571,136.455,0,300,300,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+198,25535,1,1,1915.7,-4320.43,23.6215,0,300,300,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+199,25535,1,1,1918.05,-4314.79,24.6562,0,300,300,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+200,25535,1,1,1920.34,-4319.12,23.6321,0,300,300,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+201,25535,1,1,1923.91,-4315.28,24.2867,0,300,300,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+202,25535,1,1,1925.28,-4321.31,23.4577,0,300,300,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+203,25535,0,1,-4683.96,-1232.55,503.46,0,300,300,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+204,25535,0,1,-4677.29,-1229.75,503.46,0,300,300,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+205,25535,0,1,-4675.42,-1224.7,503.455,0,300,300,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+206,25535,0,1,-4678.74,-1219.32,503.455,0,300,300,0,0), -- [DNT] Torch Tossing Target Bunny
(@CGUID+207,0,530,1,-357.383,1135.48,41.6245,2.04735,300,300,30,1), -- Twilight Cryomancer/Frostblade
(@CGUID+208,0,530,1,-368.085,1156.21,43.6638,2.04735,300,300,30,1), -- Twilight Cryomancer/Frostblade
(@CGUID+209,0,530,1,-368.382,1184.77,42.1961,0.422359,300,300,30,1), -- Twilight Cryomancer/Frostblade
(@CGUID+210,0,530,1,-343.397,1204.57,40.4944,3.76894,300,300,30,1), -- Twilight Cryomancer/Frostblade
(@CGUID+211,0,530,1,-371.037,1107.27,47.9595,0.709027,300,300,30,1), -- Twilight Cryomancer/Frostblade
(@CGUID+212,0,530,1,-368.17,1110.18,46.4436,3.85612,300,300,30,1), -- Twilight Cryomancer/Frostblade
(@CGUID+213,0,530,1,-353.873,1148.84,41.5226,4.61717,300,300,30,1), -- Twilight Cryomancer/Frostblade
(@CGUID+214,0,530,1,-367.485,1169.15,43.1463,4.74676,300,300,30,1), -- Twilight Cryomancer/Frostblade
(@CGUID+215,0,530,1,-360.011,1195.66,41.1995,4.1043,300,300,30,1), -- Twilight Cryomancer/Frostblade
(@CGUID+216,0,530,1,-348.858,1207.35,40.1246,5.18501,300,300,30,1), -- Twilight Cryomancer/Frostblade
(@CGUID+217,16781,1,1,127.08,-4722.96,18.601,0,300,300,0,0), -- Midsummer Celebrant
(@CGUID+218,16781,1,1,131.17,-4725.84,17.8,2.48972,300,300,0,0), -- Midsummer Celebrant
(@CGUID+219,16781,1,1,131.35,-4731.75,16.76,0,300,300,0,0), -- Midsummer Celebrant
(@CGUID+220,16781,1,1,136.676,-4729.85,16.67,3.56571,300,300,0,0), -- Midsummer Celebrant
(@CGUID+221,25929,1,1,140.26,-4721.44,17.7517,5.14437,300,300,0,0), -- Durotar Flame Keeper
(@CGUID+222,25994,1,1,140.061,-4733.57,15.639,5.14437,300,300,0,0), -- Flame Eater
(@CGUID+223,25892,0,1,-8254.28,-2625.62,133.159,1.29179,300,300,0,0), -- Burning Steppes Flame Warden
(@CGUID+224,16781,0,1,-8255.11,-2614.33,133.154,0.508745,300,300,0,0), -- Midsummer Celebrant
(@CGUID+225,16781,0,1,-8253.26,-2611.61,133.154,4.93446,300,300,0,0), -- Midsummer Celebrant
(@CGUID+226,16781,0,1,-8262.75,-2643.66,133.39,5.27218,300,300,0,0), -- Midsummer Celebrant
(@CGUID+227,16781,0,1,-8259.55,-2650.01,133.476,2.09132,300,300,0,0), -- Midsummer Celebrant
(@CGUID+228,25962,0,1,-8245.74,-2607.85,133.155,3.51183,300,300,0,0), -- Fire Eater
(@CGUID+229,25962,0,1,992.05,-1438.97,64.3942,5.22073,300,300,0,0), -- Fire Eater
(@CGUID+230,16781,0,1,989.633,-1444.97,63.2034,0.579809,300,300,0,0), -- Midsummer Celebrant
(@CGUID+231,16781,0,1,1003.8,-1434.55,63.5274,3.86513,300,300,0,0), -- Midsummer Celebrant
(@CGUID+232,16781,0,1,997.675,-1428.17,65.905,4.35443,300,300,0,0), -- Midsummer Celebrant
(@CGUID+233,16781,0,1,1007.68,-1441.76,62.6307,2.69567,300,300,0,0); -- Midsummer Celebrant

DELETE FROM creature_spawn_entry WHERE guid BETWEEN @CGUID+140 AND @CGUID+153;
DELETE FROM creature_spawn_entry WHERE guid BETWEEN @CGUID+173 AND @CGUID+184;
DELETE FROM creature_spawn_entry WHERE guid BETWEEN @CGUID+207 AND @CGUID+216;
INSERT INTO creature_spawn_entry (guid, entry) VALUES
(@CGUID+140, 26222), (@CGUID+140, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+141, 26222), (@CGUID+141, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+142, 26222), (@CGUID+142, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+143, 26222), (@CGUID+143, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+144, 26222), (@CGUID+144, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+145, 26222), (@CGUID+145, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+146, 26222), (@CGUID+146, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+147, 26222), (@CGUID+147, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+148, 26222), (@CGUID+148, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+149, 26222), (@CGUID+149, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+150, 26222), (@CGUID+150, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+151, 26222), (@CGUID+151, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+152, 26222), (@CGUID+152, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+153, 26222), (@CGUID+153, 26223), -- Twilight Cryomancer/Twilight Frostblade

(@CGUID+173, 25866), (@CGUID+173, 25863), -- Twilight Flameguard/Firesworn
(@CGUID+174, 25866), (@CGUID+174, 25863), -- Twilight Flameguard/Firesworn
(@CGUID+175, 25866), (@CGUID+175, 25863), -- Twilight Flameguard/Firesworn
(@CGUID+176, 25866), (@CGUID+176, 25863), -- Twilight Flameguard/Firesworn
(@CGUID+177, 25866), (@CGUID+177, 25863), -- Twilight Flameguard/Firesworn
(@CGUID+178, 25866), (@CGUID+178, 25863), -- Twilight Flameguard/Firesworn
(@CGUID+179, 25866), (@CGUID+179, 25863), -- Twilight Flameguard/Firesworn
(@CGUID+180, 25866), (@CGUID+180, 25863), -- Twilight Flameguard/Firesworn
(@CGUID+181, 25866), (@CGUID+181, 25863), -- Twilight Flameguard/Firesworn
(@CGUID+182, 25866), (@CGUID+182, 25863), -- Twilight Flameguard/Firesworn
(@CGUID+183, 25866), (@CGUID+183, 25863), -- Twilight Flameguard/Firesworn
(@CGUID+184, 25866), (@CGUID+184, 25863), -- Twilight Flameguard/Firesworn

(@CGUID+207, 26222), (@CGUID+207, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+208, 26222), (@CGUID+208, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+209, 26222), (@CGUID+209, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+210, 26222), (@CGUID+210, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+211, 26222), (@CGUID+211, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+212, 26222), (@CGUID+212, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+213, 26222), (@CGUID+213, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+214, 26222), (@CGUID+214, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+215, 26222), (@CGUID+215, 26223), -- Twilight Cryomancer/Twilight Frostblade
(@CGUID+216, 26222), (@CGUID+216, 26223); -- Twilight Cryomancer/Twilight Frostblade

DELETE FROM game_event_creature WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+233;
INSERT INTO game_event_creature (guid, `event`)
SELECT guid, 1 FROM creature WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+233;

-- duplicate spawn of 93639
DELETE FROM creature_addon WHERE guid=93734;
DELETE FROM creature WHERE guid=93734;
DELETE FROM game_event_creature WHERE guid=93734;
-- duplicate spawn of 93695
DELETE FROM creature_addon WHERE guid=726;
DELETE FROM creature WHERE guid=726;
DELETE FROM game_event_creature WHERE guid=726;

-- -----------
-- Gameobjects
-- -----------

-- source: Trinity
DELETE FROM gameobject_template WHERE entry IN (187917, 187919, 187935, 187937, 187942, 187949, 187955, 187967, 187941);
INSERT INTO gameobject_template (entry, `type`, displayId, `name`, IconName, castBarCaption, faction, flags, ExtraFlags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, CustomData1, mingold, maxgold, ScriptName) VALUES
('187917', '2', '7734', 'Alliance Bonfire', '', '', '0', '0', '0', '0.7', '43', '8517', '0', '9384', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('187919', '2', '7734', 'Alliance Bonfire', '', '', '0', '0', '0', '0.7', '43', '8518', '0', '9385', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('187935', '2', '7734', 'Alliance Bonfire', '', '', '0', '0', '0', '1', '43', '8534', '0', '9401', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('187937', '2', '7734', 'Alliance Bonfire', '', '', '0', '0', '0', '1', '43', '8536', '0', '9403', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('187942', '2', '7734', 'Alliance Bonfire', '', '', '0', '0', '0', '1', '43', '8541', '0', '9409', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('187949', '2', '7734', 'Horde Bonfire', '', '', '0', '0', '0', '1', '43', '8542', '0', '9379', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('187955', '2', '7734', 'Horde Bonfire', '', '', '0', '0', '0', '0.7', '43', '8554', '0', '9357', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('187967', '2', '7734', 'Horde Bonfire', '', '', '0', '0', '0', '1', '43', '8566', '0', '9369', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('187941', '2', '7734', 'Alliance Bonfire', '', '', '0', '0', '0', '1', '43', '8540', '0', '9408', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');

-- from wotlk db
INSERT INTO gameobject_template(entry, type, displayId, name, size, data0, data1, data2, data3) VALUES
('187921', '2', '7734', 'Alliance Bonfire', '1', '43', '8520', '0', '9387'),
('187922', '2', '7734', 'Alliance Bonfire', '1', '43', '8521', '0', '9388'),
('187933', '2', '7734', 'Alliance Bonfire', '1', '43', '8532', '0', '9399'),
('187939', '2', '7734', 'Alliance Bonfire', '1', '43', '8538', '0', '9405'),
('187958', '2', '7734', 'Horde Bonfire', '1', '43', '8557', '0', '9360'),
('187974', '2', '7734', 'Horde Bonfire', '1', '43', '8573', '0', '9377');

-- from sniffs
INSERT INTO gameobject_template(entry, type, displayId, name, size, data0, data1, data2, data3) VALUES
('187960', '2', '7734', 'Horde Bonfire', '1', '43', '8559', '0', '9362'),
('187962', '2', '7734', 'Horde Bonfire', '1', '43', '8561', '0', '9364');

-- remove duplicate spawn of guid 52480
DELETE FROM gameobject WHERE guid=52484;
DELETE FROM game_event_gameobject WHERE guid=52484;

-- remove bad spawns of Flame of the Exodar/Silvermoon
DELETE FROM gameobject WHERE guid=5300292;
DELETE FROM game_event_gameobject WHERE guid=5300292;
DELETE FROM gameobject WHERE guid=122959;
DELETE FROM game_event_gameobject WHERE guid=122959;

SET @OGUID := 121997;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+1836;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID+0,181354,1,1,9819.46,2391.37,1313.66,-2.30383,0,0,0.913545,-0.406737,120,120,0,0), -- Floating, Medium - MFF
(@OGUID+1,181354,1,1,9823.38,2416.88,1313.66,2.25147,0,0,0.902585,0.430511,120,120,0,0), -- Floating, Medium - MFF
(@OGUID+2,181355,0,1,-3737.75,-573.021,5.8524,-0.855212,0,0,0.414693,-0.909961,120,120,0,0), -- Standing, Exterior, Medium - MFF
(@OGUID+3,181355,0,1,-3738.61,-601.839,6.67846,0.942478,0,0,0.45399,0.891007,120,120,0,0), -- Standing, Exterior, Medium - MFF
(@OGUID+4,181355,0,1,-3720.9,-592.833,6.52905,-3.08923,0,0,0.999657,-0.026177,120,120,0,0), -- Standing, Exterior, Medium - MFF
(@OGUID+5,181355,1,1,9939.75,2594.98,1316.24,-0.10472,0,0,0.052336,-0.99863,120,120,0,0), -- Standing, Exterior, Medium - MFF
(@OGUID+6,181391,1,1,9978.79,2546.93,1315.76,-2.23402,0,0,0.898794,-0.438371,120,120,0,0), -- Standing, Interior, Small - MFF
(@OGUID+7,181391,1,1,9934.3,2557.73,1316.95,-1.71042,0,0,0.75471,-0.656059,120,120,0,0), -- Standing, Interior, Small - MFF
(@OGUID+8,181401,1,1,6519.29,856.82,22.6424,1.25664,0,0,0.587785,0.809017,120,120,0,0), -- Hanging, Streamer x3 - MFF
(@OGUID+9,181401,1,1,6510.12,828.076,22.8584,-1.88496,0,0,0.809017,-0.587785,120,120,0,0), -- Hanging, Streamer x3 - MFF
(@OGUID+10,181431,1,1,9658.94,2619.32,1335.68,3.00197,0,0,0.997564,0.0697565,120,120,0,0), -- Fire Festival Fury Trap
(@OGUID+11,181302,1,1,-4405.51,3474.66,12.4482,2.94961,0,0,0.995396,0.0958458,120,120,0,0), -- Camp Crate
(@OGUID+12,181302,1,1,-4400.79,3469.04,11.9604,0.610865,0,0,0.300706,0.953717,120,120,0,0), -- Camp Crate
(@OGUID+13,181305,1,1,-4405.46,3471.1,12.5861,2.26893,0,0,0.906308,0.422618,120,120,0,0), -- Camp Table
(@OGUID+14,181306,1,1,-4405,3476.32,12.3922,2.00713,0,0,0.843391,0.5373,120,120,0,0), -- Camp Jug
(@OGUID+15,181307,1,1,-4405.8,3471.76,13.5353,1.65806,0,0,0.737277,0.67559,120,120,0,0), -- Camp Mug
(@OGUID+16,181355,1,1,-4338.29,25.9194,53.3814,-2.07694,0,0,0.861629,-0.507538,120,120,0,0), -- Standing, Exterior, Medium - MFF
(@OGUID+17,181355,1,1,-4407.76,224.126,26.0865,0.314159,0,0,0.156434,0.987688,120,120,0,0), -- Standing, Exterior, Medium - MFF
(@OGUID+18,181355,1,1,-4455.85,323.518,51.1823,1.97222,0,0,0.833886,0.551937,120,120,0,0), -- Standing, Exterior, Medium - MFF
(@OGUID+19,181355,1,1,-4396.06,3466.38,10.7445,-1.62316,0,0,0.725374,-0.688354,120,120,0,0), -- Standing, Exterior, Medium - MFF
(@OGUID+20,181355,1,1,-4411.27,3479.31,12.7265,-0.436333,0,0,0.21644,-0.976296,120,120,0,0), -- Standing, Exterior, Medium - MFF
(@OGUID+21,181355,1,1,-4397.32,3494.22,12.6198,1.18682,0,0,0.559193,0.829038,120,120,0,0), -- Standing, Exterior, Medium - MFF
(@OGUID+22,181355,1,1,-4394.38,3474.94,10.5022,0.855211,0,0,0.414693,0.909961,120,120,0,0), -- Standing, Exterior, Medium - MFF
(@OGUID+23,181355,1,1,-4413.82,3471.39,12.9351,0.855211,0,0,0.414693,0.909961,120,120,0,0), -- Standing, Exterior, Medium - MFF
(@OGUID+24,181401,1,1,-4233.09,3285.72,27.0516,0,0,0,0,1,120,120,0,0), -- Hanging, Streamer x3 - MFF
(@OGUID+25,181401,1,1,-4263.37,3285.34,26.997,3.14159,0,0,1,-0.0000000437114,120,120,0,0), -- Hanging, Streamer x3 - MFF
(@OGUID+26,181605,1,1,-4408.1,3457.97,13.4804,-0.506145,0,0,0.25038,-0.968148,120,120,0,0), -- Ribbon Pole
(@OGUID+27,188020,1,1,-4417.4,3458.05,13.8041,2.82743,0,0,0.987688,0.156434,120,120,0,0), -- Camp Banner
(@OGUID+28,188020,1,1,-4391.19,3487,10.3488,-0.453786,0,0,0.224951,-0.97437,120,120,0,0), -- Camp Banner
(@OGUID+29,188020,1,1,-4405.11,3494.07,12.8733,2.77507,0,0,0.983255,0.182236,120,120,0,0), -- Camp Banner
(@OGUID+30,188021,530,1,9378.46,-6767.86,14.3515,-1.69297,0,0,-0.748956,0.66262,120,120,255,1), -- Camp Pavilion
(@OGUID+31,188021,0,1,2281.64,445.856,34.2144,-3.08918,0,0,-0.999657,0.0262016,120,120,255,1), -- Camp Pavilion
(@OGUID+32,188021,530,1,9789.21,-7249.1,26.0723,-0.90757,0,0,-0.438371,0.898794,120,120,255,1), -- Camp Pavilion
(@OGUID+33,188174,0,1,-8836.6,866.36,98.7168,2.09439,0,0,0.866025,0.500001,120,120,255,1), -- Midsummer Music Doodad
(@OGUID+34,181355,1,1,-7243.51,-3855.16,10.1714,0.855211,0,0,0.414693,0.909961,120,120,0,0), -- Standing, Exterior, Medium - MFF
(@OGUID+35,188020,1,1,-6999.63,928.199,7.79131,0.994838,0,0,0.477159,0.878817,120,120,0,0), -- Camp Banner
(@OGUID+36,181300,0,1,-8893.99,578.844,92.8094,0.680677,0,0,0.333806,0.942642,120,120,255,1), -- Standing, Large - MFF
(@OGUID+37,181300,0,1,-8884.23,566.347,92.8298,0.715585,0,0,0.350207,0.936672,120,120,255,1), -- Standing, Large - MFF
(@OGUID+38,181300,0,1,-8884.23,566.347,92.8298,0.715585,0,0,0.350207,0.936672,120,120,255,1), -- Standing, Large - MFF
(@OGUID+39,181300,0,1,-8893.99,578.844,92.8094,0.680677,0,0,0.333806,0.942642,120,120,255,1), -- Standing, Large - MFF
(@OGUID+40,181300,0,1,-9060.67,417.703,93.2955,2.28638,0,0,0.909961,0.414694,120,120,255,1), -- Standing, Large - MFF
(@OGUID+41,181300,0,1,-9085.16,396.496,93.5758,-2.46091,0,0,-0.942641,0.333808,120,120,255,1), -- Standing, Large - MFF
(@OGUID+42,181300,0,1,-9079.23,442.914,93.2955,-0.90757,0,0,-0.438371,0.898794,120,120,255,1), -- Standing, Large - MFF
(@OGUID+43,181300,0,1,-9106.58,422.097,93.7786,-2.49582,0,0,-0.948323,0.317306,120,120,255,1), -- Standing, Large - MFF
(@OGUID+44,181300,0,1,-9046.63,428.583,93.2955,2.30383,0,0,0.913545,0.406738,120,120,255,1), -- Standing, Large - MFF
(@OGUID+45,181300,0,1,-9066.78,452.947,93.2955,-0.767944,0,0,-0.374606,0.927184,120,120,255,1), -- Standing, Large - MFF
(@OGUID+46,181300,0,1,-9018.08,485.234,97.1197,-0.855211,0,0,-0.414693,0.909961,120,120,255,1), -- Standing, Large - MFF
(@OGUID+47,181300,0,1,-9003.58,466.834,97.1185,2.1293,0,0,0.874619,0.48481,120,120,255,1), -- Standing, Large - MFF
(@OGUID+48,181300,0,1,-8973.18,490.654,97.0779,2.19911,0,0,0.891006,0.453991,120,120,255,1), -- Standing, Large - MFF
(@OGUID+49,181300,0,1,-8987.69,509.24,97.0765,-0.890117,0,0,-0.430511,0.902586,120,120,255,1), -- Standing, Large - MFF
(@OGUID+50,181302,0,1,-8836.93,866.612,98.7048,-2.46091,0,0,-0.942641,0.333808,120,120,255,1), -- Camp Crate
(@OGUID+51,181302,0,1,-8833.49,878.15,98.4954,2.61799,0,0,0.965925,0.258821,120,120,255,1), -- Camp Crate
(@OGUID+52,181302,0,1,-8833.88,875.903,98.5441,-0.750491,0,0,-0.366501,0.930418,120,120,255,1), -- Camp Crate
(@OGUID+53,181302,0,1,-8837.71,865.332,98.6924,0.453785,0,0,0.224951,0.97437,120,120,255,1), -- Camp Crate
(@OGUID+54,181302,0,1,-8837.71,865.332,98.6924,0.453785,0,0,0.224951,0.97437,120,120,255,1), -- Camp Crate
(@OGUID+55,181302,0,1,-8836.93,866.612,98.7048,-2.46091,0,0,-0.942641,0.333808,120,120,255,1), -- Camp Crate
(@OGUID+56,181302,0,1,-8833.49,878.15,98.4954,2.61799,0,0,0.965925,0.258821,120,120,255,1), -- Camp Crate
(@OGUID+57,181302,0,1,-8833.88,875.903,98.5441,-0.750491,0,0,-0.366501,0.930418,120,120,255,1), -- Camp Crate
(@OGUID+58,181302,530,1,9375.37,-6767.38,15.0712,-1.50098,0,0,-0.681998,0.731354,120,120,255,1), -- Camp Crate
(@OGUID+59,181302,530,1,9376.72,-6766.87,15.2007,0.104719,0,0,0.0523357,0.99863,120,120,255,1), -- Camp Crate
(@OGUID+60,181302,0,1,2279.26,442.135,34.1293,0.575957,0,0,0.284015,0.95882,120,120,255,1), -- Camp Crate
(@OGUID+61,181302,0,1,2279.25,443.731,34.1216,-1.50098,0,0,-0.681998,0.731354,120,120,255,1), -- Camp Crate
(@OGUID+62,181302,530,1,7682.02,-6838.89,79.0908,-1.50098,0,0,-0.681998,0.731354,120,120,255,1), -- Camp Crate
(@OGUID+63,181302,530,1,7684.65,-6840.83,79.1421,0.104719,0,0,0.0523357,0.99863,120,120,255,1), -- Camp Crate
(@OGUID+64,181305,0,1,-8828.34,873.079,98.6642,1.29154,0,0,0.601814,0.798636,120,120,255,1), -- Camp Table
(@OGUID+65,181305,530,1,9376.24,-6771.01,13.821,-1.72787,0,0,-0.760406,0.649449,120,120,255,1), -- Camp Table
(@OGUID+66,181305,0,1,2284.57,444.182,34.4611,0.139624,0,0,0.0697556,0.997564,120,120,255,1), -- Camp Table
(@OGUID+67,181305,530,1,7682.28,-6835.94,78.9963,-1.72787,0,0,-0.760406,0.649449,120,120,255,1), -- Camp Table
(@OGUID+68,181305,0,1,-8828.34,873.079,98.6642,1.29154,0,0,0.601814,0.798636,120,120,255,1), -- Camp Table
(@OGUID+69,181306,530,1,9376.6,-6768.23,14.8337,-1.32645,0,0,-0.615661,0.788011,120,120,255,1), -- Camp Jug
(@OGUID+70,181306,0,1,2280.96,443.046,34.2027,-1.32645,0,0,-0.615661,0.788011,120,120,255,1), -- Camp Jug
(@OGUID+71,181306,530,1,7683.74,-6838.74,79.0443,-1.32645,0,0,-0.615661,0.788011,120,120,255,1), -- Camp Jug
(@OGUID+72,181307,530,1,9376.18,-6771.91,14.7767,0.59341,0,0,0.292371,0.956305,120,120,255,1), -- Camp Mug
(@OGUID+73,181307,0,1,2285.37,444.476,35.4398,0.59341,0,0,0.292371,0.956305,120,120,255,1), -- Camp Mug
(@OGUID+74,181307,530,1,7682.49,-6835.73,79.9638,0.59341,0,0,0.292371,0.956305,120,120,255,1), -- Camp Mug
(@OGUID+75,181354,0,1,1701.38,127.903,-64.4786,-2.09439,0,0,-0.866025,0.500001,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+76,181354,0,1,1732.91,147.653,-64.4786,-1.69297,0,0,-0.748956,0.66262,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+77,181354,0,1,1743.01,196.175,-64.4786,-2.56563,0,0,-0.958819,0.284016,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+78,181354,0,1,1757.7,242.394,-64.4786,-2.04204,0,0,-0.85264,0.522499,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+79,181354,0,1,1751.7,277.832,-64.4786,0.802851,0,0,0.390731,0.920505,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+80,181354,0,1,1716.69,333.307,-64.4786,0.645772,0,0,0.317305,0.948324,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+81,181354,0,1,1685.15,378.925,-64.4786,0.90757,0,0,0.438371,0.898794,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+82,181354,0,1,1635.03,388.608,-64.4786,0.383971,0,0,0.190808,0.981627,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+83,181355,0,1,-8801.4,874.236,99.0767,-1.50098,0,0,-0.681998,0.731354,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+84,181355,0,1,-8801.4,874.236,99.0767,-1.50098,0,0,-0.681998,0.731354,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+85,181355,0,1,-4602.83,-912.786,501.066,-2.49582,0,0,-0.948323,0.317306,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+86,181355,0,1,-4609.13,-905.392,501.068,-2.37364,0,0,-0.927183,0.374608,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+87,181355,0,1,-4948.67,-1012.31,501.44,-2.49582,0,0,-0.948323,0.317306,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+88,181355,530,1,9372.46,-6769.78,14.4874,-0.436332,0,0,-0.216439,0.976296,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+89,181355,530,1,9391.55,-6789.76,14.1658,-1.62316,0,0,-0.725374,0.688355,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+90,181355,530,1,9371.23,-6790.38,15.2229,0.855211,0,0,0.414693,0.909961,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+91,181355,0,1,2289.87,434.362,35.0891,-1.62316,0,0,-0.725374,0.688355,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+92,181355,0,1,2334.93,403.953,33.806,-0.855211,0,0,-0.414693,0.909961,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+93,181355,0,1,2278.27,432.592,34.0165,-0.436332,0,0,-0.216439,0.976296,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+94,181355,0,1,2277.75,465.947,33.7998,1.18682,0,0,0.559193,0.829038,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+95,181355,0,1,2275.88,395.102,34.0781,0.0523589,0,0,0.0261765,0.999657,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+96,181355,0,1,2263.54,333.898,35.1883,-0.541051,0,0,-0.267238,0.963631,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+97,181355,0,1,2248.71,314.055,35.1891,-0.90757,0,0,-0.438371,0.898794,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+98,181355,0,1,2257.57,271.663,34.7979,2.37364,0,0,0.927183,0.374608,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+99,181355,0,1,2234.59,295.601,35.1891,-0.506145,0,0,-0.25038,0.968148,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+100,181355,0,1,2241.37,261.497,34.1146,2.25147,0,0,0.902585,0.430512,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+101,181355,530,1,7691.9,-6824.57,76.1029,-1.62316,0,0,-0.725374,0.688355,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+102,181355,530,1,7675.13,-6823.38,77.3583,0.855211,0,0,0.414693,0.909961,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+103,181355,530,1,7675.05,-6844.03,80.2067,1.93731,0,0,0.824125,0.566408,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+104,181355,530,1,7690.66,-6843.26,78.8629,-0.436332,0,0,-0.216439,0.976296,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+105,181355,530,1,9491.39,-7265.12,14.326,-1.43117,0,0,-0.656058,0.75471,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+106,181355,530,1,9477.57,-7303.16,14.3695,1.0472,0,0,0.5,0.866025,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+107,181355,530,1,9490.13,-7324.17,14.3657,0.331611,0,0,0.165047,0.986286,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+108,181355,530,1,9495.4,-7337.35,14.3701,-1.41372,0,0,-0.649447,0.760406,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+109,181355,530,1,9529.36,-7241.44,16.4056,3.10665,0,0,0.999847,0.0174693,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+110,181355,530,1,9517.54,-7265.54,14.3368,0.244346,0,0,0.121869,0.992546,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+111,181355,530,1,9538,-7348.09,14.3366,2.25147,0,0,0.902585,0.430512,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+112,181355,530,1,9495.33,-7353.62,14.3637,-1.309,0,0,-0.608761,0.793354,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+113,181355,530,1,9486.74,-7367.53,14.3599,0.191985,0,0,0.0958452,0.995396,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+114,181355,530,1,9520.46,-7378.73,14.3025,1.46608,0,0,0.66913,0.743145,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+115,181355,530,1,9556.02,-7285.5,14.3742,-1.13446,0,0,-0.537299,0.843392,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+116,181355,530,1,9543.13,-7261.28,14.3626,-0.279252,0,0,-0.139173,0.990268,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+117,181355,530,1,9520.94,-7261.12,14.3634,1.48353,0,0,0.67559,0.737278,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+118,181355,530,1,9521.83,-7251.04,16.4025,1.309,0,0,0.608761,0.793354,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+119,181355,530,1,9518.1,-7290.62,14.3855,-2.65289,0,0,-0.970295,0.241925,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+120,181355,530,1,9517.86,-7309.91,14.4553,0.890117,0,0,0.430511,0.902586,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+121,181355,530,1,9521.31,-7284.11,14.3303,0.628317,0,0,0.309016,0.951057,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+122,181355,530,1,9542.46,-7251.2,16.4025,-0.104719,0,0,-0.0523357,0.99863,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+123,181355,530,1,9535.34,-7241.6,16.3983,-2.91469,0,0,-0.993571,0.113208,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+124,181355,530,1,9586.68,-7358.11,13.6983,2.89725,0,0,0.992546,0.12187,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+125,181355,530,1,9557.44,-7264.57,14.2149,-0.157079,0,0,-0.0784588,0.996917,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+126,181355,530,1,9583.84,-7455.04,13.5067,-2.19911,0,0,-0.891006,0.453991,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+127,181355,530,1,9583.66,-7444.98,13.5061,-1.64061,0,0,-0.731354,0.681998,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+128,181355,530,1,9631.82,-7399.67,15.6954,1.46608,0,0,0.66913,0.743145,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+129,181355,530,1,9604.38,-7358.5,13.7288,-0.261798,0,0,-0.130526,0.991445,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+130,181355,530,1,9488.02,-7427.11,14.2738,0.471238,0,0,0.233445,0.97237,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+131,181355,530,1,9583.69,-7425.88,13.5103,-1.81514,0,0,-0.788011,0.615662,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+132,181355,530,1,9520.53,-7415.2,14.3146,-1.93732,0,0,-0.824126,0.566406,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+133,181355,530,1,9600.94,-7285.03,14.3553,-2.84488,0,0,-0.989016,0.147811,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+134,181355,530,1,9583.93,-7474,13.5073,0.418879,0,0,0.207911,0.978148,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+135,181388,0,1,-8827.56,871.864,99.5945,-2.72271,0,0,-0.978148,0.207912,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+136,181388,0,1,1708.94,246.726,-41.2577,-1.39626,0,0,-0.642787,0.766045,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+137,181388,0,1,1700.9,237.747,-40.1241,2.1293,0,0,0.874619,0.48481,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+138,181388,0,1,1700.93,241.196,-40.1241,1.309,0,0,0.608761,0.793354,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+139,181388,0,1,2309.88,266.731,39.7848,-2.54818,0,0,-0.956305,0.292372,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+140,181388,0,1,2262.28,239.19,35.0415,-1.91986,0,0,-0.819152,0.573577,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+141,181388,0,1,2255.34,244.211,35.0603,2.86234,0,0,0.990268,0.139175,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+142,181388,0,1,2272.56,248.27,35.4187,0.139624,0,0,0.0697556,0.997564,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+143,181388,0,1,2312.81,266.003,39.7766,-1.71042,0,0,-0.754709,0.656059,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+144,181388,0,1,2263.01,242.848,35.089,0.191985,0,0,0.0958452,0.995396,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+145,181388,0,1,2254.8,240.546,35.0489,-2.56563,0,0,-0.958819,0.284016,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+146,181388,530,1,9489.04,-7309.97,16.7103,1.3439,0,0,0.622514,0.782609,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+147,181388,530,1,9488.36,-7308.64,16.7091,-2.21657,0,0,-0.894934,0.446199,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+148,181388,530,1,9485.89,-7307.27,16.7097,-1.91986,0,0,-0.819152,0.573577,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+149,181388,530,1,9487.18,-7307.67,16.7095,0.104719,0,0,0.0523357,0.99863,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+150,181388,530,1,9484.29,-7307.54,16.7098,-0.994837,0,0,-0.477159,0.878817,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+151,181388,530,1,9488.99,-7311.45,16.7107,-1.15192,0,0,-0.544639,0.838671,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+152,181388,530,1,9488.38,-7312.96,16.711,2.70526,0,0,0.976295,0.216442,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+153,181388,530,1,9524.03,-7219.3,17.2962,-2.16421,0,0,-0.882947,0.469473,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+154,181388,530,1,9533.52,-7219.31,17.2962,-3.05433,0,0,-0.999048,0.0436193,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+155,181388,530,1,9526.42,-7219.32,17.2962,3.00195,0,0,0.997563,0.0697661,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+156,181388,530,1,9514.54,-7219.23,17.2782,-1.76278,0,0,-0.771625,0.636078,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+157,181388,530,1,9535.97,-7219.35,17.2962,1.22173,0,0,0.573576,0.819152,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+158,181388,530,1,9516.95,-7219.28,17.2695,2.79252,0,0,0.984807,0.173652,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+159,181388,0,1,-8827.56,871.864,99.5945,-2.72271,0,0,-0.978148,0.207912,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+160,181389,0,1,2295.52,291.412,53.169,2.87979,0,0,0.991445,0.130528,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+161,181389,0,1,2302.42,295.455,52.6802,1.32645,0,0,0.615661,0.788011,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+162,181389,0,1,2299.08,284.514,53.083,-1.83259,0,0,-0.793353,0.608762,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+163,181389,530,1,9455.93,-7278.58,27.5555,0,0,0,0,1,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+164,181390,0,1,-8805.12,868.183,109.955,2.18166,0,0,0.887011,0.461749,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+165,181390,0,1,-8805.12,868.183,109.955,2.18166,0,0,0.887011,0.461749,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+166,181390,0,1,2266.08,353.538,40.6269,1.0472,0,0,0.5,0.866025,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+167,181390,0,1,2260.81,329.975,36.7251,-0.680679,0,0,-0.333807,0.942641,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+168,181390,0,1,2250.99,317.84,36.621,-0.523598,0,0,-0.258819,0.965926,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+169,181390,0,1,2242.31,303.984,42.8506,-0.698132,0,0,-0.34202,0.939693,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+170,181390,0,1,2261.99,257.388,43.8684,1.51844,0,0,0.688354,0.725374,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+171,181390,0,1,2297.06,242.838,47.4614,-0.122173,0,0,-0.0610485,0.998135,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+172,181390,0,1,2277.41,232.574,47.4048,-0.157079,0,0,-0.0784588,0.996917,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+173,181390,0,1,2238.39,239.768,47.6329,2.93214,0,0,0.994521,0.104536,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+174,181390,0,1,-8805.12,868.183,109.955,2.18166,0,0,0.887011,0.461749,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+175,181390,0,1,-8805.12,868.183,109.955,2.18166,0,0,0.887011,0.461749,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+176,181390,0,1,-8772.35,967.408,113.837,0.750491,0,0,0.366501,0.930418,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+177,181390,0,1,-8736.05,945.346,113.195,2.18166,0,0,0.887011,0.461749,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+178,181391,0,1,-8829.63,872.614,99.5815,-2.04204,0,0,-0.85264,0.522499,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+179,181391,0,1,-8826.7,873.421,99.6845,-0.541051,0,0,-0.267238,0.963631,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+180,181391,0,1,-8826.7,873.421,99.6845,-0.541051,0,0,-0.267238,0.963631,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+181,181391,0,1,-8829.63,872.614,99.5815,-2.04204,0,0,-0.85264,0.522499,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+182,181391,0,1,2264.71,242.518,35.4964,-0.122173,0,0,-0.0610485,0.998135,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+183,181391,0,1,2264.1,239.022,35.4816,-0.209439,0,0,-0.104528,0.994522,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+184,181391,0,1,2253.73,244.572,35.4514,2.93214,0,0,0.994521,0.104536,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+185,181391,0,1,2303.71,267.102,39.7879,1.37881,0,0,0.636078,0.771625,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+186,181391,0,1,2253.03,240.987,35.4776,3.01941,0,0,0.998135,0.0610518,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+187,181392,0,1,2267.96,340.416,39.6734,-0.418879,0,0,-0.207911,0.978148,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+188,181392,0,1,2379.06,350.076,46.2289,2.26893,0,0,0.906307,0.422619,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+189,181392,0,1,2220.19,317.285,40.3783,2.47837,0,0,0.945518,0.325568,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+190,181392,0,1,2284.72,281.707,42.6228,2.84488,0,0,0.989016,0.147811,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+191,181392,0,1,2239.41,306.472,40.4238,-0.645772,0,0,-0.317305,0.948324,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+192,181392,0,1,2273.16,233.068,40.0827,-0.226892,0,0,-0.113203,0.993572,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+193,181392,0,1,2261.75,257.531,40.0518,1.43117,0,0,0.656058,0.75471,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+194,181392,0,1,2252.82,256.772,40.496,1.37881,0,0,0.636078,0.771625,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+195,181392,0,1,2239.67,251.287,38.2816,2.93214,0,0,0.994521,0.104536,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+196,181392,530,1,9485.03,-7132.41,24.4308,0,0,0,0,1,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+197,181392,530,1,9638.37,-7397.28,22.6856,-1.50098,0,0,-0.681998,0.731354,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+198,181393,530,1,9486.54,-7355.19,18.5544,-0.296705,0,0,-0.147809,0.989016,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+199,181393,530,1,9487.18,-7335.85,18.7497,0.0174525,0,0,0.00872612,0.999962,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+200,181393,530,1,9546.85,-7291.17,18.4692,1.53589,0,0,0.694658,0.71934,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+201,181393,530,1,9555.7,-7291.21,18.4422,1.64061,0,0,0.731353,0.681999,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+202,181393,530,1,9536.9,-7291.12,18.4959,1.5708,0,0,0.707107,0.707107,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+203,181393,530,1,9522.36,-7245.14,20.0325,-0.628317,0,0,-0.309016,0.951057,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+204,181393,530,1,9536.85,-7309.67,18.8888,-1.58825,0,0,-0.71325,0.70091,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+205,181393,530,1,9556.17,-7309.81,18.6268,-1.67551,0,0,-0.743144,0.669131,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+206,181393,530,1,9546.78,-7309.74,18.7086,-1.58825,0,0,-0.71325,0.70091,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+207,181393,530,1,9542.48,-7245.92,19.6978,-2.47837,0,0,-0.945518,0.325568,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+208,181393,530,1,9577.85,-7444.63,20.2819,0.925024,0,0,0.446198,0.894935,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+209,181393,530,1,9628.7,-7397.23,19.8947,-1.58825,0,0,-0.71325,0.70091,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+210,181393,530,1,9576.13,-7425.43,20.0839,-0.820303,0,0,-0.398748,0.91706,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+211,181393,530,1,9578.05,-7454.91,20.2977,-0.820303,0,0,-0.398748,0.91706,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+212,181393,530,1,9575.92,-7474.41,20.0064,0.750491,0,0,0.366501,0.930418,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+213,181401,0,1,2280.73,236.308,40.1467,-1.74533,0,0,-0.766044,0.642789,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+214,181401,0,1,2292.73,242.541,40.0769,-0.174532,0,0,-0.0871553,0.996195,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+215,181401,0,1,2271.07,253.557,40.0824,1.39626,0,0,0.642787,0.766045,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+216,181401,0,1,2284.07,251.71,40.2436,1.46608,0,0,0.66913,0.743145,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+217,181401,0,1,2242.86,241.052,40.192,2.96704,0,0,0.996194,0.087165,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+218,181401,0,1,2262.88,228.461,40.0945,-1.74533,0,0,-0.766044,0.642789,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+219,181401,0,1,2249.04,230.9,40.0813,-1.74533,0,0,-0.766044,0.642789,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+220,187572,0,1,2230.66,279.722,36.4745,1.44862,0,0,0.66262,0.748956,120,120,255,1), -- Candle 01 - MFF
(@OGUID+221,187572,0,1,2229.28,280.698,36.4585,1.46608,0,0,0.66913,0.743145,120,120,255,1), -- Candle 01 - MFF
(@OGUID+222,187572,0,1,2266.62,255.534,35.3428,-2.33874,0,0,-0.920505,0.390732,120,120,255,1), -- Candle 01 - MFF
(@OGUID+223,187572,0,1,2240.82,235.378,35.3428,2.96704,0,0,0.996194,0.087165,120,120,255,1), -- Candle 01 - MFF
(@OGUID+224,187572,0,1,2249.69,258.611,35.3428,1.65806,0,0,0.737277,0.675591,120,120,255,1), -- Candle 01 - MFF
(@OGUID+225,187572,0,1,2273.18,254.454,35.3428,2.32129,0,0,0.91706,0.39875,120,120,255,1), -- Candle 01 - MFF
(@OGUID+226,187572,0,1,2238.51,254.643,36.0738,-0.872664,0,0,-0.422618,0.906308,120,120,255,1), -- Candle 01 - MFF
(@OGUID+227,187572,0,1,2256.3,257.467,35.3428,1.8675,0,0,0.803857,0.594823,120,120,255,1), -- Candle 01 - MFF
(@OGUID+228,187573,0,1,2230.04,279.43,36.476,-1.5708,0,0,-0.707107,0.707107,120,120,255,1), -- Candle 02 - MFF
(@OGUID+229,187573,0,1,2252.99,258.054,35.3428,-1.81514,0,0,-0.788011,0.615662,120,120,255,1), -- Candle 02 - MFF
(@OGUID+230,187573,0,1,2269.7,254.917,35.3428,3.10665,0,0,0.999847,0.0174693,120,120,255,1), -- Candle 02 - MFF
(@OGUID+231,187573,0,1,2238.42,254.24,36.0574,2.14675,0,0,0.878817,0.47716,120,120,255,1), -- Candle 02 - MFF
(@OGUID+232,187576,0,1,2293.36,274.182,38.972,1.32645,0,0,0.615661,0.788011,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+233,187576,0,1,2273.54,251.29,35.7048,-1.76278,0,0,-0.771625,0.636078,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+234,187576,0,1,2249.98,249.89,35.9386,2.9496,0,0,0.995396,0.0958512,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+235,187576,0,1,2219.11,259.541,35.6632,-1.11701,0,0,-0.529919,0.848048,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+236,187576,0,1,2246.7,227.997,34.9112,-1.78023,0,0,-0.777145,0.629321,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+237,187667,0,1,2303.33,263.147,40.5326,1.27409,0,0,0.594822,0.803857,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+238,187667,0,1,2264.15,251.352,35.8195,-1.79769,0,0,-0.782608,0.622515,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+239,187667,0,1,2309.81,261.467,40.5765,1.32645,0,0,0.615661,0.788011,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+240,187667,0,1,2257.25,252.568,35.7848,-1.72787,0,0,-0.760406,0.649449,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+241,187708,0,1,-8816.15,854.888,98.898,-1.98967,0,0,-0.83867,0.54464,120,120,255,1), -- Torch Target Brazier
(@OGUID+242,187708,0,1,-8821.54,863.011,98.9378,-1.58825,0,0,-0.71325,0.70091,120,120,255,1), -- Torch Target Brazier
(@OGUID+243,187708,0,1,-8817.74,859.85,99.1448,-1.76278,0,0,-0.771625,0.636078,120,120,255,1), -- Torch Target Brazier
(@OGUID+244,187708,0,1,-8816.15,854.888,98.898,-1.98967,0,0,-0.83867,0.54464,120,120,255,1), -- Torch Target Brazier
(@OGUID+245,187708,0,1,-8817.74,859.85,99.1448,-1.76278,0,0,-0.771625,0.636078,120,120,255,1), -- Torch Target Brazier
(@OGUID+246,187708,0,1,-8821.54,863.011,98.9378,-1.58825,0,0,-0.71325,0.70091,120,120,255,1), -- Torch Target Brazier
(@OGUID+247,188020,0,1,-8838.21,944.027,105.872,-2.53072,0,0,-0.953716,0.300708,120,120,255,1), -- Camp Banner
(@OGUID+248,188020,0,1,-8832.59,936.199,106.34,0.733038,0,0,0.358368,0.93358,120,120,255,1), -- Camp Banner
(@OGUID+249,188020,530,1,9392.29,-6775.31,13.871,-0.383971,0,0,-0.190808,0.981627,120,120,255,1), -- Camp Banner
(@OGUID+250,188020,530,1,9391.85,-6783.79,13.7372,0.209439,0,0,0.104528,0.994522,120,120,255,1), -- Camp Banner
(@OGUID+251,188020,530,1,9371.64,-6773.2,14.0109,-3.12412,0,0,-0.999962,0.00873464,120,120,255,1), -- Camp Banner
(@OGUID+252,188020,530,1,9371.35,-6782.55,14.0687,3.08918,0,0,0.999657,0.0262016,120,120,255,1), -- Camp Banner
(@OGUID+253,188020,0,1,2272.3,460.902,33.8654,-2.79252,0,0,-0.984807,0.173652,120,120,255,1), -- Camp Banner
(@OGUID+254,188020,0,1,2292.08,424.978,34.7518,-2.91469,0,0,-0.993571,0.113208,120,120,255,1), -- Camp Banner
(@OGUID+255,188020,0,1,2282.74,463.807,33.7687,0.349065,0,0,0.173648,0.984808,120,120,255,1), -- Camp Banner
(@OGUID+256,188020,0,1,2280.55,423.33,33.8753,-2.79252,0,0,-0.984807,0.173652,120,120,255,1), -- Camp Banner
(@OGUID+257,188020,530,1,7696.48,-6825.59,75.607,1.65806,0,0,0.737277,0.675591,120,120,255,1), -- Camp Banner
(@OGUID+258,188020,530,1,7671.9,-6824.11,77.7081,1.48353,0,0,0.67559,0.737278,120,120,255,1), -- Camp Banner
(@OGUID+259,188020,530,1,7671.89,-6844.07,80.8656,1.53589,0,0,0.694658,0.71934,120,120,255,1), -- Camp Banner
(@OGUID+260,188020,530,1,7697.74,-6842.14,78.0695,1.64061,0,0,0.731353,0.681999,120,120,255,1), -- Camp Banner
(@OGUID+261,188020,0,1,-8838.21,944.027,105.872,-2.53072,0,0,-0.953716,0.300708,120,120,255,1), -- Camp Banner
(@OGUID+262,188020,0,1,-8832.59,936.199,106.34,0.733038,0,0,0.358368,0.93358,120,120,255,1), -- Camp Banner
(@OGUID+263,188021,530,1,7685.18,-6835.93,78.5793,1.67551,0,0,0.743144,0.669131,120,120,255,1), -- Camp Pavilion
(@OGUID+264,181302,530,1,-3007.28,4165.31,3.9169,2.9496,0,0,0.995396,0.0958512,120,120,255,1), -- Camp Crate
(@OGUID+265,181302,530,1,-3008.27,4163.9,3.85245,0.610863,0,0,0.300705,0.953717,120,120,255,1), -- Camp Crate
(@OGUID+266,181302,530,1,-2548.39,4271.93,20.2852,-1.50098,0,0,-0.681998,0.731354,120,120,255,1), -- Camp Crate
(@OGUID+267,181302,530,1,-3062.06,2391.95,62.1365,-1.50098,0,0,-0.681998,0.731354,120,120,255,1), -- Camp Crate
(@OGUID+268,181302,530,1,-3060.71,2390.42,62.3328,0.104719,0,0,0.0523357,0.99863,120,120,255,1), -- Camp Crate
(@OGUID+269,181302,530,1,-3951.09,2050.4,95.0647,2.9496,0,0,0.995396,0.0958512,120,120,255,1), -- Camp Crate
(@OGUID+270,181302,530,1,-3951.94,2052.21,95.0647,0.610863,0,0,0.300705,0.953717,120,120,255,1), -- Camp Crate
(@OGUID+271,181302,530,1,-3799.02,-11510.1,-133.567,-1.53589,0,0,-0.694658,0.71934,120,120,255,1), -- Camp Crate
(@OGUID+272,181302,530,1,-3799.35,-11511,-134.836,-0.872664,0,0,-0.422618,0.906308,120,120,255,1), -- Camp Crate
(@OGUID+273,181302,530,1,-3798.82,-11509.4,-134.816,2.86234,0,0,0.990268,0.139175,120,120,255,1), -- Camp Crate
(@OGUID+274,181302,530,1,-2238.06,-11892.1,27.5642,1.98967,0,0,0.83867,0.54464,120,120,255,1), -- Camp Crate
(@OGUID+275,181302,530,1,-2237.23,-11893.7,27.1466,2.9496,0,0,0.995396,0.0958512,120,120,255,1), -- Camp Crate
(@OGUID+276,181302,530,1,9794.48,-7248.72,26.0947,-0.802851,0,0,-0.390731,0.920505,120,120,255,1), -- Camp Crate
(@OGUID+277,181302,530,1,9794.49,-7248.68,27.3317,-1.06465,0,0,-0.507538,0.861629,120,120,255,1), -- Camp Crate
(@OGUID+278,181302,530,1,9788.27,-7253.78,26.1262,-1.41372,0,0,-0.649447,0.760406,120,120,255,1), -- Camp Crate
(@OGUID+279,181302,530,1,-4225.6,-12301.5,4.27346,1.93731,0,0,0.824125,0.566408,120,120,255,1), -- Camp Crate
(@OGUID+280,181302,530,1,-4224.03,-12301.6,4.06688,-0.0349062,0,0,-0.0174522,0.999848,120,120,255,1), -- Camp Crate
(@OGUID+281,181302,530,1,-2516.28,7561.79,-1.97192,2.9496,0,0,0.995396,0.0958512,120,120,255,1), -- Camp Crate
(@OGUID+282,181302,530,1,-2517.57,7560.89,-1.99716,0.610863,0,0,0.300705,0.953717,120,120,255,1), -- Camp Crate
(@OGUID+283,181302,530,1,2023.8,6594.57,135.501,2.9496,0,0,0.995396,0.0958512,120,120,255,1), -- Camp Crate
(@OGUID+284,181302,530,1,2021.78,6590.53,135.279,1.98967,0,0,0.83867,0.54464,120,120,255,1), -- Camp Crate
(@OGUID+285,181302,530,1,2286.95,6131.72,135.884,0.104719,0,0,0.0523357,0.99863,120,120,255,1), -- Camp Crate
(@OGUID+286,181302,530,1,2286.06,6134.23,136.07,-1.50098,0,0,-0.681998,0.731354,120,120,255,1), -- Camp Crate
(@OGUID+287,181302,530,1,3122.18,3736.19,142.184,0.610863,0,0,0.300705,0.953717,120,120,255,1), -- Camp Crate
(@OGUID+288,181302,530,1,3123.46,3737.78,141.978,2.9496,0,0,0.995396,0.0958512,120,120,255,1), -- Camp Crate
(@OGUID+289,181302,530,1,2924.2,3696.3,143.684,0.104719,0,0,0.0523357,0.99863,120,120,255,1), -- Camp Crate
(@OGUID+290,181302,530,1,2925.8,3695.99,143.735,-1.50098,0,0,-0.681998,0.731354,120,120,255,1), -- Camp Crate
(@OGUID+291,181305,530,1,-3005.37,4160.82,4.06109,0.645772,0,0,0.317305,0.948324,120,120,255,1), -- Camp Table
(@OGUID+292,181305,530,1,-3066.06,2394.06,61.9068,1.83259,0,0,0.793353,0.608762,120,120,255,1), -- Camp Table
(@OGUID+293,181305,530,1,-3954.72,2052.72,95.0647,2.26893,0,0,0.906307,0.422619,120,120,255,1), -- Camp Table
(@OGUID+294,181305,530,1,-3793.72,-11519.3,-134.923,3.03684,0,0,0.998629,0.0523532,120,120,255,1), -- Camp Table
(@OGUID+295,181305,530,1,-2231.28,-11892.5,27.3821,2.26893,0,0,0.906307,0.422619,120,120,255,1), -- Camp Table
(@OGUID+296,181305,530,1,9793.02,-7251.94,26.1285,2.09439,0,0,0.866025,0.500001,120,120,255,1), -- Camp Table
(@OGUID+297,181305,530,1,-4219.09,-12304.9,2.68953,0.139624,0,0,0.0697556,0.997564,120,120,255,1), -- Camp Table
(@OGUID+298,181305,530,1,-2513.37,7558.06,-1.87656,2.26893,0,0,0.906307,0.422619,120,120,255,1), -- Camp Table
(@OGUID+299,181305,530,1,2018.9,6592.33,135.514,-0.157079,0,0,-0.0784588,0.996917,120,120,255,1), -- Camp Table
(@OGUID+300,181305,530,1,2290.53,6135.19,135.977,-1.69297,0,0,-0.748956,0.66262,120,120,255,1), -- Camp Table
(@OGUID+301,181306,530,1,-3006.37,4163.95,4.0669,2.00713,0,0,0.843391,0.5373,120,120,255,1), -- Camp Jug
(@OGUID+302,181306,530,1,-3060.14,2392.2,62.0585,-1.32645,0,0,-0.615661,0.788011,120,120,255,1), -- Camp Jug
(@OGUID+303,181306,530,1,-3949.81,2052.34,95.0647,2.00713,0,0,0.843391,0.5373,120,120,255,1), -- Camp Jug
(@OGUID+304,181306,530,1,-2237.12,-11886.8,28.9581,2.00713,0,0,0.843391,0.5373,120,120,255,1), -- Camp Jug
(@OGUID+305,181306,530,1,-4224.28,-12299.6,4.22307,2.47837,0,0,0.945518,0.325568,120,120,255,1), -- Camp Jug
(@OGUID+306,181306,530,1,-2516.13,7559.64,-2.02155,2.00713,0,0,0.843391,0.5373,120,120,255,1), -- Camp Jug
(@OGUID+307,181306,530,1,2022.45,6595.77,135.644,2.00713,0,0,0.843391,0.5373,120,120,255,1), -- Camp Jug
(@OGUID+308,181306,530,1,2289.73,6131.18,135.68,-1.32645,0,0,-0.615661,0.788011,120,120,255,1), -- Camp Jug
(@OGUID+309,181306,530,1,3122.19,3739.35,141.946,2.00713,0,0,0.843391,0.5373,120,120,255,1), -- Camp Jug
(@OGUID+310,181306,530,1,2922.67,3696.72,143.591,-1.32645,0,0,-0.615661,0.788011,120,120,255,1), -- Camp Jug
(@OGUID+311,181307,530,1,3123.83,3737.89,143.224,1.65806,0,0,0.737277,0.675591,120,120,255,1), -- Camp Mug
(@OGUID+312,181307,530,1,2924.25,3696.76,144.933,0.59341,0,0,0.292371,0.956305,120,120,255,1), -- Camp Mug
(@OGUID+313,181307,530,1,-3004.99,4161.35,5.03855,1.65806,0,0,0.737277,0.675591,120,120,255,1), -- Camp Mug
(@OGUID+314,181307,530,1,-3065.51,2394.63,62.8638,0.59341,0,0,0.292371,0.956305,120,120,255,1), -- Camp Mug
(@OGUID+315,181307,530,1,-3955.77,2051.7,96.0022,1.65806,0,0,0.737277,0.675591,120,120,255,1), -- Camp Mug
(@OGUID+316,181307,530,1,-3793,-11518.4,-133.938,0.890117,0,0,0.430511,0.902586,120,120,255,1), -- Camp Mug
(@OGUID+317,181307,530,1,-2231.06,-11892.9,28.3425,1.65806,0,0,0.737277,0.675591,120,120,255,1), -- Camp Mug
(@OGUID+318,181307,530,1,9792.12,-7253.43,27.1382,-2.25147,0,0,-0.902585,0.430512,120,120,255,1), -- Camp Mug
(@OGUID+319,181307,530,1,-4219.07,-12304.1,3.6375,0.0174525,0,0,0.00872612,0.999962,120,120,255,1), -- Camp Mug
(@OGUID+320,181307,530,1,-2514.07,7557.38,-0.908759,1.65806,0,0,0.737277,0.675591,120,120,255,1), -- Camp Mug
(@OGUID+321,181307,530,1,2018.83,6591.42,136.485,1.65806,0,0,0.737277,0.675591,120,120,255,1), -- Camp Mug
(@OGUID+322,181307,530,1,2286.54,6131.37,135.887,0.59341,0,0,0.292371,0.956305,120,120,255,1), -- Camp Mug
(@OGUID+323,181354,530,1,-3788.14,-11452.6,-138.854,1.02974,0,0,0.492423,0.870356,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+324,181354,530,1,-3807.17,-11439.6,-139.028,1.43117,0,0,0.656058,0.75471,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+325,181354,530,1,-3816.79,-11421.2,-139.071,-1.01229,0,0,-0.484809,0.87462,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+326,181354,530,1,-3769.16,-11443.2,-138.595,1.46608,0,0,0.66913,0.743145,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+327,181354,530,1,-3754.07,-11431.4,-138.373,2.09439,0,0,0.866025,0.500001,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+328,181354,530,1,-3822.31,-11399.6,-139.054,-2.9845,0,0,-0.996917,0.0784664,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+329,181354,530,1,-3745.38,-11403.9,-138.167,2.32129,0,0,0.91706,0.39875,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+330,181354,530,1,-3756.68,-11382.5,-138.219,0.314158,0,0,0.156434,0.987688,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+331,181354,530,1,9871.15,-7211.52,31.9882,-1.6057,0,0,-0.719339,0.694659,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+332,181354,530,1,9861.69,-7203.56,31.9816,-2.96704,0,0,-0.996194,0.087165,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+333,181354,530,1,9830.14,-7251.79,27.2324,-2.40855,0,0,-0.93358,0.358368,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+334,181354,530,1,9825.89,-7237.29,27.191,1.79769,0,0,0.782608,0.622515,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+335,181354,530,1,9890.71,-7214.22,31.8661,-2.14675,0,0,-0.878817,0.47716,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+336,181354,530,1,9883.75,-7223.83,31.8922,-0.680679,0,0,-0.333807,0.942641,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+337,181354,530,1,9850.55,-7216.79,32.0508,1.85005,0,0,0.798635,0.601815,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+338,181354,530,1,9848.27,-7239.6,27.2089,1.22173,0,0,0.573576,0.819152,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+339,181354,530,1,9838.82,-7231.6,27.254,2.44346,0,0,0.939692,0.34202,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+340,181354,530,1,9844.72,-7253.45,27.2703,-2.33874,0,0,-0.920505,0.390732,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+341,181354,530,1,9860.64,-7225.19,32.1409,0.279252,0,0,0.139173,0.990268,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+342,181354,530,1,9881.25,-7191.33,31.8442,-0.837757,0,0,-0.406736,0.913546,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+343,181354,530,1,9857.7,-7186.15,31.8288,-0.506145,0,0,-0.25038,0.968148,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+344,181354,530,1,9889.95,-7200.95,31.8697,0.890117,0,0,0.430511,0.902586,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+345,181354,530,1,9870.33,-7184.64,31.8705,2.04204,0,0,0.85264,0.522499,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+346,181354,530,1,9850.07,-7193.47,31.8566,1.90241,0,0,0.814116,0.580703,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+347,181354,530,1,2093.99,6769.73,164.87,1.309,0,0,0.608761,0.793354,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+348,181354,530,1,2089.1,6768.96,164.86,-2.23402,0,0,-0.898793,0.438373,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+349,181354,530,1,2092.19,6765.44,164.847,-1.98967,0,0,-0.83867,0.54464,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+350,181354,530,1,1965.24,6884.42,162.759,-2.07694,0,0,-0.861629,0.507539,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+351,181354,530,1,1964.66,6887.74,162.759,-0.925024,0,0,-0.446198,0.894935,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+352,181354,530,1,1961.76,6885.37,162.759,1.0821,0,0,0.515038,0.857168,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+353,181354,530,1,3030.46,5492.01,147.147,1.69297,0,0,0.748956,0.66262,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+354,181354,530,1,3008.71,5438.4,147.501,-0.191985,0,0,-0.0958452,0.995396,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+355,181354,530,1,3011.45,5435.75,147.501,1.91986,0,0,0.819152,0.573577,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+356,181354,530,1,2991.24,5478.47,144.591,-0.523598,0,0,-0.258819,0.965926,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+357,181354,530,1,2991.37,5483.19,144.611,0.418879,0,0,0.207911,0.978148,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+358,181354,530,1,3034.87,5490.72,147.147,0.715585,0,0,0.350207,0.936672,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+359,181354,530,1,3012.28,5442.08,147.501,-1.8675,0,0,-0.803857,0.594823,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+360,181354,530,1,2986.91,5481.47,144.591,1.01229,0,0,0.484809,0.87462,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+361,181355,530,1,2950.83,5486.53,144.143,-0.785397,0,0,-0.382683,0.92388,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+362,181355,530,1,2969.01,5459.73,144.697,-2.21657,0,0,-0.894934,0.446199,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+363,181355,530,1,3129.17,3726.42,141.905,-0.436332,0,0,-0.216439,0.976296,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+364,181355,530,1,3025.73,3750.26,144.728,1.32645,0,0,0.615661,0.788011,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+365,181355,530,1,3105.76,3723.05,144.983,0.855211,0,0,0.414693,0.909961,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+366,181355,530,1,3120.86,3684.91,143.263,0.575957,0,0,0.284015,0.95882,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+367,181355,530,1,3101.88,3664.01,142.859,2.46091,0,0,0.942641,0.333808,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+368,181355,530,1,3115.86,3694.57,144.038,0.506145,0,0,0.25038,0.968148,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+369,181355,530,1,3058.53,3663.68,143.037,2.04204,0,0,0.85264,0.522499,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+370,181355,530,1,2945.53,3714.86,143.177,-3.12412,0,0,-0.999962,0.00873464,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+371,181355,530,1,2972.39,3659.23,144.842,0,0,0,0,1,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+372,181355,530,1,3003.33,3637.78,143.804,1.50098,0,0,0.681998,0.731354,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+373,181355,530,1,3014.99,3753.32,144.384,1.25664,0,0,0.587785,0.809017,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+374,181355,530,1,2946.06,3725.09,143.184,3.08918,0,0,0.999657,0.0262016,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+375,181355,530,1,2984.19,3711.07,142.878,2.93214,0,0,0.994521,0.104536,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+376,181355,530,1,3004.39,3656.72,143.805,-1.58825,0,0,-0.71325,0.70091,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+377,181355,530,1,2930.29,3695.24,143.586,-1.62316,0,0,-0.725374,0.688355,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+378,181355,530,1,2923.4,3708.21,144.111,-0.436332,0,0,-0.216439,0.976296,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+379,181355,530,1,2947.03,3659.53,132.578,-2.9845,0,0,-0.996917,0.0784664,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+380,181355,530,1,2972.17,3648.62,144.847,0.0349062,0,0,0.0174522,0.999848,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+381,181355,530,1,2923.08,3674.28,144.273,0.541051,0,0,0.267238,0.963631,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+382,181355,530,1,2910.41,3676.45,144.32,1.18682,0,0,0.559193,0.829038,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+383,181355,530,1,2947.68,3649.33,132.578,2.9496,0,0,0.995396,0.0958512,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+384,181355,530,1,2914,3699.49,143.681,0.855211,0,0,0.414693,0.909961,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+385,181355,530,1,293.556,2757.31,85.2472,0.977383,0,0,0.469471,0.882948,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+386,181355,530,1,177.394,2641.12,87.186,2.19911,0,0,0.891006,0.453991,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+387,181355,530,1,184.423,2683.7,88.288,3.00195,0,0,0.997563,0.0697661,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+388,181355,530,1,-2975.99,3877.03,9.54506,-2.51327,0,0,-0.951056,0.309017,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+389,181355,530,1,-2956.34,3907.06,3.42348,0.750491,0,0,0.366501,0.930418,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+390,181355,530,1,-2942.97,3949.95,0.906697,-1.62316,0,0,-0.725374,0.688355,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+391,181355,530,1,-2943.43,3903.18,3.42349,1.69297,0,0,0.748956,0.66262,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+392,181355,530,1,-2987.7,3860.74,8.66035,1.309,0,0,0.608761,0.793354,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+393,181355,530,1,-2966.67,4073.2,2.96099,1.74533,0,0,0.766044,0.642789,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+394,181355,530,1,-2924.18,4014.8,0.424108,-2.91469,0,0,-0.993571,0.113208,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+395,181355,530,1,-2926.81,4019.08,0.413682,-2.26893,0,0,-0.906307,0.422619,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+396,181355,530,1,-2904.56,4017.98,0.378337,2.82743,0,0,0.987688,0.156436,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+397,181355,530,1,49.2665,2658.36,78.4103,0.471238,0,0,0.233445,0.97237,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+398,181355,530,1,-2993.02,4149.78,5.16072,0.855211,0,0,0.414693,0.909961,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+399,181355,530,1,-3073.64,2392.15,62.5555,-0.436332,0,0,-0.216439,0.976296,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+400,181355,530,1,-3050.08,2384.46,62.7108,0.855211,0,0,0.414693,0.909961,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+401,181355,530,1,-3060.83,2401.81,61.1662,-1.62316,0,0,-0.725374,0.688355,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+402,181355,530,1,-3052.81,2481.65,66.6569,2.56563,0,0,0.958819,0.284016,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+403,181355,530,1,-1882.26,5352.34,-12.428,1.48353,0,0,0.67559,0.737278,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+404,181355,530,1,-1789.64,5407.33,-12.4278,2.60054,0,0,0.96363,0.267241,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+405,181355,530,1,-1674.44,5406.26,-40.406,-0.122173,0,0,-0.0610485,0.998135,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+406,181355,530,1,-1791.01,5403.4,-12.4281,-3.08918,0,0,-0.999657,0.0262016,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+407,181355,530,1,-3981.4,2150.59,105.028,2.60054,0,0,0.96363,0.267241,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+408,181355,530,1,-4026.63,2188.58,109.117,2.25147,0,0,0.902585,0.430512,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+409,181355,530,1,-3930.81,2115.15,96.81,-2.77507,0,0,-0.983254,0.182238,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+410,181355,530,1,-3984.7,2162.16,105.442,-1.90241,0,0,-0.814116,0.580703,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+411,181355,530,1,-3948.72,2165.38,100.841,2.77507,0,0,0.983254,0.182238,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+412,181355,530,1,-4008.34,2172.32,105.097,0.279252,0,0,0.139173,0.990268,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+413,181355,530,1,-3947.1,2032.83,96.9135,0.855211,0,0,0.414693,0.909961,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+414,181355,530,1,-3959.75,2043.66,95.0647,0.855211,0,0,0.414693,0.909961,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+415,181355,530,1,-3936.5,2054.59,95.0647,-1.62316,0,0,-0.725374,0.688355,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+416,181355,530,1,-3937.47,2043.3,95.1029,-0.436332,0,0,-0.216439,0.976296,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+417,181355,530,1,-1815.92,5420.62,-12.4282,-3.07177,0,0,-0.999391,0.0349061,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+418,181355,530,1,-1819.92,5409.16,-12.4281,2.3911,0,0,0.930417,0.366502,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+419,181355,530,1,-1907.2,5450.7,-12.4281,-0.802851,0,0,-0.390731,0.920505,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+420,181355,530,1,-1873.54,5382.65,-12.4281,1.72787,0,0,0.760406,0.649449,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+421,181355,530,1,-1885.17,5386.2,-12.4282,0.767944,0,0,0.374606,0.927184,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+422,181355,530,1,-1911.37,5439.29,-12.4282,0.122173,0,0,0.0610485,0.998135,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+423,181355,530,1,-1917.35,5455.05,-12.5536,-1.18682,0,0,-0.559193,0.829038,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+424,181355,530,1,-1895.85,5357.5,-12.4279,0.890117,0,0,0.430511,0.902586,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+425,181355,530,1,-3079.41,748.123,-10.34,-0.0349062,0,0,-0.0174522,0.999848,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+426,181355,530,1,-3061.83,853.198,-11.3724,-2.21657,0,0,-0.894934,0.446199,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+427,181355,530,1,-3009.99,803.839,-10.3957,2.72271,0,0,0.978148,0.207912,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+428,181355,530,1,-3012.28,861.43,-10.4899,-2.26893,0,0,-0.906307,0.422619,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+429,181355,530,1,-2983.51,869.469,-7.47987,-1.62316,0,0,-0.725374,0.688355,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+430,181355,530,1,-3016.66,795.048,-9.91684,2.1293,0,0,0.874619,0.48481,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+431,181355,530,1,-3028.22,823.327,-9.54636,-2.82743,0,0,-0.987688,0.156436,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+432,181355,530,1,-2983.7,809.155,-6.9079,-2.21657,0,0,-0.894934,0.446199,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+433,181355,530,1,-3075.42,858.775,-20.0208,-2.9845,0,0,-0.996917,0.0784664,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+434,181355,530,1,-3040.78,806.684,-9.70629,1.69297,0,0,0.748956,0.66262,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+435,181355,530,1,-3055.61,812.475,-9.50644,0.436332,0,0,0.216439,0.976296,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+436,181355,530,1,-3007.63,853.589,-10.486,-2.9496,0,0,-0.995396,0.0958512,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+437,181355,530,1,-3080.77,825.701,-11.357,1.02974,0,0,0.492423,0.870356,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+438,181355,530,1,-3041.08,832.12,-9.48489,-1.67551,0,0,-0.743144,0.669131,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+439,181355,530,1,-4008.93,-11351,-122.814,-2.07694,0,0,-0.861629,0.507539,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+440,181355,530,1,-4196.21,-11595.3,-125.408,1.23918,0,0,0.580703,0.814116,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+441,181355,530,1,-4229.96,-11608.4,-126.283,0.837757,0,0,0.406736,0.913546,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+442,181355,530,1,-4200.81,-11604.3,-125.62,0.471238,0,0,0.233445,0.97237,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+443,181355,530,1,-4158,-11597.3,-138.91,-1.44862,0,0,-0.66262,0.748956,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+444,181355,530,1,-4180.39,-11587,-123.98,-0.663223,0,0,-0.325567,0.945519,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+445,181355,530,1,-4244.82,-11658,-143.625,1.72787,0,0,0.760406,0.649449,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+446,181355,530,1,-4207.49,-11645,-143.677,0.104719,0,0,0.0523357,0.99863,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+447,181355,530,1,-4185.57,-11653.1,-143.449,-1.23918,0,0,-0.580703,0.814116,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+448,181355,530,1,-4225.97,-11648.1,-143.864,-0.401425,0,0,-0.199368,0.979925,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+449,181355,530,1,-4167.56,-11641.1,-98.394,1.13446,0,0,0.537299,0.843392,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+450,181355,530,1,-4155.24,-11635.5,-98.1756,-0.90757,0,0,-0.438371,0.898794,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+451,181355,530,1,-4127.21,-11534.9,-136.013,0.628317,0,0,0.309016,0.951057,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+452,181355,530,1,-4070.25,-11542.5,-138.655,-1.72787,0,0,-0.760406,0.649449,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+453,181355,530,1,-4105.22,-11544.5,-135.782,1.6057,0,0,0.719339,0.694659,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+454,181355,530,1,-4120.5,-11437.1,-130.379,-1.44862,0,0,-0.66262,0.748956,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+455,181355,530,1,-4144.75,-11423.6,-130.672,-2.80998,0,0,-0.986285,0.16505,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+456,181355,530,1,-4149.01,-11480.6,-130.894,-0.383971,0,0,-0.190808,0.981627,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+457,181355,530,1,-4150.39,-11469.8,-130.923,2.70526,0,0,0.976295,0.216442,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+458,181355,530,1,-4072.73,-11547.7,-138.704,0.977383,0,0,0.469471,0.882948,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+459,181355,530,1,-4129.01,-11606.8,-139.121,-2.07694,0,0,-0.861629,0.507539,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+460,181355,530,1,-4204.82,-11678.5,-143.192,0.401425,0,0,0.199368,0.979925,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+461,181355,530,1,-4163.96,-11666.7,-143.258,-1.6057,0,0,-0.719339,0.694659,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+462,181355,530,1,-4102.17,-11696.3,-142.664,2.46091,0,0,0.942641,0.333808,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+463,181355,530,1,-4178.04,-11713.5,-143.602,0.785397,0,0,0.382683,0.92388,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+464,181355,530,1,-4209.64,-11675.4,-143.244,-0.383971,0,0,-0.190808,0.981627,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+465,181355,530,1,-4154.53,-11704.8,-143.319,-0.296705,0,0,-0.147809,0.989016,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+466,181355,530,1,-4122.2,-11707.2,-142.921,1.83259,0,0,0.793353,0.608762,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+467,181355,530,1,-4065.59,-11664.2,-142.101,0.226892,0,0,0.113203,0.993572,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+468,181355,530,1,-4065.43,-11688.8,-142.188,0.383971,0,0,0.190808,0.981627,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+469,181355,530,1,-4185.52,-11746,-132.273,3.03684,0,0,0.998629,0.0523532,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+470,181355,530,1,-4161.4,-11800.6,-132.195,-1.72787,0,0,-0.760406,0.649449,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+471,181355,530,1,-4194.74,-11728.5,-143.451,-3.03684,0,0,-0.998629,0.0523532,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+472,181355,530,1,-4221.81,-11830.9,-115.896,-0.977383,0,0,-0.469471,0.882948,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+473,181355,530,1,-4210.18,-11796.2,-133.245,1.5708,0,0,0.707107,0.707107,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+474,181355,530,1,-4186.29,-11803,-133.174,0.610863,0,0,0.300705,0.953717,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+475,181355,530,1,-3929.13,-11744.8,-138.612,0.628317,0,0,0.309016,0.951057,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+476,181355,530,1,-3928.31,-11712.5,-135.206,-1.13446,0,0,-0.537299,0.843392,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+477,181355,530,1,-3970.78,-11722.9,-138.836,1.51844,0,0,0.688354,0.725374,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+478,181355,530,1,-3848.47,-11713.9,-106.96,-1.41372,0,0,-0.649447,0.760406,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+479,181355,530,1,-3832.71,-11732.3,-106.845,-3.10665,0,0,-0.999847,0.0174693,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+480,181355,530,1,-3838.55,-11690.5,-106.755,-2.70526,0,0,-0.976295,0.216442,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+481,181355,530,1,-3839.15,-11664.5,-116.072,-0.314158,0,0,-0.156434,0.987688,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+482,181355,530,1,-3856.06,-11632.6,-134.016,2.58308,0,0,0.961261,0.27564,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+483,181355,530,1,-3938.11,-11702,-135.276,1.50098,0,0,0.681998,0.731354,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+484,181355,530,1,-3877.95,-11647.4,-134.368,-1.6057,0,0,-0.719339,0.694659,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+485,181355,530,1,-3891.19,-11640.6,-134.491,1.29154,0,0,0.601814,0.798636,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+486,181355,530,1,-3931.24,-11649.4,-135.003,1.71042,0,0,0.754709,0.656059,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+487,181355,530,1,-3905.64,-11638.8,-134.663,-0.418879,0,0,-0.207911,0.978148,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+488,181355,530,1,-3819.23,-11660.3,-115.647,-0.314158,0,0,-0.156434,0.987688,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+489,181355,530,1,-3943.49,-11689.1,-135.289,0.610863,0,0,0.300705,0.953717,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+490,181355,530,1,-3943.94,-11674.1,-135.239,-2.68781,0,0,-0.97437,0.224951,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+491,181355,530,1,-3817.69,-11688.1,-107.098,2.33874,0,0,0.920505,0.390732,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+492,181355,530,1,-3919.52,-11642,-134.831,0.209439,0,0,0.104528,0.994522,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+493,181355,530,1,-3939.98,-11660.9,-135.145,-2.40855,0,0,-0.93358,0.358368,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+494,181355,530,1,-3819.72,-11624.6,-125.708,1.18682,0,0,0.559193,0.829038,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+495,181355,530,1,-3844.54,-11583.1,-132.768,-0.349065,0,0,-0.173648,0.984808,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+496,181355,530,1,-3903.5,-11599.6,-137.786,-2.35619,0,0,-0.923879,0.382686,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+497,181355,530,1,-3822.68,-11553.7,-135.249,3.05433,0,0,0.999048,0.0436193,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+498,181355,530,1,-3858.56,-11607.6,-134.763,-0.820303,0,0,-0.398748,0.91706,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+499,181355,530,1,-3810.93,-11566.8,-135.161,-1.3439,0,0,-0.622514,0.782609,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+500,181355,530,1,-3836.55,-11592.7,-132.634,1.67551,0,0,0.743144,0.669131,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+501,181355,530,1,-3862,-11617.4,-136.833,-1.3439,0,0,-0.622514,0.782609,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+502,181355,530,1,-3935.25,-11599.7,-138.455,-0.628317,0,0,-0.309016,0.951057,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+503,181355,530,1,-3821.2,-11515.7,-138.644,1.51844,0,0,0.688354,0.725374,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+504,181355,530,1,-3843.45,-11503.5,-139.097,0.785397,0,0,0.382683,0.92388,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+505,181355,530,1,-3753.63,-11517.7,-134.327,2.09439,0,0,0.866025,0.500001,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+506,181355,530,1,-3732.54,-11501,-134.029,2.37364,0,0,0.927183,0.374608,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+507,181355,530,1,-2236,-11920.2,26.8399,0.855211,0,0,0.414693,0.909961,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+508,181355,530,1,-2252.59,-11900.2,26.8974,-3.07177,0,0,-0.999391,0.0349061,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+509,181355,530,1,-2243.87,-11892.8,27.0418,-1.0821,0,0,-0.515038,0.857168,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+510,181355,530,1,-2226.58,-11885.2,28.8841,0.174532,0,0,0.0871553,0.996195,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+511,181355,530,1,-2218.06,-11885.2,29.1782,1.18682,0,0,0.559193,0.829038,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+512,181355,530,1,-2220.26,-11913.8,27.5892,-1.62316,0,0,-0.725374,0.688355,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+513,181355,530,1,-2212.48,-11908.2,28.0733,0.541051,0,0,0.267238,0.963631,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+514,181355,530,1,9600.29,-7264.87,14.213,-0.994837,0,0,-0.477159,0.878817,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+515,181355,530,1,9614.28,-7254.57,16.4908,-1.20428,0,0,-0.566406,0.824126,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+516,181355,530,1,9632.24,-7285.19,14.3549,-1.39626,0,0,-0.642787,0.766045,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+517,181355,530,1,9644.85,-7399.78,15.699,-1.53589,0,0,-0.694658,0.71934,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+518,181355,530,1,9665.25,-7413.47,13.611,-2.04204,0,0,-0.85264,0.522499,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+519,181355,530,1,9685.96,-7394.53,11.6048,-1.5708,0,0,-0.707107,0.707107,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+520,181355,530,1,9679.71,-7394.5,11.605,-1.53589,0,0,-0.694658,0.71934,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+521,181355,530,1,9667.84,-7318.55,13.897,-2.86234,0,0,-0.990268,0.139175,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+522,181355,530,1,9684.93,-7318.87,13.8433,2.54818,0,0,0.956305,0.292372,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+523,181355,530,1,9699.61,-7414.83,13.6989,-1.27409,0,0,-0.594823,0.803857,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+524,181355,530,1,9658.9,-7492.71,13.5224,1.71042,0,0,0.754709,0.656059,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+525,181355,530,1,9701.56,-7334.52,11.785,-1.69297,0,0,-0.748956,0.66262,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+526,181355,530,1,9700.3,-7321.61,11.6229,0.715585,0,0,0.350207,0.936672,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+527,181355,530,1,9734.25,-7330.14,24.7273,1.67551,0,0,0.743144,0.669131,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+528,181355,530,1,9708.06,-7493.28,13.5236,1.58825,0,0,0.71325,0.70091,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+529,181355,530,1,9839.54,-7451.33,13.6458,0.244346,0,0,0.121869,0.992546,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+530,181355,530,1,9806.77,-7407.16,13.6263,0.610863,0,0,0.300705,0.953717,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+531,181355,530,1,9825.43,-7410.53,13.6259,0.837757,0,0,0.406736,0.913546,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+532,181355,530,1,9812.97,-7428.58,13.6163,1.71042,0,0,0.754709,0.656059,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+533,181355,530,1,9875.02,-7410.74,13.5832,2.02458,0,0,0.848047,0.529921,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+534,181355,530,1,9850.28,-7378.31,18.6102,-1.6057,0,0,-0.719339,0.694659,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+535,181355,530,1,9825.06,-7428.28,13.6186,1.46608,0,0,0.66913,0.743145,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+536,181355,530,1,9875.17,-7428.63,13.589,2.25147,0,0,0.902585,0.430512,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+537,181355,530,1,9742.05,-7327.47,24.7279,0.279252,0,0,0.139173,0.990268,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+538,181355,530,1,9812.85,-7410.42,13.6247,1.88495,0,0,0.809016,0.587786,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+539,181355,530,1,9862.43,-7450.91,13.6452,2.35619,0,0,0.923879,0.382686,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+540,181355,530,1,9806.04,-7431.57,13.6187,-0.767944,0,0,-0.374606,0.927184,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+541,181355,530,1,9760.96,-7298.79,24.7314,-0.733038,0,0,-0.358368,0.93358,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+542,181355,530,1,9797.02,-7275.4,26.3874,1.29154,0,0,0.601814,0.798636,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+543,181355,530,1,9770.45,-7313.02,24.7307,2.00713,0,0,0.843391,0.5373,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+544,181355,530,1,9765.88,-7295.04,24.7369,-2.63544,0,0,-0.968147,0.250381,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+545,181355,530,1,9784.87,-7302.95,24.7277,2.16421,0,0,0.882947,0.469473,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+546,181355,530,1,9828.29,-7261.11,26.1458,-1.97222,0,0,-0.833885,0.551938,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+547,181355,530,1,9804.57,-7286.89,26.3739,1.51844,0,0,0.688354,0.725374,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+548,181355,530,1,9775.45,-7309.85,24.7319,1.6057,0,0,0.719339,0.694659,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+549,181355,530,1,9821.52,-7255.12,26.1467,-2.61799,0,0,-0.965925,0.258821,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+550,181355,530,1,9752.18,-7323.43,24.7289,1.76278,0,0,0.771625,0.636078,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+551,181355,530,1,9775.09,-7288.95,24.7364,-1.13446,0,0,-0.537299,0.843392,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+552,181355,530,1,9913.19,-7182.16,31.0098,-1.95477,0,0,-0.829037,0.559194,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+553,181355,530,1,9880.78,-7153.58,30.9503,-2.53072,0,0,-0.953716,0.300708,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+554,181355,530,1,9943.32,-7191.94,30.8752,-1.69297,0,0,-0.748956,0.66262,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+555,181355,530,1,-4212.53,-12510.3,45.4441,0.226892,0,0,0.113203,0.993572,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+556,181355,530,1,-4214.63,-12476,45.0741,-0.785397,0,0,-0.382683,0.92388,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+557,181355,530,1,-4209.38,-12517.7,45.8172,0.331611,0,0,0.165047,0.986286,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+558,181355,530,1,9866.91,-7124.32,30.8774,-2.86234,0,0,-0.990268,0.139175,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+559,181355,530,1,9987.12,-7093.6,47.705,-1.02974,0,0,-0.492423,0.870356,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+560,181355,530,1,9982.97,-7098.83,47.705,-0.226892,0,0,-0.113203,0.993572,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+561,181355,530,1,-4185.71,-12504.8,44.3613,-2.72271,0,0,-0.978148,0.207912,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+562,181355,530,1,-4176.96,-12494,44.361,1.36136,0,0,0.62932,0.777146,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+563,181355,530,1,-4234.85,-12332.2,4.62762,-0.436332,0,0,-0.216439,0.976296,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+564,181355,530,1,-4231.34,-12311.9,4.43091,-1.58825,0,0,-0.71325,0.70091,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+565,181355,530,1,-4215.69,-12343.2,5.16444,1.18682,0,0,0.559193,0.829038,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+566,181355,530,1,-4208.98,-12291.5,1.56401,0.855211,0,0,0.414693,0.909961,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+567,181355,530,1,-4191.35,-12302.2,0.068963,-3.07177,0,0,-0.999391,0.0349061,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+568,181355,530,1,-4196.02,-12313.6,0.370297,0.174532,0,0,0.0871553,0.996195,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+569,181355,530,1,-4207.03,-12336.1,2.90029,-1.0821,0,0,-0.515038,0.857168,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+570,181355,530,1,-4217.3,-12296.4,2.797,-1.62316,0,0,-0.725374,0.688355,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+571,181355,530,1,-4236.27,-12322,3.52447,0.541051,0,0,0.267238,0.963631,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+572,181355,530,1,-4681.73,-12381.6,11.5648,1.15192,0,0,0.544639,0.838671,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+573,181355,530,1,-4688.87,-12375.9,11.5106,0.575957,0,0,0.284015,0.95882,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+574,181355,530,1,-2529.85,7544.71,-2.36299,0.855211,0,0,0.414693,0.909961,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+575,181355,530,1,-2511.85,7563.29,-1.76056,0.855211,0,0,0.414693,0.909961,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+576,181355,530,1,-2505.92,7527.34,0.043322,-1.62316,0,0,-0.725374,0.688355,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+577,181355,530,1,-2497.06,7536.15,-0.614676,-0.436332,0,0,-0.216439,0.976296,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+578,181355,530,1,2021.77,6603.31,136.619,0.174532,0,0,0.0871553,0.996195,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+579,181355,530,1,2049.48,6600.25,137.544,1.18682,0,0,0.559193,0.829038,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+580,181355,530,1,2049.96,6570.62,135.499,0.541051,0,0,0.267238,0.963631,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+581,181355,530,1,2046.62,6564.63,134.171,-0.436332,0,0,-0.216439,0.976296,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+582,181355,530,1,2030.02,6607.95,137.79,-3.07177,0,0,-0.999391,0.0349061,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+583,181355,530,1,2046.62,6564.63,134.171,-0.436332,0,0,-0.216439,0.976296,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+584,181355,530,1,2022.7,6566.99,133.542,0.855211,0,0,0.414693,0.909961,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+585,181355,530,1,2017.95,6573.73,135.307,-1.62316,0,0,-0.725374,0.688355,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+586,181355,530,1,2051.81,6590.62,136.702,-1.0821,0,0,-0.515038,0.857168,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+587,181355,530,1,2302.23,6162.09,135.212,-3.07177,0,0,-0.999391,0.0349061,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+588,181355,530,1,2303.75,6135.78,135.061,1.18682,0,0,0.559193,0.829038,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+589,181355,530,1,2266.46,6158.56,138.469,0.541051,0,0,0.267238,0.963631,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+590,181355,530,1,2255.94,6152,139.28,-0.436332,0,0,-0.216439,0.976296,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+591,181355,530,1,2268.3,6125.97,137.222,-1.62316,0,0,-0.725374,0.688355,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+592,181355,530,1,2298.38,6131.03,135.556,-1.0821,0,0,-0.515038,0.857168,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+593,181355,530,1,2293.31,6163.85,136.162,0.174532,0,0,0.0871553,0.996195,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+594,181355,530,1,2277.7,6161.83,137.912,0.59341,0,0,0.292371,0.956305,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+595,181355,530,1,2258.8,6129.35,137.746,0.855211,0,0,0.414693,0.909961,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+596,181358,530,1,-3989.12,-11849.1,25.7334,-2.11185,0,0,-0.870356,0.492424,120,120,255,1), -- Hanging, Square, Large - MFF
(@OGUID+597,181358,530,1,-3864.28,-11742.7,-84.619,2.07694,0,0,0.861629,0.507539,120,120,255,1), -- Hanging, Square, Large - MFF
(@OGUID+598,181358,530,1,-3868.66,-11590.5,-95.2881,-2.05949,0,0,-0.857167,0.515038,120,120,255,1), -- Hanging, Square, Large - MFF
(@OGUID+599,181358,530,1,-3866.91,-11587.1,-96.3765,1.22173,0,0,0.573576,0.819152,120,120,255,1), -- Hanging, Square, Large - MFF
(@OGUID+600,181358,530,1,-3785.23,-11420.6,-122.395,-2.05949,0,0,-0.857167,0.515038,120,120,255,1), -- Hanging, Square, Large - MFF
(@OGUID+601,181388,530,1,-2902.59,4029.07,5.6271,2.28638,0,0,0.909961,0.414694,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+602,181388,530,1,-2904.2,4031.6,5.6142,-2.91469,0,0,-0.993571,0.113208,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+603,181388,530,1,-3976.32,2143.52,105.861,-0.401425,0,0,-0.199368,0.979925,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+604,181388,530,1,-1706.42,5491.57,-8.74596,-2.65289,0,0,-0.970295,0.241925,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+605,181388,530,1,-2980.9,856.316,-6.71914,-1.72787,0,0,-0.760406,0.649449,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+606,181388,530,1,-2970.08,861.281,-6.31813,2.28638,0,0,0.909961,0.414694,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+607,181388,530,1,-4022.25,-11739.3,-150.798,0.0698117,0,0,0.0348988,0.999391,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+608,181388,530,1,-4026.65,-11731.5,-150.8,2.60054,0,0,0.96363,0.267241,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+609,181388,530,1,-3924.43,-11545.5,-149.111,2.60054,0,0,0.96363,0.267241,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+610,181388,530,1,-3913.77,-11545.5,-148.998,0.471238,0,0,0.233445,0.97237,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+611,181388,530,1,-3794.18,-11519.9,-133.969,-3.00195,0,0,-0.997563,0.0697661,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+612,181388,530,1,-3918.32,-11545.5,-149.044,0.471238,0,0,0.233445,0.97237,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+613,181388,530,1,-3919.78,-11545.5,-149.061,0.104719,0,0,0.0523357,0.99863,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+614,181388,530,1,-3743.69,-11697.8,-104.624,-3.10665,0,0,-0.999847,0.0174693,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+615,181388,530,1,-3744.04,-11692.4,-104.606,-2.86234,0,0,-0.990268,0.139175,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+616,181388,530,1,-3739.73,-11701.3,-104.592,2.44346,0,0,0.939692,0.34202,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+617,181388,530,1,-3740.33,-11688.6,-104.605,-1.309,0,0,-0.608761,0.793354,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+618,181388,530,1,9794.21,-7251.35,27.114,2.30383,0,0,0.913545,0.406738,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+619,181388,530,1,-4225.53,-12524.8,45.9421,1.22173,0,0,0.573576,0.819152,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+620,181388,530,1,-4206.35,-12450,47.5016,-1.36136,0,0,-0.62932,0.777146,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+621,181388,530,1,-4706.19,-12397.5,14.251,-2.1293,0,0,-0.874619,0.48481,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+622,181388,530,1,3016.26,5430.18,148.006,-1.90241,0,0,-0.814116,0.580703,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+623,181388,530,1,3060.13,3699.84,143.78,2.42601,0,0,0.936672,0.350207,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+624,181388,530,1,3064.48,3691.51,143.666,-2.77507,0,0,-0.983254,0.182238,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+625,181389,530,1,-2997.84,3965.78,18.0817,-1.72787,0,0,-0.760406,0.649449,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+626,181389,530,1,-3002.29,3972.22,18.5908,3.00195,0,0,0.997563,0.0697661,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+627,181389,530,1,-2996.48,3977.19,18.3997,1.43117,0,0,0.656058,0.75471,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+628,181389,530,1,-2991.83,3970.6,18.1991,-0.139624,0,0,-0.0697556,0.997564,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+629,181389,530,1,-3891.2,2089.94,100.371,2.72271,0,0,0.978148,0.207912,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+630,181389,530,1,-3923.84,2072.33,100.596,1.67551,0,0,0.743144,0.669131,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+631,181389,530,1,-3922.78,2062.05,100.121,-1.3439,0,0,-0.622514,0.782609,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+632,181389,530,1,-3882.01,2085.14,99.7375,-0.523598,0,0,-0.258819,0.965926,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+633,181389,530,1,-1541.19,5653.44,172.244,-2.82743,0,0,-0.987688,0.156436,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+634,181389,530,1,-2637.21,4503.53,49.7341,1.93731,0,0,0.824125,0.566408,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+635,181389,530,1,-4091.52,-11339.2,-129.598,-1.01229,0,0,-0.484809,0.87462,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+636,181389,530,1,-4141.86,-11371.3,-129.853,-0.925024,0,0,-0.446198,0.894935,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+637,181389,530,1,-4142.5,-11540,-124.575,0.837757,0,0,0.406736,0.913546,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+638,181389,530,1,-4097.35,-11552.9,-124.006,1.88495,0,0,0.809016,0.587786,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+639,181389,530,1,-4066.7,-11607.9,-129.409,-2.18166,0,0,-0.887011,0.461749,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+640,181389,530,1,-4129.52,-11792.5,-122.023,2.26893,0,0,0.906307,0.422619,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+641,181389,530,1,-3907.01,-11840.6,-17.3894,2.75761,0,0,0.981627,0.190812,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+642,181389,530,1,-3906.89,-11740.7,-247.155,1.44862,0,0,0.66262,0.748956,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+643,181389,530,1,-3949.17,-11719.7,-231.763,0.663223,0,0,0.325567,0.945519,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+644,181389,530,1,-4036.07,-11724.3,-125.336,2.19911,0,0,0.891006,0.453991,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+645,181389,530,1,-3838.58,-11819.8,-46.6697,-2.09439,0,0,-0.866025,0.500001,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+646,181389,530,1,-3845.71,-11764.6,-72.8579,-0.90757,0,0,-0.438371,0.898794,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+647,181389,530,1,-3840.37,-11683.5,-278.931,3.07177,0,0,0.999391,0.0349061,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+648,181389,530,1,-3861.94,-11726.7,-264.663,2.42601,0,0,0.936672,0.350207,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+649,181389,530,1,-3794.91,-11730.6,-93.0703,2.11185,0,0,0.870356,0.492424,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+650,181389,530,1,-3855.82,-11639.5,-169.809,-2.32129,0,0,-0.91706,0.39875,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+651,181389,530,1,-3964.06,-11674.8,-216.94,0.104719,0,0,0.0523357,0.99863,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+652,181389,530,1,-3905.84,-11628.6,-302.981,-0.104719,0,0,-0.0523357,0.99863,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+653,181389,530,1,-3897.79,-11618.4,-185.584,-1.58825,0,0,-0.71325,0.70091,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+654,181389,530,1,-3855.36,-11639.2,-293.878,-2.47837,0,0,-0.945518,0.325568,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+655,181389,530,1,-3783.92,-11674.6,-93.7094,-3.03684,0,0,-0.998629,0.0523532,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+656,181389,530,1,-3802.61,-11620.2,-92.7153,-1.53589,0,0,-0.694658,0.71934,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+657,181389,530,1,-3942.77,-11633,-199.473,-0.785397,0,0,-0.382683,0.92388,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+658,181389,530,1,-3822.29,-11521.8,-128.501,1.46608,0,0,0.66913,0.743145,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+659,181389,530,1,-3848.6,-11508.4,-128.93,0.733038,0,0,0.358368,0.93358,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+660,181389,530,1,9838.11,-7454.22,23.0067,1.55334,0,0,0.700909,0.713251,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+661,181389,530,1,9863.33,-7454.57,22.9459,1.81514,0,0,0.788011,0.615662,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+662,181390,530,1,-3006.31,859.596,-5.97701,-2.67035,0,0,-0.972369,0.233448,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+663,181391,530,1,-2903.53,4030.89,5.63334,-2.58308,0,0,-0.961261,0.27564,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+664,181391,530,1,-2903,4029.93,5.65509,-2.63544,0,0,-0.968147,0.250381,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+665,181391,530,1,-3977.75,2144.87,105.878,1.95477,0,0,0.829038,0.559193,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+666,181391,530,1,-2979.79,854.043,-6.9077,1.18682,0,0,0.559193,0.829038,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+667,181391,530,1,-2981.6,858.293,-6.6824,0.837757,0,0,0.406736,0.913546,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+668,181391,530,1,-2970.28,860.476,-6.32565,2.58308,0,0,0.961261,0.27564,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+669,181391,530,1,-4206.79,-12467.3,47.0145,-0.855211,0,0,-0.414693,0.909961,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+670,181391,530,1,-4222.02,-12521.1,47.0011,1.36136,0,0,0.62932,0.777146,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+671,181391,530,1,-4198.41,-12462.2,47.0286,1.06465,0,0,0.507538,0.861629,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+672,181391,530,1,-4182.41,-12436.8,44.646,-1.02974,0,0,-0.492423,0.870356,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+673,181391,530,1,-4704.57,-12395,12.4202,0.715585,0,0,0.350207,0.936672,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+674,181391,530,1,1989.55,6785.71,165.752,-1.67551,0,0,-0.743144,0.669131,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+675,181391,530,1,3026.33,5430.92,148.449,2.14675,0,0,0.878817,0.47716,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+676,181391,530,1,3017.86,5435.41,147.437,0.663223,0,0,0.325567,0.945519,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+677,181391,530,1,3027.36,5431.58,148.451,2.14675,0,0,0.878817,0.47716,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+678,181392,530,1,3026.51,5497.44,151.531,-2.58308,0,0,-0.961261,0.27564,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+679,181392,530,1,3016.61,5445.07,151.877,2.14675,0,0,0.878817,0.47716,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+680,181392,530,1,2962.52,3697.01,150.268,1.46608,0,0,0.66913,0.743145,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+681,181392,530,1,3061.88,3647.26,149.634,2.37364,0,0,0.927183,0.374608,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+682,181392,530,1,-2931.29,3931.27,8.81604,1.90241,0,0,0.814116,0.580703,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+683,181392,530,1,-2967.96,4020.8,7.26489,-0.610865,0,0,-0.300706,0.953717,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+684,181392,530,1,-2923.89,4017.94,8.34427,-2.61799,0,0,-0.965925,0.258821,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+685,181392,530,1,-2987.7,4030.75,7.28573,2.47837,0,0,0.945518,0.325568,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+686,181392,530,1,-2982.13,3981.36,8.74514,-0.0523589,0,0,-0.0261765,0.999657,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+687,181392,530,1,-4010.37,2155.55,109.992,1.06465,0,0,0.507538,0.861629,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+688,181392,530,1,-4213.73,-11685.4,-130.823,0.942477,0,0,0.45399,0.891007,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+689,181392,530,1,-4145.8,-11745.6,-124.153,2.02458,0,0,0.848047,0.529921,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+690,181392,530,1,9734.03,-7343.02,35.0236,1.90241,0,0,0.814116,0.580703,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+691,181392,530,1,9694.37,-7495.96,25.6203,1.6057,0,0,0.719339,0.694659,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+692,181392,530,1,9743.4,-7339.75,34.9457,1.90241,0,0,0.814116,0.580703,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+693,181392,530,1,9767.38,-7480.58,28.1816,-3.08918,0,0,-0.999657,0.0262016,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+694,181392,530,1,9683.36,-7495.41,26.9979,1.53589,0,0,0.694658,0.71934,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+695,181392,530,1,9752.51,-7336.51,34.976,1.91986,0,0,0.819152,0.573577,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+696,181392,530,1,9724.5,-7346.25,34.9555,1.91986,0,0,0.819152,0.573577,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+697,181392,530,1,9767.38,-7495.05,28.2891,3.05433,0,0,0.999048,0.0436193,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+698,181392,530,1,9790.95,-7316.39,35.2356,2.23402,0,0,0.898793,0.438373,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+699,181392,530,1,9799.12,-7310.61,35.2336,2.19911,0,0,0.891006,0.453991,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+700,181392,530,1,-4205.99,-12527.1,50.1277,0.715585,0,0,0.350207,0.936672,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+701,181392,530,1,-4700.57,-12380.6,37.2404,-0.506145,0,0,-0.25038,0.968148,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+702,181392,530,1,-4683.02,-12402,37.7377,-2.63544,0,0,-0.968147,0.250381,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+703,181392,530,1,-4705.87,-12382.2,37.2847,-2.11185,0,0,-0.870356,0.492424,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+704,181392,530,1,-4681.78,-12396.7,37.7488,2.11185,0,0,0.870356,0.492424,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+705,181392,530,1,-4677.72,-12403.4,37.8024,-1.02974,0,0,-0.492423,0.870356,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+706,181392,530,1,-4676.33,-12398,37.7639,0.523598,0,0,0.258819,0.965926,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+707,181392,530,1,-4702,-12375.4,37.2543,1.0472,0,0,0.5,0.866025,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+708,181392,530,1,-4707.37,-12376.8,37.2118,2.60054,0,0,0.96363,0.267241,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+709,181392,530,1,2063.31,6759.9,173.268,-1.58825,0,0,-0.71325,0.70091,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+710,181392,530,1,2031.96,6825.55,181.533,2.42601,0,0,0.936672,0.350207,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+711,181392,530,1,2009.81,6871.41,188.181,-2.04204,0,0,-0.85264,0.522499,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+712,181392,530,1,1955.63,6885.82,167.13,-1.81514,0,0,-0.788011,0.615662,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+713,181392,530,1,2032.21,6819.37,181.512,-2.40855,0,0,-0.93358,0.358368,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+714,181393,530,1,-2915.34,4014.01,1.94932,1.309,0,0,0.608761,0.793354,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+715,181393,530,1,-2923.23,4027.32,2.01711,-0.244346,0,0,-0.121869,0.992546,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+716,181393,530,1,-2902.19,4021.93,1.9572,2.86234,0,0,0.990268,0.139175,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+717,181393,530,1,-2927.01,4021.81,4.19648,-2.68781,0,0,-0.97437,0.224951,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+718,181393,530,1,-2921.82,4013.16,4.22146,-2.49582,0,0,-0.948323,0.317306,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+719,181393,530,1,-3759.18,-11686.5,-100.743,-0.104719,0,0,-0.0523357,0.99863,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+720,181393,530,1,-3758.17,-11705.3,-100.718,0.087266,0,0,0.0436192,0.999048,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+721,181393,530,1,9648.49,-7397.35,19.7111,-1.55334,0,0,-0.700909,0.713251,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+722,181393,530,1,9664,-7494.53,21.3056,1.43117,0,0,0.656058,0.75471,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+723,181393,530,1,9788.54,-7459.79,21.5471,-1.53589,0,0,-0.694658,0.71934,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+724,181393,530,1,9710.68,-7517.24,24.6095,3.14159,0,0,-1,0,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+725,181393,530,1,9702.63,-7494.75,20.8742,1.69297,0,0,0.748956,0.66262,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+726,181393,530,1,9776.34,-7459.71,21.5367,-1.58825,0,0,-0.71325,0.70091,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+727,181393,530,1,9775.62,-7515.92,21.1812,1.39626,0,0,0.642787,0.766045,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+728,181393,530,1,9813.95,-7440.06,18.5338,0.942477,0,0,0.45399,0.891007,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+729,181393,530,1,9800.51,-7459.87,21.5852,-1.55334,0,0,-0.700909,0.713251,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+730,181393,530,1,9787.98,-7515.99,21.1214,1.50098,0,0,0.681998,0.731354,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+731,181393,530,1,9820.21,-7445.31,18.3621,0.663223,0,0,0.325567,0.945519,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+732,181393,530,1,9799.94,-7516.06,21.147,1.5708,0,0,0.707107,0.707107,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+733,181393,530,1,9842.31,-7339.95,33.4202,1.36136,0,0,0.62932,0.777146,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+734,181393,530,1,9888.21,-7440.49,18.4332,2.07694,0,0,0.861629,0.507539,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+735,181393,530,1,9881.71,-7445.71,18.4488,2.49582,0,0,0.948323,0.317306,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+736,181393,530,1,9858.42,-7340.05,33.5396,1.74533,0,0,0.766044,0.642789,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+737,181393,530,1,9825.28,-7214.29,34.3908,-2.07694,0,0,-0.861629,0.507539,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+738,181393,530,1,9867.82,-7250.42,34.2824,-2.37364,0,0,-0.927183,0.374608,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+739,181393,530,1,9982.94,-7094.17,55.7365,-0.698131,0,0,-0.34202,0.939693,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+740,181393,530,1,9971.99,-7098.17,51.6368,1.97222,0,0,0.833885,0.551938,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+741,181393,530,1,9950.98,-7081.83,51.5927,-0.209439,0,0,-0.104528,0.994522,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+742,181393,530,1,-4678.97,-12382.8,15.7223,0.837757,0,0,0.406736,0.913546,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+743,181393,530,1,-4690.98,-12373.2,15.732,0.785397,0,0,0.382683,0.92388,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+744,181393,530,1,2947.15,5538.04,149.536,2.61799,0,0,0.965925,0.258821,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+745,181393,530,1,2941.79,5528.24,149.508,2.44346,0,0,0.939692,0.34202,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+746,181393,530,1,2945.66,5412.69,150,-2.25147,0,0,-0.902585,0.430512,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+747,181393,530,1,2935.67,5418.93,149.95,-2.07694,0,0,-0.861629,0.507539,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+748,181393,530,1,3087.42,5468.23,146.68,0.401425,0,0,0.199368,0.979925,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+749,181393,530,1,3083.16,5479.3,146.721,0.331611,0,0,0.165047,0.986286,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+750,181401,530,1,2940.3,5415.8,165.938,-2.19911,0,0,-0.891006,0.453991,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+751,181401,530,1,3085.63,5473.63,162.582,0.296705,0,0,0.147809,0.989016,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+752,181401,530,1,3116.46,3688.85,150.604,0.558504,0,0,0.275637,0.961262,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+753,181401,530,1,3018.14,3748.76,151.278,1.29154,0,0,0.601814,0.798636,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+754,181401,530,1,2948.54,3719.7,150.269,3.12412,0,0,0.999962,0.00873464,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+755,181401,530,1,-3092.01,2502.07,76.3517,-1.72787,0,0,-0.760406,0.649449,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+756,181401,530,1,-3956.79,2241.57,107.969,-1.71042,0,0,-0.754709,0.656059,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+757,181401,530,1,-3006.02,795.258,-1.89102,2.56563,0,0,0.958819,0.284016,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+758,181401,530,1,9945.5,-7242.05,43.9058,2.79252,0,0,0.984807,0.173652,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+759,181401,530,1,9952.42,-7232.27,43.9028,2.23402,0,0,0.898793,0.438373,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+760,181401,530,1,9955,-7098.57,59.8619,-2.28638,0,0,-0.909961,0.414694,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+761,181401,530,1,9992.33,-7205.06,44.0625,2.18166,0,0,0.887011,0.461749,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+762,181401,530,1,10007.3,-7030.9,57.9729,-2.21657,0,0,-0.894934,0.446199,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+763,181401,530,1,2066.15,6726.28,181.553,-1.53589,0,0,-0.694658,0.71934,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+764,181401,530,1,2066.26,6730.64,181.517,1.51844,0,0,0.688354,0.725374,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+765,181401,530,1,2070.8,6759.67,173.274,-1.58825,0,0,-0.71325,0.70091,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+766,181401,530,1,2055.83,6759.79,173.274,-1.55334,0,0,-0.700909,0.713251,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+767,181401,530,1,1941.4,6838.66,177.477,0.0174525,0,0,0.00872612,0.999962,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+768,181401,530,1,1937.43,6838.64,177.442,-3.08918,0,0,-0.999657,0.0262016,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+769,181401,530,1,2944.3,5533.43,163.821,2.56563,0,0,0.958819,0.284016,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+770,181605,530,1,9379.9,-6791.64,15.0133,-0.506145,0,0,-0.25038,0.968148,120,120,255,1), -- Ribbon Pole
(@OGUID+771,181605,530,1,-2989.28,4133.05,4.52364,-0.506145,0,0,-0.25038,0.968148,120,120,255,1), -- Ribbon Pole
(@OGUID+772,181605,530,1,7670.44,-6836.25,79.6868,-0.506145,0,0,-0.25038,0.968148,120,120,255,1), -- Ribbon Pole
(@OGUID+773,181605,530,1,-3047.74,2396.59,61.1788,-0.506145,0,0,-0.25038,0.968148,120,120,255,1), -- Ribbon Pole
(@OGUID+774,181605,530,1,-3964.7,2039.72,95.0648,-0.506145,0,0,-0.25038,0.968148,120,120,255,1), -- Ribbon Pole
(@OGUID+775,181605,530,1,-3821.98,-11508.3,-138.624,0.90757,0,0,0.438371,0.898794,120,120,255,1), -- Ribbon Pole
(@OGUID+776,181605,530,1,-2228.14,-11913.8,26.7304,-0.506145,0,0,-0.25038,0.968148,120,120,255,1), -- Ribbon Pole
(@OGUID+777,181605,530,1,9805.37,-7255.5,26.2333,-0.0698117,0,0,-0.0348988,0.999391,120,120,255,1), -- Ribbon Pole
(@OGUID+778,181605,530,1,-4204.67,-12321.1,2.19882,-0.506145,0,0,-0.25038,0.968148,120,120,255,1), -- Ribbon Pole
(@OGUID+779,181605,530,1,-2500.71,7531.59,-1.11031,-0.506145,0,0,-0.25038,0.968148,120,120,255,1), -- Ribbon Pole
(@OGUID+780,181605,530,1,2046.23,6579.71,135.248,-0.506145,0,0,-0.25038,0.968148,120,120,255,1), -- Ribbon Pole
(@OGUID+781,181605,530,1,2285.15,6157.91,136.281,-0.506145,0,0,-0.25038,0.968148,120,120,255,1), -- Ribbon Pole
(@OGUID+782,181605,530,1,3117.69,3717.24,145.127,1.39626,0,0,0.642787,0.766045,120,120,255,1), -- Ribbon Pole
(@OGUID+783,181605,530,1,2915.16,3667.27,144.868,-0.506145,0,0,-0.25038,0.968148,120,120,255,1), -- Ribbon Pole
(@OGUID+784,187572,530,1,-2939.92,3989.19,0.54576,3.03684,0,0,0.998629,0.0523532,120,120,255,1), -- Candle 01 - MFF
(@OGUID+785,187572,530,1,-2936.82,4004.08,2.03728,-1.65806,0,0,-0.737277,0.675591,120,120,255,1), -- Candle 01 - MFF
(@OGUID+786,187572,530,1,-2941.23,3987.25,3.02598,-2.63544,0,0,-0.968147,0.250381,120,120,255,1), -- Candle 01 - MFF
(@OGUID+787,187572,530,1,-2945.82,3983.28,0.565527,0.767944,0,0,0.374606,0.927184,120,120,255,1), -- Candle 01 - MFF
(@OGUID+788,187572,530,1,-2939.37,3984.46,3.02598,2.68781,0,0,0.97437,0.224951,120,120,255,1), -- Candle 01 - MFF
(@OGUID+789,187572,530,1,-2943.99,3985.42,3.02598,-1.58825,0,0,-0.71325,0.70091,120,120,255,1), -- Candle 01 - MFF
(@OGUID+790,187572,530,1,-2943.69,3983.66,3.02598,0.610863,0,0,0.300705,0.953717,120,120,255,1), -- Candle 01 - MFF
(@OGUID+791,187572,530,1,-2937.54,3986.69,0.568022,-2.30383,0,0,-0.913545,0.406738,120,120,255,1), -- Candle 01 - MFF
(@OGUID+792,187572,530,1,-2945.82,3986.86,0.551942,-3.03684,0,0,-0.998629,0.0523532,120,120,255,1), -- Candle 01 - MFF
(@OGUID+793,187572,530,1,-2937.64,4002.61,2.06225,2.19911,0,0,0.891006,0.453991,120,120,255,1), -- Candle 01 - MFF
(@OGUID+794,187572,530,1,-2937.55,3983.1,0.56814,-0.767944,0,0,-0.374606,0.927184,120,120,255,1), -- Candle 01 - MFF
(@OGUID+795,187572,530,1,-2942.09,3982.63,3.02598,1.67551,0,0,0.743144,0.669131,120,120,255,1), -- Candle 01 - MFF
(@OGUID+796,187572,530,1,-2939.68,3986.29,3.02598,-2.11185,0,0,-0.870356,0.492424,120,120,255,1), -- Candle 01 - MFF
(@OGUID+797,187572,530,1,-2940.34,3982.97,3.02598,2.33874,0,0,0.920505,0.390732,120,120,255,1), -- Candle 01 - MFF
(@OGUID+798,187572,530,1,-2942.97,3986.94,3.02598,1.74533,0,0,0.766044,0.642789,120,120,255,1), -- Candle 01 - MFF
(@OGUID+799,187572,530,1,-2939.93,3980.84,0.569154,2.54818,0,0,0.956305,0.292372,120,120,255,1), -- Candle 01 - MFF
(@OGUID+800,187572,530,1,-2943.34,3980.83,0.567986,0.0698117,0,0,0.0348988,0.999391,120,120,255,1), -- Candle 01 - MFF
(@OGUID+801,187572,530,1,-2943.52,3989.1,0.545542,-2.70526,0,0,-0.976295,0.216442,120,120,255,1), -- Candle 01 - MFF
(@OGUID+802,187572,530,1,-4009.63,2150.08,106.78,-1.67551,0,0,-0.743144,0.669131,120,120,255,1), -- Candle 01 - MFF
(@OGUID+803,187572,530,1,-4015.03,2153.22,106.778,0.226892,0,0,0.113203,0.993572,120,120,255,1), -- Candle 01 - MFF
(@OGUID+804,187572,530,1,3066.32,3712.95,143.995,1.98967,0,0,0.83867,0.54464,120,120,255,1), -- Candle 01 - MFF
(@OGUID+805,187572,530,1,3078.45,3709.08,143.968,0.0698117,0,0,0.0348988,0.999391,120,120,255,1), -- Candle 01 - MFF
(@OGUID+806,187572,530,1,3073.9,3715.57,143.974,2.75761,0,0,0.981627,0.190812,120,120,255,1), -- Candle 01 - MFF
(@OGUID+807,187572,530,1,3080.31,3705.64,143.975,-1.83259,0,0,-0.793353,0.608762,120,120,255,1), -- Candle 01 - MFF
(@OGUID+808,187572,530,1,3070.17,3714.77,143.996,-0.139624,0,0,-0.0697556,0.997564,120,120,255,1), -- Candle 01 - MFF
(@OGUID+809,187572,530,1,3076.48,3712.6,143.965,-1.72787,0,0,-0.760406,0.649449,120,120,255,1), -- Candle 01 - MFF
(@OGUID+810,187572,530,1,3079.56,3690.01,143.981,-0.209439,0,0,-0.104528,0.994522,120,120,255,1), -- Candle 01 - MFF
(@OGUID+811,187572,530,1,3083.63,3699.84,143.975,2.37364,0,0,0.927183,0.374608,120,120,255,1), -- Candle 01 - MFF
(@OGUID+812,187572,530,1,3076.3,3688.26,143.98,-1.69297,0,0,-0.748956,0.66262,120,120,255,1), -- Candle 01 - MFF
(@OGUID+813,187572,530,1,3083.37,3691.88,143.972,0.506145,0,0,0.25038,0.968148,120,120,255,1), -- Candle 01 - MFF
(@OGUID+814,187572,530,1,3085.98,3694.05,143.961,-0.0349062,0,0,-0.0174522,0.999848,120,120,255,1), -- Candle 01 - MFF
(@OGUID+815,187572,530,1,3085.19,3697.06,143.965,-1.02974,0,0,-0.492423,0.870356,120,120,255,1), -- Candle 01 - MFF
(@OGUID+816,187572,530,1,3081.99,3702.52,143.972,1.39626,0,0,0.642787,0.766045,120,120,255,1), -- Candle 01 - MFF
(@OGUID+817,187572,530,1,3054.32,3706.45,143.966,-0.680679,0,0,-0.333807,0.942641,120,120,255,1), -- Candle 01 - MFF
(@OGUID+818,187572,530,1,3073.01,3686.08,143.989,-2.30383,0,0,-0.913545,0.406738,120,120,255,1), -- Candle 01 - MFF
(@OGUID+819,187572,530,1,3064.98,3685.61,143.704,2.9496,0,0,0.995396,0.0958512,120,120,255,1), -- Candle 01 - MFF
(@OGUID+820,187572,530,1,3056.41,3700.78,144.005,-1.3439,0,0,-0.622514,0.782609,120,120,255,1), -- Candle 01 - MFF
(@OGUID+821,187572,530,1,3063.75,3687.76,143.681,-0.715585,0,0,-0.350207,0.936672,120,120,255,1), -- Candle 01 - MFF
(@OGUID+822,187572,530,1,3057.19,3708.67,143.988,1.37881,0,0,0.636078,0.771625,120,120,255,1), -- Candle 01 - MFF
(@OGUID+823,187572,530,1,3067.17,3683.27,143.831,1.39626,0,0,0.642787,0.766045,120,120,255,1), -- Candle 01 - MFF
(@OGUID+824,187572,530,1,3062.03,3710.77,143.998,-3.10665,0,0,-0.999847,0.0174693,120,120,255,1), -- Candle 01 - MFF
(@OGUID+825,187572,530,1,3055.26,3703.67,143.985,-0.122173,0,0,-0.0610485,0.998135,120,120,255,1), -- Candle 01 - MFF
(@OGUID+826,187572,530,1,3070.12,3684.24,143.974,-2.91469,0,0,-0.993571,0.113208,120,120,255,1), -- Candle 01 - MFF
(@OGUID+827,187572,530,1,3058.02,3698.43,143.884,-2.37364,0,0,-0.927183,0.374608,120,120,255,1), -- Candle 01 - MFF
(@OGUID+828,187572,530,1,3062.43,3690.32,143.739,-0.942477,0,0,-0.45399,0.891007,120,120,255,1), -- Candle 01 - MFF
(@OGUID+829,187573,530,1,-2940.37,3984.69,4.7362,2.91469,0,0,0.993571,0.113208,120,120,255,1), -- Candle 02 - MFF
(@OGUID+830,187573,530,1,-2940.88,3983.84,4.7362,2.18166,0,0,0.887011,0.461749,120,120,255,1), -- Candle 02 - MFF
(@OGUID+831,187573,530,1,-2938.41,3982.02,0.589959,2.42601,0,0,0.936672,0.350207,120,120,255,1), -- Candle 02 - MFF
(@OGUID+832,187573,530,1,-2943.02,3985.16,4.7362,-0.122173,0,0,-0.0610485,0.998135,120,120,255,1), -- Candle 02 - MFF
(@OGUID+833,187573,530,1,-2937.14,3985.11,0.555474,-3.08918,0,0,-0.999657,0.0262016,120,120,255,1), -- Candle 02 - MFF
(@OGUID+834,187573,530,1,-2941.61,3980.53,0.570047,1.6057,0,0,0.719339,0.694659,120,120,255,1), -- Candle 02 - MFF
(@OGUID+835,187573,530,1,-2942.45,3986.07,4.7362,-0.95993,0,0,-0.461748,0.887011,120,120,255,1), -- Candle 02 - MFF
(@OGUID+836,187573,530,1,-2940.54,3985.72,4.7362,-2.58308,0,0,-0.961261,0.27564,120,120,255,1), -- Candle 02 - MFF
(@OGUID+837,187573,530,1,-2941.41,3986.28,4.7362,-1.79769,0,0,-0.782608,0.622515,120,120,255,1), -- Candle 02 - MFF
(@OGUID+838,187573,530,1,-2946.1,3984.94,0.56581,0,0,0,0,1,120,120,255,1), -- Candle 02 - MFF
(@OGUID+839,187573,530,1,-2944.67,3981.64,0.566747,0.855211,0,0,0.414693,0.909961,120,120,255,1), -- Candle 02 - MFF
(@OGUID+840,187573,530,1,-2944.94,3987.97,0.570116,-0.767944,0,0,-0.374606,0.927184,120,120,255,1), -- Candle 02 - MFF
(@OGUID+841,187573,530,1,-2942,3983.64,4.7362,1.36136,0,0,0.62932,0.777146,120,120,255,1), -- Candle 02 - MFF
(@OGUID+842,187573,530,1,-2938.62,3988.28,0.563272,-2.32129,0,0,-0.91706,0.39875,120,120,255,1), -- Candle 02 - MFF
(@OGUID+843,187573,530,1,-2941.79,3989.55,0.537406,-1.55334,0,0,-0.700909,0.713251,120,120,255,1), -- Candle 02 - MFF
(@OGUID+844,187573,530,1,-2942.83,3984.15,4.7362,0.628317,0,0,0.309016,0.951057,120,120,255,1), -- Candle 02 - MFF
(@OGUID+845,187576,530,1,-3002.45,3997.88,5.74373,-1.76278,0,0,-0.771624,0.636079,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+846,187576,530,1,-2991.61,3988.03,5.85871,-1.71042,0,0,-0.754709,0.656059,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+847,187576,530,1,-3009.57,3998.96,5.70654,-1.74533,0,0,-0.766044,0.642789,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+848,187576,530,1,-3977.41,2165.7,106.987,2.46091,0,0,0.942641,0.333808,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+849,187576,530,1,-3061.33,737.194,-8.7717,1.44862,0,0,0.66262,0.748956,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+850,187576,530,1,-4227.08,-12484,47.7163,3.12412,0,0,0.999962,0.00873464,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+851,187576,530,1,-4231.72,-12498.1,47.2467,2.63544,0,0,0.968147,0.250381,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+852,187576,530,1,-4208,-12557.6,46.3115,-1.39626,0,0,-0.642787,0.766045,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+853,187576,530,1,-4183.17,-12564.1,45.2083,-1.78023,0,0,-0.777145,0.629321,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+854,187576,530,1,-4702.74,-12422.9,14.5556,1.25664,0,0,0.587785,0.809017,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+855,187576,530,1,-4689.98,-12416.8,14.1576,2.26893,0,0,0.906307,0.422619,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+856,187576,530,1,-4720.9,-12380,13.4858,-1.53589,0,0,-0.694658,0.71934,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+857,187576,530,1,1989.31,6784.46,167.916,-1.74533,0,0,-0.766044,0.642789,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+858,187576,530,1,2944.68,5466.7,150.636,0,0,0,0,1,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+859,187576,530,1,3013.27,5429.97,148.076,0.575957,0,0,0.284015,0.95882,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+860,187653,530,1,-3947.63,2139.39,98.956,0.261798,0,0,0.130526,0.991445,120,120,255,1), -- Standing, Post - MFF
(@OGUID+861,187653,530,1,-3952.1,2178.58,101.606,-1.78023,0,0,-0.777145,0.629321,120,120,255,1), -- Standing, Post - MFF
(@OGUID+862,187653,530,1,-3975.67,2183.83,102.034,0.488691,0,0,0.241921,0.970296,120,120,255,1), -- Standing, Post - MFF
(@OGUID+863,187653,530,1,-3975.99,2200.11,101.863,2.67035,0,0,0.972369,0.233448,120,120,255,1), -- Standing, Post - MFF
(@OGUID+864,187653,530,1,-4039.19,2197.36,110.406,0.261798,0,0,0.130526,0.991445,120,120,255,1), -- Standing, Post - MFF
(@OGUID+865,187653,530,1,-3955.34,2215.83,102.037,1.79769,0,0,0.782608,0.622515,120,120,255,1), -- Standing, Post - MFF
(@OGUID+866,187653,530,1,-3958.84,2204.56,101.877,-0.698131,0,0,-0.34202,0.939693,120,120,255,1), -- Standing, Post - MFF
(@OGUID+867,187653,530,1,-3962.67,2179.88,101.411,-0.541051,0,0,-0.267238,0.963631,120,120,255,1), -- Standing, Post - MFF
(@OGUID+868,187653,530,1,-4040.06,2204.32,110.729,-0.104719,0,0,-0.0523357,0.99863,120,120,255,1), -- Standing, Post - MFF
(@OGUID+869,187653,530,1,-4036.59,2201.17,110.576,-2.44346,0,0,-0.939692,0.34202,120,120,255,1), -- Standing, Post - MFF
(@OGUID+870,187653,530,1,-3976.47,2192.47,101.89,-2.18166,0,0,-0.887011,0.461749,120,120,255,1), -- Standing, Post - MFF
(@OGUID+871,187653,530,1,-3943.59,2116.15,96.8626,1.95477,0,0,0.829038,0.559193,120,120,255,1), -- Standing, Post - MFF
(@OGUID+872,187653,530,1,-3947.44,2195.89,101.955,1.79769,0,0,0.782608,0.622515,120,120,255,1), -- Standing, Post - MFF
(@OGUID+873,187653,530,1,-3999.66,2223.36,105.734,-1.43117,0,0,-0.656058,0.75471,120,120,255,1), -- Standing, Post - MFF
(@OGUID+874,187653,530,1,-3075.44,738.824,-10.3689,0.0698117,0,0,0.0348988,0.999391,120,120,255,1), -- Standing, Post - MFF
(@OGUID+875,187653,530,1,-3078.53,758.642,-10.3943,1.78023,0,0,0.777145,0.629321,120,120,255,1), -- Standing, Post - MFF
(@OGUID+876,187653,530,1,-3017.36,842.758,-10.2879,0.95993,0,0,0.461748,0.887011,120,120,255,1), -- Standing, Post - MFF
(@OGUID+877,187653,530,1,-3025.44,832.591,-10.0521,-1.11701,0,0,-0.529919,0.848048,120,120,255,1), -- Standing, Post - MFF
(@OGUID+878,187653,530,1,-3034.83,838.422,-9.61415,-2.33874,0,0,-0.920505,0.390732,120,120,255,1), -- Standing, Post - MFF
(@OGUID+879,187653,530,1,-3025.44,849.413,-10.2078,0.872664,0,0,0.422618,0.906308,120,120,255,1), -- Standing, Post - MFF
(@OGUID+880,187653,530,1,-2995.24,834.524,-9.96244,-2.426,0,0,-0.936671,0.35021,120,120,255,1), -- Standing, Post - MFF
(@OGUID+881,187667,530,1,-2979.54,851.022,-5.23692,1.65806,0,0,0.737277,0.675591,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+882,187667,530,1,-2974.17,852.99,-5.18411,1.88495,0,0,0.809016,0.587786,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+883,187667,530,1,-4212.78,-12506.3,46.8801,-0.279252,0,0,-0.139173,0.990268,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+884,187667,530,1,-4207.09,-12473.6,46.5845,-1.58825,0,0,-0.71325,0.70091,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+885,187667,530,1,-4216.5,-12480.6,48.9863,-0.0698117,0,0,-0.0348988,0.999391,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+886,187667,530,1,-4216.92,-12483.9,48.3932,-0.0523589,0,0,-0.0261765,0.999657,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+887,187667,530,1,-4212.28,-12515.1,50.4455,0.314158,0,0,0.156434,0.987688,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+888,187667,530,1,-4208.4,-12519.6,47.6231,-0.715585,0,0,-0.350207,0.936672,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+889,187667,530,1,-4192.91,-12467.7,46.6215,-0.488691,0,0,-0.241921,0.970296,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+890,187667,530,1,3060.61,3691.76,144.851,0.645772,0,0,0.317305,0.948324,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+891,187667,530,1,3057.2,3694.74,145.421,-2.63544,0,0,-0.968147,0.250381,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+892,187667,530,1,3058.4,3696.03,144.815,0.191985,0,0,0.0958452,0.995396,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+893,187667,530,1,3058.83,3691.6,145.45,-2.77507,0,0,-0.983254,0.182238,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+894,187708,530,1,-3804.29,-11485.4,-138.346,-1.98967,0,0,-0.83867,0.54464,120,120,255,1), -- Torch Target Brazier
(@OGUID+895,187708,530,1,-3807.67,-11490.8,-138.408,-1.76278,0,0,-0.771624,0.636079,120,120,255,1), -- Torch Target Brazier
(@OGUID+896,187708,530,1,-3812.11,-11492.4,-138.481,-2.18166,0,0,-0.887011,0.461749,120,120,255,1), -- Torch Target Brazier
(@OGUID+897,187708,530,1,-3810.87,-11496.8,-138.461,-1.58825,0,0,-0.71325,0.70091,120,120,255,1), -- Torch Target Brazier
(@OGUID+898,187708,530,1,-3808.5,-11486.3,-138.393,0.698131,0,0,0.34202,0.939693,120,120,255,1), -- Torch Target Brazier
(@OGUID+899,187708,530,1,9804.09,-7214.37,26.7444,-2.18166,0,0,-0.887011,0.461749,120,120,255,1), -- Torch Target Brazier
(@OGUID+900,187708,530,1,9799.27,-7222.57,26.0039,-1.76278,0,0,-0.771624,0.636079,120,120,255,1), -- Torch Target Brazier
(@OGUID+901,187708,530,1,9804.03,-7219.76,26.0445,-1.58825,0,0,-0.71325,0.70091,120,120,255,1), -- Torch Target Brazier
(@OGUID+902,187708,530,1,9794.47,-7221.35,26.6608,0.698131,0,0,0.34202,0.939693,120,120,255,1), -- Torch Target Brazier
(@OGUID+903,187708,530,1,9799.27,-7217.55,26.7033,-1.98967,0,0,-0.83867,0.54464,120,120,255,1), -- Torch Target Brazier
(@OGUID+904,187921,530,1,-2247.22,-11898.1,26.9294,1.67551,0,0,0.743144,0.669131,120,120,255,1), -- Alliance Bonfire
(@OGUID+905,187933,530,1,-2526.49,7551.51,-2.35203,2.14675,0,0,0.878817,0.47716,120,120,255,1), -- Alliance Bonfire
(@OGUID+906,187970,530,1,-2554.09,4278.38,21.1442,-1.36136,0,0,-0.62932,0.777146,120,120,255,1), -- Horde Bonfire
(@OGUID+907,188020,530,1,-3010.2,4171.18,3.65559,2.14675,0,0,0.878817,0.47716,120,120,255,1), -- Camp Banner
(@OGUID+908,188020,530,1,-2987.2,4139.92,5.19129,1.74533,0,0,0.766044,0.642789,120,120,255,1), -- Camp Banner
(@OGUID+909,188020,530,1,-2996.56,4136.33,2.85268,1.93731,0,0,0.824125,0.566408,120,120,255,1), -- Camp Banner
(@OGUID+910,188020,530,1,-3004.75,4175.1,4.09645,2.32129,0,0,0.91706,0.39875,120,120,255,1), -- Camp Banner
(@OGUID+911,188020,530,1,-3043.62,2389.19,61.9917,0.541051,0,0,0.267238,0.963631,120,120,255,1), -- Camp Banner
(@OGUID+912,188020,530,1,-3077.45,2393.13,62.7248,-2.74016,0,0,-0.979924,0.19937,120,120,255,1), -- Camp Banner
(@OGUID+913,188020,530,1,-3068.43,2374.75,61.9142,-2.72271,0,0,-0.978148,0.207912,120,120,255,1), -- Camp Banner
(@OGUID+914,188020,530,1,-3054.65,2402.89,60.2369,0.575957,0,0,0.284015,0.95882,120,120,255,1), -- Camp Banner
(@OGUID+915,188020,530,1,-3950.35,2032.98,95.3427,-1.69297,0,0,-0.748956,0.66262,120,120,255,1), -- Camp Banner
(@OGUID+916,188020,530,1,-3934.59,2043.22,95.1423,0.104719,0,0,0.0523357,0.99863,120,120,255,1), -- Camp Banner
(@OGUID+917,188020,530,1,-3933.45,2054.67,95.0647,-2.91469,0,0,-0.993571,0.113208,120,120,255,1), -- Camp Banner
(@OGUID+918,188020,530,1,-3867.67,-11611.9,-136.213,-2.1293,0,0,-0.874619,0.48481,120,120,255,1), -- Camp Banner
(@OGUID+919,188020,530,1,-3894.16,-11597.7,-136.629,1.36136,0,0,0.62932,0.777146,120,120,255,1), -- Camp Banner
(@OGUID+920,188020,530,1,-2253.85,-11904.7,25.9758,-2.35619,0,0,-0.923879,0.382686,120,120,255,1), -- Camp Banner
(@OGUID+921,188020,530,1,-2242.23,-11921,26.0626,-2.82743,0,0,-0.987688,0.156436,120,120,255,1), -- Camp Banner
(@OGUID+922,188020,530,1,-2211.97,-11904.9,27.6871,0.733038,0,0,0.358368,0.93358,120,120,255,1), -- Camp Banner
(@OGUID+923,188020,530,1,-2216.11,-11889,28.4363,-2.68781,0,0,-0.97437,0.224951,120,120,255,1), -- Camp Banner
(@OGUID+924,188020,530,1,9859.48,-7312.02,26.2833,-2.05949,0,0,-0.857167,0.515038,120,120,255,1), -- Camp Banner
(@OGUID+925,188020,530,1,9841.14,-7312.7,26.2815,-1.15192,0,0,-0.544639,0.838671,120,120,255,1), -- Camp Banner
(@OGUID+926,188020,530,1,9786.4,-7302.63,24.756,-2.93214,0,0,-0.994521,0.104536,120,120,255,1), -- Camp Banner
(@OGUID+927,188020,530,1,9775.93,-7287.86,24.7815,-2.40855,0,0,-0.93358,0.358368,120,120,255,1), -- Camp Banner
(@OGUID+928,188020,530,1,-4218.47,-12342.4,5.18283,1.36136,0,0,0.62932,0.777146,120,120,255,1), -- Camp Banner
(@OGUID+929,188020,530,1,-4231.88,-12334.9,4.32997,1.37881,0,0,0.636078,0.771625,120,120,255,1), -- Camp Banner
(@OGUID+930,188020,530,1,-4193.06,-12298.3,0.561426,0.90757,0,0,0.438371,0.898794,120,120,255,1), -- Camp Banner
(@OGUID+931,188020,530,1,-4205.28,-12290.9,1.31726,0.733038,0,0,0.358368,0.93358,120,120,255,1), -- Camp Banner
(@OGUID+932,188020,530,1,-2496.07,7539.5,-0.245557,2.18166,0,0,0.887011,0.461749,120,120,255,1), -- Camp Banner
(@OGUID+933,188020,530,1,-2509.5,7526.25,0.09938,2.44346,0,0,0.939692,0.34202,120,120,255,1), -- Camp Banner
(@OGUID+934,188020,530,1,-2528.29,7539.19,-1.6695,-0.610865,0,0,-0.300706,0.953717,120,120,255,1), -- Camp Banner
(@OGUID+935,188020,530,1,2024.83,6565.63,133.425,1.37881,0,0,0.636078,0.771625,120,120,255,1), -- Camp Banner
(@OGUID+936,188020,530,1,2035.18,6608.05,137.95,0.733038,0,0,0.358368,0.93358,120,120,255,1), -- Camp Banner
(@OGUID+937,188020,530,1,2045.67,6604.81,137.874,1.51844,0,0,0.688354,0.725374,120,120,255,1), -- Camp Banner
(@OGUID+938,188020,530,1,2042.71,6563.49,133.439,1.36136,0,0,0.62932,0.777146,120,120,255,1), -- Camp Banner
(@OGUID+939,188020,530,1,2303.35,6158.67,134.466,-0.157079,0,0,-0.0784588,0.996917,120,120,255,1), -- Camp Banner
(@OGUID+940,188020,530,1,2258.11,6132.87,137.344,-2.9845,0,0,-0.996917,0.0784664,120,120,255,1), -- Camp Banner
(@OGUID+941,188020,530,1,2304.15,6139.79,134.467,0.0523589,0,0,0.0261765,0.999657,120,120,255,1), -- Camp Banner
(@OGUID+942,188020,530,1,2255.47,6148.87,138.393,-2.56563,0,0,-0.958819,0.284016,120,120,255,1), -- Camp Banner
(@OGUID+943,188020,530,1,3111.12,3715.52,144.328,-1.01229,0,0,-0.484809,0.87462,120,120,255,1), -- Camp Banner
(@OGUID+944,188020,530,1,3119.85,3759.34,141.888,0.244346,0,0,0.121869,0.992546,120,120,255,1), -- Camp Banner
(@OGUID+945,188020,530,1,3127.54,3722.94,142.216,-1.0821,0,0,-0.515038,0.857168,120,120,255,1), -- Camp Banner
(@OGUID+946,188020,530,1,3112.01,3755.73,142.324,-3.03684,0,0,-0.998629,0.0523532,120,120,255,1), -- Camp Banner
(@OGUID+947,188020,530,1,2928.08,3704.7,143.782,-0.157079,0,0,-0.0784588,0.996917,120,120,255,1), -- Camp Banner
(@OGUID+948,188020,530,1,2917.73,3707.01,143.943,0.0523589,0,0,0.0261765,0.999657,120,120,255,1), -- Camp Banner
(@OGUID+949,188020,530,1,2921.18,3671.82,144.555,2.93214,0,0,0.994521,0.104536,120,120,255,1), -- Camp Banner
(@OGUID+950,188020,530,1,2911.97,3673.45,144.431,2.87979,0,0,0.991445,0.130528,120,120,255,1), -- Camp Banner
(@OGUID+951,188021,530,1,3124.5,3740.34,141.867,0.296705,0,0,0.147809,0.989016,120,120,255,1), -- Camp Pavilion
(@OGUID+952,188021,530,1,2921.76,3693.72,143.678,2.84488,0,0,0.989016,0.147811,120,120,255,1), -- Camp Pavilion
(@OGUID+953,188021,530,1,-3003.19,4163.89,4.4622,-2.70526,0,0,-0.976295,0.216442,120,120,255,1), -- Camp Pavilion
(@OGUID+954,188021,530,1,-2549.13,4268.84,18.2787,-2.60054,0,0,-0.96363,0.267241,120,120,255,1), -- Camp Pavilion
(@OGUID+955,188021,530,1,-3064.65,2391.65,61.9575,-2.72271,0,0,-0.978148,0.207912,120,120,255,1), -- Camp Pavilion
(@OGUID+956,188021,530,1,-3953.92,2049.84,95.0647,-1.62316,0,0,-0.725374,0.688355,120,120,255,1), -- Camp Pavilion
(@OGUID+957,188021,530,1,-3796.17,-11517.2,-134.899,-0.087266,0,0,-0.0436192,0.999048,120,120,255,1), -- Camp Pavilion
(@OGUID+958,188021,530,1,-2234.71,-11890.6,26.9725,-1.25664,0,0,-0.587785,0.809017,120,120,255,1), -- Camp Pavilion
(@OGUID+959,188021,530,1,-4221.67,-12306.1,2.29576,-0.628317,0,0,-0.309016,0.951057,120,120,255,1), -- Camp Pavilion
(@OGUID+960,188021,530,1,-2517.31,7558.55,-2.05051,-0.872664,0,0,-0.422618,0.906308,120,120,255,1), -- Camp Pavilion
(@OGUID+961,188021,530,1,2289.12,6132.53,135.839,1.64061,0,0,0.731353,0.681999,120,120,255,1), -- Camp Pavilion
(@OGUID+962,188128,530,1,-3793.9,-11503.7,-134.746,-2.18166,0,0,-0.887011,0.461749,120,120,255,1), -- Flame of the Exodar
(@OGUID+963,188129,530,1,9805.88,-7239.91,26.0512,-3.10665,0,0,-0.999847,0.0174693,120,120,255,1), -- Flame of Silvermoon
(@OGUID+964,188174,530,1,-3798.69,-11509,-134.821,-1.22173,0,0,-0.573576,0.819152,120,120,255,1), -- Midsummer Music Doodad
(@OGUID+965,188174,530,1,9794.82,-7248.74,26.0974,-2.60054,0,0,-0.96363,0.267241,120,120,255,1), -- Midsummer Music Doodad
(@OGUID+966,187917,530,1,-4223.84,-12318.4,2.47695,2.93214,0,0,0.994521,0.104536,120,120,255,1), -- Alliance Bonfire
(@OGUID+967,187919,530,1,2019.8,6580.19,134.362,1.93731,0,0,0.824125,0.566408,120,120,255,1), -- Alliance Bonfire
(@OGUID+968,187935,530,1,-3943.54,2049.31,95.0647,-0.191985,0,0,-0.0958452,0.995396,120,120,255,1), -- Alliance Bonfire
(@OGUID+969,187937,530,1,-2999.86,4155.5,4.56602,1.0821,0,0,0.515038,0.857168,120,120,255,1), -- Alliance Bonfire
(@OGUID+970,187942,530,1,3120,3749.69,141.649,-1.53589,0,0,-0.694658,0.71934,120,120,255,1), -- Alliance Bonfire
(@OGUID+971,187949,530,1,2919.22,3683.22,143.651,2.9845,0,0,0.996917,0.0784664,120,120,255,1), -- Horde Bonfire
(@OGUID+972,187955,530,1,2274.42,6133.03,136.959,3.03684,0,0,0.998629,0.0523532,120,120,255,1), -- Horde Bonfire
(@OGUID+973,187967,530,1,-3059.86,2382.93,62.5767,-2.68781,0,0,-0.97437,0.224951,120,120,255,1), -- Horde Bonfire
(@OGUID+974,188020,1,1,-2348.37,-615.991,-6.85173,5.82288,0,0,0.228126,-0.973632,300,300,0,1), -- Camp Banner
(@OGUID+975,181305,1,1,-2330.42,-611.458,-8.53482,6.06204,0,0,0.110348,-0.993893,300,300,0,1), -- Camp Table
(@OGUID+976,181307,1,1,-2330.98,-609.979,-7.54302,5.68898,0,0,0.292751,-0.956189,300,300,0,1), -- Camp Mug
(@OGUID+977,181302,0,1,-8265.07,-2627.14,135.054,1.98967,0,0,0.838669,0.544641,120,120,255,1), -- Camp Crate
(@OGUID+978,181302,0,1,-8263.3,-2627.12,134.568,2.94959,0,0,0.995395,0.0958539,120,120,255,1), -- Camp Crate
(@OGUID+979,181305,0,1,-8258.54,-2624.8,133.5,5.98648,0,0,0.147809,-0.989016,120,120,255,1), -- Camp Table
(@OGUID+980,181306,0,1,-8262.33,-2628.3,134.266,2.00713,0,0,0.843392,0.537299,120,120,255,1), -- Camp Jug
(@OGUID+981,181307,0,1,-8257.9,-2625.3,134.469,1.65806,0,0,0.737276,0.675591,120,120,255,1), -- Camp Mug
(@OGUID+982,181355,0,1,-8260.89,-2601.41,133.149,0.85521,0,0,0.414693,0.909962,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+983,181355,0,1,-8262.45,-2606.5,133.414,0.244346,0,0,0.121869,0.992546,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+984,181355,0,1,-8245.15,-2606.87,133.154,0.85521,0,0,0.414693,0.909962,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+985,181355,0,1,-8264.14,-2611.29,133.463,5.20108,0,0,0.515039,-0.857167,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+986,181355,0,1,-8246.27,-2611.94,133.155,4.66003,0,0,0.725374,-0.688355,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+987,181355,0,1,-8247.43,-2616.65,133.155,5.84685,0,0,0.216441,-0.976296,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+988,181355,0,1,-8267.19,-2635.67,134.424,0.174532,0,0,0.0871553,0.996195,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+989,181355,0,1,-8252.99,-2636.58,133.155,3.21142,0,0,0.999391,-0.0349066,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+990,181605,0,1,-8261.67,-2638.05,133.397,5.77704,0,0,0.25038,-0.968148,120,120,255,1), -- Ribbon Pole
(@OGUID+991,188020,0,1,-8267.53,-2642.82,133.944,4.55531,0,0,0.760406,-0.649448,120,120,255,1), -- Camp Banner
(@OGUID+992,188020,0,1,-8256.43,-2643.72,133.187,4.46804,0,0,0.788012,-0.61566,120,120,255,1), -- Camp Banner
(@OGUID+993,188020,0,1,-8258.07,-2601.52,133.149,1.27409,0,0,0.594823,0.803857,120,120,255,1), -- Camp Banner
(@OGUID+994,188020,0,1,-8247.38,-2604.63,133.15,1.32645,0,0,0.615661,0.788011,120,120,255,1), -- Camp Banner
(@OGUID+995,188021,0,1,-8261.99,-2623.61,133.495,1.36136,0,0,0.629322,0.777145,120,120,255,1), -- Camp Pavilion
(@OGUID+996,181300,0,1,945.108,-1435.98,62.9142,5.28835,0,0,0.477158,-0.878818,120,120,255,1), -- Standing, Large - MFF
(@OGUID+997,181302,0,1,1004.43,-1443.67,62.283,2.94959,0,0,0.995395,0.0958539,120,120,255,1), -- Camp Crate
(@OGUID+998,181302,0,1,1004.1,-1446.27,61.9835,1.98967,0,0,0.838669,0.544641,120,120,255,1), -- Camp Crate
(@OGUID+999,181305,0,1,1009.87,-1446.95,62.3152,3.49067,0,0,0.984807,-0.173654,120,120,255,1), -- Camp Table
(@OGUID+1000,181306,0,1,1002.77,-1445.21,62.0995,2.00713,0,0,0.843392,0.537299,120,120,255,1), -- Camp Jug
(@OGUID+1001,181307,0,1,1009.09,-1446.9,63.2482,1.65806,0,0,0.737276,0.675591,120,120,255,1), -- Camp Mug
(@OGUID+1002,181355,0,1,995.897,-1439.06,63.6682,0.85521,0,0,0.414693,0.909962,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1003,181355,0,1,1010.99,-1450.93,62.0636,4.66003,0,0,0.725374,-0.688355,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1004,181355,0,1,988.277,-1440.33,64.5213,5.84685,0,0,0.216441,-0.976296,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1005,181355,0,1,934.776,-1439.97,63.4671,2.25147,0,0,0.902584,0.430513,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1006,181605,0,1,1002.28,-1432.47,64.0573,5.77704,0,0,0.25038,-0.968148,120,120,255,1), -- Ribbon Pole
(@OGUID+1007,187576,0,1,973.33,-1430.87,67.1534,3.14159,0,0,1,0.00000126759,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+1008,187939,0,1,989.562,-1453.47,61.0011,4.9105,0,0,0.633712,-0.773569,120,120,255,1), -- Alliance Bonfire
(@OGUID+1009,188020,0,1,1011.99,-1434.02,63.9887,6.23083,0,0,0.0261746,-0.999657,120,120,255,1), -- Camp Banner
(@OGUID+1010,188020,0,1,1017.41,-1450.23,62.4181,5.16618,0,0,0.529917,-0.84805,120,120,255,1), -- Camp Banner
(@OGUID+1011,188020,0,1,984.869,-1445.04,63.9283,3.71755,0,0,0.95882,-0.284015,120,120,255,1), -- Camp Banner
(@OGUID+1012,188020,0,1,990.588,-1460.2,60.6304,3.59538,0,0,0.97437,-0.224952,120,120,255,1), -- Camp Banner
(@OGUID+1013,188021,0,1,1006.96,-1448.08,62.1907,5.14872,0,0,0.5373,-0.843391,120,120,255,1), -- Camp Pavilion
(@OGUID+1014,188021,0,1,-140.643,-811.518,55.3504,2.31117,0,0,0.915031,0.403383,300,300,0,1), -- Camp Pavilion
(@OGUID+1015,187965,1,1,-2329.42,-624.806,-8.27507,5.5,0,0,0.381661,-0.924302,0,0,100,1), -- Horde Bonfire
(@OGUID+1016,181302,1,1,-2325.28,-608.627,-9.18096,1.58409,0,0,0.711791,0.702391,180,180,100,1), -- Camp Crate
(@OGUID+1017,181302,1,1,-2326.25,-610.633,-8.98158,1.58409,0,0,0.711791,0.702391,180,180,100,1), -- Camp Crate
(@OGUID+1018,181306,1,1,-2323.77,-610.206,-9.16689,5.5,0,0,0.381661,-0.924302,180,180,100,1), -- Camp Jug
(@OGUID+1019,181605,1,1,-2342.39,-609.245,-7.76984,5.5,0,0,0.381661,-0.924302,0,0,100,1), -- Ribbon Pole
(@OGUID+1020,181355,1,1,-2320.03,-612.344,-9.38502,5.5,0,0,0.381661,-0.924302,180,180,100,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1021,181355,1,1,-2330.4,-606.562,-8.87822,5.5,0,0,0.381661,-0.924302,180,180,100,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1022,181355,1,1,-2335.13,-621.407,-7.62503,5.5,0,0,0.381661,-0.924302,180,180,100,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1023,188020,1,1,-2318.53,-608.976,-9.42005,5.5,0,0,0.381661,-0.924302,180,180,100,1), -- Camp Banner
(@OGUID+1024,188020,1,1,-2337.14,-602.794,-8.71659,5.5,0,0,0.381661,-0.924302,180,180,100,1), -- Camp Banner
(@OGUID+1025,188020,1,1,-2327.16,-631.314,-8.68343,5.5,0,0,0.381661,-0.924302,180,180,100,1), -- Camp Banner
(@OGUID+1026,188021,1,1,-2326.65,-613.461,-8.78372,1.19925,0,0,0.564333,0.825547,180,180,100,1), -- Camp Pavilion
(@OGUID+1027,187989,1,1,3955.77,862.105,0.1785,3.93579,0,0,0.922187,-0.386744,300,300,0,1), -- Twilight Torch
(@OGUID+1028,187989,1,1,3880.54,795.812,2.67948,0.589994,0,0,0.290737,0.956803,300,300,0,1), -- Twilight Torch
(@OGUID+1029,187989,1,1,3923.8,748.779,8.05033,2.67052,0,0,0.972389,0.233365,300,300,0,1), -- Twilight Torch
(@OGUID+1030,187989,1,1,3959.24,760.694,6.12531,2.76477,0,0,0.982303,0.187299,300,300,0,1), -- Twilight Torch
(@OGUID+1031,187989,1,1,3998.39,815.017,4.22604,3.56744,0,0,0.977417,-0.211318,300,300,0,1), -- Twilight Torch
(@OGUID+1032,187989,1,1,3953.32,808.406,9.07383,0.295474,0,0,0.1472,0.989107,300,300,0,1), -- Twilight Torch
(@OGUID+1033,187989,1,1,3944.4,817.924,9.05937,2.23541,0,0,0.899098,0.437747,300,300,0,1), -- Twilight Torch
(@OGUID+1034,187918,1,1,3891.73,795.127,7.70466,3.57844,0,0,0.97624,-0.216691,300,300,0,1), -- Twilight Bonfire
(@OGUID+1035,187918,1,1,3928.2,818.467,8.38597,0.711076,0,0,0.348095,0.937459,300,300,0,1), -- Twilight Bonfire
(@OGUID+1036,187918,1,1,3956.23,854.015,7.9829,1.18232,0,0,0.557325,0.830295,300,300,0,1), -- Twilight Bonfire
(@OGUID+1037,187918,1,1,3988.24,819.46,8.01849,5.47452,0,0,0.393405,-0.919365,300,300,0,1), -- Twilight Bonfire
(@OGUID+1038,187918,1,1,3923.81,758.498,7.77727,4.57321,0,0,0.754563,-0.656228,300,300,0,1), -- Twilight Bonfire
(@OGUID+1039,187918,1,1,3947.51,812.939,9.06439,0.920322,0,0,0.444092,0.895981,300,300,0,1), -- Twilight Bonfire
(@OGUID+1040,187989,1,1,3924.28,779.525,9.05821,2.43535,0,0,0.938298,0.345828,300,300,0,1), -- Twilight Torch
(@OGUID+1041,187989,1,1,3912.78,792.797,9.05821,2.43771,0,0,0.938705,0.344721,300,300,0,1), -- Twilight Torch
(@OGUID+1042,181355,530,1,-4253.19,-11675.3,-143.765,4.67748,0,0,0.719341,-0.694658,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1043,181355,530,1,-4228.95,-11818.9,-115.935,0.802851,0,0,0.390731,0.920505,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1044,181392,530,1,2038.56,6819.84,181.488,5.55015,0,0,0.358367,-0.933581,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1045,181392,530,1,2038.03,6826.09,181.482,0.837758,0,0,0.406737,0.913545,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1046,181392,530,1,2062.02,6825.85,184.783,4.72984,0,0,0.70091,-0.71325,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1047,181393,530,1,2051.89,6831.64,177.036,1.58825,0,0,0.713251,0.700909,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1048,181393,530,1,2072.19,6832.03,176.98,1.58825,0,0,0.713251,0.700909,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1049,188021,530,1,2021.06,6593.52,135.15,6.03884,0,0,0.121869,-0.992546,120,120,255,1), -- Camp Pavilion
(@OGUID+1050,187572,530,1,-243.962,5443.92,25.2609,5.98648,0,0,0.147809,-0.989016,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1051,187572,530,1,-252.851,5437.04,25.8911,3.03684,0,0,0.998629,0.0523534,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1052,187572,530,1,-224.236,5516.91,28.5437,5.68977,0,0,0.292371,-0.956305,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1053,187572,530,1,-165.054,5518.11,31.1853,1.22173,0,0,0.573576,0.819152,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1054,187572,530,1,274.89,6057.86,131.441,4.08407,0,0,0.891006,-0.453991,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1055,187572,530,1,277.938,6049.54,131.433,3.49067,0,0,0.984807,-0.173652,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1056,187572,530,1,282,6048.85,131.441,2.1293,0,0,0.87462,0.48481,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1057,187572,530,1,288.133,6056.7,131.434,3.45576,0,0,0.987688,-0.156436,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1058,187572,530,1,282.433,6063.33,131.441,5.89921,0,0,0.190809,-0.981627,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1059,187572,530,1,1039.83,7363.49,40.0945,4.7473,0,0,0.694658,-0.71934,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1060,187572,530,1,1050.58,7360.47,40.2842,3.78737,0,0,0.948323,-0.317306,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1061,187572,530,1,1048.98,7358.21,40.2163,3.10665,0,0,0.999847,0.0174694,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1062,187572,530,1,1045.05,7366.6,40.2879,2.25147,0,0,0.902585,0.430512,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1063,187572,530,1,1042.17,7364.97,40.1807,6.12611,0,0,0.078459,-0.996917,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1064,187572,530,1,1047.14,7355.71,40.1145,5.23599,0,0,0.5,-0.866026,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1065,187572,530,1,225.255,8509.24,26.6581,3.00195,0,0,0.997563,0.0697661,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1066,187572,530,1,206.879,8515.11,26.2178,0.383971,0,0,0.190808,0.981627,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1067,187572,530,1,225.171,8507.41,25.5103,4.81711,0,0,0.66913,-0.743145,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1068,187572,530,1,211.454,8508.43,25.8784,0.558504,0,0,0.275637,0.961262,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1069,187572,530,1,229.256,8514.61,25.6382,4.15388,0,0,0.874619,-0.48481,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1070,187572,530,1,214.884,8529.99,25.7122,3.14159,0,0,1,-0.000000162921,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1071,187572,530,1,228.41,8521.59,24.4832,0.471238,0,0,0.233445,0.97237,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1072,187572,530,1,221.568,8528.78,25.1791,0.209439,0,0,0.104528,0.994522,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1073,187572,530,1,219.822,8519.02,26.1429,5.89921,0,0,0.190809,-0.981627,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1074,187572,530,1,216.259,8521.2,27.3552,2.11185,0,0,0.870356,0.492424,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1075,187572,530,1,212.964,8518.04,28.4846,3.54302,0,0,0.979924,-0.199371,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1076,187572,530,1,211.072,8528.46,25.718,1.37881,0,0,0.636078,0.771625,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1077,187572,530,1,221.646,8527.55,25.3505,2.74016,0,0,0.979924,0.19937,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1078,187572,530,1,207.398,8521.5,26.2073,0.628317,0,0,0.309016,0.951057,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1079,187572,530,1,-3025.77,2557.57,81.6722,2.94959,0,0,0.995396,0.0958515,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1080,187572,530,1,-3025.11,2559.66,80.9146,4.62512,0,0,0.737277,-0.675591,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1081,187572,530,1,-3026.95,2561.11,81.6373,5.58505,0,0,0.34202,-0.939693,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1082,187572,530,1,-3018.66,2544.41,80.3409,4.92183,0,0,0.62932,-0.777146,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1083,187572,530,1,-4082,2166.59,112.271,5.32326,0,0,0.461748,-0.887011,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1084,187572,530,1,-4081.9,2162.46,111.669,1.25664,0,0,0.587785,0.809017,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1085,187572,530,1,-4078.8,2168.08,109.488,1.95477,0,0,0.829038,0.559193,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1086,187572,0,1,-8989.75,845.233,29.6206,5.70723,0,0,0.284015,-0.95882,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1087,187572,0,1,-8988.32,846.486,29.6206,3.78737,0,0,0.948323,-0.317306,120,120,255,1), -- Candle 01 - MFF
(@OGUID+1088,187573,530,1,-250.49,5441.73,24.8284,0.191985,0,0,0.0958452,0.995396,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1089,187573,530,1,-248.495,5431.16,24.7882,6.17847,0,0,0.0523358,-0.99863,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1090,187573,530,1,-228.819,5515.44,28.778,1.76278,0,0,0.771624,0.636078,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1091,187573,530,1,-176.559,5530.89,31.1645,0.488691,0,0,0.241921,0.970296,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1092,187573,530,1,275.267,6052.9,131.427,0.331611,0,0,0.165047,0.986286,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1093,187573,530,1,287.095,6051.26,131.427,2.42601,0,0,0.936672,0.350207,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1094,187573,530,1,286.939,6061.18,131.428,4.04917,0,0,0.898793,-0.438373,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1095,187573,530,1,277.59,6062.52,131.428,5.3058,0,0,0.469471,-0.882948,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1096,187573,530,1,1043.89,7365.9,40.2393,5.28835,0,0,0.477159,-0.878817,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1097,187573,530,1,1041.08,7364.27,40.1227,3.90954,0,0,0.927183,-0.374608,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1098,187573,530,1,1045.89,7354.14,40.035,2.51327,0,0,0.951056,0.309017,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1099,187573,530,1,1049.77,7359.41,40.2437,2.23402,0,0,0.898793,0.438373,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1100,187573,530,1,1038.15,7362.73,40.0191,5.18363,0,0,0.522498,-0.85264,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1101,187573,530,1,1047.91,7356.96,40.1426,2.28638,0,0,0.909961,0.414694,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1102,187573,530,1,207.274,8513.32,26.093,2.65289,0,0,0.970295,0.241925,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1103,187573,530,1,226.366,8508.61,25.5058,5.72468,0,0,0.275637,-0.961262,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1104,187573,530,1,211.902,8507.25,25.6144,0.610863,0,0,0.300705,0.953717,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1105,187573,530,1,206.376,8518.89,25.78,4.41568,0,0,0.803857,-0.594823,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1106,187573,530,1,215.941,8514.26,26.6411,1.5708,0,0,0.707107,0.707107,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1107,187573,530,1,214.805,8514.59,28.1405,0.925024,0,0,0.446198,0.894935,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1108,187573,530,1,219.232,8504.75,26.138,5.39307,0,0,0.43051,-0.902586,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1109,187573,530,1,218.347,8513.96,27.7103,5.63741,0,0,0.317304,-0.948324,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1110,187573,530,1,206.111,8520.15,25.8614,3.7001,0,0,0.961261,-0.275641,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1111,187573,530,1,217.852,8504.66,25.4518,3.194,0,0,0.999657,-0.0262016,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1112,187573,530,1,212.179,8517.12,28.134,2.42601,0,0,0.936672,0.350207,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1113,187573,530,1,210.361,8507.66,26.0474,2.47837,0,0,0.945518,0.325568,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1114,187573,530,1,220.458,8527.88,26.3253,4.27606,0,0,0.843391,-0.5373,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1115,187573,530,1,206.784,8524.71,26.2449,2.79252,0,0,0.984807,0.173653,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1116,187573,530,1,209.652,8527.37,25.3889,1.32645,0,0,0.615661,0.788011,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1117,187573,530,1,227.976,8522.56,24.8175,0.645772,0,0,0.317305,0.948324,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1118,187573,530,1,227.016,8523.28,24.8752,1.58825,0,0,0.71325,0.700909,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1119,187573,530,1,210.159,8528.24,24.9887,3.31614,0,0,0.996194,-0.0871649,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1120,187573,530,1,220.487,8529.45,25.4329,0.0523589,0,0,0.0261765,0.999657,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1121,187573,530,1,-3028.06,2558.16,81.5859,4.99164,0,0,0.601814,-0.798636,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1122,187573,530,1,-3025.34,2563.36,80.7732,5.93412,0,0,0.173648,-0.984808,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1123,187573,530,1,-3017.16,2544.05,80.8566,2.1293,0,0,0.87462,0.48481,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1124,187573,530,1,-4069.76,2169.19,108.058,1.72787,0,0,0.760406,0.649448,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1125,187573,530,1,-4077.37,2168.9,108.058,1.58825,0,0,0.71325,0.700909,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1126,187573,530,1,-4077.48,2166.82,109.493,0.122173,0,0,0.0610485,0.998135,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1127,187573,0,1,-8985.27,848.675,29.6207,0.977383,0,0,0.469471,0.882948,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1128,187573,0,1,-8984.09,849.971,29.6206,4.29351,0,0,0.83867,-0.54464,120,120,255,1), -- Candle 02 - MFF
(@OGUID+1129,181354,530,1,2095.01,6821.21,174.873,1.43117,0,0,0.656058,0.75471,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+1130,181354,530,1,2097.02,6825.34,174.852,4.38078,0,0,0.814116,-0.580703,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+1131,181354,530,1,2092.42,6825.4,174.869,0.331611,0,0,0.165047,0.986286,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+1132,181354,530,1,9561.6,-7129.25,16.3311,6.03884,0,0,0.121869,-0.992546,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+1133,181354,530,1,9558.12,-7144.92,16.3431,3.35105,0,0,0.994521,-0.104536,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+1134,181354,530,1,9552.82,-7127.35,16.3786,2.02458,0,0,0.848047,0.52992,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+1135,181354,530,1,9548.76,-7142.45,16.3752,2.49582,0,0,0.948323,0.317306,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+1136,181354,530,1,9564.47,-7138.31,16.3821,1.309,0,0,0.608761,0.793354,120,120,255,1), -- Floating, Medium - MFF
(@OGUID+1137,181358,530,1,9698.27,-7053.02,22.7645,4.72984,0,0,0.700909,-0.713251,120,120,255,1), -- Hanging, Square, Large - MFF
(@OGUID+1138,181358,530,1,-3966.45,-11587.6,-97.8169,2.16421,0,0,0.882947,0.469473,120,120,255,1), -- Hanging, Square, Large - MFF
(@OGUID+1139,181358,530,1,-3966.36,-11588.2,-97.234,5.3058,0,0,0.469471,-0.882948,120,120,255,1), -- Hanging, Square, Large - MFF
(@OGUID+1140,181358,530,1,-4011.89,-11672.1,-97.3294,0.0349062,0,0,0.0174522,0.999848,120,120,255,1), -- Hanging, Square, Large - MFF
(@OGUID+1141,181358,530,1,-4014.81,-11671.7,-97.8474,3.07177,0,0,0.999391,0.0349063,120,120,255,1), -- Hanging, Square, Large - MFF
(@OGUID+1142,181390,530,1,-4063.6,2172.94,112.321,0.104719,0,0,0.0523357,0.99863,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+1143,181390,530,1,9647.63,-7156.85,35.7604,4.59022,0,0,0.748956,-0.66262,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+1144,181390,530,1,9669.65,-7135.43,35.5114,0.0174525,0,0,0.00872612,0.999962,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+1145,181390,530,1,9627.51,-7135.06,35.4145,2.94959,0,0,0.995396,0.0958515,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+1146,181390,530,1,9648.78,-7114.69,35.3508,1.5708,0,0,0.707107,0.707107,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+1147,181390,0,1,-8745.31,860.752,111.098,0.715585,0,0,0.350207,0.936672,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+1148,181390,0,1,-8857.83,931.661,113.084,0.575957,0,0,0.284015,0.95882,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+1149,181390,0,1,-8999.5,865.915,129.676,5.74214,0,0,0.267238,-0.963631,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+1150,181390,0,1,-9013.96,872.141,113.3,3.01941,0,0,0.998135,0.0610518,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+1151,181390,0,1,-9006.26,877.905,116.466,1.44862,0,0,0.66262,0.748956,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+1152,181390,0,1,-9003.77,862.552,129.857,5.02655,0,0,0.587785,-0.809017,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+1153,181390,0,1,-8680.8,461.089,105.228,5.37562,0,0,0.438371,-0.898794,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+1154,181390,0,1,-8633.32,421.481,104.761,2.21656,0,0,0.894934,0.446199,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+1155,181390,0,1,-8640.89,415.503,104.791,2.21656,0,0,0.894934,0.446199,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+1156,181390,0,1,-8408.65,635.033,101.409,5.46288,0,0,0.398748,-0.91706,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+1157,181390,0,1,-8343.89,654.082,100.36,3.89209,0,0,0.930417,-0.366502,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+1158,181358,0,1,-8532.08,1059.33,28.8618,1.93731,0,0,0.824125,0.566408,120,120,255,1), -- Hanging, Square, Large - MFF
(@OGUID+1159,181358,0,1,-8475.3,1051.58,29.4298,0.942477,0,0,0.45399,0.891007,120,120,255,1), -- Hanging, Square, Large - MFF
(@OGUID+1160,187989,530,1,-359.076,1221.14,38.6201,0.0453942,0,0,0.0226952,0.999742,300,300,0,1), -- Twilight Torch
(@OGUID+1161,187576,530,1,-158.51,5535.15,31.4725,3.52557,0,0,0.981627,-0.190812,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+1162,187576,530,1,-154.786,5523.65,31.509,3.47321,0,0,0.986285,-0.16505,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+1163,187576,530,1,1044.72,7368.75,43.1856,0.558504,0,0,0.275637,0.961262,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+1164,187576,530,1,1052.61,7359.7,42.6296,0.872664,0,0,0.422618,0.906308,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+1165,187576,530,1,2016.86,6885.06,182.85,4.2237,0,0,0.857167,-0.515038,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+1166,187576,530,1,2188.36,4795.17,158.674,4.92183,0,0,0.62932,-0.777146,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+1167,187576,530,1,2181.07,4706.85,159.598,5.35816,0,0,0.446197,-0.894935,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+1168,187576,530,1,2165.55,4727.49,159.563,2.26892,0,0,0.906307,0.42262,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+1169,187576,530,1,2045.43,4686.26,153.306,1.02974,0,0,0.492423,0.870356,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+1170,187576,530,1,2032.3,4663.96,153.419,4.17134,0,0,0.870355,-0.492424,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+1171,187576,530,1,-3026.77,2566,80.0753,0.139625,0,0,0.0697556,0.997564,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+1172,187576,530,1,-3012.22,2548.63,79.4392,1.50098,0,0,0.681998,0.731354,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+1173,187576,530,1,-2979.82,2565.84,79.8295,5.8294,0,0,0.22495,-0.97437,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+1174,187576,530,1,-2963.23,2558.75,80.3177,2.61799,0,0,0.965925,0.258821,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+1175,187576,530,1,-4069.7,2183.11,108.535,3.29869,0,0,0.996917,-0.0784664,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+1176,187576,530,1,-4075.49,2189.6,111.462,4.76475,0,0,0.688354,-0.725375,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+1177,187576,530,1,-4064.59,1124.24,43.4182,2.44346,0,0,0.939692,0.342021,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+1178,187576,530,1,-4122.45,-12463.1,48.0975,3.84245,0,0,0.939226,-0.343299,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+1179,187576,530,1,-4105.23,-12501.2,47.7956,0.575957,0,0,0.284015,0.95882,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+1180,187576,530,1,-4107.67,-12483,47.4257,6.21337,0,0,0.0348985,-0.999391,120,120,255,1), -- Hanging, Square, Small - MFF
(@OGUID+1181,181401,530,1,-2138.82,5148.72,-8.64097,3.94445,0,0,0.920504,-0.390732,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1182,181401,530,1,-2013.85,5671.15,104.976,3.59538,0,0,0.97437,-0.224951,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1183,181401,530,1,-1934.76,5896.53,150.668,5.13127,0,0,0.544639,-0.838671,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1184,181401,530,1,-1942.88,5914.96,156.579,5.16618,0,0,0.529919,-0.848048,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1185,181401,530,1,-341.689,5481.86,37.9432,3.05433,0,0,0.999048,0.043619,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1186,181401,530,1,-337.41,5481.8,37.9165,6.16101,0,0,0.0610481,-0.998135,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1187,181401,530,1,-175.368,5512.14,33.3746,5.02655,0,0,0.587785,-0.809017,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1188,181401,530,1,-186.249,5519.73,33.7335,3.45576,0,0,0.987688,-0.156436,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1189,181401,530,1,-181.545,5532.26,33.2293,1.88495,0,0,0.809016,0.587786,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1190,181401,530,1,-159.927,5517.31,33.2424,5.02655,0,0,0.587785,-0.809017,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1191,181401,530,1,-155.342,5529.74,33.9625,0.314158,0,0,0.156434,0.987688,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1192,181401,530,1,-166.157,5537.29,33.2269,1.88495,0,0,0.809016,0.587786,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1193,181401,530,1,1044.88,7361.02,45.5654,3.87463,0,0,0.93358,-0.358368,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1194,181401,530,1,2085.43,6890.1,190.466,3.94445,0,0,0.920504,-0.390732,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1195,181401,530,1,2095.05,6899.62,190.438,3.94445,0,0,0.920504,-0.390732,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1196,181401,530,1,2090.41,4769.77,175.65,4.92183,0,0,0.62932,-0.777146,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1197,181401,530,1,2078.75,4789.83,175.697,2.3911,0,0,0.930417,0.366503,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1198,181401,530,1,2092.13,4792.16,175.636,1.13446,0,0,0.537299,0.843392,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1199,181401,530,1,2098.95,4779.43,175.533,6.17847,0,0,0.0523358,-0.99863,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1200,181401,530,1,4118.57,2954.05,360.364,1.6057,0,0,0.719339,0.694659,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1201,181401,530,1,4116.87,3058.36,349.975,5.13127,0,0,0.544639,-0.838671,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1202,181401,530,1,4184.25,3009.56,349.845,3.12412,0,0,0.999962,0.00873467,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1203,181401,530,1,2969.4,1791.45,145.635,3.76991,0,0,0.951056,-0.309017,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1204,181401,530,1,2984.81,1803.79,146.086,0.663223,0,0,0.325567,0.945519,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1205,181401,530,1,-699.26,2709.34,101.099,4.69494,0,0,0.71325,-0.70091,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1206,181401,530,1,-690.39,2717.36,101.012,0,0,0,0,1,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1207,181401,530,1,-716.841,2735.05,100.798,3.14159,0,0,1,-0.000000162921,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1208,181401,530,1,-717.315,2750.21,100.815,3.17653,0,0,0.999847,-0.0174693,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1209,181401,530,1,-690.676,2732.45,100.917,6.26573,0,0,0.00872616,-0.999962,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1210,181401,530,1,203.049,4333.75,125.161,3.14159,0,0,1,-0.000000162921,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1211,181401,530,1,-3099.53,2512.39,75.9647,3.49067,0,0,0.984807,-0.173652,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1212,181401,530,1,-3097.62,2522.85,75.9537,2.44346,0,0,0.939692,0.342021,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1213,181401,530,1,-3088.05,2526.28,75.9549,1.39626,0,0,0.642787,0.766045,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1214,181401,530,1,-3081.95,2509.13,75.9601,5.58505,0,0,0.34202,-0.939693,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1215,181401,530,1,-3080.02,2519.67,75.952,0.349065,0,0,0.173648,0.984808,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1216,181401,530,1,-2980.74,2565.91,97.9761,2.70526,0,0,0.976295,0.216442,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1217,181401,530,1,-2963.11,2578.47,97.7773,1.65806,0,0,0.737277,0.675591,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1218,181401,530,1,-2978.65,2545.87,97.5194,3.78737,0,0,0.948323,-0.317306,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1219,181401,530,1,-2944.71,2569.65,97.1152,0.610863,0,0,0.300705,0.953717,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1220,181401,530,1,-2960.05,2536.85,96.7497,4.81711,0,0,0.66913,-0.743145,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1221,181401,530,1,-2943.15,2549.09,96.6855,5.84685,0,0,0.216439,-0.976296,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1222,181401,530,1,-4053.14,2167.24,117.896,0.0174525,0,0,0.00872612,0.999962,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1223,181401,530,1,-4063.41,2159.09,117.939,4.72984,0,0,0.700909,-0.713251,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1224,181401,530,1,-4063.29,2183.96,117.962,0.0349062,0,0,0.0174522,0.999848,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1225,181401,530,1,-4044.76,2237.18,118.077,5.51524,0,0,0.374606,-0.927184,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1226,181401,530,1,-4114.5,1119.62,52.3812,5.74214,0,0,0.267238,-0.963631,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1227,181401,530,1,10002.2,-7202.47,44.0678,1.46608,0,0,0.66913,0.743145,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1228,181401,530,1,10010.7,-7199.17,44.221,2.47837,0,0,0.945518,0.325568,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1229,181389,530,1,-263.839,5499.67,50.4126,3.71755,0,0,0.958819,-0.284017,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1230,181389,530,1,-260.162,5513.39,50.6323,2.16421,0,0,0.882947,0.469473,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1231,181389,530,1,-250.339,5496.27,50.5756,5.3058,0,0,0.469471,-0.882948,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1232,181389,530,1,-247.461,5509.38,50.5036,0.575957,0,0,0.284015,0.95882,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1233,181389,530,1,282.604,6088.58,141.444,4.69494,0,0,0.71325,-0.70091,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1234,181389,530,1,-655.451,2575.62,83.5774,5.28835,0,0,0.477159,-0.878817,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1235,181389,530,1,-632.542,2590.2,83.523,5.3058,0,0,0.469471,-0.882948,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1236,181389,530,1,-761.409,2621.02,118.679,0.558504,0,0,0.275637,0.961262,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1237,181389,530,1,-784.138,2658.92,119.216,0.541051,0,0,0.267238,0.963631,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1238,181389,530,1,-2969.58,2560.96,107.134,2.72271,0,0,0.978148,0.207912,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1239,181389,530,1,-3905.15,-11333.2,-121.921,5.18363,0,0,0.522498,-0.85264,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1240,181389,530,1,-3871.7,-11319.8,-121.623,5.07891,0,0,0.566406,-0.824126,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1241,181389,530,1,-3662.13,-11454,-113.087,3.33359,0,0,0.995396,-0.0958513,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1242,181393,530,1,-2282.4,5556.49,71.1191,0.209439,0,0,0.104528,0.994522,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1243,181393,530,1,-2274.59,5580.76,71.463,5.42798,0,0,0.414693,-0.909962,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1244,181393,530,1,-183.25,5514.36,30.7836,0.471238,0,0,0.233445,0.97237,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1245,181393,530,1,-186.922,5525.66,30.379,0.366518,0,0,0.182235,0.983255,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1246,181393,530,1,282.431,5967.02,156.161,4.60767,0,0,0.743144,-0.669132,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1247,181393,530,1,225.736,6059.83,155.205,2.87979,0,0,0.991445,0.130528,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1248,181393,530,1,2148.15,4823.46,153.252,1.29154,0,0,0.601814,0.798636,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1249,181393,530,1,2127.93,4832.97,153.878,1.18682,0,0,0.559193,0.829038,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1250,181393,530,1,2137.61,4828.31,155.214,1.16937,0,0,0.551936,0.833886,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1251,181393,530,1,4109.98,3055.68,343.456,4.99164,0,0,0.601814,-0.798636,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1252,181393,530,1,4123.08,3061.35,343.537,5.16618,0,0,0.529919,-0.848048,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1253,181393,530,1,2951.24,1778.57,143.228,0.663223,0,0,0.325567,0.945519,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1254,181393,530,1,-706.286,2715.5,95.2402,1.62316,0,0,0.725374,0.688355,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1255,181393,530,1,76.6816,4292.62,107.99,0.418879,0,0,0.207911,0.978148,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1256,181393,530,1,66.8863,4352.61,109.049,3.17653,0,0,0.999847,-0.0174693,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1257,181393,530,1,67.6876,4313.36,103.293,3.17653,0,0,0.999847,-0.0174693,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1258,181393,530,1,67.8084,4313.38,109.188,3.21142,0,0,0.999391,-0.0349061,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1259,181393,530,1,74.1241,4313.42,107.874,0.0523589,0,0,0.0261765,0.999657,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1260,181393,530,1,66.6932,4352.59,103.54,3.15906,0,0,0.999962,-0.00873452,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1261,181393,530,1,73.217,4352.62,107.548,0.0174525,0,0,0.00872612,0.999962,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1262,181393,530,1,158.031,4313.94,115.86,3.12412,0,0,0.999962,0.00873467,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1263,181393,530,1,158.03,4353.15,116.129,3.07177,0,0,0.999391,0.0349063,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1264,181393,530,1,160.362,4290.87,115.9,3.49067,0,0,0.984807,-0.173652,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1265,181393,530,1,208.299,4340.9,122.267,5.98648,0,0,0.147809,-0.989016,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1266,181393,530,1,208.132,4326.83,122.303,0.139625,0,0,0.0697556,0.997564,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1267,181393,530,1,237.035,4327.79,122.811,3.10665,0,0,0.999847,0.0174694,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1268,181393,530,1,237.191,4339.15,122.628,3.15906,0,0,0.999962,-0.00873452,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1269,181393,530,1,-2910.03,4035.11,1.92995,4.4855,0,0,0.782608,-0.622515,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1270,181393,530,1,-2742.37,7297.83,47.8856,2.09439,0,0,0.866025,0.500001,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1271,181393,530,1,-2772.8,7324.95,63.3242,5.79449,0,0,0.241921,-0.970296,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1272,181393,530,1,-2732.49,7320.93,47.5797,3.29869,0,0,0.996917,-0.0784664,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1273,181393,530,1,-2738.57,7309.45,63.3298,2.67035,0,0,0.972369,0.233448,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1274,181393,530,1,-3026.05,2626.86,81.1064,4.66003,0,0,0.725374,-0.688355,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1275,181393,530,1,-3020.87,2621.11,81.1237,2.82743,0,0,0.987688,0.156436,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1276,181393,530,1,-3124.82,2572.86,66.7759,2.94959,0,0,0.995396,0.0958515,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1277,181393,530,1,-3123.65,2558.36,67.0574,3.10665,0,0,0.999847,0.0174694,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1278,181393,530,1,-2980.04,2568.41,79.1962,2.79252,0,0,0.984807,0.173653,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1279,181393,530,1,-2982.05,2563.97,79.3406,2.89724,0,0,0.992546,0.12187,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1280,181393,530,1,-4130.58,1117.6,46.6773,1.78023,0,0,0.777145,0.629321,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1281,181393,530,1,-4121.73,1129.57,50.6435,4.86947,0,0,0.649447,-0.760407,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1282,181393,530,1,-4120.06,1134.97,47.5108,3.38594,0,0,0.992546,-0.12187,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1283,181393,530,1,9655.72,-7516.81,24.749,0.122173,0,0,0.0610485,0.998135,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1284,181393,530,1,9626.57,-7252.65,18.881,4.55531,0,0,0.760405,-0.649449,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1285,181393,530,1,9616.16,-7252.59,18.9092,4.67748,0,0,0.719339,-0.694659,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1286,181393,530,1,9657.01,-7150.79,19.117,2.04204,0,0,0.85264,0.522499,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1287,181393,530,1,9639.58,-7150.56,19.0847,1.18682,0,0,0.559193,0.829038,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1288,181393,530,1,9633.49,-7144.69,18.9398,0.558504,0,0,0.275637,0.961262,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1289,181393,530,1,9663.48,-7144.87,19.024,2.60053,0,0,0.96363,0.267241,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1290,181393,530,1,9663.4,-7126.58,19.1759,3.54302,0,0,0.979924,-0.199371,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1291,181393,530,1,9633.68,-7126.53,19.3544,5.84685,0,0,0.216439,-0.976296,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1292,181393,530,1,9640.13,-7120.77,19.2479,5.06146,0,0,0.573576,-0.819152,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1293,181393,530,1,9657.05,-7120.85,19.2306,4.38078,0,0,0.814116,-0.580703,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1294,181393,530,1,9575.29,-7071.05,21.8133,4.72984,0,0,0.700909,-0.713251,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1295,181393,530,1,9585.79,-7071.11,21.8504,4.64258,0,0,0.731354,-0.681998,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1296,181393,530,1,9560.38,-7195.12,19.307,1.5708,0,0,0.707107,0.707107,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1297,181393,530,1,9576.51,-7195.21,19.3224,1.58825,0,0,0.71325,0.700909,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1298,181393,530,1,-3740.87,-11676.4,-98.6888,5.13127,0,0,0.544639,-0.838671,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1299,181393,530,1,-3738.77,-11714.7,-99.0851,1.37881,0,0,0.636078,0.771625,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1300,181393,530,1,-3720.25,-11684.9,-94.6487,3.63029,0,0,0.970295,-0.241925,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1301,181393,530,1,-3719.03,-11703.6,-95.1452,2.77507,0,0,0.983254,0.182238,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1302,181393,530,1,-4084.94,-13760.5,75.9857,5.55015,0,0,0.358368,-0.93358,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1303,181393,530,1,-4087.58,-13767.7,75.9781,0.0698117,0,0,0.0348988,0.999391,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1304,187667,530,1,266.435,6094.36,133.518,1.18682,0,0,0.559193,0.829038,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1305,187667,530,1,276.026,6085.3,135.098,4.88692,0,0,0.642787,-0.766045,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1306,187667,530,1,261.829,6096.24,133.365,1.11701,0,0,0.529919,0.848049,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1307,187667,530,1,270.995,6092.49,133.565,1.18682,0,0,0.559193,0.829038,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1308,187667,530,1,289.163,6085.79,135.125,4.7473,0,0,0.694658,-0.71934,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1309,187667,530,1,-2954.96,2567.08,81.0061,3.82227,0,0,0.942641,-0.333808,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1310,187667,530,1,-2963.26,2557.67,96.9535,3.4034,0,0,0.991445,-0.130528,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1311,187667,530,1,-2961.01,2557.95,93.8767,6.21337,0,0,0.0348985,-0.999391,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1312,187667,530,1,-2961.58,2546.88,79.9313,1.69297,0,0,0.748956,0.66262,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1313,187667,530,1,-4074.35,2162.13,111.444,1.53589,0,0,0.694658,0.71934,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1314,187667,530,1,-4072.62,2162.18,111.43,1.65806,0,0,0.737277,0.675591,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1315,187667,530,1,-4076.15,2162.08,111.425,1.6057,0,0,0.719339,0.694659,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1316,187667,530,1,-4163.36,-12455.5,47.1492,4.06662,0,0,0.894934,-0.446199,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1317,187667,530,1,-4160.9,-12457.1,47.6282,4.15388,0,0,0.874619,-0.48481,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1318,187667,530,1,-4152.8,-12480.7,45.9677,2.84488,0,0,0.989016,0.147811,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1319,187667,530,1,-4167.78,-12537.1,48.9546,1.67551,0,0,0.743144,0.669131,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1320,187667,530,1,-4149.23,-12485.9,50.9009,3.8599,0,0,0.936195,-0.35148,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1321,187667,530,1,-4150.61,-12526,49.3929,2.72271,0,0,0.978148,0.207912,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1322,187667,530,1,-4164.37,-12536.8,48.2722,1.58825,0,0,0.71325,0.700909,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1323,187667,530,1,-4144.6,-12490.3,45.7271,4.60767,0,0,0.743144,-0.669132,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1324,187667,530,1,-4153.81,-12532.3,49.3778,2.60053,0,0,0.96363,0.267241,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1325,187667,530,1,-4173.69,-13729,76.777,2.80997,0,0,0.986285,0.16505,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1326,187667,530,1,-4047.49,-13771.3,76.1393,6.19592,0,0,0.0436188,-0.999048,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1327,187667,530,1,-4050.14,-13778.3,76.3518,5.67232,0,0,0.300706,-0.953717,120,120,255,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1328,181355,530,1,-1990.12,5678.11,117.663,1.29154,0,0,0.601814,0.798636,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1329,181355,530,1,-1962.95,5684.21,117.663,2.9845,0,0,0.996917,0.0784666,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1330,181355,530,1,-324.457,5466.79,22.6697,1.32645,0,0,0.615661,0.788011,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1331,181355,530,1,-344.989,5492.37,22.007,3.57793,0,0,0.976295,-0.216442,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1332,181355,530,1,-306.155,5479.32,22.2888,2.35619,0,0,0.923879,0.382686,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1333,181355,530,1,-253.026,5481.03,24.9435,5.48033,0,0,0.390731,-0.920505,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1334,181355,530,1,-196.088,5525.09,22.8134,3.61284,0,0,0.972369,-0.233449,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1335,181355,530,1,-192.411,5510.17,22.6709,3.33359,0,0,0.995396,-0.0958513,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1336,181355,530,1,-184.629,5506.41,29.471,3.14159,0,0,1,-0.000000162921,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1337,181355,530,1,-213.905,5547.44,24.0723,3.57793,0,0,0.976295,-0.216442,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1338,181355,530,1,-192.623,5531.5,29.4519,3.76991,0,0,0.951056,-0.309017,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1339,181355,530,1,261.417,5980.11,132.956,4.11898,0,0,0.882947,-0.469472,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1340,181355,530,1,278.588,5966.78,150.168,5.37562,0,0,0.438371,-0.898794,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1341,181355,530,1,269.962,5956.73,26.4329,1.5708,0,0,0.707107,0.707107,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1342,181355,530,1,272.317,5944.75,26.5218,5.2709,0,0,0.484809,-0.87462,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1343,181355,530,1,296.529,5941.62,26.5575,3.68265,0,0,0.96363,-0.267241,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1344,181355,530,1,298.295,5957.52,26.4282,1.74533,0,0,0.766044,0.642788,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1345,181355,530,1,280.785,6008.14,144.73,4.72984,0,0,0.700909,-0.713251,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1346,181355,530,1,301.714,5979.07,132.46,4.7822,0,0,0.681998,-0.731354,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1347,181355,530,1,307.166,6055.83,131.572,3.33359,0,0,0.995396,-0.0958513,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1348,181355,530,1,217.283,6078.53,148.312,1.71042,0,0,0.754709,0.656059,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1349,181355,530,1,208.389,6049.73,148.32,3.90954,0,0,0.927183,-0.374608,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1350,181355,530,1,222.136,6049.52,148.313,2.33874,0,0,0.920505,0.390732,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1351,181355,530,1,227.559,6070.6,148.312,3.17653,0,0,0.999847,-0.0174693,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1352,181355,530,1,275.337,6082.52,131.545,4.88692,0,0,0.642787,-0.766045,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1353,181355,530,1,276.203,6122.65,142.509,5.32326,0,0,0.461748,-0.887011,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1354,181355,530,1,290.418,6083.18,131.547,4.59022,0,0,0.748956,-0.66262,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1355,181355,530,1,261.774,7872.23,23.7332,5.11382,0,0,0.551936,-0.833887,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1356,181355,530,1,1003.34,7430,28.0768,5.35816,0,0,0.446197,-0.894935,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1357,181355,530,1,971.367,7408.7,29.5432,5.02655,0,0,0.587785,-0.809017,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1358,181355,530,1,1021.34,7392.52,36.3236,3.49067,0,0,0.984807,-0.173652,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1359,181355,530,1,1058.58,7386.76,39.5833,4.27606,0,0,0.843391,-0.5373,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1360,181355,530,1,1052.86,7384.01,39.655,4.46804,0,0,0.788011,-0.615661,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1361,181355,530,1,964.828,7387.55,28.5269,5.39307,0,0,0.43051,-0.902586,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1362,181355,530,1,1036.93,7385.87,40.7262,5.20108,0,0,0.515037,-0.857168,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1363,181355,530,1,937.62,7360.12,26.7473,1.37881,0,0,0.636078,0.771625,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1364,181355,530,1,957.729,7355.67,29.1519,0.436332,0,0,0.216439,0.976296,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1365,181355,530,1,945.501,7392.22,26.7216,4.38078,0,0,0.814116,-0.580703,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1366,181355,530,1,993.297,7345.91,35.7709,1.43117,0,0,0.656058,0.75471,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1367,181355,530,1,1006.33,7322.55,41.0474,5.13127,0,0,0.544639,-0.838671,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1368,181355,530,1,1033.74,7322.61,40.5026,4.04917,0,0,0.898793,-0.438373,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1369,181355,530,1,1042.45,7348.26,36.6591,2.56563,0,0,0.958819,0.284016,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1370,181355,530,1,1068.56,7349.53,40.7298,2.49582,0,0,0.948323,0.317306,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1371,181355,530,1,1072.74,7372.52,39.5834,3.45576,0,0,0.987688,-0.156436,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1372,181355,530,1,1069.44,7366.63,39.6407,3.24635,0,0,0.998629,-0.0523532,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1373,181355,530,1,2017.32,6873.48,178.983,4.24115,0,0,0.85264,-0.522498,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1374,181355,530,1,2007.01,6878.82,178.983,4.24115,0,0,0.85264,-0.522498,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1375,181355,530,1,2161.68,6783.05,183.454,0.890117,0,0,0.43051,0.902586,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1376,181355,530,1,3011.19,5493.75,145.001,0.680677,0,0,0.333806,0.942642,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1377,181355,530,1,2087.61,4782.99,157.781,0.226893,0,0,0.113203,0.993572,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1378,181355,530,1,2019.06,4700.48,150.238,0.436332,0,0,0.216439,0.976296,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1379,181355,530,1,3037.13,3606.58,144.434,4.72984,0,0,0.700909,-0.713251,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1380,181355,530,1,3117.03,3727.92,145.482,4.66003,0,0,0.725374,-0.688355,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1381,181355,530,1,4114.77,2967.27,352.184,1.50098,0,0,0.681998,0.731354,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1382,181355,530,1,4122.79,2967.16,352.229,1.6057,0,0,0.719339,0.694659,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1383,181355,530,1,4113.94,3050.74,339.3,5.89921,0,0,0.190809,-0.981627,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1384,181355,530,1,4177.45,3004.38,339.12,2.49582,0,0,0.948323,0.317306,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1385,181355,530,1,4123.49,3055.27,339.31,4.52041,0,0,0.771624,-0.636079,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1386,181355,530,1,4082.15,3077.44,339.388,3.15906,0,0,0.999962,-0.00873452,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1387,181355,530,1,4178.09,3015.38,339.129,3.80482,0,0,0.945519,-0.325568,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1388,181355,530,1,4200.19,3075.75,335.82,2.56563,0,0,0.958819,0.284016,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1389,181355,530,1,4177.69,3093.46,335.82,5.44543,0,0,0.406736,-0.913546,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1390,181355,530,1,4126.73,3096.48,339.388,0.715585,0,0,0.350207,0.936672,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1391,181355,530,1,4099.21,3107.68,339.388,1.69297,0,0,0.748956,0.66262,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1392,181355,530,1,4114.83,3105.38,339.388,1.16937,0,0,0.551936,0.833886,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1393,181355,530,1,4092.65,3104.92,339.388,2.23402,0,0,0.898793,0.438373,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1394,181355,530,1,4105.93,3108.07,339.388,1.43117,0,0,0.656058,0.75471,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1395,181355,530,1,4083.41,3091.46,339.388,2.87979,0,0,0.991445,0.130528,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1396,181355,530,1,4087.92,3100.24,339.388,2.53072,0,0,0.953716,0.300708,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1397,181355,530,1,-684.19,2664.04,90.9786,0.506145,0,0,0.25038,0.968148,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1398,181355,530,1,-681.77,2653.85,90.5937,6.10865,0,0,0.0871549,-0.996195,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1399,181355,530,1,-695.832,2638.75,90.9763,4.81711,0,0,0.66913,-0.743145,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1400,181355,530,1,-685.249,2644.34,90.4667,5.46288,0,0,0.398748,-0.91706,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1401,181355,530,1,-708.662,2640.04,91.8499,4.13643,0,0,0.878816,-0.47716,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1402,181355,530,1,-690.535,2673.58,92.2039,0.942477,0,0,0.45399,0.891007,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1403,181355,530,1,-717.809,2647.75,93.0563,3.78737,0,0,0.948323,-0.317306,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1404,181355,530,1,-702.011,2676.55,93.484,1.72787,0,0,0.760406,0.649448,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1405,181355,530,1,-714.397,2671.54,93.9279,2.23402,0,0,0.898793,0.438373,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1406,181355,530,1,-720.93,2658.76,93.7806,3.10665,0,0,0.999847,0.0174694,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1407,181355,530,1,-699.388,2717.67,94.7369,3.82227,0,0,0.942641,-0.333808,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1408,181355,530,1,-597.076,4097.25,91.2013,2.40855,0,0,0.93358,0.358368,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1409,181355,530,1,82.6095,4318.78,102.031,0.383971,0,0,0.190808,0.981627,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1410,181355,530,1,80.4934,4347.6,102.071,5.18363,0,0,0.522498,-0.85264,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1411,181355,530,1,136.032,4345.66,106.618,4.79966,0,0,0.67559,-0.737278,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1412,181355,530,1,134.995,4319.37,106.754,1.50098,0,0,0.681998,0.731354,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1413,181355,530,1,152.214,4318.47,106.254,2.94959,0,0,0.995396,0.0958515,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1414,181355,530,1,140.73,4269.45,107.421,2.02458,0,0,0.848047,0.52992,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1415,181355,530,1,151.867,4348.4,107.216,3.07177,0,0,0.999391,0.0349063,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1416,181355,530,1,147.949,4275.23,107.28,2.42601,0,0,0.936672,0.350207,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1417,181355,530,1,181.202,4317.46,119.964,1.67551,0,0,0.743144,0.669131,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1418,181355,530,1,181.466,4350.06,119.962,4.7822,0,0,0.681998,-0.731354,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1419,181355,530,1,196.288,4328.14,116.884,2.54818,0,0,0.956304,0.292373,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1420,181355,530,1,196.454,4339.53,116.975,3.78737,0,0,0.948323,-0.317306,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1421,181355,530,1,-2626.2,7216.55,20.3577,3.56047,0,0,0.978147,-0.207912,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1422,181355,530,1,-2600.81,7237.71,12.9172,0.349065,0,0,0.173648,0.984808,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1423,181355,530,1,-2596.8,7228.94,13.4705,0.279252,0,0,0.139173,0.990268,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1424,181355,530,1,-2630.1,7224.42,19.7405,3.71755,0,0,0.958819,-0.284017,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1425,181355,530,1,-2528.44,7266.29,16.2703,2.47837,0,0,0.945518,0.325568,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1426,181355,530,1,-2534.47,7256.75,16.2664,2.53072,0,0,0.953716,0.300708,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1427,181355,530,1,-2605.27,7291.26,19.8158,3.64774,0,0,0.968147,-0.250381,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1428,181355,530,1,-2570.71,7291.29,14.8143,0.541051,0,0,0.267238,0.963631,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1429,181355,530,1,-2614.92,7297.73,20.7448,4.39823,0,0,0.809016,-0.587786,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1430,181355,530,1,-2602.27,7282.35,19.3995,3.38594,0,0,0.992546,-0.12187,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1431,181355,530,1,-2670.03,7211.86,23.6694,0.994837,0,0,0.477159,0.878817,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1432,181355,530,1,-2678.99,7214.03,23.957,1.39626,0,0,0.642787,0.766045,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1433,181355,530,1,-2573.72,7300.31,13.9045,6.00393,0,0,0.139172,-0.990268,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1434,181355,530,1,-2625.71,7298.21,21.1408,4.79966,0,0,0.67559,-0.737278,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1435,181355,530,1,-2702.84,7293.72,88.6366,2.82743,0,0,0.987688,0.156436,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1436,181355,530,1,-2692.66,7296.98,42.785,5.42798,0,0,0.414693,-0.909962,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1437,181355,530,1,-2697.95,7284.06,42.7209,6.10865,0,0,0.0871549,-0.996195,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1438,181355,530,1,-2762.17,7267.4,40.2673,5.72468,0,0,0.275637,-0.961262,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1439,181355,530,1,-2755.53,7275.69,40.2713,5.51524,0,0,0.374606,-0.927184,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1440,181355,530,1,-2752.12,7315.08,43.4848,5.68977,0,0,0.292371,-0.956305,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1441,181355,530,1,-2755.32,7317.08,56.3586,2.61799,0,0,0.965925,0.258821,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1442,181355,530,1,-2721.76,7343.45,39.4463,6.16101,0,0,0.0610481,-0.998135,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1443,181355,530,1,-2720.99,7355.9,39.7589,6.03884,0,0,0.121869,-0.992546,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1444,181355,530,1,-2614.57,7330.88,24.2109,1.50098,0,0,0.681998,0.731354,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1445,181355,530,1,-2624.41,7331.69,24.4634,1.39626,0,0,0.642787,0.766045,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1446,181355,530,1,-2618.06,7338.91,23.6594,4.95674,0,0,0.61566,-0.788012,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1447,181355,530,1,-2611.33,7343.46,23.6064,5.39307,0,0,0.43051,-0.902586,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1448,181355,530,1,-2561.67,7378.96,10.5709,2.96704,0,0,0.996194,0.0871651,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1449,181355,530,1,-2571.46,7378.03,11.0596,0.261798,0,0,0.130526,0.991445,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1450,181355,530,1,-1307.8,6960.47,32.2698,4.2237,0,0,0.857167,-0.515038,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1451,181355,530,1,-1254.38,7007.27,36.623,4.53786,0,0,0.766043,-0.642789,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1452,181355,530,1,-1241.75,7003.59,36.7939,4.53786,0,0,0.766043,-0.642789,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1453,181355,530,1,-1296.56,6953.97,33.2451,4.11898,0,0,0.882947,-0.469472,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1454,181355,530,1,-1184.68,7246.92,35.1431,2.82743,0,0,0.987688,0.156436,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1455,181355,530,1,201.984,8489.73,24.4459,0.645772,0,0,0.317305,0.948324,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1456,181355,530,1,253.304,8489.07,23.3794,1.43117,0,0,0.656058,0.75471,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1457,181355,530,1,265.287,8514.35,23.5299,3.68265,0,0,0.96363,-0.267241,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1458,181355,530,1,223.518,8562.45,23.2641,4.29351,0,0,0.83867,-0.54464,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1459,181355,530,1,-3031.27,2631.01,76.5434,4.4855,0,0,0.782608,-0.622515,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1460,181355,530,1,-3081.04,2598.58,61.7496,3.38594,0,0,0.992546,-0.12187,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1461,181355,530,1,-3104.68,2582.7,61.977,4.64258,0,0,0.731354,-0.681998,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1462,181355,530,1,-3107,2545.11,62.056,1.02974,0,0,0.492423,0.870356,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1463,181355,530,1,-3065.58,2555.55,65.7582,3.75246,0,0,0.953716,-0.300708,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1464,181355,530,1,-2970.73,2573,76.5434,1.5708,0,0,0.707107,0.707107,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1465,181355,530,1,-3006.6,2549.31,78.1164,2.1293,0,0,0.87462,0.48481,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1466,181355,530,1,-2979.33,2554.05,76.5434,3.927,0,0,0.923879,-0.382686,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1467,181355,530,1,-2986.57,2565.18,76.5434,2.60053,0,0,0.96363,0.267241,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1468,181355,530,1,-2956.54,2554.59,126.619,2.74016,0,0,0.979924,0.19937,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1469,181355,530,1,-2921.62,2644.62,94.4019,3.35105,0,0,0.994521,-0.104536,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1470,181355,530,1,-3966.47,2185.43,101.895,1.69297,0,0,0.748956,0.66262,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1471,181355,530,1,-4062.36,2190.83,109.854,5.60251,0,0,0.333807,-0.942642,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1472,181355,530,1,-4047.16,2228.05,112.046,5.95157,0,0,0.165047,-0.986286,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1473,181355,530,1,-4035.94,2238.97,112.272,5.2709,0,0,0.484809,-0.87462,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1474,181355,530,1,-4130.57,1173.39,49.5815,5.77704,0,0,0.250379,-0.968148,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1475,181355,530,1,-4084.2,1138.93,44.433,4.53786,0,0,0.766043,-0.642789,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1476,181355,530,1,-4062.44,1135.47,43.1828,3.80482,0,0,0.945519,-0.325568,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1477,181355,530,1,-4088.49,1139.85,44.4267,4.57276,0,0,0.754709,-0.65606,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1478,181355,530,1,-4065.08,1138.3,43.1756,3.90954,0,0,0.927183,-0.374608,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1479,181355,530,1,-4135.37,1128.68,54.5829,4.2237,0,0,0.857167,-0.515038,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1480,181355,530,1,-4114.82,1116.68,44.5313,0.174532,0,0,0.0871553,0.996195,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1481,181355,530,1,-4112.1,1121.58,44.5468,5.28835,0,0,0.477159,-0.878817,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1482,181355,530,1,-3089.8,837.772,-19.9238,1.8675,0,0,0.803857,0.594823,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1483,181355,530,1,-3010.56,770.086,-6.93308,0.890117,0,0,0.43051,0.902586,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1484,181355,530,1,9654.51,-7165.12,14.3229,1.55334,0,0,0.700909,0.713251,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1485,181355,530,1,9678.81,-7129.61,14.323,3.4034,0,0,0.991445,-0.130528,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1486,181355,530,1,9642.19,-7165.24,14.3229,1.90241,0,0,0.814116,0.580703,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1487,181355,530,1,9678.8,-7142.3,14.323,5.60251,0,0,0.333807,-0.942642,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1488,181355,530,1,9618.23,-7141.75,14.323,1.41372,0,0,0.649447,0.760406,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1489,181355,530,1,9618.2,-7129.27,14.3234,4.36332,0,0,0.819152,-0.573577,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1490,181355,530,1,9720.85,-7098.17,14.3749,3.29869,0,0,0.996917,-0.0784664,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1491,181355,530,1,9716.24,-7078.56,14.3665,1.15192,0,0,0.544639,0.838671,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1492,181355,530,1,9707.4,-7059.03,14.4325,0.0698117,0,0,0.0348988,0.999391,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1493,181355,530,1,9642.69,-7106.29,14.323,5.28835,0,0,0.477159,-0.878817,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1494,181355,530,1,9655.05,-7106.38,14.323,2.89724,0,0,0.992546,0.12187,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1495,181355,530,1,9688.93,-7057.63,14.383,3.87463,0,0,0.93358,-0.358368,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1496,181355,530,1,9571.57,-7081.52,16.5436,4.10152,0,0,0.887011,-0.461749,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1497,181355,530,1,9589.41,-7081.65,16.5494,5.18363,0,0,0.522498,-0.85264,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1498,181355,530,1,9579.72,-7178.49,14.2327,1.50098,0,0,0.681998,0.731354,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1499,181355,530,1,-3974.52,-11624.8,-138.876,4.90438,0,0,0.636078,-0.771625,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1500,181355,530,1,-3988.48,-11651.2,-139.043,0.383971,0,0,0.190808,0.981627,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1501,181355,530,1,-3985.04,-11695.9,-139.366,5.74214,0,0,0.267238,-0.963631,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1502,181355,530,1,-3657.6,-11491.4,-119.097,1.98967,0,0,0.83867,0.54464,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1503,181355,530,1,-3640.53,-11468.6,-118.809,3.01941,0,0,0.998135,0.0610518,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1504,181355,530,1,-4171.62,-12506.6,44.3613,5.55015,0,0,0.358368,-0.93358,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1505,181355,530,1,-4158.64,-12533.3,45.452,2.1293,0,0,0.87462,0.48481,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1506,181355,530,1,-4158.14,-12463.1,45.0814,3.71755,0,0,0.958819,-0.284017,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1507,181355,530,1,-4153.74,-12484.6,44.5134,3.90954,0,0,0.927183,-0.374608,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1508,181355,530,1,-4048.5,-13778.9,75.0158,0.296705,0,0,0.147809,0.989016,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1509,181388,530,1,-258.934,5512.86,67.7748,0.418879,0,0,0.207911,0.978148,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1510,181388,530,1,-261.897,5511.05,67.7684,5.39307,0,0,0.43051,-0.902586,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1511,181388,530,1,-263.501,5501.79,67.7705,1.27409,0,0,0.594822,0.803858,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1512,181388,530,1,-249.445,5498.1,67.7722,6.14356,0,0,0.0697555,-0.997564,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1513,181388,530,1,-261.672,5498.67,67.7673,5.42798,0,0,0.414693,-0.909962,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1514,181388,530,1,-252.317,5496.11,67.7704,3.15906,0,0,0.999962,-0.00873452,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1515,181388,530,1,-247.702,5507.62,67.769,2.56563,0,0,0.958819,0.284016,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1516,181388,530,1,-249.585,5510.58,67.7728,2.23402,0,0,0.898793,0.438373,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1517,181388,530,1,-140.735,5529.81,32.376,2.3911,0,0,0.930417,0.366503,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1518,181388,530,1,-139.329,5531.16,32.3654,6.23083,0,0,0.0261767,-0.999657,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1519,181388,530,1,267.53,6098.78,133.518,0.0698117,0,0,0.0348988,0.999391,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1520,181388,530,1,291.201,6097.79,133.337,2.07694,0,0,0.861628,0.50754,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1521,181388,530,1,285.884,6123.67,143.519,5.11382,0,0,0.551936,-0.833887,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1522,181388,530,1,2042.16,4667.06,151.263,2.00713,0,0,0.843391,0.5373,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1523,181388,530,1,-695.222,2715.15,95.8828,5.39307,0,0,0.43051,-0.902586,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1524,181388,530,1,-708.12,2724.89,94.9505,3.01941,0,0,0.998135,0.0610518,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1525,181388,530,1,-705.054,2721.34,95.5118,5.21854,0,0,0.507538,-0.86163,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1526,181388,530,1,-701.352,2721.36,95.5117,1.55334,0,0,0.700909,0.713251,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1527,181388,530,1,-713.004,2733.56,95.8515,4.04917,0,0,0.898793,-0.438373,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1528,181388,530,1,-701.292,2728.89,95.5083,0.942477,0,0,0.45399,0.891007,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1529,181388,530,1,-704.938,2728.99,95.5551,6.26573,0,0,0.00872616,-0.999962,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1530,181388,530,1,-695.988,2721.34,95.2422,5.70723,0,0,0.284015,-0.95882,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1531,181388,530,1,-698.785,2728.22,95.1936,1.32645,0,0,0.615661,0.788011,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1532,181388,530,1,-2760.97,7304.01,44.889,0.506145,0,0,0.25038,0.968148,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1533,181388,530,1,-2756.89,7304.2,44.8613,0.558504,0,0,0.275637,0.961262,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1534,181388,530,1,-2765.62,7302.79,44.9282,3.99681,0,0,0.909961,-0.414695,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1535,181388,530,1,-2956.99,2566.44,79.3312,4.13643,0,0,0.878816,-0.47716,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1536,181388,530,1,-2955.88,2547.72,92.7403,3.64774,0,0,0.968147,-0.250381,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1537,181388,530,1,-4051.09,2170.19,111.616,2.33874,0,0,0.920505,0.390732,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1538,181388,530,1,-4052.17,2163.66,111.686,3.03684,0,0,0.998629,0.0523534,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1539,181388,530,1,-4082.78,2168.83,112.273,6.17847,0,0,0.0523358,-0.99863,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1540,181388,530,1,-4082.24,2188.57,108.373,0.767944,0,0,0.374606,0.927184,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1541,181388,530,1,-4143.16,1122.72,45.3846,4.32842,0,0,0.829037,-0.559194,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1542,181388,530,1,-4140.74,1120.93,45.4278,5.14872,0,0,0.537299,-0.843392,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1543,181388,530,1,9644.52,-7140.05,16.7733,4.99164,0,0,0.601814,-0.798636,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1544,181388,530,1,9652.59,-7140.02,16.7733,4.62512,0,0,0.737277,-0.675591,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1545,181388,530,1,9587.12,-7206.62,17.4113,2.33874,0,0,0.920505,0.390732,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1546,181388,530,1,9644.57,-7131.67,16.7733,3.82227,0,0,0.942641,-0.333808,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1547,181388,530,1,9652.46,-7131.68,16.7733,5.35816,0,0,0.446197,-0.894935,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1548,181388,530,1,-4155.96,-12472.6,45.6333,2.18166,0,0,0.88701,0.461749,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1549,181388,530,1,-4168.26,-12538.9,46.0363,0.087266,0,0,0.0436192,0.999048,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1550,181388,530,1,-4126.58,-13723.6,77.2606,2.19912,0,0,0.891007,0.45399,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1551,181388,530,1,-4129.11,-13723.5,77.2487,3.90954,0,0,0.927183,-0.374608,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1552,181388,530,1,-4089.86,-13747.8,76.3908,5.70723,0,0,0.284015,-0.95882,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1553,181388,530,1,-4070.5,-13748.2,77.0448,4.34587,0,0,0.824126,-0.566406,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1554,181388,530,1,-4068.37,-13749,77.0378,2.05949,0,0,0.857167,0.515038,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1555,181388,530,1,-4087.65,-13776.3,78.0209,4.18879,0,0,0.866025,-0.500001,120,120,255,1), -- Standing, Interior, Medium - MFF
(@OGUID+1556,181391,530,1,-264.117,5509.56,67.6234,2.02458,0,0,0.848047,0.52992,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1557,181391,530,1,-264.923,5504.08,67.626,3.82227,0,0,0.942641,-0.333808,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1558,181391,530,1,-260.164,5496.42,67.6172,3.6652,0,0,0.965925,-0.258821,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1559,181391,530,1,-247.073,5499.69,67.6151,5.18363,0,0,0.522498,-0.85264,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1560,181391,530,1,-254.768,5494.83,67.6204,5.39307,0,0,0.43051,-0.902586,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1561,181391,530,1,-256.592,5514.34,67.6306,2.21656,0,0,0.894934,0.446199,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1562,181391,530,1,-251.04,5512.97,67.6223,2.46091,0,0,0.942641,0.333807,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1563,181391,530,1,-246.281,5505.37,67.626,2.21656,0,0,0.894934,0.446199,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1564,181391,530,1,270.007,6098.65,133.597,1.53589,0,0,0.694658,0.71934,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1565,181391,530,1,289.802,6098.12,133.365,3.6652,0,0,0.965925,-0.258821,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1566,181391,530,1,285.962,6122.09,143.566,3.83973,0,0,0.939692,-0.34202,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1567,181391,530,1,298.225,6094.87,133.042,0.0523589,0,0,0.0261765,0.999657,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1568,181391,530,1,2174,4726.62,157.752,3.97936,0,0,0.913545,-0.406739,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1569,181391,530,1,2045.74,4731.15,151.849,4.81711,0,0,0.66913,-0.743145,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1570,181391,530,1,-1226.03,7162.58,58.4514,2.56563,0,0,0.958819,0.284016,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1571,181391,530,1,-2955.54,2564.84,79.5326,3.54302,0,0,0.979924,-0.199371,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1572,181391,530,1,-2954.61,2547.32,92.7653,0,0,0,0,1,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1573,181391,530,1,-4050.74,2163.8,111.686,3.26377,0,0,0.998135,-0.0610517,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1574,181391,530,1,-4052.37,2168.78,111.615,0.0349062,0,0,0.0174522,0.999848,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1575,181391,530,1,-4073.99,2183.06,108.396,0.401425,0,0,0.199368,0.979925,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1576,181391,530,1,-4082.03,2186.26,108.373,6.26573,0,0,0.00872616,-0.999962,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1577,181391,530,1,-4141.91,1121.72,45.4548,0.95993,0,0,0.461748,0.887011,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1578,181391,530,1,-4043.15,-11563,-136.852,5.35816,0,0,0.446197,-0.894935,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1579,181391,530,1,-4163.94,-12541.5,45.8775,1.71042,0,0,0.754709,0.656059,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1580,181391,530,1,-4134.75,-12494.9,46.3561,3.83973,0,0,0.939692,-0.34202,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1581,181391,530,1,-4044.27,-13771.4,75.8816,5.07891,0,0,0.566406,-0.824126,120,120,255,1), -- Standing, Interior, Small - MFF
(@OGUID+1582,187653,530,1,-4054.81,2175.52,110.494,5.60251,0,0,0.333807,-0.942642,120,120,255,1), -- Standing, Post - MFF
(@OGUID+1583,187653,530,1,-4043.83,2199.08,110.651,2.00713,0,0,0.843391,0.5373,120,120,255,1), -- Standing, Post - MFF
(@OGUID+1584,187653,530,1,-4043.82,2202.36,110.731,1.32645,0,0,0.615661,0.788011,120,120,255,1), -- Standing, Post - MFF
(@OGUID+1585,187653,530,1,-3039.37,787.075,-10.1292,1.74533,0,0,0.766044,0.642788,120,120,255,1), -- Standing, Post - MFF
(@OGUID+1586,181392,530,1,-249.921,5495.47,36.7147,5.32326,0,0,0.461748,-0.887011,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1587,181392,530,1,282.636,6085.98,137.649,4.7473,0,0,0.694658,-0.71934,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1588,181392,530,1,2163.69,6745.08,172.408,4.04917,0,0,0.898793,-0.438373,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1589,181392,530,1,2168.96,6752.18,172.439,0.925024,0,0,0.446198,0.894935,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1590,181392,530,1,2162.74,6751.21,172.439,2.49582,0,0,0.948323,0.317306,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1591,181392,530,1,2169.93,6745.97,172.437,5.67232,0,0,0.300706,-0.953717,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1592,181392,530,1,2155.25,4720.38,160.945,3.03684,0,0,0.998629,0.0523534,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1593,181392,530,1,2154.76,4716.66,160.955,3.00195,0,0,0.997563,0.0697661,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1594,181392,530,1,2035.05,4693.12,154.722,1.85005,0,0,0.798636,0.601815,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1595,181392,530,1,2031.47,4692.11,154.759,1.88495,0,0,0.809016,0.587786,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1596,181392,530,1,4103.79,3058.69,345.618,3.52557,0,0,0.981627,-0.190812,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1597,181392,530,1,4125.45,3068.06,345.625,3.52557,0,0,0.981627,-0.190812,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1598,181392,530,1,-709.41,2704.61,99.6289,4.69494,0,0,0.71325,-0.70091,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1599,181392,530,1,-716.924,2718.47,100.484,3.10665,0,0,0.999847,0.0174694,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1600,181392,530,1,-717,2714.82,100.472,3.12412,0,0,0.999962,0.00873467,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1601,181392,530,1,-716.88,2742.7,100.79,3.17653,0,0,0.999847,-0.0174693,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1602,181392,530,1,-690.793,2724.94,100.929,6.26573,0,0,0.00872616,-0.999962,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1603,181392,530,1,-2677.66,7203.92,32.9967,1.20428,0,0,0.566406,0.824126,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1604,181392,530,1,-2698.24,7291.55,49.9164,5.96903,0,0,0.156434,-0.987688,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1605,181392,530,1,-2713.36,7298.44,51.915,5.84685,0,0,0.216439,-0.976296,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1606,181392,530,1,-2730.69,7306.02,51.7765,2.74016,0,0,0.979924,0.19937,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1607,181392,530,1,-2775.23,7326.03,51.771,5.8294,0,0,0.22495,-0.97437,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1608,181392,530,1,195.032,8490.55,35.5514,0.663223,0,0,0.325567,0.945519,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1609,181392,530,1,264.836,8492.75,34.6078,2.1293,0,0,0.87462,0.48481,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1610,181392,530,1,272.165,8509.44,32.722,3.7001,0,0,0.961261,-0.275641,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1611,181392,530,1,219.6,8569.11,33.138,4.67748,0,0,0.719339,-0.694659,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1612,181392,530,1,-3022.69,2624.56,85.7819,3.90954,0,0,0.927183,-0.374608,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1613,181392,530,1,-2972.56,2562.68,83.6695,5.8294,0,0,0.22495,-0.97437,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1614,181392,530,1,-2955.6,2554.5,110.328,5.84685,0,0,0.216439,-0.976296,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1615,181392,530,1,-4058.76,2175.69,117.855,1.58825,0,0,0.71325,0.700909,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1616,181392,530,1,9757.14,-7186.15,23.5062,2.89724,0,0,0.992546,0.12187,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1617,181392,530,1,9672.39,-7495.99,25.6702,1.53589,0,0,0.694658,0.71934,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1618,181392,530,1,9648.39,-7152.3,23.2634,1.5708,0,0,0.707107,0.707107,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1619,181392,530,1,9665.87,-7135.83,23.1602,3.10665,0,0,0.999847,0.0174694,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1620,181392,530,1,9648.53,-7119.09,23.2984,4.72984,0,0,0.700909,-0.713251,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1621,181392,530,1,9631.14,-7135.58,23.118,6.26573,0,0,0.00872616,-0.999962,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1622,181392,530,1,-4152.04,-12529.4,49.5232,2.67035,0,0,0.972369,0.233448,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1623,181392,530,1,-4171.05,-13734.4,82.0874,2.77507,0,0,0.983254,0.182238,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1624,181392,530,1,-4054.65,-13772.3,84.3948,5.88176,0,0,0.199367,-0.979925,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1625,181390,1,1,7460.37,-2500.04,464.727,1.65806,0,0,0.737277,0.675591,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+1626,181390,1,1,7470.38,-2496.05,464.297,2.40855,0,0,0.93358,0.358368,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+1627,181390,1,1,7446.36,-2483.69,464.979,6.26573,0,0,0.00872616,-0.999962,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+1628,181390,1,1,7447.76,-2494.9,464.509,0.733038,0,0,0.358368,0.93358,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+1629,181355,1,1,7466.35,-2478.93,462.023,4.04917,0,0,0.898793,-0.438373,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1630,181355,1,1,7477.78,-2130.38,492.102,2.32129,0,0,0.91706,0.39875,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1631,181390,1,1,-1057.54,-259.685,168.674,1.71042,0,0,0.754709,0.656059,120,120,255,1), -- Hanging, Square, Medium - MFF
(@OGUID+1632,181401,1,1,-2281.77,-330.859,0.345907,4.11898,0,0,0.882947,-0.469472,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1633,181392,1,1,-2181,-409.815,0.081098,0.925024,0,0,0.446198,0.894935,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1634,181392,1,1,-2401.17,-390.563,1.97371,0.174532,0,0,0.0871553,0.996195,120,120,255,1), -- Hanging, Streamer - MFF
(@OGUID+1635,181401,1,1,-2281.77,-330.859,0.345907,4.11898,0,0,0.882947,-0.469472,120,120,255,1), -- Hanging, Streamer x3 - MFF
(@OGUID+1636,181389,1,1,-2329.6,-389.712,-4.72049,4.04917,0,0,0.898793,-0.438373,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1637,181389,1,1,-2329.57,-389.557,13.5391,4.11898,0,0,0.882947,-0.469472,120,120,255,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1638,181393,1,1,-2281.92,-445.378,-2.27773,5.65487,0,0,0.309016,-0.951057,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1639,181393,1,1,-2346.1,-362.669,-6.45486,5.89921,0,0,0.190809,-0.981627,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1640,181393,1,1,-2304.88,-420.427,-2.17656,2.05949,0,0,0.857167,0.515038,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1641,181393,1,1,-2341.52,-359.36,5.71917,5.81195,0,0,0.233445,-0.97237,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1642,181393,1,1,-2319.4,-423.796,-2.1298,1.44862,0,0,0.66262,0.748956,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1643,181393,1,1,-2342.03,-353.915,-6.13459,5.91667,0,0,0.182235,-0.983255,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1644,181393,1,1,-2319.47,-466.969,-2.06943,3.56047,0,0,0.978147,-0.207912,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1645,181393,1,1,-2286.41,-459.533,-2.33718,6.24828,0,0,0.0174522,-0.999848,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1646,181393,1,1,-2329.6,-456.064,-2.42455,4.25861,0,0,0.848047,-0.529921,120,120,255,1), -- Hanging, Tall/Thin, Medium - MFF
(@OGUID+1647,181355,1,1,-2280.82,-338.377,-9.42493,3.45576,0,0,0.987688,-0.156436,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1648,181355,1,1,-2289.85,-331.87,-9.42493,4.64258,0,0,0.731354,-0.681998,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1649,181355,1,1,-2333.27,-386.84,-7.97007,2.96704,0,0,0.996194,0.0871651,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1650,181355,1,1,-2325.58,-391.288,-7.98294,5.02655,0,0,0.587785,-0.809017,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1651,181355,1,1,-2371.6,-344.483,-8.95699,5.8294,0,0,0.22495,-0.97437,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1652,181355,1,1,-2387.83,-329.752,0.278125,4.55531,0,0,0.760405,-0.649449,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1653,181355,1,1,-2393.57,-342.369,0.274165,1.15192,0,0,0.544639,0.838671,120,120,255,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1654,188021,1,1,136.533,-4718.35,18.1626,-1.11701,0,0,-0.529919,0.848048,120,120,0,1), -- Camp Pavilion
(@OGUID+1655,188020,1,1,126.439,-4719.48,18.597,-1.1868,0,0,-0.559183,0.829044,120,120,0,1), -- Camp Banner
(@OGUID+1656,188020,1,1,133.287,-4736.94,15.482,-1.1519,0,0,-0.544632,0.838675,120,120,0,1), -- Camp Banner
(@OGUID+1657,188020,1,1,149.441,-4707.21,18.601,-1.0646,0,0,-0.507516,0.861642,120,120,0,1), -- Camp Banner
(@OGUID+1658,188020,1,1,158.157,-4725.68,16.704,-1.0646,0,0,-0.507516,0.861642,120,120,0,1), -- Camp Banner
(@OGUID+1659,187667,1,1,-570.694,-4219.17,44.88,-1.972,0,0,-0.833825,0.55203,120,120,0,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1660,187667,1,1,-599.053,-4198.67,43.87,-1.553,0,0,-0.700787,0.713371,120,120,0,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1661,187667,1,1,-608.36,-4198.47,43.99,-1.431,0,0,-0.655995,0.754765,120,120,0,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1662,187667,1,1,-630.429,-4228.71,41.244,-0.157,0,0,-0.0784194,0.99692,120,120,0,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1663,187667,1,1,-640.144,-4234.3,41.356,-0.61,0,0,-0.300293,0.953847,120,120,0,1), -- Hanging, Tall/Thin, Small - MFF
(@OGUID+1664,187958,1,1,145.521,-4713.82,18.129,-2.53,0,0,-0.953607,0.301053,120,120,0,1), -- Horde Bonfire
(@OGUID+1665,181605,1,1,146.607,-4735.15,14.989,-0.5061,0,0,-0.250358,0.968153,120,120,0,1), -- Ribbon Pole
(@OGUID+1666,181389,1,1,291.366,-4773.56,16.6302,1.6755,0,0,0.743139,0.669137,120,120,0,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1667,181389,1,1,321.361,-4770.15,16.4676,1.658,0,0,0.737256,0.675613,120,120,0,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1668,181388,1,1,347.83,-4676.29,17.228,0.7679,0,0,0.374586,0.927192,120,120,0,1), -- Standing, Interior, Medium - MFF
(@OGUID+1669,181355,1,1,127.956,-4728.55,17.641,-0.436,0,0,-0.216277,0.976332,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1670,181355,1,1,137.727,-4710.29,18.601,0.855,0,0,0.414597,0.910005,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1671,181355,1,1,1474.71,-4216.8,59.22,-2.687,0,0,-0.974279,0.225344,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1672,181355,1,1,154.996,-4715.29,18.587,-1.623,0,0,-0.725321,0.688411,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1673,181355,1,1,1571.72,-4215.1,45.275,1.518,0,0,0.688196,0.725525,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1674,181355,1,1,351.824,-4714.07,14.508,-1.85,0,0,-0.798621,0.601835,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1675,181355,1,1,354.421,-4680,16.457,-2.687,0,0,-0.974279,0.225344,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1676,181355,1,1,-571.69,-4214.87,41.476,-1.658,0,0,-0.737256,0.675613,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1677,181355,1,1,-599.829,-4200.81,40.0648,-1.605,0,0,-0.719096,0.694911,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1678,181355,1,1,-607.785,-4200.11,39.909,-1.675,0,0,-0.742972,0.669322,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1679,181355,1,1,-626.497,-4221.01,38.133,-0.593,0,0,-0.292175,0.956365,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1680,181355,1,1,277.615,-4642.55,17.137,-2.164,0,0,-0.882899,0.469563,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1681,181355,1,1,278.545,-4688.89,13.828,0.593,0,0,0.292175,0.956365,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1682,181355,1,1,312.613,-4680.74,16.026,-2.583,0,0,-0.96125,0.275679,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1683,181355,1,1,328.201,-4677.91,16.457,-0.296,0,0,-0.14746,0.989068,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1684,181355,1,1,335.967,-4760.07,12.698,2.286,0,0,0.909882,0.414867,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1685,181355,1,1,246.389,-4751.75,12.45,1.483,0,0,0.675395,0.737456,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1686,181355,1,1,249.5,-4719.77,15.101,-1.605,0,0,-0.719096,0.694911,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1687,181355,1,1,256.874,-4659.21,14.231,0.872,0,0,0.422317,0.906448,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1688,181307,1,1,135.014,-4720.46,19.143,0.593,0,0,0.292175,0.956365,120,120,0,1), -- Camp Mug
(@OGUID+1689,181306,1,1,133.39,-4716.15,18.43,-1.326,0,0,-0.615484,0.788149,120,120,0,1), -- Camp Jug
(@OGUID+1690,181305,1,1,134.535,-4719.63,18.146,0.523,0,0,0.25853,0.966003,120,120,0,1), -- Camp Table
(@OGUID+1691,181302,1,1,134.806,-4713.88,18.522,-1.5,0,0,-0.681639,0.731689,120,120,0,1), -- Camp Crate
(@OGUID+1692,181302,1,1,135.466,-4715.69,18.409,0.104,0,0,0.0519766,0.998648,120,120,0,1), -- Camp Crate
(@OGUID+1693,181389,530,1,9661.73,-7289.44,20.1413,1.5358,0,0,0.694626,0.719371,120,120,0,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1694,181389,530,1,9677.21,-7221.69,27.429,1.5533,0,0,0.700894,0.713266,120,120,0,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1695,181389,530,1,9677.25,-7226.38,28.188,-1.5009,0,0,-0.681968,0.731382,120,120,0,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1696,181389,530,1,9691.53,-7289.64,19.61,1.5358,0,0,0.694626,0.719371,120,120,0,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1697,181388,530,1,9578.92,-7208.43,17.41,-2.8448,0,0,-0.989009,0.147852,120,120,0,1), -- Standing, Interior, Medium - MFF
(@OGUID+1698,181388,530,1,9587.12,-7206.62,17.411,2.3387,0,0,0.920497,0.39075,120,120,0,1), -- Standing, Interior, Medium - MFF
(@OGUID+1699,181388,530,1,9615.7,-7235.05,16.328,-0.8552,0,0,-0.414688,0.909964,120,120,0,1), -- Standing, Interior, Medium - MFF
(@OGUID+1700,181355,530,1,9556.41,-7178.68,14.253,0.2617,0,0,0.130477,0.991451,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1701,181355,530,1,9628.29,-7254.45,16.495,-1.2566,0,0,-0.58777,0.809028,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1702,181355,530,1,9630.88,-7265.24,14.28,-1.0471,0,0,-0.499958,0.86605,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1703,181355,530,1,9659.63,-7284.59,14.348,-2.5656,0,0,-0.958815,0.284032,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1704,181355,530,1,9661.09,-7265.48,14.204,2.3561,0,0,0.923861,0.382727,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1705,181355,530,1,9662.47,-7240.89,14.3636,-1.117,0,0,-0.529915,0.848051,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1706,181355,530,1,9667.49,-7205.58,14.315,-1.5882,0,0,-0.713233,0.700927,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1707,181355,530,1,9667.57,-7289.19,14.1,3.1241,0,0,0.999962,0.00874623,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1708,181355,530,1,9685.11,-7288.71,14.064,-2.6005,0,0,-0.963625,0.267258,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1709,181355,530,1,9687.74,-7206.66,14.31,1.6929,0,0,0.748933,0.662646,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1710,181355,530,1,9688.68,-7243.62,14.213,-2.4783,0,0,-0.945508,0.3256,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1711,181355,530,1,9689.57,-7286.36,14.274,2.391,0,0,0.930399,0.366548,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1712,181355,530,1,9729.43,-7314.13,24.73,2.5656,0,0,0.958815,0.284032,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1713,181355,530,1,9737.57,-7311.25,24.731,2.3038,0,0,0.913538,0.406752,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1714,181355,530,1,9742.11,-7191.63,14.323,-2.583,0,0,-0.96125,0.275679,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1715,181355,530,1,9746.09,-7307.12,24.732,2.635,0,0,0.968092,0.250596,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1716,181355,530,1,9746.57,-7174.86,14.323,-3.0194,0,0,-0.998134,0.0610584,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1717,181355,530,1,9850.01,-7382.79,18.61,-1.6057,0,0,-0.719339,0.694659,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1718,181605,0,1,2288.63,422.085,34.113,-0.5061,0,0,-0.250358,0.968153,120,120,0,1), -- Ribbon Pole
(@OGUID+1719,181358,530,1,-3991.59,-11552.5,-122.168,-0.9424,0,0,-0.453956,0.891024,120,120,0,1), -- Hanging, Square, Large - MFF
(@OGUID+1720,181358,530,1,-4022.1,-11517.6,-123.535,2.1293,0,0,0.874619,0.48481,120,120,0,1), -- Hanging, Square, Large - MFF
(@OGUID+1721,181389,530,1,-3905.57,-11457.8,-112.98,1.117,0,0,0.529915,0.848051,120,120,0,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1722,181389,530,1,-3915.05,-11411.2,-111.862,-0.1919,0,0,-0.0958028,0.9954,120,120,0,1), -- Hanging, Tall/Thin, Large - MFF
(@OGUID+1723,188020,530,1,-3969.1,-11447.7,-136.751,-2.8972,0,0,-0.992543,0.121892,120,120,0,1), -- Camp Banner
(@OGUID+1724,188020,530,1,-3970.71,-11431.7,-136.721,-3.0194,0,0,-0.998134,0.0610584,120,120,0,1), -- Camp Banner
(@OGUID+1725,181354,530,1,-3774.08,-11374,-138.391,-1.727,0,0,-0.760121,0.649781,120,120,0,1), -- Floating, Medium - MFF
(@OGUID+1726,181354,530,1,-3794.8,-11366.1,-138.604,-0.3141,0,0,-0.156405,0.987693,120,120,0,1), -- Floating, Medium - MFF
(@OGUID+1727,187572,530,1,-4042.41,-11561.7,-136.822,0.76794,0,0,0.374604,0.927185,120,120,0,1), -- Candle 01 - MFF
(@OGUID+1728,187573,530,1,-4042.87,-11561.1,-136.809,-2.4783,0,0,-0.945508,0.3256,120,120,0,1), -- Candle 02 - MFF
(@OGUID+1729,181355,530,1,-3898.61,-11445.4,-132.852,0.1047,0,0,0.0523261,0.99863,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1730,181355,530,1,-3903.45,-11420.8,-132.773,0.1919,0,0,0.0958028,0.9954,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1731,181355,530,1,-3968.96,-11453.9,-136.772,1.6929,0,0,0.748933,0.662646,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1732,181355,530,1,-3973.86,-11427.1,-136.736,-2.4434,0,0,-0.939682,0.342049,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1733,181355,530,1,-3979.76,-11500.8,-137.077,-0.0349,0,0,-0.0174491,0.999848,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1734,181355,530,1,-3979.87,-11369.4,-122.542,1.3788,0,0,0.636074,0.771628,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1735,181355,530,1,-3987.21,-11495.5,-137.143,2.2514,0,0,0.902569,0.430545,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1736,181355,530,1,-3988.78,-11386.5,-122.711,-0.9773,0,0,-0.469434,0.882967,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1737,181355,530,1,-3990.31,-11353.1,-122.603,-0.8028,0,0,-0.390707,0.920515,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1738,181355,530,1,-4000.54,-11392.8,-123.377,-3.1241,0,0,-0.999962,0.00874623,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1739,181355,530,1,-4006.57,-11572.7,-138.041,2.6703,0,0,0.972364,0.233471,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1740,181355,530,1,-4016.02,-11510.5,-141.069,2.8797,0,0,0.991439,0.130572,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1741,181355,530,1,-4019.3,-11367.6,-123.678,-1.7278,0,0,-0.760381,0.649477,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1742,181355,530,1,-4025.33,-11590.4,-138.327,1.7627,0,0,0.771598,0.63611,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1743,181355,530,1,-4030.15,-11520.6,-141.262,1.658,0,0,0.737256,0.675613,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1744,181355,530,1,-4048.41,-11568.9,-138.499,-0.2094,0,0,-0.104509,0.994524,120,120,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1745,187922,0,1,-8245.62,-2623.9,133.155,4.04776,0,0,0.899102,-0.43774,300,300,0,1), -- Alliance Bonfire
(@OGUID+1746,187941,530,1,192.209,6015.13,22.1067,0.00709009,0,0,0.00354504,0.999994,300,300,0,1), -- Alliance Bonfire
(@OGUID+1747,188021,530,1,192.163,6006.97,22.1,6.08217,0,0,0.100339,-0.994953,300,300,0,1), -- Camp Pavilion
(@OGUID+1748,188020,530,1,179.856,6024.08,22.3978,3.98117,0,0,0.913175,-0.407567,300,300,0,1), -- Camp Banner
(@OGUID+1749,181355,530,1,182.649,6013.91,22.7399,3.85237,0,0,0.937511,-0.347955,300,300,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1750,181305,530,1,191.325,6003.18,24.2265,1.22679,0,0,0.575647,0.817698,300,300,0,1), -- Camp Table
(@OGUID+1751,181307,530,1,190.107,6002.77,25.2167,1.22679,0,0,0.575647,0.817698,300,300,0,1), -- Camp Mug
(@OGUID+1752,181302,530,1,187.76,6009.34,23.9554,6.21407,0,0,0.0345509,-0.999403,300,300,0,1), -- Camp Crate
(@OGUID+1753,181302,530,1,187.695,6007.28,24.1424,0.567843,0,0,0.280122,0.959964,300,300,0,1), -- Camp Crate
(@OGUID+1754,181306,530,1,190.136,6008.65,23.9259,4.04009,0,0,0.900774,-0.434289,300,300,0,1), -- Camp Jug
(@OGUID+1755,181355,530,1,199.014,6031.23,20.5566,3.50209,0,0,0.983799,-0.179274,300,300,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1756,188020,530,1,201.225,6033.47,20.1022,3.0819,0,0,0.999555,0.029842,300,300,0,1), -- Camp Banner
(@OGUID+1757,188020,530,1,201.553,5989.88,20.7907,3.02849,0,0,0.998401,0.0565212,300,300,0,1), -- Camp Banner
(@OGUID+1758,181355,530,1,199.671,5991.72,21.7141,0.161778,0,0,0.0808008,0.99673,300,300,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1759,181605,530,1,188.262,5991.39,23.7141,3.08425,0,0,0.999589,0.0286674,300,300,0,1), -- Ribbon Pole
(@OGUID+1760,188020,530,1,177.593,5991.78,22.1575,6.11588,0,0,0.0835551,-0.996503,300,300,0,1), -- Camp Banner
(@OGUID+1761,181355,530,1,180.409,5994.73,22.8062,5.91168,0,0,0.184686,-0.982798,300,300,0,1), -- Standing, Exterior, Medium - MFF
(@OGUID+1762,187989,1,1,-437.406,2438.64,106.645,2.94349,0,0,0.995098,0.0988894,300,300,0,1), -- Twilight Torch
(@OGUID+1763,187989,1,1,-480.744,2434.37,99.8844,0.284917,0,0,0.141977,0.98987,300,300,0,1), -- Twilight Torch
(@OGUID+1764,187989,1,1,-475.681,2367.79,96.9422,4.35126,0,0,0.822597,-0.568625,300,300,0,1), -- Twilight Torch
(@OGUID+1765,187989,1,1,-509.534,2404.15,97.0855,0.344939,0,0,0.171616,0.985164,300,300,0,1), -- Twilight Torch
(@OGUID+1766,187989,1,1,-451.373,2483.46,111.352,4.62147,0,0,0.73851,-0.674243,300,300,0,1), -- Twilight Torch
(@OGUID+1767,187918,1,1,-479.677,2420.32,94.6018,3.65464,0,0,0.967278,-0.25372,300,300,0,1), -- Twilight Bonfire
(@OGUID+1768,187918,1,1,-451.718,2430.49,98.9137,0.354041,0,0,0.176097,0.984373,300,300,0,1), -- Twilight Bonfire
(@OGUID+1769,187918,0,1,-12189.7,842.621,10.5679,6.20423,0,0,0.0394675,-0.999221,300,300,0,1), -- Twilight Bonfire
(@OGUID+1770,187918,0,1,-12168.5,835.455,11.7295,5.8885,0,0,0.196064,-0.980591,300,300,0,1), -- Twilight Bonfire
(@OGUID+1771,187989,0,1,-12178.2,801.785,2.18033,3.98705,0,0,0.911973,-0.41025,300,300,0,1), -- Twilight Torch
(@OGUID+1772,187989,0,1,-12236.1,837.722,2.50857,0.752642,0,0,0.367501,0.930023,300,300,0,1), -- Twilight Torch
(@OGUID+1773,187989,0,1,-12156.2,934.719,2.21955,4.7244,0,0,0.702847,-0.711341,300,300,0,1), -- Twilight Torch
(@OGUID+1774,187989,0,1,-12112.9,870.413,9.49334,2.21505,0,0,0.894595,0.446877,300,300,0,1), -- Twilight Torch
(@OGUID+1775,187989,0,1,-6595.95,-663.852,238.42,5.19351,0,0,0.518279,-0.855211,300,300,0,1), -- Twilight Torch
(@OGUID+1776,187989,0,1,-6602.66,-667.151,238.82,3.59601,0,0,0.974299,-0.225259,300,300,0,1), -- Twilight Torch
(@OGUID+1777,187989,0,1,-6595.89,-691.631,244.639,4.34765,0,0,0.823622,-0.56714,300,300,0,1), -- Twilight Torch
(@OGUID+1778,187989,0,1,-6609.54,-690.698,243.926,3.1939,0,0,0.999658,-0.0261507,300,300,0,1), -- Twilight Torch
(@OGUID+1779,187989,0,1,-6611.29,-717.496,247.221,4.26282,0,0,0.846929,-0.531706,300,300,0,1), -- Twilight Torch
(@OGUID+1780,187989,0,1,-6621.53,-714.911,247.568,4.22355,0,0,0.857205,-0.514975,300,300,0,1), -- Twilight Torch
(@OGUID+1781,187918,0,1,-6637.37,-651.561,241.749,5.72995,0,0,0.273103,-0.961985,300,300,0,1), -- Twilight Bonfire
(@OGUID+1782,187989,530,1,-168.654,1223.93,39.5249,5.54051,0,0,0.362862,-0.931843,300,300,0,1), -- Twilight Torch
(@OGUID+1783,187989,530,1,-134.98,1219.16,39.9083,4.46029,0,0,0.790391,-0.612602,300,300,0,1), -- Twilight Torch
(@OGUID+1784,187989,530,1,-164.647,1183.49,41.5094,3.56022,0,0,0.978174,-0.207789,300,300,0,1), -- Twilight Torch
(@OGUID+1785,187989,530,1,-134.178,1162.87,41.4418,4.88283,0,0,0.644354,-0.764728,300,300,0,1), -- Twilight Torch
(@OGUID+1786,187989,530,1,-157.004,1100.52,41.6002,4.75795,0,0,0.690817,-0.72303,300,300,0,1), -- Twilight Torch
(@OGUID+1787,187989,530,1,-106.606,1106.62,47.2494,6.25021,0,0,0.016487,-0.999864,300,300,0,1), -- Twilight Torch
(@OGUID+1788,187989,530,1,-164.571,1126.64,50.9746,1.11604,0,0,0.529508,0.848305,300,300,0,1), -- Twilight Torch
(@OGUID+1789,187918,530,1,-341.539,1149.69,41.516,1.49258,0,0,0.67892,0.734213,300,300,0,1), -- Twilight Bonfire
(@OGUID+1790,187989,530,1,-346.156,1149.88,41.4797,1.74469,0,0,0.765839,0.643032,300,300,0,1), -- Twilight Torch
(@OGUID+1791,187918,530,1,-312.724,1109.74,41.6732,3.11521,0,0,0.999913,0.0131909,300,300,0,1), -- Twilight Bonfire
(@OGUID+1792,187918,530,1,-342.656,1109.48,41.8743,3.19845,0,0,0.999596,-0.0284249,300,300,0,1), -- Twilight Bonfire
(@OGUID+1793,187918,530,1,-364.933,1103.83,45.7432,0.55952,0,0,0.276125,0.961122,300,300,0,1), -- Twilight Bonfire
(@OGUID+1794,187989,530,1,-370.16,1104.04,47.8775,0.147176,0,0,0.0735216,0.997294,300,300,0,1), -- Twilight Torch
(@OGUID+1795,187918,530,1,-371.512,1154.24,44.431,3.18689,0,0,0.999744,-0.0226467,300,300,0,1), -- Twilight Bonfire
(@OGUID+1796,187989,530,1,-375.946,1154.04,45.4371,3.18689,0,0,0.999744,-0.0226467,300,300,0,1), -- Twilight Torch
(@OGUID+1797,187918,530,1,-311.412,1157.12,41.3469,3.19238,0,0,0.999678,-0.0253909,300,300,0,1), -- Twilight Bonfire
(@OGUID+1798,187989,530,1,-328.448,1168.73,41.6186,3.31726,0,0,0.996145,-0.0877208,300,300,0,1), -- Twilight Torch
(@OGUID+1799,187918,530,1,-366.923,1194.76,41.3963,3.25757,0,0,0.998319,-0.0579562,300,300,0,1), -- Twilight Bonfire
(@OGUID+1800,187918,530,1,-370.988,1223.35,38.3536,5.61533,0,0,0.327756,-0.944762,300,300,0,1), -- Twilight Bonfire
(@OGUID+1801,187989,530,1,-337.191,1228.54,37.9438,4.89356,0,0,0.640242,-0.768174,300,300,0,1), -- Twilight Torch
(@OGUID+1802, '187929', '1', '1', '-4401.171', '3484.652', '12.28728', '2.460914', '0', '0', '0', '0', '180', '180', '100', '1'), -- Alliance Bonfire - feralas
(@OGUID+1803, '187974', '0', '1', '2279.2485', '456.00912', '33.867054', '0.366517573595046997', '0', '0', '0', '0', '180', '180', '100', '1'), -- Horde Bonfire - tirisfal
(@OGUID+1804, '187960', '530', '1', '9386.864', '-6772.2397', '14.412549', '-2.9146895', '0', '0', '0', '0', '180', '180', '100', '1'), -- Alliance Bonfire - silvermoon
(@OGUID+1805, '187962', '530', '1', '7693.533', '-6836.507', '77.78775', '2.70525527000427246', '0', '0', '0', '0', '180', '180', '100', '1'), -- Alliance Bonfire - ghostlands
(@OGUID+1806, '188153', '530', '1', '-352.8703', '1117.865', '42.03983', '4.852017', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1807, '188154', '530', '1', '-357.67', '1194.571', '42.22488', '1.954769', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1808, '188134', '1', '1', '-454.07095', '2420.0215', '97.316505', '4.607671737670898437', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1809, '188143', '0', '1', '-12137.454', '869.3309', '17.813759', '1.727874636650085449', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1810, '188145', '0', '1', '-6611.4775', '-651.49133', '235.16135', '1.884953022003173828', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1811, '188146', '0', '1', '-6649.224', '-682.23615', '234.31554', '3.385940074920654296', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1812, '188147', '0', '1', '-6652.1494', '-625.0191', '235.24211', '1.518436193466186523', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1813, '188157', '530', '1', '-354.3068', '1118.682', '27.0689', '1.413715', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1814, '188156', '530', '1', '-352.9099', '1117.96', '41.98663', '0.4014249', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1815, '188157', '530', '1', '-357.5668', '1193.257', '27.09065', '3.194002', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1816, '188156', '530', '1', '-357.6571', '1194.62', '41.96994', '4.223697', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1817, '188050', '1', '1', '-454.04504', '2419.9219', '97.34922', '3.124123096466064453', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1818, '188048', '1', '1', '-454.18262', '2419.9077', '95.412094', '2.059488296508789062', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1819, '188050', '0', '1', '-12137.347', '869.42316', '17.739166', '0.087265998125076293', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1820, '188048', '0', '1', '-12137.153', '869.46857', '15.748837', '5.270895957946777343', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1821, '188048', '0', '1', '-6612.009', '-651.83856', '233.01137', '2.111847877502441406', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1822, '188050', '0', '1', '-6611.4497', '-651.5', '235.18935', '3.194002151489257812', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1823, '188048', '0', '1', '-6648.835', '-681.48615', '233.10202', '5.916667938232421875', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1824, '188050', '0', '1', '-6649.1426', '-682.0868', '234.81836', '5.95157480239868164', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1825, '188048', '0', '1', '-6652.1094', '-625.0243', '233.15712', '1.675513744354248046', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1826, '188050', '0', '1', '-6652.08', '-625.066', '235.12912', '2.757613182067871093', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1827, '188157', '530', '1', '-143.08507', '1118.0729', '28.025562', '2.583080768585205078', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1828, '188156', '530', '1', '-140.47212', '1191.467', '41.960995', '2.530723094940185546', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1829, '188157', '530', '1', '-141.81076', '1191.757', '26.929176', '1.413715124130249023', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1830, '188156', '530', '1', '-142.07639', '1119.1702', '42.78009', '1.518436193466186523', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1831, 188144, 0, 1, -12169.5, 860.835, 21.2184, 3.2917, 0, 0, 0.997185, -0.0749832, 120, 120, 0, 1), -- Ice Stone
(@OGUID+1832, 188135, 1, 1, -437.932, 2451.39, 105.271, 3.04952, 0, 0, 0.998941, 0.0460201, 120, 120, 0, 1), -- Ice Stone
(@OGUID+1833, 188139, 1, 1, -466.49, 2452.25, 102.127, 0.38702, 0, 0, 0.192305, 0.981335, 120, 120, 0, 1), -- Ice Stone
(@OGUID+1834, 188048, 1, 1, -6392.08, 202.307, 2.62744, 1.18682, 0, 0, 0.559191, 0.829039, 120, 120, 100, 1), -- Twilight Crystal Base
(@OGUID+1835, 188048, 1, 1, -6436.44, 218.465, 3.59647, 2.32129, 0, 0, 0.91706, 0.398748, 120, 120, 100, 1), -- Twilight Crystal Base
(@OGUID+1836, 188048, 1, 1, -6426.74, 187.17, 5.39112, -0.663225, 0, 0, -0.325568, 0.945519, 120, 120, 100, 1), -- Twilight Crystal Base
(@OGUID+1837, 188050, 1, 1, -6436.32, 218.692, 5.65515, 1.29154, 0, 0, 0.601814, 0.798637, 120, 120, 100, 1), -- Twilight Crystal Base
(@OGUID+1838, 188050, 1, 1, -6391.86, 202.224, 4.62114, 2.28638, 0, 0, 0.909961, 0.414694, 120, 120, 100, 1), -- Twilight Crystal Base
(@OGUID+1839, 188050, 1, 1, -6427.05, 186.99, 7.37724, 0.418879, 0, 0, 0.207912, 0.978148, 120, 120, 100, 1), -- Twilight Crystal Base
(@OGUID+1840, 188048, 1, 1, 4231.79, 1166.16, 6.08855, 1.22173, 0, 0, 0.573576, 0.819152, 120, 120, 100, 1), -- Twilight Crystal Base
(@OGUID+1841, 188048, 1, 1, 4204.7, 1144.51, 6.62583, 0.506145, 0, 0, 0.25038, 0.968148, 120, 120, 100, 1), -- Twilight Crystal Base
(@OGUID+1842, 188048, 1, 1, 4244.62, 1142.75, 8.27199, 1.16937, 0, 0, 0.551937, 0.833886, 120, 120, 100, 1), -- Twilight Crystal Base
(@OGUID+1843, 188050, 1, 1, 4232.07, 1165.95, 8.0764, 2.30383, 0, 0, 0.913544, 0.406739, 120, 120, 100, 1), -- Twilight Crystal Base
(@OGUID+1844, 188050, 1, 1, 4204.74, 1144.18, 8.74548, 1.6057, 0, 0, 0.719339, 0.694659, 120, 120, 100, 1), -- Twilight Crystal Base
(@OGUID+1845, 188050, 1, 1, 4244.7, 1142.68, 10.2735, 2.26893, 0, 0, 0.906308, 0.422617, 120, 120, 100, 1), -- Twilight Crystal Base
(@OGUID+1846, 188048, 1, 1, -461.769, 2472.11, 104.848, 4.40434, 0, 0, 0.807218, -0.590254, 120, 120, 0, 1), -- Twilight Crystal Base
(@OGUID+1847, 188048, 0, 1, -12196, 887.421, 0.59987, 0.486257, 0, 0, 0.24074, 0.97059, 120, 120, 0, 1), -- Twilight Crystal Base
(@OGUID+1848, 188050, 0, 1, -12196.5, 887.828, 2.72441, 1.8615, 0, 0, 0.802068, 0.597233, 120, 120, 0, 1), -- Twilight Crystal Base
(@OGUID+1849, 188048, 0, 1, -12170.1, 860.773, 19.0948, 1.7209, 0, 0, 0.758136, 0.652096, 120, 120, 0, 1), -- Twilight Crystal Base
(@OGUID+1850, 188050, 0, 1, -12169.5, 860.835, 21.2184, 3.2917, 0, 0, 0.997185, -0.0749832, 120, 120, 0, 1), -- Twilight Crystal Base
(@OGUID+1851, 188050, 1, 1, -462.112, 2472.26, 106.971, 5.9398, 0, 0, 0.17085, -0.985297, 120, 120, 0, 1), -- Twilight Crystal Base
(@OGUID+1852, 188048, 1, 1, -438.441, 2451.37, 103.147, 1.53371, 0, 0, 0.693874, 0.720096, 120, 120, 0, 1), -- Twilight Crystal Base
(@OGUID+1853, 188048, 1, 1, -465.8, 2452.56, 100.004, 5.15439, 0, 0, 0.534907, -0.844911, 120, 120, 0, 1), -- Twilight Crystal Base
(@OGUID+1854, 188050, 1, 1, -437.932, 2451.39, 105.271, 3.04952, 0, 0, 0.998941, 0.0460201, 120, 120, 0, 1), -- Twilight Crystal Base
(@OGUID+1855, 188050, 1, 1, -466.49, 2452.25, 102.127, 0.38702, 0, 0, 0.192305, 0.981335, 120, 120, 0, 1), -- Twilight Crystal Base
(@OGUID+1856, 188048, 0, 1, -6636.4, -665.27, 233.754, 5.32295, 0, 0, 0.461884, -0.886941, 120, 120, 0, 1), -- Twilight Crystal Base
(@OGUID+1857, 188050, 0, 1, -6637.01, -665.525, 235.876, 0.528097, 0, 0, 0.260991, 0.965341, 120, 120, 0, 1), -- Twilight Crystal Base
(@OGUID+1858, 188048, 0, 1, -6603.47, -644.717, 233.754, 2.32509, 0, 0, 0.917816, 0.397005, 120, 120, 0, 1), -- Twilight Crystal Base
(@OGUID+1859, 188050, 0, 1, -6603.16, -644.701, 235.877, 3.89824, 0, 0, 0.929285, -0.369363, 120, 120, 0, 1), -- Twilight Crystal Base
(@OGUID+1860, 188048, 0, 1, -6620.78, -624.053, 233.755, 3.24086, 0, 0, 0.998769, -0.0496133, 120, 120, 0, 1), -- Twilight Crystal Base
(@OGUID+1861, 188050, 0, 1, -6620.71, -623.62, 235.878, 4.71892, 0, 0, 0.704794, -0.709412, 120, 120, 0, 1), -- Twilight Crystal Base
(@OGUID+1862, '188151', '530', '1', '-142.11285', '1119.1685', '42.97947', '1.117009282112121582', '0', '0', '0', '0', '180', '180', '100', '1'),
(@OGUID+1863, '188152', '530', '1', '-140.61687', '1191.4406', '41.9476', '3.071766138076782226', '0', '0', '0', '0', '180', '180', '100', '1');

DELETE FROM `game_event_gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+1836; 
INSERT INTO `game_event_gameobject` (`guid`, `event`) SELECT `guid`, 1 FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+1863;

-- Misc missing objects found during search unrelated to Midsummer
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+2000 AND @OGUID+2037;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID+2000,181319,530,1,7150.75,-6823.16,43.919,3.14133,-0.00436068,-0.0305376,-0.999524,0,120,120,255,1), -- Campfire
(@OGUID+2002,186284,530,1,6781.96,-7641.6,127.324,2.51327,0,0,0.951056,0.309017,120,120,255,1), -- Zul'Aman Corpseflies
(@OGUID+2003,186284,530,1,6747.19,-7637.35,126.625,-1.78023,0,0,-0.777145,0.629321,120,120,255,1), -- Zul'Aman Corpseflies
(@OGUID+2004,186284,530,1,6771.65,-7615.08,127.931,-2.54818,0,0,-0.956305,0.292372,120,120,255,1), -- Zul'Aman Corpseflies
(@OGUID+2005,186284,530,1,6771.76,-7553.98,126.278,-0.523598,0,0,-0.258819,0.965926,120,120,255,1), -- Zul'Aman Corpseflies
(@OGUID+2006,186284,530,1,6738.87,-7577.17,126.101,0.331611,0,0,0.165047,0.986286,120,120,255,1), -- Zul'Aman Corpseflies
(@OGUID+2007,186284,530,1,6730.02,-7547.91,129.268,1.98967,0,0,0.83867,0.54464,120,120,255,1), -- Zul'Aman Corpseflies
(@OGUID+2008,186285,530,1,6714.2,-7544.62,130.047,-3.10665,0,0,-0.999847,0.0174693,120,120,255,1), -- Zul'Aman Fire Med
(@OGUID+2009,186285,530,1,6728.64,-7530.09,158.158,-2.11185,0,0,-0.870356,0.492424,120,120,255,1), -- Zul'Aman Fire Med
(@OGUID+2010,186286,530,1,6725.8,-7530.72,129.99,2.68781,0,0,0.97437,0.224951,120,120,255,1), -- Zul'Aman Fire Large
(@OGUID+2011,186286,530,1,6743.65,-7520.94,130.603,2.32129,0,0,0.91706,0.39875,120,120,255,1), -- Zul'Aman Fire Large
(@OGUID+2012,186286,530,1,6723.6,-7542.17,139.718,1.88495,0,0,0.809016,0.587786,120,120,255,1), -- Zul'Aman Fire Large
(@OGUID+2013,186302,530,1,6737.07,-7555.36,126.601,1.8675,0,0,0.803857,0.594823,120,120,255,1), -- Case of Orcish Grog
(@OGUID+2014,186302,530,1,6773.51,-7584.16,128.391,-2.93214,0,0,-0.994521,0.104536,120,120,255,1), -- Case of Orcish Grog
(@OGUID+2015,186302,530,1,6786.58,-7541.63,126.109,0.628317,0,0,0.309016,0.951057,120,120,255,1), -- Case of Orcish Grog
(@OGUID+2016,186302,530,1,6779.59,-7581.29,127.815,0.95993,0,0,0.461748,0.887011,120,120,255,1), -- Case of Orcish Grog
(@OGUID+2017,186307,530,1,6785.49,-7539.38,126.901,0.418879,0,0,0.207911,0.978148,120,120,255,1), -- Zul'Aman Exterior Crate B
(@OGUID+2018,186307,530,1,6785.73,-7539.49,126.109,-1.5708,0,0,-0.707107,0.707107,120,120,255,1), -- Zul'Aman Exterior Crate B
(@OGUID+2019,186406,530,1,6738.53,-7607.16,126.121,2.86233,-0.036881,-0.0432434,0.98887,0.137501,120,120,255,1), -- Campfire
(@OGUID+2020,186407,530,1,6795.7,-7574.94,126.977,-2.95833,0,0,-0.995805,0.0915032,120,120,255,1), -- Campfire
(@OGUID+2021,184401,530,1,-1300.89,5750.15,189.334,-1.98127,0.00848055,0.00514793,-0.836334,0.54813,120,120,255,1), -- Fire Pit
(@OGUID+2022,181352,530,1,6785.6,-7192.49,25.7796,3.14159,0,0,-1,0,120,120,255,1), -- Campfire
(@OGUID+2023,182217,530,1,-1532.55,-11833.3,24.0928,2.47481,0,0,0.944939,0.327248,120,120,255,1), -- Bonfire
(@OGUID+2024,182218,530,1,-1502.28,-11932.9,19.0502,-2.86588,0,0,-0.990513,0.13742,120,120,255,1), -- Bonfire
(@OGUID+2025,182219,530,1,-1533.64,-12033.6,11.4075,2.2392,0,0,0.899925,0.436044,120,120,255,1), -- Bonfire
(@OGUID+2026,182220,530,1,-1632.4,-11898.5,10.0827,-0.666775,0,0,-0.327246,0.944939,120,120,255,1), -- Bonfire
(@OGUID+2027,182221,530,1,-1666.59,-11800.8,23.3407,0.554955,0,0,0.273931,0.961749,120,120,255,1), -- Bonfire
(@OGUID+2028,184229,530,1,8057.04,-7251.52,142.736,2.20384,0,0,0.892076,0.451886,120,120,255,1), -- Brazier
(@OGUID+2029,184231,530,1,8072.66,-7205.94,158.636,0.958569,0,0,0.461144,0.887325,120,120,255,1), -- Brazier
(@OGUID+2030,184232,530,1,8082.56,-7212.87,158.636,0.958569,0,0,0.461144,0.887325,120,120,255,1), -- Brazier
(@OGUID+2031,184233,530,1,8055.24,-7240.58,158.636,0.958569,0,0,0.461144,0.887325,120,120,255,1), -- Brazier
(@OGUID+2032,184234,530,1,8080.09,-7245.05,158.636,0.958569,0,0,0.461144,0.887325,120,120,255,1), -- Brazier
(@OGUID+2033,184235,530,1,8086.54,-7235.84,158.636,0.958569,0,0,0.461144,0.887325,120,120,255,1), -- Brazier
(@OGUID+2034,184238,530,1,8056.33,-7233.4,142.736,0.958569,0,0,0.461144,0.887325,120,120,255,1), -- Brazier
(@OGUID+2035,184239,530,1,8062.26,-7237.23,142.736,-0.610863,0,0,-0.300705,0.953717,120,120,255,1), -- Brazier
(@OGUID+2036,185038,530,1,-1565.64,-11223.9,68.0712,-0.281054,0,0,-0.140065,0.990142,120,120,255,1), -- Dark Brazier
(@OGUID+2037,185039,530,1,-1567.6,-11308.3,65.716,0.355989,0,0,0.177056,0.984201,120,120,255,1); -- Dark Brazier

-- missing new template gossips
DELETE FROM gossip_menu WHERE entry IN(9384,9385,9401,9403,9409,9408);
INSERT INTO gossip_menu(entry,text_id) VALUES
(9384,12377),
(9385,12377),
(9401,12377),
(9403,12377),
(9409,12377),
(9408,12377);

DELETE FROM gossip_menu WHERE entry IN(9379,9357,9369);
INSERT INTO gossip_menu(entry,text_id) VALUES
(9384,12374),
(9385,12374),
(9401,12374);

-- fix state and animprogress
UPDATE gameobject SET state=1,animprogress=255 WHERE Id IN(SELECT entry FROM gameobject_template WHERE name like 'Alliance Bonfire' OR name like 'Horde Bonfire');

UPDATE gameobject_template SET Faction=1735 WHERE name like 'Alliance Bonfire' AND type=2;
UPDATE gameobject_template SET Faction=1732 WHERE name like 'Horde Bonfire' AND type=2;

-- bunnies should not move
UPDATE creature_template SET MovementType=0 WHERE entry IN(16606,16592);

-- bonfire spellwork
DELETE FROM spell_script_target WHERE entry = 28806 AND targetEntry=181288;
DELETE FROM spell_script_target WHERE entry IN(29437,46904,46903,45437,29831);
INSERT INTO spell_script_target VALUES
(29831,1,26258,0),
(29831,1,26355,0);
-- intelligent queries for each expansion
INSERT INTO spell_script_target
SELECT 29437, 0, entry, 0 FROM gameobject_template WHERE name like 'Flame of %' AND entry >= 181332;
INSERT INTO spell_script_target
SELECT 46904, 0, entry, 0 FROM gameobject_template WHERE name like 'Flame of %' AND entry >= 181332;
INSERT INTO spell_script_target
SELECT 46903, 0, entry, 0 FROM gameobject_template WHERE name like 'Flame of %' AND entry >= 181332;
INSERT INTO spell_script_target
SELECT 45437, 0, entry, 0 FROM gameobject_template WHERE name like 'Flame of %' AND entry >= 181332;

INSERT INTO spell_script_target
SELECT 29437, 0, entry, 0 FROM gameobject_template WHERE name like 'Alliance Bonfire';
INSERT INTO spell_script_target
SELECT 46904, 0, entry, 0 FROM gameobject_template WHERE name like 'Alliance Bonfire';
INSERT INTO spell_script_target
SELECT 46903, 0, entry, 0 FROM gameobject_template WHERE name like 'Alliance Bonfire';
INSERT INTO spell_script_target
SELECT 45437, 0, entry, 0 FROM gameobject_template WHERE name like 'Alliance Bonfire';

INSERT INTO spell_script_target
SELECT 29437, 0, entry, 0 FROM gameobject_template WHERE name like 'Horde Bonfire';
INSERT INTO spell_script_target
SELECT 46904, 0, entry, 0 FROM gameobject_template WHERE name like 'Horde Bonfire';
INSERT INTO spell_script_target
SELECT 46903, 0, entry, 0 FROM gameobject_template WHERE name like 'Horde Bonfire';
INSERT INTO spell_script_target
SELECT 45437, 0, entry, 0 FROM gameobject_template WHERE name like 'Horde Bonfire';

-- bonfire questwork
REPLACE INTO gameobject_questrelation VALUES
(187559,11580), -- silverpine forest
(187564,11581), -- westfall
(187559,11732), -- arathi highlands - horde
(187916,11734), -- ashenvale - alliance
(187917,11735), -- azuremyst
(187919,11736), -- BEM - alliance
(187920,11737), -- blasted lands - alliance
(187921,11738), -- bloodmyst
(187922,11739), -- burning steppes - alliance
(187923,11740), -- darkshore
(187924,11741), -- desolace - alliance
(187925,11742), -- dun morogh
(187926,11743), -- duskwood
(187927,11744), -- dustwallow marsh - alliance
(187564,11745), -- elwynn forest
(187929,11746), -- feralas - alliance
(187930,11747), -- hellfire peninsula - alliance
(187931,11748), --  hillsbrad - alliance
(187564,11749), -- loch modan
(187933,11750), -- nagrand - alliance
(187934,11751), -- redridge - alliance
(187935,11752), -- shadowmoon - alliance
(187936,11753), -- teldrassil
(187937,11754), -- terokkar - alliance
(187559,11755), -- hinterlands - alliance
(187939,11756), -- WPL - chillwind camp
(187940,11757), -- wetlands
(187941,11758), -- zangarmarsh - alliance
(187942,11759), -- netherstorm - alliance
(187943,11760), -- silithus - alliance
(187944,11761), -- stranglethorn - alliance
(187945,11762), -- tanaris - alliance
(187946,11763), -- winterspring - alliance
(187947,11764), -- arathi - horde
(187948,11765), -- ashenvale - horde
(187559,11766), -- badlands - horde
(187955,11767), -- BEM - horde
(187956,11768), -- burning steppes - horde
(187957,11769), -- desolace - horde
(187958,11770), -- durotar
(187959,11771), -- dustwallow marsh - horde
(187960,11772), -- eversong woods
(187961,11773), -- feralas - horde
(187962,11774), -- ghostlands
(187963,11775), -- hellfire peninsula - horde
(187964,11776), -- hillsbrad - horde
(187965,11777), -- mulgore
(187966,11778), -- nagrand - horde
(187967,11779), -- shadowmoon - horde
(187968,11780), -- stonetalon - horde
(187969,11781), -- swamp of sorrows - horde
(187970,11782), -- terokkar - horde
(187971,11783), -- horde - barrens
(187972,11784), -- hinterlands - horde
(187973,11785), -- thousand needles - horde
(187559,11786), -- tirisfal glades
(187975,11787), -- zangarmarsh - horde
(187949,11799), -- netherstorm - horde
(187950,11800), -- silithus - horde
(187951,11801), -- stranglethorn - horde
(187952,11802), -- tanaris - horde
(187953,11803); -- winterspring - horde

REPLACE INTO gameobject_involvedrelation VALUES
(187559,11580), -- silverpine forest
(187564,11581), -- westfall
(187559,11732), -- arathi highlands - horde
(187916,11734), -- ashenvale - alliance
(187917,11735), -- azuremyst
(187919,11736), -- BEM - alliance
(187920,11737), -- blasted lands - alliance
(187921,11738), -- bloodmyst
(187922,11739), -- burning steppes - alliance
(187923,11740), -- darkshore
(187924,11741), -- desolace - alliance
(187925,11742), -- dun morogh
(187926,11743), -- duskwood
(187927,11744), -- dustwallow marsh - alliance
(187564,11745), -- elwynn forest
(187929,11746), -- feralas - alliance
(187930,11747), -- hellfire peninsula - alliance
(187931,11748), --  hillsbrad - alliance
(187564,11749), -- loch modan
(187933,11750), -- nagrand - alliance
(187934,11751), -- redridge - alliance
(187935,11752), -- shadowmoon - alliance
(187936,11753), -- teldrassil
(187937,11754), -- terokkar - alliance
(187559,11755), -- hinterlands - alliance
(187939,11756), -- WPL - chillwind camp
(187940,11757), -- wetlands
(187941,11758), -- zangarmarsh - alliance
(187942,11759), -- netherstorm - alliance
(187943,11760), -- silithus - alliance
(187944,11761), -- stranglethorn - alliance
(187945,11762), -- tanaris - alliance
(187946,11763), -- winterspring - alliance
(187947,11764), -- arathi - horde
(187948,11765), -- ashenvale - horde
(187559,11766), -- badlands - horde
(187955,11767), -- BEM - horde
(187956,11768), -- burning steppes - horde
(187957,11769), -- desolace - horde
(187958,11770), -- durotar
(187959,11771), -- dustwallow marsh - horde
(187960,11772), -- eversong woods
(187961,11773), -- feralas - horde
(187962,11774), -- ghostlands
(187963,11775), -- hellfire peninsula - horde
(187964,11776), -- hillsbrad - horde
(187965,11777), -- mulgore
(187966,11778), -- nagrand - horde
(187967,11779), -- shadowmoon - horde
(187968,11780), -- stonetalon - horde
(187969,11781), -- swamp of sorrows - horde
(187970,11782), -- terokkar - horde
(187971,11783), -- horde - barrens
(187972,11784), -- hinterlands - horde
(187973,11785), -- thousand needles - horde
(187559,11786), -- tirisfal glades
(187975,11787), -- zangarmarsh - horde
(187949,11799), -- netherstorm - horde
(187950,11800), -- silithus - horde
(187951,11801), -- stranglethorn - horde
(187952,11802), -- tanaris - horde
(187953,11803); -- winterspring - horde

REPLACE INTO creature_questrelation VALUES
(25910,11583), -- westfall
(25887,11804), -- arathi
(25883,11805), -- ashenvale - alliance
(25888,11806), -- azuremyst
(25889,11807), -- blades edge - alliance
(25890,11808), -- Blasted Lands - alliance
(25891,11809), -- bloodmyst isle
(25892,11810), -- burning steppes alliance
(25893,11811), -- darkshore
(25894,11812), -- desolace
(25895,11813), -- dun morogh
(25896,11814), -- duskwood
(25897,11815), -- dustwallow marsh - alliance
(25898,11816), -- elwynn forest
(25899,11817), -- feralas - alliance
(25900,11818), -- hellfire peninsula - alliance
(25901,11819), -- hillsbrad foothills - alliance
(25902,11820), -- loch modan
(25903,11821), -- nagrand - alliance
(25904,11822), -- redridge
(25905,11823), -- shadowmoon valley - alliance
(25906,11824), -- teldrassil
(25907,11825), -- terokkar - alliance
(25908,11826), -- hinterlands - alliance
(25909,11827), -- WPL - chillwind camp - alliance
(25911,11828), -- wetlands
(25912,11829), -- zangarmarsh - alliance
(25913,11830), -- netherstorm - alliance
(25914,11831), -- silithus - alliance
(25915,11832), -- stranglethorn - alliance
(25916,11833), -- tanaris - alliance
(25917,11834), -- winterspring - alliance
(25939,11584), -- silverpine forest
(25918,11835), -- netherstorm - horde
(25919,11836), -- silithus - horde
(25920,11837), -- stranglethorn - horde
(25921,11838), -- tanaris - horde
(25922,11839), -- winterspring - horde
(25923,11840), -- arathi - horde
(25884,11841), -- ashenvale - horde
(25925,11842), -- badlands
(25926,11843), -- BEM - horde
(25927,11844), -- burning steppes - horde
(25928,11845), -- desolace - horde
(25929,11846), -- durotar
(25930,11847), -- dustwallow marsh - horde
(25931,11848), -- eversong woods
(25932,11849), -- feralas - horde
(25933,11850), -- ghostlands
(25934,11851), -- hellfire peninsula - horde
(25936,11852), -- mulgore
(25935,11853), -- hillsbrad - horde
(25937,11854), -- nagrand - horde
(25938,11855), -- shadowmoon valley - horde
(25940,11856), -- stonetalon - horde
(25941,11857), -- swamp of sorrows - horde
(25942,11858), -- terokkar - horde
(25943,11859), -- barrens - horde
(25944,11860), -- hinterlands - horde
(25945,11861), -- thousand needles - horde
(25946,11862), -- tirisfal glades
(25947,11863); -- zangarmarsh - horde

REPLACE INTO creature_involvedrelation VALUES
(25910,11583), -- westfall
(25887,11804), -- arathi
(25883,11805), -- ashenvale - alliance
(25888,11806), -- azuremyst
(25889,11807), -- blades edge - alliance
(25890,11808), -- Blasted Lands - alliance
(25891,11809), -- bloodmyst isle
(25892,11810), -- burning steppes alliance
(25893,11811), -- darkshore
(25894,11812), -- desolace
(25895,11813), -- dun morogh
(25896,11814), -- duskwood
(25897,11815), -- dustwallow marsh - alliance
(25898,11816), -- elwynn forest
(25899,11817), -- feralas - alliance
(25900,11818), -- hellfire peninsula - alliance
(25901,11819), -- hillsbrad foothills - alliance
(25902,11820), -- loch modan
(25903,11821), -- nagrand - alliance
(25904,11822), -- redridge
(25905,11823), -- shadowmoon valley - alliance
(25906,11824), -- teldrassil
(25907,11825), -- terokkar - alliance
(25908,11826), -- hinterlands - alliance
(25909,11827), -- WPL - chillwind camp - alliance
(25911,11828), -- wetlands
(25912,11829), -- zangarmarsh - alliance
(25913,11830), -- netherstorm - alliance
(25914,11831), -- silithus - alliance
(25915,11832), -- stranglethorn - alliance
(25916,11833), -- tanaris - alliance
(25917,11834), -- winterspring - alliance
(25939,11584), -- silverpine forest
(25918,11835), -- netherstorm - horde
(25919,11836), -- silithus - horde
(25920,11837), -- stranglethorn - horde
(25921,11838), -- tanaris - horde
(25922,11839), -- winterspring - horde
(25923,11840), -- arathi - horde
(25884,11841), -- ashenvale - horde
(25925,11842), -- badlands
(25926,11843), -- BEM - horde
(25927,11844), -- burning steppes - horde
(25928,11845), -- desolace - horde
(25929,11846), -- durotar
(25930,11847), -- dustwallow marsh - horde
(25931,11848), -- eversong woods
(25932,11849), -- feralas - horde
(25933,11850), -- ghostlands
(25934,11851), -- hellfire peninsula - horde
(25936,11852), -- mulgore
(25935,11853), -- hillsbrad - horde
(25937,11854), -- nagrand - horde
(25938,11855), -- shadowmoon valley - horde
(25940,11856), -- stonetalon - horde
(25941,11857), -- swamp of sorrows - horde
(25942,11858), -- terokkar - horde
(25943,11859), -- barrens - horde
(25944,11860), -- hinterlands - horde
(25945,11861), -- thousand needles - horde
(25946,11862), -- tirisfal glades
(25947,11863); -- zangarmarsh - horde


UPDATE quest_template c SET RequiredRaces=690 WHERE Title like 'Desecrate this Fire%' AND EXISTS(select id from gameobject_questrelation a join gameobject_template b on a.id = b.entry WHERE Faction=1732 AND c.entry=a.quest);
UPDATE quest_template c SET RequiredRaces=1101 WHERE Title like 'Desecrate this Fire%' AND EXISTS(select id from gameobject_questrelation a join gameobject_template b on a.id = b.entry WHERE Faction=1735 AND c.entry=a.quest);

REPLACE INTO gameobject_template(entry, type, displayId, name, size, data2, data3) VALUES
('188153', '2', '7666', 'Ice Stone', '2', '3', '9275'),
('188154', '2', '7666', 'Ice Stone', '2', '3', '9276'),
('188134', '2', '7666', 'Ice Stone', '2', '3', '9254'),
('188143', '2', '7666', 'Ice Stone', '2', '3', '9264'),
('188145', '2', '7666', 'Ice Stone', '2', '3', '9266'),
('188146', '2', '7666', 'Ice Stone', '2', '3', '9267'),
('188147', '2', '7666', 'Ice Stone', '2', '3', '9268'),
('188139', '2', '7666', 'Ice Stone', '2', '3', '9258'),
('188135', '2', '7666', 'Ice Stone', '2', '3', '9255'),
('188144', '2', '7666', 'Ice Stone', '2', '3', '9265');

REPLACE INTO gossip_menu VALUES
('9254', '12524', '0', '0'),
('9275', '12524', '0', '0'),
('9276', '12524', '0', '0'),
('9264', '12524', '0', '0'),
('9266', '12524', '0', '0'),
('9267', '12524', '0', '0'),
('9268', '12524', '0', '0'),
('9255', '12524', '0', '0'),
('9258', '12524', '0', '0'),
('9265', '12524', '0', '0'),
('9273', '12524', '0', '0'),
('9274', '12524', '0', '0');

REPLACE INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
('9254', '0', '0', 'Lay your hand on the stone.', '0', '1', '1', '-1', '0', '9213', '0', '0', NULL, '0', '0'),
('9275', '0', '0', 'Lay your hand on the stone.', '0', '1', '1', '-1', '0', '9213', '0', '0', NULL, '0', '0'),
('9276', '0', '0', 'Lay your hand on the stone.', '0', '1', '1', '-1', '0', '9213', '0', '0', NULL, '0', '0'),
('9264', '0', '0', 'Lay your hand on the stone.', '0', '1', '1', '-1', '0', '9213', '0', '0', NULL, '0', '0'),
('9266', '0', '0', 'Lay your hand on the stone.', '0', '1', '1', '-1', '0', '9213', '0', '0', NULL, '0', '0'),
('9267', '0', '0', 'Lay your hand on the stone.', '0', '1', '1', '-1', '0', '9213', '0', '0', NULL, '0', '0'),
('9268', '0', '0', 'Lay your hand on the stone.', '0', '1', '1', '-1', '0', '9213', '0', '0', NULL, '0', '0'),
('9255', '0', '0', 'Lay your hand on the stone.', '0', '1', '1', '-1', '0', '9213', '0', '0', NULL, '0', '0'),
('9258', '0', '0', 'Lay your hand on the stone.', '0', '1', '1', '-1', '0', '9213', '0', '0', NULL, '0', '0'),
('9265', '0', '0', 'Lay your hand on the stone.', '0', '1', '1', '-1', '0', '9213', '0', '0', NULL, '0', '0'),
('9273', '0', '0', 'Lay your hand on the stone.', '0', '1', '1', '-1', '0', '9213', '0', '0', NULL, '0', '0'),
('9274', '0', '0', 'Lay your hand on the stone.', '0', '1', '1', '-1', '0', '9213', '0', '0', NULL, '0', '0');

REPLACE INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(25949,0,1,4196.1,1172.44,6.68073,120000,2594901,0.688985);

UPDATE creature_template SET MovementType=2 WHERE entry IN(25949);
UPDATE creature SET MovementType=2 WHERE id IN(25949);

INSERT INTO dbscript_string(entry, content_default, sound, type, language, emote, broadcast_text_id, comment) VALUES
(2000008031,'These stones should be the last of them. Our coordination with Neptulon\'s forces will be impeccable.',0,0,0,1,25123,''),
(2000008032,'Yess. The Tidehunter will be pleased at this development. The Firelord\'s hold will weaken.',0,0,0,1,25124,''),
(2000008033,'And your own preparations? Will the Frost Lord have a path to the portal?',0,0,0,1,25126,''),
(2000008034,'Skar\'this has informed us well. We have worked our way into the slave pens and await your cryomancerss.',0,0,0,1,25127,''),
(2000008035,'The ritual in Coilfang will bring Ahune through once he is fully prepared, and the resulting clash between Firelord and Frostlord will rend the foundations of this world. Our ultimate goals are in reach at last....',0,0,0,1,25128,'');

INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
('2594901', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2000008031', '0', '0', '0', '0', '0', '0', '0', '0', 'An Innocent Disguise SAY 1'),
('2594901', '6000', '0', '0', '0', '0', '0', '25951', '20', '0', '2000008032', '0', '0', '0', '0', '0', '0', '0', '0', 'An Innocent Disguise SAY 2'),
('2594901', '12000', '0', '0', '0', '0', '0', '0', '0', '0', '2000008033', '0', '0', '0', '0', '0', '0', '0', '0', 'An Innocent Disguise SAY 3'),
('2594901', '18000', '0', '0', '0', '0', '0', '25951', '20', '0', '2000008034', '0', '0', '0', '0', '0', '0', '0', '0', 'An Innocent Disguise SAY 4'),
('2594901', '25000', '0', '0', '0', '0', '0', '0', '0', '0', '2000008035', '0', '0', '0', '0', '0', '0', '0', '0', 'An Innocent Disguise SAY 5'),
('2594901', '25000', '0', '15', '46375', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'An Innocent Disguise - Cast Credit');

INSERT INTO dbscript_string(entry, content_default, sound, type, language, emote, broadcast_text_id, comment) VALUES
(2000008020,'Thank you again, $N, for this delectable incense.',0,0,0,0,25699,''),
(2000008021,'%s devours the incense.  It''s ravenous!',0,2,0,0,25717,''),
(2000008022,'So good!  So packed with energy!',0,0,0,0,25718,''),
(2000008023,'It has everything a growing scorchling needs!',0,0,0,0,25719,''),
(2000008024,'I can feel the power SURGING within me!',0,0,0,0,25730,''),
(2000008025,'%s bellows with laughter!',0,2,0,0,25720,''),
(2000008026,'Now!  Finally!  Our plans can take effect!',0,0,0,0,25721,''),
(2000008027,'KNEEL, LITTLE MORTAL!  KNEEL BEFORE THE MIGHT OF THE HERALD OF RAGNAROS!',0,1,0,0,25722,''),
(2000008028,'YOU WILL ALL PERISH IN FLAMES!',0,1,0,0,25723,''),
(2000008029,'%s blinks...',0,2,0,0,25724,''),
(2000008030,'Ah.  I was merely jesting...',0,0,0,0,25725,'');


INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
('11966', '0', '0', '15', '47107', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorchling CAST Give Summer Scorchling Incense'),
('11966', '500', '0', '0', '0', '0', '0', '0', '0', '0', '2000008020', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorchling SAY 1'),
('11966', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '2000008021', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorchling SAY 2'),
('11966', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '2000008022', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorchling SAY 3'),
('11966', '3100', '0', '15', '47114', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorchling CAST Scorchling Grow'),
('11966', '5400', '0', '15', '47114', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorchling CAST Scorchling Grow'),
('11966', '5500', '0', '0', '0', '0', '0', '0', '0', '0', '2000008023', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorchling SAY 4'),
('11966', '7800', '0', '15', '47114', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorchling CAST Scorchling Grow'),
('11966', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '2000008024', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorchling SAY 5'),
('11966', '9200', '0', '0', '0', '0', '0', '0', '0', '0', '2000008025', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorchling SAY 6'),
('11966', '10300', '0', '15', '47114', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorchling CAST Scorchling Grow'),
('11966', '10300', '0', '15', '47114', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorchling CAST Scorchling Grow'),
('11966', '10400', '0', '0', '0', '0', '0', '0', '0', '0', '2000008026', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorchling SAY 7'),
('11966', '12700', '0', '15', '47114', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorchling CAST Scorchling Grow'),
('11966', '12700', '0', '15', '47114', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorchling CAST Scorchling Grow'),
('11966', '12700', '0', '15', '47120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorchling CAST Summon Wisp of Ragnaros'),
('11966', '12800', '0', '0', '0', '0', '0', '0', '0', '0', '2000008027', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorchling SAY 8'),

('11966', '13900', '0', '1', '15', '0', '0', '26502', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wisp of Ragnaros EMOTE Roar'),
('11966', '15100', '0', '18', '0', '0', '0', '26502', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wisp of Ragnaros DESPAWN SELF'),

('11966', '16200', '0', '14', '47114', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorchling REMOVE AURA Scorchling Grow'),
('11966', '16300', '0', '0', '0', '0', '0', '0', '0', '0', '2000008028', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorchling SAY 9'),
('11966', '19800', '0', '0', '0', '0', '0', '0', '0', '0', '2000008029', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorchling SAY 10'),
('11966', '21000', '0', '0', '0', '0', '0', '0', '0', '0', '2000008030', '0', '0', '0', '0', '0', '0', '0', '0', 'Scorchling SAY 11');

REPLACE INTO spell_script_target VALUES
('29705', '1', '17066', '0'),
('29726', '1', '17066', '0'),
('29727', '1', '17066', '0');

UPDATE quest_template SET CompleteScript=11966,RewSpellCast=0 WHERE entry IN(11966,11964);

INSERT INTO spell_script_target VALUES
('45407', '1', '16781', '0');

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 17066);
DELETE FROM creature WHERE Id IN(17066);
UPDATE creature_template_addon SET Auras='45390' WHERE entry IN(17066);
UPDATE creature_template SET MovementType=0 WHERE entry IN(17066);

UPDATE quest_template SET OfferRewardText='Wow, you did it!  You are great!  Maybe next year you can apply for a job at the festival!' WHERE entry IN(11926,11921);
UPDATE quest_template SET OfferRewardText='Well done!  You''ll be a fire juggler faster than the fuse on a ground flower!  Now gird yourself!  The next test is when things really heat up...' WHERE entry IN(11922,11731);
UPDATE quest_template SET PrevQuestId=11657 WHERE entry IN(11921);
UPDATE quest_template SET PrevQuestId=11923 WHERE entry IN(11926);
REPLACE INTO creature_questrelation VALUES
('25975', '11731'),
('26113', '11922'),
('25975', '11921'),
('26113', '11926');
REPLACE INTO creature_involvedrelation VALUES
('25975', '11731'),
('26113', '11922'),
('25975', '11921'),
('26113', '11926');
UPDATE quest_template SET SrcSpell=45716,LimitTime=40 WHERE entry IN(11922,11731);
UPDATE quest_template SET SrcSpell=46630,LimitTime=90 WHERE entry IN(11926,11921);
INSERT INTO spell_script_target VALUES
('45732', '1', '25535', '0'),
('46054', '1', '25535', '0'),
('45907', '1', '25535', '0');

UPDATE quest_template SET OfferRewardText='Did you get burned?  If you did, then maybe you''ll think twice before playing with fire...$B$BJust kidding!  Well done!  It''s official.  You''re a bona fide fire juggler.  Now get out there and have some fun!' WHERE entry IN(11923,11657);
UPDATE quest_template SET OfferRewardText='How''s that arm doing, $N?  You looked great out there.  A real juggling master!' WHERE entry IN(11925,11924);
UPDATE quest_template SET PrevQuestId=11657 WHERE entry IN(11924);
UPDATE quest_template SET PrevQuestId=11923 WHERE entry IN(11925);
UPDATE quest_template SET SrcItemId=34833, SrcItemCount=1 WHERE entry IN(11923,11657,11925,11924);
REPLACE INTO creature_questrelation VALUES
('25975', '11657'),
('26113', '11923'),
('25975', '11924'),
('26113', '11925');
REPLACE INTO creature_involvedrelation VALUES
('25975', '11657'),
('26113', '11923'),
('25975', '11924'),
('26113', '11925');

UPDATE gameobject_template SET data1=30 WHERE entry IN(181371);

INSERT INTO spell_script_target VALUES
('46747', '1', '26188', '0');

-- correct unitflags and npc flags
UPDATE creature_template SET NpcFlags=3,UnitFlags=37632 WHERE name like '%Flame Keeper' AND entry>=25884;
UPDATE creature_template SET NpcFlags=3,UnitFlags=37632 WHERE name like '%Flame Warden' AND entry>=25883;


UPDATE creature_template SET LootId=entry WHERE entry IN(25866,25863,25924);
INSERT INTO creature_loot_template VALUES
(25866,35277,-100,0,1,1,0,'Twilight Correspondence'),
(25863,35277,-100,0,1,1,0,'Twilight Correspondence'),
(25924,35277,-100,0,1,1,0,'Twilight Correspondence');

-- vanilla quests that do not occur in 2.4.3 midsummer
DELETE FROM creature_involvedrelation WHERE quest IN(9388,9389,9367,9368);
DELETE FROM creature_questrelation WHERE quest IN(9388,9389,9367,9368);

-- ahune quest should give totem
UPDATE quest_template SET SrcItemId=34953,SrcItemCount=1 WHERE entry IN(11691);

-- turning in of quest at ice stone
INSERT INTO gameobject_involvedrelation VALUES
('187882', '11691');

-- different questgiver in tbc
DELETE FROM creature_involvedrelation WHERE Quest IN(9365,9339);
INSERT INTO creature_involvedrelation VALUES
('16817', '9365'),
('16818', '9339');
DELETE FROM creature_questrelation WHERE Quest IN(9365,9339);
INSERT INTO creature_questrelation VALUES
('16817', '9365'),
('16818', '9339');

-- swap next quest id
UPDATE quest_template SET NextQuestId=9339 WHERE entry IN(9331,9330,9332,11933);
UPDATE quest_template SET NextQuestId=9365 WHERE entry IN(9324,9326,9325,11935);

UPDATE quest_template SET ReqItemId1=35723,ReqItemCount1=1,QuestFlags=0,SpecialFlags=0,SrcItemId=35723,SrcItemCount=1 WHERE entry IN(11972);

-- TBC only loot
DELETE FROM gameobject_loot_template WHERE entry IN(188124,187892);
INSERT INTO gameobject_loot_template VALUES
(188124,40402,100,1,-40402,1,0,'Ice Chest - Amulet'),
(188124,40403,100,2,-40403,1,0,'Ice Chest - Cloak'),
(188124,40404,10,3,-40404,1,0,'Ice Chest - Scythe'),
(188124,40405,10,4,-40405,1,0,'Ice Chest - Pet'),
('188124', '35498', '20', '0', '1', '1', '0', 'Formula: Enchant Weapon - Deathfrost'),
('188124', '35723', '100', '0', '1', '1', '0', 'Shards of Ahune');

INSERT INTO gameobject_loot_template VALUES
(187892,40402,50,1,-40402,1,0,'Ice Chest - Amulet'),
(187892,40403,50,2,-40403,1,0,'Ice Chest - Cloak'),
(187892,40404,5,3,-40404,1,0,'Ice Chest - Scythe'),
(187892,40405,5,4,-40405,1,0,'Ice Chest - Pet'),
('187892', '35498', '20', '0', '1', '1', '0', 'Formula: Enchant Weapon - Deathfrost'),
('187892', '35723', '100', '0', '1', '1', '0', 'Shards of Ahune');

DELETE FROM reference_loot_template WHERE entry IN(40402,40403,40404,40405);
INSERT INTO reference_loot_template VALUES
(40402,35507,0,1,1,1,0,'Ice Chest - Amulet'),
(40402,35509,0,1,1,1,0,'Ice Chest - Amulet'),
(40402,35508,0,1,1,1,0,'Ice Chest - Amulet'),
(40402,35511,0,1,1,1,0,'Ice Chest - Amulet'),

(40403,35497,0,1,1,1,0,'Ice Chest - Cloak'),
(40403,35496,0,1,1,1,0,'Ice Chest - Cloak'),
(40403,35494,0,1,1,1,0,'Ice Chest - Cloak'),
(40403,35495,0,1,1,1,0,'Ice Chest - Cloak'),

(40404,35514,0,1,1,1,0,'Ice Chest - Scythe'),

(40405,34955,0,1,1,1,0,'Ice Chest - Pet');

UPDATE creature_template SET UnitFlags=0x02000000 WHERE entry IN(26391);

UPDATE gameobject_template SET data1=188124 WHERE entry IN(188124);

-- wotlk-db
DELETE FROM `gameobject_template` WHERE `entry` IN (188128,188129);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `faction`, `flags`, `ExtraFlags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `CustomData1`, `mingold`, `maxgold`, `ScriptName`) VALUES
(188128, 10, 6756, 'Flame of the Exodar', '', '', 0, 0, 0, 1, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46671, 0, 181290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(188129, 10, 6756, 'Flame of Silvermoon', '', '', 0, 0, 0, 1, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46672, 0, 181290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- HG
DELETE FROM `gameobject` WHERE `id` IN (188128,188129);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5300292, 188129, 530, 1, 9802.68, -7253.88, 26.2013, 6.2397, 0, 0, 0.0217389, -0.999764, 25, 25, 100, 1),
(5300293, 188128, 530, 1, -3793.16, -11506.3, -134.746, 6.27191, 0, 0, 0.00563705, -0.999984, 25, 25, 100, 1);
DELETE FROM `game_event_gameobject` WHERE `guid` IN (5300292,5300293);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (5300292, 1),(5300293, 1);

UPDATE `creature_template` SET `UnitFlags` = 33554432 WHERE `entry` = 16606; -- Midsummer Bonfire Despawner

UPDATE quest_template SET SrcItemId=35725,SrcItemCount=1 WHERE entry IN(11964,11966);
UPDATE quest_template SET RewChoiceItemId1=35279,RewChoiceItemCount1=1,RewChoiceItemId2=35280,RewChoiceItemCount2=1 WHERE entry IN(11972);

UPDATE quest_template SET SrcItemId=35725,SrcItemCount=1,ReqItemId1=35725,ReqItemCount1=1,SpecialFlags=0 WHERE entry IN(11964,11966);

INSERT INTO creature_involvedrelation VALUES
('25697', '11972');

UPDATE creature_template SET Faction=1998 WHERE entry IN(26341);

