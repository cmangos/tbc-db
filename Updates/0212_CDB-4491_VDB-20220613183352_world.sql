-- Add your query below.
-- https://github.com/vmangos/core/commit/9021c5184fc42d35fe44e31d949a8eaec3fe1f62
-- WOTLKMANGOS has to process this very carfully as they do not use creature_template.entry = creature_equip_template.entry!

-- Add equipment for missing creatures.
UPDATE `creature_template` SET `EquipmentTemplateId` = `entry` WHERE `entry` IN (
62,75,81,150,192,200,204,209,211,224,260,286,301,354,373,496,497,498,516,535,536,538,564,566,567,586,592,601,
605,606,607,609,638,648,649,650,651,652,725,882,897,904,919,929,994,1058,1067,1171,1230,1235,1306,1361,1384,
1403,1406,1408,1409,1467,1468,1485,1567,1574,1575,1576,1577,1578,1579,1580,1595,1596,1597,1598,1599,1600,1601,
1602,1603,1604,1605,1606,1607,1608,1609,1613,1614,1615,1616,1617,1618,1619,1620,1621,1622,1623,1624,1625,1626,
1627,1628,1629,1631,1633,1634,1635,1636,1637,1638,1639,1640,1641,1643,1644,1677,1714,1758,1759,1760,1761,1762,
1859,2095,2138,2154,2279,2280,2281,2282,2288,2290,2291,2292,2294,2300,2313,2689,2690,2741,2807,2813,2815,2862,
2863,2864,2865,2866,2867,2868,2869,2889,2890,2938,2942,3146,3148,3151,3152,3202,3259,3262,3307,3575,3794,3878,
3895,3896,3938,3990,4039,4071,4098,4149,4153,4179,4206,4207,4318,4322,4333,4340,4445,4446,4449,4450,4497,4626,
4683,4704,4717,4942,4970,5084,5098,5104,5131,5231,5507,5524,5544,5551,5553,5562,5563,5604,5626,5627,5628,5629,
5630,5631,5633,5671,5745,5746,5788,5789,5790,5793,5794,5795,5818,5904,5956,5980,5995,6022,6023,6032,6183,6197,
6214,6326,6327,6526,6687,6688,6767,7006,7008,7013,7116,7117,7119,7121,7122,7123,7124,7229,7488,7624,7663,7896,
7906,7919,8148,8316,8321,8322,8323,8407,8502,8552,8663,8777,8935,9576,9578,9579,9580,9581,9582,9617,9659,10256,
10291,10292,10294,10295,10297,10298,10362,10368,10443,10444,10446,10448,10449,10450,10451,10452,10453,10454,10466,10473,
10493,10736,10818,10898,11045,11337,11342,11343,11344,11345,11349,11354,11381,11384,11537,11538,11539,11540,11541,11542,
11543,11544,11545,11581,11599,11601,11606,11617,11618,11619,11676,11719,11958,11980,12020,12035,12038,12039,12044,12177,
12317,12421,12462,12470,12516,12517,12741,12916,12917,13339,14016,14018,14141,14142,14162,14341,14643,14644,14683,14710,
14719,14746,14830,14831,14885,14906,14913,15081,15121,15133,15134,15142,15143,15144,15145,15151,15152,15153,15154,15155,
15156,15157,15158,15159,15160,15161,15173,15530,15536,15618,15619,15982,15983,15985,16078,17032,17313,17415,17466,17685);

DELETE FROM `creature_equip_template` WHERE `entry` IN (
62,75,81,150,192,200,204,209,211,224,260,286,301,354,373,496,497,498,516,535,536,538,564,566,567,586,592,601,
605,606,607,609,638,648,649,650,651,652,725,882,897,904,919,929,994,1058,1067,1171,1230,1235,1306,1361,1384,
1403,1406,1408,1409,1467,1468,1485,1567,1574,1575,1576,1577,1578,1579,1580,1595,1596,1597,1598,1599,1600,1601,
1602,1603,1604,1605,1606,1607,1608,1609,1613,1614,1615,1616,1617,1618,1619,1620,1621,1622,1623,1624,1625,1626,
1627,1628,1629,1631,1633,1634,1635,1636,1637,1638,1639,1640,1641,1643,1644,1677,1714,1758,1759,1760,1761,1762,
1859,2095,2138,2154,2279,2280,2281,2282,2288,2290,2291,2292,2294,2300,2313,2689,2690,2741,2807,2813,2815,2862,
2863,2864,2865,2866,2867,2868,2869,2889,2890,2938,2942,3146,3148,3151,3152,3202,3259,3262,3307,3575,3794,3878,
3895,3896,3938,3990,4039,4071,4098,4149,4153,4179,4206,4207,4318,4322,4333,4340,4445,4446,4449,4450,4497,4626,
4683,4704,4717,4942,4970,5084,5098,5104,5131,5231,5507,5524,5544,5551,5553,5562,5563,5604,5626,5627,5628,5629,
5630,5631,5633,5671,5745,5746,5788,5789,5790,5793,5794,5795,5818,5904,5956,5980,5995,6022,6023,6032,6183,6197,
6214,6326,6327,6526,6687,6688,6767,7006,7008,7013,7116,7117,7119,7121,7122,7123,7124,7229,7488,7624,7663,7896,
7906,7919,8148,8316,8321,8322,8323,8407,8502,8552,8663,8777,8935,9576,9578,9579,9580,9581,9582,9617,9659,10256,
10291,10292,10294,10295,10297,10298,10362,10368,10443,10444,10446,10448,10449,10450,10451,10452,10453,10454,10466,10473,
10493,10736,10818,10898,11045,11337,11342,11343,11344,11345,11349,11354,11381,11384,11537,11538,11539,11540,11541,11542,
11543,11544,11545,11581,11599,11601,11606,11617,11618,11619,11676,11719,11958,11980,12020,12035,12038,12039,12044,12177,
12317,12421,12462,12470,12516,12517,12741,12916,12917,13339,14016,14018,14141,14142,14162,14341,14643,14644,14683,14710,
14719,14746,14830,14831,14885,14906,14913,15081,15121,15133,15134,15142,15143,15144,15145,15151,15152,15153,15154,15155,
15156,15157,15158,15159,15160,15161,15173,15530,15536,15618,15619,15982,15983,15985,16078,17032,17313,17415,17466,17685);
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES -- tbc seems to already have this data.
(62, 1904, 0, 0),
(75, 1897, 2053, 0),
(81, 1902, 0, 0),
(150, 2550, 0, 0),
(192, 1904, 0, 0),
(200, 1905, 2051, 0),
(204, 1895, 1895, 0),
(209, 1908, 0, 0),
(211, 2695, 0, 0),
(224, 1903, 0, 0),
(260, 1899, 143, 0),
(286, 1900, 2053, 0),
(301, 1902, 0, 0),
(354, 1901, 0, 0),
(373, 2558, 2202, 0),
(496, 2180, 2081, 0),
(497, 2180, 2081, 0),
(498, 2180, 2081, 0),
(516, 1896, 0, 0),
(535, 1897, 0, 0),
(536, 2182, 0, 0),
(538, 1904, 0, 0),
(564, 1910, 0, 0),
(566, 1904, 0, 0),
(567, 1983, 0, 0),
(586, 2180, 2081, 0),
(592, 1906, 0, 0),
(601, 4991, 0, 0),
(605, 2178, 0, 0),
(606, 1908, 0, 0),
(607, 1983, 0, 0),
(609, 3364, 2081, 0),
(638, 1900, 0, 0),
(648, 2558, 0, 0),
(649, 2558, 0, 0),
(650, 2558, 0, 0),
(651, 2558, 0, 0),
(652, 1905, 0, 0),
(725, 5288, 0, 0),
(882, 14837, 0, 0),
(897, 2550, 0, 0),
(904, 0, 2552, 0),
(919, 1901, 0, 0),
(929, 1909, 0, 0),
(994, 2202, 0, 0),
(1058, 1905, 2051, 0),
(1067, 1905, 0, 0),
(1171, 2884, 0, 0),
(1230, 1907, 0, 0),
(1235, 2196, 0, 0),
(1306, 1908, 0, 0),
(1361, 2178, 2053, 0),
(1384, 1910, 0, 0),
(1403, 2178, 2183, 0),
(1406, 1908, 0, 0),
(1408, 2559, 0, 0),
(1409, 1908, 0, 0),
(1467, 1903, 0, 0),
(1468, 1903, 0, 0),
(1485, 2710, 0, 0),
(1567, 1910, 1903, 0),
(1574, 2177, 0, 0),
(1575, 2177, 0, 0),
(1576, 2177, 0, 0),
(1577, 2177, 0, 0),
(1578, 2177, 0, 0),
(1579, 2177, 0, 0),
(1580, 2177, 0, 0),
(1595, 0, 2711, 0),
(1596, 2711, 0, 0),
(1597, 2182, 0, 0),
(1598, 2711, 0, 0),
(1599, 2711, 0, 0),
(1600, 2711, 0, 0),
(1601, 2711, 0, 0),
(1602, 2557, 0, 0),
(1603, 2557, 0, 0),
(1604, 1905, 1957, 0),
(1605, 2557, 0, 0),
(1606, 2557, 0, 0),
(1607, 1905, 1957, 0),
(1608, 1905, 1957, 0),
(1609, 1905, 1957, 0),
(1613, 2557, 0, 0),
(1614, 2557, 0, 0),
(1615, 2557, 0, 0),
(1616, 1905, 1957, 0),
(1617, 1905, 1957, 0),
(1618, 1899, 2552, 0),
(1619, 1905, 1957, 0),
(1620, 1899, 2552, 0),
(1621, 1899, 0, 2552),
(1622, 2176, 0, 0),
(1623, 1899, 0, 2552),
(1624, 2176, 0, 0),
(1625, 1899, 0, 2552),
(1626, 2176, 0, 0),
(1627, 2176, 0, 0),
(1628, 1899, 0, 2552),
(1629, 2176, 0, 0),
(1631, 1899, 2552, 0),
(1633, 2176, 0, 0),
(1634, 2176, 0, 0),
(1635, 2178, 2052, 0),
(1636, 2178, 2052, 0),
(1637, 2178, 2052, 0),
(1638, 2178, 2052, 0),
(1639, 2178, 2052, 0),
(1640, 5746, 0, 0),
(1641, 2178, 2052, 0),
(1643, 1899, 143, 0),
(1644, 1899, 143, 0),
(1677, 2197, 0, 0),
(1714, 1896, 2184, 0),
(1758, 2559, 0, 0),
(1759, 2177, 0, 0),
(1760, 2179, 143, 0),
(1761, 2176, 0, 0),
(1762, 1900, 0, 0),
(1859, 0, 2550, 0),
(2095, 1117, 0, 0),
(2138, 2178, 2052, 0),
(2154, 1909, 0, 0),
(2279, 1899, 143, 0),
(2280, 2183, 2051, 0),
(2281, 2557, 0, 0),
(2282, 11087, 0, 0),
(2288, 5286, 0, 0),
(2290, 1907, 0, 0),
(2291, 0, 2715, 0),
(2292, 5277, 0, 0),
(2294, 1908, 0, 0),
(2300, 5277, 0, 0),
(2313, 0, 2052, 0),
(2689, 2695, 0, 0),
(2690, 5292, 0, 0),
(2741, 3346, 0, 0),
(2807, 6230, 0, 0),
(2813, 5277, 0, 0),
(2815, 2177, 0, 0),
(2862, 2178, 2052, 0),
(2863, 2178, 2052, 0),
(2864, 2178, 2052, 0),
(2865, 2178, 2052, 0),
(2866, 2178, 2052, 0),
(2867, 2178, 2052, 0),
(2868, 2178, 2052, 0),
(2869, 2178, 2052, 0),
(2889, 1904, 0, 0),
(2890, 1909, 0, 5856),
(2938, 5286, 0, 0),
(2942, 5262, 0, 0),
(3146, 5277, 0, 0),
(3148, 2707, 0, 0),
(3151, 2715, 0, 0),
(3152, 2715, 0, 0),
(3202, 2179, 1896, 0),
(3259, 5301, 0, 0),
(3262, 1901, 0, 0),
(3307, 5277, 0, 0),
(3575, 5303, 0, 0),
(3794, 19214, 0, 0),
(3878, 13504, 0, 0),
(3895, 2715, 0, 0),
(3896, 2715, 0, 0),
(3938, 4991, 0, 0),
(3990, 5287, 0, 0),
(4039, 5303, 0, 0),
(4071, 3326, 0, 0),
(4098, 3433, 0, 0),
(4149, 5258, 0, 0),
(4153, 5259, 0, 0),
(4179, 0, 1984, 0),
(4206, 5262, 0, 0),
(4207, 5261, 0, 0),
(4318, 5277, 0, 0),
(4322, 5277, 0, 0),
(4333, 4991, 0, 0),
(4340, 5277, 0, 0),
(4445, 12751, 0, 0),
(4446, 12742, 0, 0),
(4449, 12856, 0, 0),
(4450, 12850, 0, 0),
(4497, 2715, 0, 0),
(4626, 1899, 143, 0),
(4683, 3361, 0, 0),
(4704, 3432, 0, 0),
(4717, 1908, 0, 0),
(4942, 1907, 0, 0),
(4970, 5281, 0, 0),
(5084, 2714, 0, 0),
(5098, 5303, 0, 0),
(5104, 11021, 0, 0),
(5131, 2197, 0, 0),
(5231, 3326, 0, 0),
(5507, 1909, 0, 0),
(5524, 1899, 1984, 0),
(5544, 2557, 0, 0),
(5551, 3433, 0, 0),
(5553, 2178, 5285, 0),
(5562, 0, 0, 5260),
(5563, 0, 0, 5259),
(5604, 2703, 0, 0),
(5626, 1117, 0, 0),
(5627, 1117, 0, 0),
(5628, 2178, 0, 0),
(5629, 5278, 0, 0),
(5630, 0, 0, 6230),
(5631, 5291, 0, 0),
(5633, 2177, 0, 0),
(5671, 0, 0, 5259),
(5745, 5281, 0, 0),
(5746, 3364, 2184, 0),
(5788, 1899, 2081, 0),
(5789, 1901, 2714, 0),
(5790, 1907, 0, 0),
(5793, 5305, 1984, 0),
(5794, 5491, 0, 0),
(5795, 1909, 1957, 0),
(5818, 5277, 0, 0),
(5904, 3361, 0, 0),
(5956, 1911, 0, 0),
(5980, 1896, 0, 0),
(5995, 3346, 0, 0),
(6022, 4991, 0, 0),
(6023, 2559, 0, 0),
(6032, 5277, 0, 0),
(6183, 5491, 0, 0),
(6197, 5304, 0, 0),
(6214, 1902, 0, 0),
(6326, 11087, 0, 0),
(6327, 13150, 0, 0),
(6526, 1907, 0, 0),
(6687, 1905, 1957, 0),
(6688, 1905, 1957, 0),
(6767, 10616, 10616, 0),
(7006, 2184, 0, 0),
(7008, 5287, 0, 0),
(7013, 24418, 24418, 0),
(7116, 5281, 0, 0),
(7117, 2147, 0, 0),
(7119, 5285, 0, 0),
(7121, 0, 0, 13292),
(7122, 5300, 0, 0),
(7123, 5277, 0, 0),
(7124, 5289, 0, 0),
(7229, 2711, 2147, 0),
(7488, 6231, 0, 0),
(7624, 3433, 0, 0),
(7663, 5598, 0, 2550),
(7896, 3364, 0, 0),
(7906, 1899, 143, 2551),
(7919, 1903, 0, 0),
(8148, 2202, 0, 0),
(8316, 2557, 0, 0),
(8321, 2557, 0, 5856),
(8322, 2557, 0, 0),
(8323, 2557, 0, 0),
(8407, 3364, 5284, 0),
(8502, 7612, 0, 0),
(8552, 12298, 4993, 0),
(8663, 4991, 0, 0),
(8777, 5278, 0, 0),
(8935, 2557, 0, 5856),
(9576, 2177, 0, 0),
(9578, 2177, 0, 0),
(9579, 2177, 0, 0),
(9580, 2177, 0, 0),
(9581, 2177, 0, 0),
(9582, 2177, 0, 0),
(9617, 3433, 0, 0),
(9659, 7826, 0, 0),
(10256, 10616, 10616, 0),
(10291, 5599, 2053, 0),
(10292, 5278, 5278, 0),
(10294, 3494, 11506, 0),
(10295, 12421, 0, 0),
(10297, 5262, 0, 0),
(10298, 6886, 6886, 0),
(10362, 6886, 5856, 0),
(10368, 12322, 0, 0),
(10443, 11019, 1897, 0),
(10444, 12403, 0, 0),
(10446, 0, 0, 2551),
(10448, 10613, 10613, 0),
(10449, 12403, 0, 0),
(10450, 0, 0, 2551),
(10451, 5304, 0, 0),
(10452, 2557, 0, 0),
(10453, 5286, 2183, 0),
(10454, 2551, 0, 0),
(10466, 6225, 0, 0),
(10473, 13290, 0, 0),
(10493, 12421, 0, 0),
(10736, 7826, 0, 0),
(10818, 12304, 0, 0),
(10898, 5300, 0, 0),
(11045, 3433, 0, 0),
(11337, 12290, 12453, 5856),
(11342, 13707, 12456, 0),
(11343, 13706, 0, 0),
(11344, 11322, 0, 0),
(11345, 12403, 0, 5870),
(11349, 12991, 12991, 0),
(11354, 13708, 0, 0),
(11381, 13723, 0, 0),
(11384, 13339, 0, 0),
(11537, 5491, 0, 0),
(11538, 11591, 0, 0),
(11539, 3433, 0, 0),
(11540, 12182, 0, 0),
(11541, 12959, 0, 0),
(11542, 12328, 0, 0),
(11543, 5600, 0, 0),
(11544, 12591, 0, 0),
(11545, 12298, 0, 0),
(11581, 3366, 0, 0),
(11599, 1907, 0, 0),
(11601, 5285, 10616, 0),
(11606, 10616, 0, 0),
(11617, 1911, 0, 0),
(11618, 13050, 0, 0),
(11619, 12850, 0, 0),
(11676, 12901, 0, 0),
(11719, 0, 0, 2552),
(11958, 12901, 0, 0),
(11980, 13722, 0, 0),
(12020, 2198, 0, 0),
(12035, 1910, 0, 0),
(12038, 17041, 0, 0),
(12039, 2196, 0, 0),
(12044, 1903, 12745, 0),
(12177, 0, 0, 15460),
(12317, 7826, 0, 0),
(12421, 10617, 0, 5259),
(12462, 14870, 0, 0),
(12470, 10617, 0, 5259),
(12516, 12328, 0, 0),
(12517, 12328, 0, 0),
(12741, 2178, 2052, 0),
(12916, 7826, 0, 0),
(12917, 7826, 0, 0),
(13339, 2178, 2052, 0),
(14016, 13720, 0, 0),
(14018, 18002, 0, 0),
(14141, 12890, 12995, 2550),
(14142, 13718, 13629, 5261),
(14162, 2177, 0, 0),
(14341, 5277, 0, 0),
(14643, 2714, 0, 5258),
(14644, 1906, 0, 14118),
(14683, 2181, 0, 0),
(14710, 18122, 0, 0),
(14719, 4991, 0, 0),
(14746, 12294, 0, 5258),
(14830, 7826, 0, 0),
(14831, 7826, 0, 0),
(14885, 12182, 0, 0),
(14906, 1900, 0, 0),
(14913, 1907, 0, 0),
(15081, 5300, 0, 0),
(15121, 12959, 0, 0),
(15133, 7826, 0, 0),
(15134, 7826, 0, 0),
(15142, 7826, 0, 0),
(15143, 7826, 0, 0),
(15144, 7826, 0, 0),
(15145, 7826, 0, 0),
(15151, 7826, 0, 0),
(15152, 7826, 0, 0),
(15153, 7826, 0, 0),
(15154, 7826, 0, 0),
(15155, 7826, 0, 0),
(15156, 7826, 0, 0),
(15157, 7826, 0, 0),
(15158, 7826, 0, 0),
(15159, 7826, 0, 0),
(15160, 7826, 0, 0),
(15161, 7826, 0, 0),
(15173, 7826, 0, 0),
(15530, 14870, 0, 0),
(15536, 3699, 0, 0),
(15618, 2183, 10612, 0),
(15619, 2183, 10612, 0),
(15982, 2703, 0, 0),
(15983, 2703, 0, 0),
(15985, 11343, 0, 0),
(16078, 7826, 0, 0),
(17032, 20468, 0, 0),
(17313, 7826, 0, 0),
(17415, 14873, 0, 0),
(17466, 14873, 0, 0),
(17685, 7826, 0, 0);

-- Fix some existing equipment
-- equipentry1
UPDATE `creature_equip_template` SET `equipentry1` = 0 WHERE `entry` IN (1071,2968,3352,3519,4603,5669,6237,14183,14301);
REPLACE INTO `creature_template_addon` (`entry`, `sheath_state`) VALUES (6237, 1);
UPDATE `creature_equip_template` SET `equipentry1` = 1896 WHERE `entry` IN (3114,4713);
UPDATE `creature_equip_template` SET `equipentry1` = 1897 WHERE `entry` IN (4674,7855);
UPDATE `creature_equip_template` SET `equipentry1` = 1899 WHERE `entry` IN (3712,3921,12739);
UPDATE `creature_equip_template` SET `equipentry1` = 1900 WHERE `entry` IN (2950);
UPDATE `creature_equip_template` SET `equipentry1` = 1901 WHERE `entry` IN (1115,1164);
UPDATE `creature_equip_template` SET `equipentry1` = 1903 WHERE `entry` IN (5234);
UPDATE `creature_equip_template` SET `equipentry1` = 1905 WHERE `entry` IN (1162);
UPDATE `creature_equip_template` SET `equipentry1` = 1906 WHERE `entry` IN (3313);
UPDATE `creature_equip_template` SET `equipentry1` = 1907 WHERE `entry` IN (3203,5236);
UPDATE `creature_equip_template` SET `equipentry1` = 1910 WHERE `entry` IN (1167);
UPDATE `creature_equip_template` SET `equipentry1` = 1983 WHERE `entry` IN (3713);
UPDATE `creature_equip_template` SET `equipentry1` = 2147 WHERE `entry` IN (2419);
UPDATE `creature_equip_template` SET `equipentry1` = 2178 WHERE `entry` IN (3331);
UPDATE `creature_equip_template` SET `equipentry1` = 2176 WHERE `entry` IN (3715);
UPDATE `creature_equip_template` SET `equipentry1` = 2179 WHERE `entry` IN (315,1034);
UPDATE `creature_equip_template` SET `equipentry1` = 2198 WHERE `entry` IN (3348);
UPDATE `creature_equip_template` SET `equipentry1` = 2559 WHERE `entry` IN (5240);
UPDATE `creature_equip_template` SET `equipentry1` = 2695 WHERE `entry` IN (3734);
UPDATE `creature_equip_template` SET `equipentry1` = 3364 WHERE `entry` IN (3926);
UPDATE `creature_equip_template` SET `equipentry1` = 3367 WHERE `entry` IN (3711);
UPDATE `creature_equip_template` SET `equipentry1` = 4991 WHERE `entry` IN (8529);
UPDATE `creature_equip_template` SET `equipentry1` = 5287 WHERE `entry` IN (4653);
UPDATE `creature_equip_template` SET `equipentry1` = 5291 WHERE `entry` IN (3944);
UPDATE `creature_equip_template` SET `equipentry1` = 5303 WHERE `entry` IN (8200);
UPDATE `creature_equip_template` SET `equipentry1` = 10614 WHERE `entry` IN (11858);
UPDATE `creature_equip_template` SET `equipentry1` = 12959 WHERE `entry` IN (10827);
UPDATE `creature_equip_template` SET `equipentry1` = 12751 WHERE `entry` IN (12784);
UPDATE `creature_equip_template` SET `equipentry1` = 13337 WHERE `entry` IN (3418);
UPDATE `creature_equip_template` SET `equipentry1` = 14880 WHERE `entry` IN (14225);
UPDATE `creature_equip_template` SET `equipentry1` = 10617 WHERE `entry` IN (14281);

-- equipentry2 - dual wield!
UPDATE `creature_equip_template` SET `equipentry2` = 0 WHERE `entry` IN (151,264,332,465,500,514,907,957,958,1117,1218,1234,1327,1328,1441,1452,1472,1670,1676,1701,2499,2530,
3203,3331,3348,3609,3666,3925,4202,4214,4217,4219,4329,5166,5184,5236,5570,6966,7009,7847,8479,8529,8983,9085,12048,14281,15006,15007,15083,15455);
UPDATE `creature_equip_template` SET `equipentry2` = 143 WHERE `entry` IN (12739);
UPDATE `creature_equip_template` SET `equipentry2` = 1897 WHERE `entry` IN (1034);
UPDATE `creature_equip_template` SET `equipentry2` = 1961 WHERE `entry` IN (3114);
UPDATE `creature_equip_template` SET `equipentry2` = 1984 WHERE `entry` IN (5851);
UPDATE `creature_equip_template` SET `equipentry2` = 2052 WHERE `entry` IN (334,820,2951,8096);
UPDATE `creature_equip_template` SET `equipentry2` = 2053 WHERE `entry` IN (821,5517);
UPDATE `creature_equip_template` SET `equipentry2` = 2081 WHERE `entry` IN (522,5817);
UPDATE `creature_equip_template` SET `equipentry2` = 2809 WHERE `entry` IN (5234);
UPDATE `creature_equip_template` SET `equipentry2` = 3757 WHERE `entry` IN (3733);

-- equipentry3
UPDATE `creature_equip_template` SET `equipentry3` = 2552 WHERE `entry` IN (5251);
UPDATE `creature_equip_template` SET `equipentry3` = 0 WHERE `entry` IN (14281);

 -- eyecandy? rp script?
UPDATE `creature_equip_template` SET `equipentry2` = 0 WHERE `entry` = 1473; -- either 2707, 2717
UPDATE `creature_equip_template` SET `equipentry2` = 0 WHERE `entry` = 1694; -- 1899, 1911, 1957
UPDATE `creature_equip_template` SET `equipentry2` = 0 WHERE `entry` = 1697; -- 2081, 2703
UPDATE `creature_equip_template` SET `equipentry1` = 0 WHERE `entry` = 1777; -- 2552, 2200, 3695
UPDATE `creature_equip_template` SET `equipentry1` = 0 WHERE `entry` = 5123; -- 1117, 2552
UPDATE `creature_equip_template` SET `equipentry2` = 0 WHERE `entry` = 6734; -- 2550, 2705
UPDATE `creature_equip_template` SET `equipentry2` = 0 WHERE `entry` = 14498; -- 12751, 5303
-- multiple sets
-- 15087 uses 0, 1910, 3367 changing sheath_states

-- special
-- https://www.wowhead.com/classic/npc=10182/rexxar#comments:id=2909873
UPDATE `creature_template` SET `SpeedWalk` = 1, `DamageMultiplier` = 3.25, `MinLootGold` = 0, `MaxLootGold` = 0 WHERE `entry` IN (10204,22498); -- calculated based on tbc Misha
UPDATE `creature_template` SET `SpeedWalk` = 1, `DamageMultiplier` = 5, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 10182;
UPDATE `creature_equip_template` SET `equipentry1` = 17283, `equipentry2` = 17282 WHERE `entry` = 10182; -- 17283, 17282 tbc+
UPDATE `creature_template` SET `SpeedWalk` = 1, `SpeedRun` = 9 / 7 WHERE `entry` = 21984; -- Rexxar TBC+

-- wrong - fish has no weapon
DELETE FROM `creature_equip_template` WHERE `entry` IN (14490);
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` IN (14490);

-- missing
UPDATE `creature_template` SET `EquipmentTemplateId` = `entry` WHERE `entry` IN (1000,1233,3319,7073,7074,7207,8402,9458,10819,12156,14277,15086,16125);
DELETE FROM `creature_equip_template` WHERE `entry` IN (1000,1233,3319,7073,7074,7207,8402,9458,10819,12156,14277,15086,16125);
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(1000, 2180, 2081, 0),
(1233, 6680, 0, 0),
(3319, 0, 1985, 0),
(7073, 5293, 0, 0),
(7074, 2177, 0, 0),
(7207, 6651, 0, 0), -- or 0
(8402, 2901, 0, 0), -- or 0
(9458, 10611, 0, 5856),

(10819, 11019, 0, 0),
(12156, 12290, 0, 5856),
(14277, 0, 0, 13147), -- hints towards she was meant to be a tidehunter (ranged class), but was never scripted in the early times.
(15086, 3367, 0, 0), -- or 0
(16125, 12304, 23356, 0);

-- Call customer support, ChooseDisplayId can not select native model for creature entry 12999, model from creature entry 1 will be used instead.
UPDATE `creature_template` SET `modelid1` = 11686, `modelid2` = 0 WHERE `entry` = 12999;

-- Fix missing speeds. - cleanup - static is not done via speed!
-- 19622	Kael'thas Sunstrider
-- 16509	Argent Warhorse
-- 16510	Argent Charger
UPDATE `creature_template` SET `SpeedWalk` = 1 WHERE `SpeedWalk`=0;
UPDATE `creature_template` SET `SpeedRun` = 1.14286 WHERE `SpeedRun`=0;

-- This npc should have no armor.
UPDATE `creature_template` SET `ArmorMultiplier`=0 WHERE `entry`=17685; -- Unkillable Test Dummy 60 No Armor

-- This npc should have low magic resistances.
UPDATE `creature_template` SET `ResistanceHoly`=60, `ResistanceFire`=60, `ResistanceNature`=60, `ResistanceFrost`=60, `ResistanceShadow`=60, `ResistanceArcane`=60 WHERE `entry`=12916; -- Unkillable Test Dummy 60 Low Magic Resistances

-- This npc should have high magic resistances.
UPDATE `creature_template` SET `ResistanceHoly`=225, `ResistanceFire`=225, `ResistanceNature`=225, `ResistanceFrost`=225, `ResistanceShadow`=225, `ResistanceArcane`=225 WHERE `entry`=12917; -- Unkillable Test Dummy 60 High Magic Resistances

-- Gossip for Johnny McWeaksauce.
DELETE FROM `gossip_menu` WHERE `entry` = 7336;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(7336, 8720, 0, 0),
(7336, 8721, 0, 9124);

DELETE FROM `conditions` WHERE `condition_entry` = 9124; -- 8	9378	0	0	0	0
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`) VALUES (9124, 8, 9378); -- https://www.wowhead.com/quest=9378/dnd-flag-the-dread-citadel-naxxramas

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 7336;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(7336, 0, 0, 'I require flagging.', 13153, 1, 1, -1, 0, 733600, 0, 0, NULL, 0, 0),
(7336, 1, 0, 'I require a teleport to Naxxramas.', 13154, 1, 1, -1, 0, 733601, 0, 0, NULL, 0, 0);

DELETE FROM `dbscripts_on_gossip` WHERE `id`=733600;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(733600, 0, 0, 15, 29296, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Johnny McWeaksauce - Cast Spell Naxxramas Entry Flag Trigger DND');
DELETE FROM `dbscripts_on_gossip` WHERE `id`=733601;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(733601, 0, 0, 15, 29295, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Johnny McWeaksauce - Cast Spell Naxxramas Entry Teleport DND');
UPDATE `creature_template` SET `NpcFlags`=1, `GossipMenuId`=7336 WHERE `entry`=16999;

DELETE FROM `spell_target_position` WHERE `id` = 29295;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (29295, 533, 3006.29, -3434.53, 293.882, 1.5708);
-- INSERT INTO `spell_effect_mod` (`Id`, `EffectIndex`, `EffectImplicitTargetA`, `EffectImplicitTargetB`, `Comment`) VALUES (29295, 1, 25, 17, 'Naxxramas Entry Teleport: Fix Targets');

-- Vendor items for Jimmy McWeaksauce.
UPDATE `creature_template` SET `NpcFlags`=(128+4096) WHERE `entry`=17078; -- UNIT_NPC_FLAG_VENDOR + UNIT_NPC_FLAG_REPAIR
DELETE FROM `npc_vendor` WHERE `entry` = 17078;
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES 
(17078, 17034),
(17078, 17035),
(17078, 17036),
(17078, 17037),
(17078, 17038),
(17078, 17031),
(17078, 17032),
(17078, 17020),
(17078, 17030),
(17078, 17033),
(17078, 17028),
(17078, 17029),
(17078, 17021),
(17078, 17026),
(17078, 5565),
(17078, 16583),
(17078, 21177),
(17078, 3776),
(17078, 20844),
(17078, 8928),
(17078, 9186),
(17078, 10922),
(17078, 16665),
(17078, 8079),
(17078, 22895),
(17078, 6265),
(17078, 18042),
(17078, 15997),
(17078, 14530),
(17078, 23578),
(17078, 23579);

-- Spirit Healers
-- 13056	test spirit healer (DND)
-- 18153	Spirit Healer (DND)
UPDATE `creature_template` SET `NpcFlags` = 16385, `CreatureTypeFlags` = `CreatureTypeFlags`|2, `GossipMenuId` = 83, `UnitFlags` = 768 WHERE `entry` IN (13056, 18153); -- npcflags 16385 tbc+
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES (6491, '9036 10848'),(13056, '9036 10848'),(18153, '9036 10848');

-- Auctioneers
UPDATE `creature_template` SET `NpcFlags`= `NpcFlags`|2097152, `UnitFlags` = `UnitFlags`|768 WHERE `entry` IN (7938, 15518, 15519, 15680); -- 2097152 tbc+

-- Target Dummies - might use special scripts each, dont force anything.
-- UPDATE `creature_template` SET `script_name`='custom_npc_training_dummy' WHERE `entry` IN (4957, 9659, 10156, 10736, 12317, 12916, 12917, 14830, 14831, 15133, 15134, 15142, 15143, 15144, 15145, 15151, 15152, 15153, 15154, 15155, 15156, 15157, 15158, 15159, 15160, 15161, 15173, 15992, 15993, 15996, 15997, 15998, 15999, 16078, 17313, 17685);

-- `NpcFlags`=19 = UNIT_NPC_FLAG_GOSSIP + UNIT_NPC_FLAG_QUESTGIVER + UNIT_NPC_FLAG_TRAINER
-- tbc+ needs TrainerTemplateId + NpcFlags 51
-- npc_trainer_template numbers come from tbcmangos as classic uses per npc solution. - lists might be corrupted with some faction/race specific spells.
-- Class Trainers - tbc has 2000, 2010... 2080 so gold cost can be easily removed.
UPDATE `creature_template` SET `NpcFlags`=51, `TrainerClass`=1, `TrainerTemplateId` = 2000, `GossipMenuId` = 0 WHERE `entry` IN (1403, 4992, 5959, 5966, 5967, 10291); -- 1 	Warrior Trainer
UPDATE `creature_template` SET `NpcFlags`=51, `TrainerClass`=2, `TrainerTemplateId` = 2010, `GossipMenuId` = 0 WHERE `entry`=4988; -- 2 	World Paladin Trainer
UPDATE `npc_trainer_template` SET `condition_id` = 3, `Spell` = 34768 WHERE `entry` = 2010 AND `spell`  = 34769; -- Horde Player - use parentspell.
UPDATE `npc_trainer_template` SET `condition_id` = 4, `Spell` = 13820 WHERE `entry` = 2010 AND `spell`  = 13819; -- Alliance Player - use parentspell.
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqlevel`, `condition_id`) VALUES
(2010, 23215, 6000000, 762, 60, 4),(2010, 34766, 6000000, 762, 60, 3);
UPDATE `creature_template` SET `NpcFlags`=51, `TrainerClass`=3, `TrainerTemplateId` = 2020, `GossipMenuId` = 0 WHERE `entry` IN (897, 2218, 4986); -- 3 	Hunter Trainer - todo: create pet training dummy template!
UPDATE `creature_template` SET `NpcFlags`=51, `TrainerClass`=4, `TrainerTemplateId` = 2030, `GossipMenuId` = 0 WHERE `entry` IN (4990, 5960, 5968); -- 4 	Rogue Trainer
UPDATE `creature_template` SET `NpcFlags`=51, `TrainerClass`=5, `TrainerTemplateId` = 2040, `GossipMenuId` = 0 WHERE `entry` IN (1410, 4989, 5964, 5973); -- 5 	Priest Trainer
-- 6 	Death Knight
UPDATE `creature_template` SET `NpcFlags`=51, `TrainerClass`=7, `TrainerTemplateId` = 2050, `GossipMenuId` = 0 WHERE `entry` IN (354, 373, 919, 1406, 2219, 4991, 5965, 5971); -- 7 	Shaman Trainer
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqlevel`, `condition_id`) VALUES
(2050, 8737, 12000, 0, 40, 0); -- Mail missing.
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqlevel`, `condition_id`) VALUES
(2050, 32182, 88000, 0, 70, 0); -- Heroism missing.
UPDATE `npc_trainer_template` SET `condition_id` = 3 WHERE `entry` IN (61,2050) AND `spell`  = 2825; -- Horde Player - Bloodlust
UPDATE `npc_trainer_template` SET `condition_id` = 4 WHERE `entry` IN (61,2050) AND `spell`  = 32182; -- Alliance Player - Heroism

UPDATE `creature_template` SET `NpcFlags`=51, `TrainerClass`=8, `TrainerTemplateId` = 2060, `GossipMenuId` = 0 WHERE `entry` IN (4987, 5961, 5969, 7488); -- 8 	Mage Trainer, seemingly no template in 2xxx range.
UPDATE `creature_template` SET `NpcFlags`=51, `TrainerClass`=9, `TrainerTemplateId` = 2070, `GossipMenuId` = 0 WHERE `entry` IN (1230, 1408, 4993, 5962, 5970); -- 9 	Warlock Trainer
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqlevel`, `condition_id`) VALUES
(2070, 1710, 10000, 0, 30, 0),(2070, 23160, 6000000, 0, 60, 0);

UPDATE `creature_template` SET `NpcFlags`=51, `TrainerClass`=11, `TrainerTemplateId` = 2080, `GossipMenuId` = 0 WHERE `entry` IN (542, 1409, 2217, 4985, 5963, 5972); -- 11 	Druid Trainer

DELETE FROM `npc_trainer_template` WHERE `entry` = 2060; -- mage tournament template seemingly missing.
INSERT INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `condition_id`) VALUES
(2060, 10, 2000, 0, 0, 20, NULL, NULL, NULL, 0),
(2060, 66, 96000, 0, 0, 68, NULL, NULL, NULL, 0),
(2060, 116, 100, 0, 0, 4, NULL, NULL, NULL, 0),
(2060, 118, 200, 0, 0, 8, NULL, NULL, NULL, 0),
(2060, 120, 5000, 0, 0, 26, NULL, NULL, NULL, 0),
(2060, 122, 400, 0, 0, 10, NULL, NULL, NULL, 0),
(2060, 130, 600, 0, 0, 12, NULL, NULL, NULL, 0),
(2060, 143, 100, 0, 0, 6, NULL, NULL, NULL, 0),
(2060, 145, 600, 0, 0, 12, NULL, NULL, NULL, 0),
(2060, 205, 200, 0, 0, 8, NULL, NULL, NULL, 0),
(2060, 475, 1800, 0, 0, 18, NULL, NULL, NULL, 0),
(2060, 543, 2000, 0, 0, 20, NULL, NULL, NULL, 0),
(2060, 587, 100, 0, 0, 6, NULL, NULL, NULL, 0),
(2060, 597, 600, 0, 0, 12, NULL, NULL, NULL, 0),
(2060, 604, 600, 0, 0, 12, NULL, NULL, NULL, 0),
(2060, 759, 7000, 0, 0, 28, NULL, NULL, NULL, 0),
(2060, 837, 900, 0, 0, 14, NULL, NULL, NULL, 0),
(2060, 865, 5000, 0, 0, 26, NULL, NULL, NULL, 0),
(2060, 990, 3000, 0, 0, 22, NULL, NULL, NULL, 0),
(2060, 1008, 1800, 0, 0, 18, NULL, NULL, NULL, 0),
(2060, 1449, 900, 0, 0, 14, NULL, NULL, NULL, 0),
(2060, 1459, 10, 0, 0, 1, NULL, NULL, NULL, 0),
(2060, 1460, 900, 0, 0, 14, NULL, NULL, NULL, 0),
(2060, 1461, 7000, 0, 0, 28, NULL, NULL, NULL, 0),
(2060, 1463, 2000, 0, 0, 20, NULL, NULL, NULL, 0),
(2060, 1953, 2000, 0, 0, 20, NULL, NULL, NULL, 0),
(2060, 2120, 1500, 0, 0, 16, NULL, NULL, NULL, 0),
(2060, 2121, 4000, 0, 0, 24, NULL, NULL, NULL, 0),
(2060, 2136, 100, 0, 0, 6, NULL, NULL, NULL, 0),
(2060, 2137, 900, 0, 0, 14, NULL, NULL, NULL, 0),
(2060, 2138, 3000, 0, 0, 22, NULL, NULL, NULL, 0),
(2060, 2139, 4000, 0, 0, 24, NULL, NULL, NULL, 0),
(2060, 2948, 3000, 0, 0, 22, NULL, NULL, NULL, 0),
(2060, 3140, 1800, 0, 0, 18, NULL, NULL, NULL, 0),
(2060, 3552, 14000, 0, 0, 38, NULL, NULL, NULL, 0),
(2060, 5143, 200, 0, 0, 8, NULL, NULL, NULL, 0),
(2060, 5144, 1500, 0, 0, 16, NULL, NULL, NULL, 0),
(2060, 5145, 4000, 0, 0, 24, NULL, NULL, NULL, 0),
(2060, 5504, 100, 0, 0, 4, NULL, NULL, NULL, 0),
(2060, 5505, 400, 0, 0, 10, NULL, NULL, NULL, 0),
(2060, 5506, 2000, 0, 0, 20, NULL, NULL, NULL, 0),
(2060, 6117, 13000, 0, 0, 34, NULL, NULL, NULL, 0),
(2060, 6127, 8000, 0, 0, 30, NULL, NULL, NULL, 0),
(2060, 6129, 10000, 0, 0, 32, NULL, NULL, NULL, 0),
(2060, 6131, 15000, 0, 0, 40, NULL, NULL, NULL, 0),
(2060, 6141, 7000, 0, 0, 28, NULL, NULL, NULL, 0),
(2060, 6143, 3000, 0, 0, 22, NULL, NULL, NULL, 0),
(2060, 7300, 400, 0, 0, 10, NULL, NULL, NULL, 0),
(2060, 7301, 2000, 0, 0, 20, NULL, NULL, NULL, 0),
(2060, 7302, 8000, 0, 0, 30, NULL, NULL, NULL, 0),
(2060, 7320, 15000, 0, 0, 40, NULL, NULL, NULL, 0),
(2060, 7322, 2000, 0, 0, 20, NULL, NULL, NULL, 0),
(2060, 8400, 4000, 0, 0, 24, NULL, NULL, NULL, 0),
(2060, 8401, 8000, 0, 0, 30, NULL, NULL, NULL, 0),
(2060, 8402, 13000, 0, 0, 36, NULL, NULL, NULL, 0),
(2060, 8406, 5000, 0, 0, 26, NULL, NULL, NULL, 0),
(2060, 8407, 10000, 0, 0, 32, NULL, NULL, NULL, 0),
(2060, 8408, 14000, 0, 0, 38, NULL, NULL, NULL, 0),
(2060, 8412, 8000, 0, 0, 30, NULL, NULL, NULL, 0),
(2060, 8413, 14000, 0, 0, 38, NULL, NULL, NULL, 0),
(2060, 8416, 10000, 0, 0, 32, NULL, NULL, NULL, 0),
(2060, 8417, 15000, 0, 0, 40, NULL, NULL, NULL, 0),
(2060, 8422, 10000, 0, 0, 32, NULL, NULL, NULL, 0),
(2060, 8423, 15000, 0, 0, 40, NULL, NULL, NULL, 0),
(2060, 8427, 13000, 0, 0, 36, NULL, NULL, NULL, 0),
(2060, 8437, 3000, 0, 0, 22, NULL, NULL, NULL, 0),
(2060, 8438, 8000, 0, 0, 30, NULL, NULL, NULL, 0),
(2060, 8439, 14000, 0, 0, 38, NULL, NULL, NULL, 0),
(2060, 8444, 7000, 0, 0, 28, NULL, NULL, NULL, 0),
(2060, 8445, 12000, 0, 0, 34, NULL, NULL, NULL, 0),
(2060, 8446, 15000, 0, 0, 40, NULL, NULL, NULL, 0),
(2060, 8450, 4000, 0, 0, 24, NULL, NULL, NULL, 0),
(2060, 8451, 13000, 0, 0, 36, NULL, NULL, NULL, 0),
(2060, 8455, 8000, 0, 0, 30, NULL, NULL, NULL, 0),
(2060, 8457, 8000, 0, 0, 30, NULL, NULL, NULL, 0),
(2060, 8458, 15000, 0, 0, 40, NULL, NULL, NULL, 0),
(2060, 8461, 10000, 0, 0, 32, NULL, NULL, NULL, 0),
(2060, 8462, 18000, 0, 0, 42, NULL, NULL, NULL, 0),
(2060, 8492, 12000, 0, 0, 34, NULL, NULL, NULL, 0),
(2060, 8494, 7000, 0, 0, 28, NULL, NULL, NULL, 0),
(2060, 8495, 13000, 0, 0, 36, NULL, NULL, NULL, 0),
(2060, 10053, 28000, 0, 0, 48, NULL, NULL, NULL, 0),
(2060, 10054, 40000, 0, 0, 58, NULL, NULL, NULL, 0),
(2060, 10138, 15000, 0, 0, 40, NULL, NULL, NULL, 0),
(2060, 10139, 32000, 0, 0, 50, NULL, NULL, NULL, 0),
(2060, 10140, 42000, 0, 0, 60, NULL, NULL, NULL, 0),
(2060, 10144, 18000, 0, 0, 42, NULL, NULL, NULL, 0),
(2060, 10145, 35000, 0, 0, 52, NULL, NULL, NULL, 0),
(2060, 10148, 18000, 0, 0, 42, NULL, NULL, NULL, 0),
(2060, 10149, 28000, 0, 0, 48, NULL, NULL, NULL, 0),
(2060, 10150, 36000, 0, 0, 54, NULL, NULL, NULL, 0),
(2060, 10151, 42000, 0, 0, 60, NULL, NULL, NULL, 0),
(2060, 10156, 18000, 0, 0, 42, NULL, NULL, NULL, 0),
(2060, 10157, 38000, 0, 0, 56, NULL, NULL, NULL, 0),
(2060, 10159, 18000, 0, 0, 42, NULL, NULL, NULL, 0),
(2060, 10160, 32000, 0, 0, 50, NULL, NULL, NULL, 0),
(2060, 10161, 40000, 0, 0, 58, NULL, NULL, NULL, 0),
(2060, 10169, 18000, 0, 0, 42, NULL, NULL, NULL, 0),
(2060, 10170, 36000, 0, 0, 54, NULL, NULL, NULL, 0),
(2060, 10173, 28000, 0, 0, 48, NULL, NULL, NULL, 0),
(2060, 10174, 42000, 0, 0, 60, NULL, NULL, NULL, 0),
(2060, 10177, 35000, 0, 0, 52, NULL, NULL, NULL, 0),
(2060, 10179, 23000, 0, 0, 44, NULL, NULL, NULL, 0),
(2060, 10180, 32000, 0, 0, 50, NULL, NULL, NULL, 0),
(2060, 10181, 38000, 0, 0, 56, NULL, NULL, NULL, 0),
(2060, 10185, 23000, 0, 0, 44, NULL, NULL, NULL, 0),
(2060, 10186, 35000, 0, 0, 52, NULL, NULL, NULL, 0),
(2060, 10187, 42000, 0, 0, 60, NULL, NULL, NULL, 0),
(2060, 10191, 23000, 0, 0, 44, NULL, NULL, NULL, 0),
(2060, 10192, 35000, 0, 0, 52, NULL, NULL, NULL, 0),
(2060, 10193, 42000, 0, 0, 60, NULL, NULL, NULL, 0),
(2060, 10197, 26000, 0, 0, 46, NULL, NULL, NULL, 0),
(2060, 10199, 36000, 0, 0, 54, NULL, NULL, NULL, 0),
(2060, 10201, 26000, 0, 0, 46, NULL, NULL, NULL, 0),
(2060, 10202, 36000, 0, 0, 54, NULL, NULL, NULL, 0),
(2060, 10205, 26000, 0, 0, 46, NULL, NULL, NULL, 0),
(2060, 10206, 35000, 0, 0, 52, NULL, NULL, NULL, 0),
(2060, 10207, 40000, 0, 0, 58, NULL, NULL, NULL, 0),
(2060, 10211, 28000, 0, 0, 48, NULL, NULL, NULL, 0),
(2060, 10212, 38000, 0, 0, 56, NULL, NULL, NULL, 0),
(2060, 10215, 28000, 0, 0, 48, NULL, NULL, NULL, 0),
(2060, 10216, 38000, 0, 0, 56, NULL, NULL, NULL, 0),
(2060, 10219, 32000, 0, 0, 50, NULL, NULL, NULL, 0),
(2060, 10220, 42000, 0, 0, 60, NULL, NULL, NULL, 0),
(2060, 10223, 32000, 0, 0, 50, NULL, NULL, NULL, 0),
(2060, 10225, 42000, 0, 0, 60, NULL, NULL, NULL, 0),
(2060, 10230, 36000, 0, 0, 54, NULL, NULL, NULL, 0),
(2060, 12051, 2000, 0, 0, 20, NULL, NULL, NULL, 0),
(2060, 12505, 1000, 0, 0, 24, NULL, NULL, NULL, 0),
(2060, 12522, 2000, 0, 0, 30, NULL, NULL, NULL, 0),
(2060, 12523, 3250, 0, 0, 36, NULL, NULL, NULL, 0),
(2060, 12524, 4500, 0, 0, 42, NULL, NULL, NULL, 0),
(2060, 12525, 7000, 0, 0, 48, NULL, NULL, NULL, 0),
(2060, 12526, 9000, 0, 0, 54, NULL, NULL, NULL, 0),
(2060, 12824, 2000, 0, 0, 20, NULL, NULL, NULL, 0),
(2060, 12825, 15000, 0, 0, 40, NULL, NULL, NULL, 0),
(2060, 12826, 42000, 0, 0, 60, NULL, NULL, NULL, 0),
(2060, 13018, 3250, 0, 0, 36, NULL, NULL, NULL, 0),
(2060, 13019, 5750, 0, 0, 44, NULL, NULL, NULL, 0),
(2060, 13020, 8750, 0, 0, 52, NULL, NULL, NULL, 0),
(2060, 13021, 10500, 0, 0, 60, NULL, NULL, NULL, 0),
(2060, 13031, 1700, 0, 0, 46, NULL, NULL, NULL, 0),
(2060, 13032, 1900, 0, 0, 52, NULL, NULL, NULL, 0),
(2060, 13033, 2100, 0, 0, 58, NULL, NULL, NULL, 0),
(2060, 18809, 10500, 0, 0, 60, NULL, NULL, NULL, 0),
(2060, 22782, 28000, 0, 0, 46, NULL, NULL, NULL, 0),
(2060, 22783, 40000, 0, 0, 58, NULL, NULL, NULL, 0),
(2060, 23028, 38000, 0, 0, 56, NULL, NULL, NULL, 0),
(2060, 25304, 42000, 0, 0, 60, NULL, NULL, NULL, 0),
(2060, 25306, 48000, 0, 0, 62, NULL, NULL, NULL, 0),
(2060, 25345, 42000, 0, 0, 60, NULL, NULL, NULL, 0),
(2060, 27070, 78000, 0, 0, 66, NULL, NULL, NULL, 0),
(2060, 27071, 57000, 0, 0, 63, NULL, NULL, NULL, 0),
(2060, 27072, 110000, 0, 0, 69, NULL, NULL, NULL, 0),
(2060, 27073, 70000, 0, 0, 65, NULL, NULL, NULL, 0),
(2060, 27074, 120000, 0, 0, 70, NULL, NULL, NULL, 0),
(2060, 27075, 57000, 0, 0, 63, NULL, NULL, NULL, 0),
(2060, 27078, 46000, 0, 0, 61, NULL, NULL, NULL, 0),
(2060, 27079, 120000, 0, 0, 70, NULL, NULL, NULL, 0),
(2060, 27080, 51000, 0, 0, 62, NULL, NULL, NULL, 0),
(2060, 27082, 120000, 0, 0, 70, NULL, NULL, NULL, 0),
(2060, 27085, 96000, 0, 0, 68, NULL, NULL, NULL, 0),
(2060, 27086, 63000, 0, 0, 64, NULL, NULL, NULL, 0),
(2060, 27087, 70000, 0, 0, 65, NULL, NULL, NULL, 0),
(2060, 27088, 87000, 0, 0, 67, NULL, NULL, NULL, 0),
(2060, 27101, 96000, 0, 0, 68, NULL, NULL, NULL, 0),
(2060, 27124, 110000, 0, 0, 69, NULL, NULL, NULL, 0),
(2060, 27125, 110000, 0, 0, 69, NULL, NULL, NULL, 0),
(2060, 27126, 120000, 0, 0, 70, NULL, NULL, NULL, 0),
(2060, 27128, 110000, 0, 0, 69, NULL, NULL, NULL, 0),
(2060, 27130, 57000, 0, 0, 63, NULL, NULL, NULL, 0),
(2060, 27131, 96000, 0, 0, 68, NULL, NULL, NULL, 0),
(2060, 27132, 10500, 0, 0, 66, NULL, NULL, NULL, 0),
(2060, 27133, 10500, 0, 0, 65, NULL, NULL, NULL, 0),
(2060, 27134, 2500, 0, 0, 64, NULL, NULL, NULL, 0),
(2060, 28609, 42000, 0, 0, 60, NULL, NULL, NULL, 0),
(2060, 28612, 42000, 0, 0, 60, NULL, NULL, NULL, 0),
(2060, 30449, 120000, 0, 0, 70, NULL, NULL, NULL, 0),
(2060, 30451, 63000, 0, 0, 64, NULL, NULL, NULL, 0),
(2060, 30455, 78000, 0, 0, 66, NULL, NULL, NULL, 0),
(2060, 30482, 51000, 0, 0, 62, NULL, NULL, NULL, 0),
(2060, 32796, 120000, 0, 0, 70, NULL, NULL, NULL, 0),
(2060, 33041, 1900, 0, 0, 56, NULL, NULL, NULL, 0),
(2060, 33042, 22000, 0, 0, 64, NULL, NULL, NULL, 0),
(2060, 33043, 25000, 0, 0, 70, NULL, NULL, NULL, 0),
(2060, 33405, 10500, 0, 0, 70, NULL, NULL, NULL, 0),
(2060, 33933, 12500, 0, 0, 70, NULL, NULL, NULL, 0),
(2060, 33938, 10500, 0, 0, 70, NULL, NULL, NULL, 0),
(2060, 33944, 87000, 0, 0, 67, NULL, NULL, NULL, 0),
(2060, 33946, 110000, 0, 0, 69, NULL, NULL, NULL, 0),
(2060, 37420, 70000, 0, 0, 65, NULL, NULL, NULL, 0),
(2060, 38699, 87000, 0, 0, 69, NULL, NULL, NULL, 0),
(2060, 43987, 120000, 0, 0, 70, NULL, NULL, NULL, 10103),
(2060, 45438, 8000, 0, 0, 30, NULL, NULL, NULL, 0);

-- RaidMage has 100 fire and aracne resist according to subname.
UPDATE `creature_template` SET `ResistanceFire`=100, `ResistanceArcane`=100 WHERE `entry`=14162;

-- End of migration.

