-- outdoor classic chest pooling rework part 4
-- thx @Kittnz @mantislord @brotalnia
-- followup to https://github.com/cmangos/tbc-db/commit/babcf5f03a87c4abdb92d3c971be94b77dff43ee (part 1 & 2) & https://github.com/cmangos/tbc-db/commit/3316cd0581a870e18b51b155b9d806d94029fab0 (part 3)

-- Correct position of existing chests, most recently added (surprise surprise)
UPDATE `gameobject` SET `position_x` = -9060.95, `position_y` = -463.424, `position_z` = 72.5782, `orientation` = 1.53589, `rotation2` = 0.694658, `rotation3` = 0.71934 WHERE `guid` = 300024 AND `id` = 2843;
UPDATE `gameobject` SET `position_x` = -5480.54, `position_y` = -214.69, `position_z` = 354.253, `orientation` = 3.85718, `rotation2` = -0.936671, `rotation3` = 0.35021 WHERE `guid` = 29633 AND `id` = 106318;
UPDATE `gameobject` SET `position_x` = 1788.8, `position_y` = 1345.5, `position_z` = 89.2825, `orientation` = 5.34071, `rotation2` = -0.45399, `rotation3` = 0.891007 WHERE `guid` = 300003 AND `id` = 2843;
UPDATE `gameobject` SET `position_x` = 1965.06, `position_y` = 1617.98, `position_z` = 88.2023, `orientation` = 4.92183, `rotation2` = -0.62932, `rotation3` = 0.777146 WHERE `guid` = 300006 AND `id` = 2843;
UPDATE `gameobject` SET `position_x` = 2019.49, `position_y` = 1853.66, `position_z` = 102.67, `orientation` = 4.18879, `rotation2` = -0.866025, `rotation3` = 0.500001 WHERE `guid` = 300000 AND `id` = 2843;
UPDATE `gameobject` SET `position_x` = 10908.4, `position_y` = 977.762, `position_z` = 1338.32, `orientation` = 2.82743, `rotation2` = 0.987688, `rotation3` = 0.156436 WHERE `guid` = 300014 AND `id` = 2843;

SET @GUID := 300051;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @GUID AND @GUID+206;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnmask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
-- (299740, 4149, 0, 1, -10874.4, -3681.49, 18.1765, 3.90954, 0, 0, -0.927183, 0.374608, 300, 300, 100, 1), -- corrupted xyz (wotlk-db guid 93300) dont readd
(@GUID := @GUID + 0, 4149, 0, 1, -13180.3, -545.589, 4.64249, 3.29869, 0, 0, -0.996917, 0.0784664, 300, 300, 100, 1), -- Stranglethorn Vale (Crystalvein Mine)
(@GUID := @GUID + 1, 4149, 0, 1, -13062.8, -466.432, 44.7542, 1.5708, 0, 0, 0.707107, 0.707107, 300, 300, 100, 1), -- Stranglethorn Vale
(@GUID := @GUID + 1, 2857, 0, 1, -12479, -178.103, 14.1062, 2.04204, 0, 0, 0.85264, 0.522499, 300, 300, 100, 1), -- Stranglethorn Vale (Mizjah Ruins)
(@GUID := @GUID + 1, 2857, 0, 1, -11401.3, -788.461, 15.1698, 3.52557, 0, 0, -0.981627, 0.190812, 300, 300, 100, 1), -- Stranglethorn Vale (The Stockpile)
(@GUID := @GUID + 1, 2849, 0, 1, -11398.6, 1801.28, 7.46052, 0, 0, 0, 0, 1, 300, 300, 100, 1), -- Westfall (Longshore)
(@GUID := @GUID + 1, 4149, 0, 1, -11054.1, -4122.13, 0.538078, 5.5676, 0, 0, -0.350207, 0.936672, 300, 300, 100, 1), -- Swamp of Sorrows (Misty Reed Strand)
(@GUID := @GUID + 1, 106319, 0, 1, -11039.1, 1460.18, 45.3211, 3.7001, 0, 0, -0.961261, 0.27564, 300, 300, 100, 1), -- Westfall (Moonbrook)
(@GUID := @GUID + 1, 153451, 0, 1, -10834.8, -2728.32, 7.77758, 2.09439, 0, 0, 0.866025, 0.500001, 300, 300, 100, 1), -- Blasted Lands (Dreadmaul Hold)
(@GUID := @GUID + 1, 106319, 0, 1, -10504.4, 1980.73, 10.7782, 5.13127, 0, 0, -0.544639, 0.838671, 300, 300, 100, 1), -- Westfall (Gold Coast Quarry)
(@GUID := @GUID + 1, 2852, 0, 1, -10374.7, -1254.46, 35.8818, 6.26573, 0, 0, -0.00872612, 0.999962, 300, 300, 100, 1), -- Duskwood (Manor Mistmantle)
(@GUID := @GUID + 1, 2857, 0, 1, -10143.9, -2490.89, 24.6832, 3.90954, 0, 0, -0.927183, 0.374608, 300, 300, 100, 1), -- Swamp of Sorrows (Misty Valley)
(@GUID := @GUID + 1, 2857, 0, 1, -9977.39, -3658.88, 21.8357, 1.36136, 0, 0, 0.62932, 0.777146, 300, 300, 100, 1), -- Swamp of Sorrows (Fallow Sanctuary)
(@GUID := @GUID + 1, 106319, 0, 1, -9884.88, 1423.31, 39.9257, 3.05433, 0, 0, 0.999048, 0.0436193, 300, 300, 100, 1), -- Westfall (Jangolode Mine)
(@GUID := @GUID + 1, 2850, 0, 1, -9223.85, -3300.4, 101.32, 6.26573, 0, 0, -0.00872612, 0.999962, 300, 300, 100, 1), -- Redridge Mountains (Galardell Valley)
(@GUID := @GUID + 1, 106318, 0, 1, -8894.47, -717.691, 69.721, 0.296705, 0, 0, 0.147809, 0.989016, 300, 300, 100, 1), -- Elwynn Forest (Stone Cairn Lake)
(@GUID := @GUID + 1, 2849, 0, 1, -8884.3, -2160.68, 132.445, 6.23083, 0, 0, -0.0261765, 0.999657, 300, 300, 100, 1), -- Redridge Mountains (Redridge Canyons)
(@GUID := @GUID + 1, 2849, 0, 1, -8883.47, -2002.71, 134.528, 2.07694, 0, 0, 0.861628, 0.507539, 300, 300, 100, 1), -- Redridge Mountains (Rethban Caverns)
(@GUID := @GUID + 1, 2850, 0, 1, -8720.19, -2338.02, 155.916, 5.63741, 0, 0, -0.317305, 0.948324, 300, 300, 100, 1), -- Redridge Mountains (Render''s Camp)
(@GUID := @GUID + 1, 153451, 1, 1, -8497.94, -3061.38, 9.52853, 0.994837, 0, 0, 0.477158, 0.878817, 300, 300, 100, 1), -- Tanaris (Dunemaul Compound)
(@GUID := @GUID + 1, 153451, 1, 1, -8383.04, -3083.96, 8.62471, 2.23402, 0, 0, 0.898793, 0.438373, 300, 300, 100, 1), -- Tanaris (Dunemaul Compound)
(@GUID := @GUID + 1, 153453, 0, 1, -8225.17, -1954.8, 142.569, 0.645772, 0, 0, 0.317305, 0.948324, 300, 300, 100, 1), -- Burning Steppes
(@GUID := @GUID + 1, 153453, 0, 1, -8092.34, -1403.27, 130.926, 4.41568, 0, 0, -0.803857, 0.594823, 300, 300, 100, 1), -- Burning Steppes
(@GUID := @GUID + 1, 153453, 0, 1, -8073.49, -2968.62, 134.251, 4.01426, 0, 0, -0.906307, 0.422619, 300, 300, 100, 1), -- Burning Steppes (Terror Wing Path)
(@GUID := @GUID + 1, 153453, 0, 1, -7956.8, -904.648, 131.554, 0.383971, 0, 0, 0.190808, 0.981627, 300, 300, 100, 1), -- Burning Steppes
(@GUID := @GUID + 1, 153451, 1, 1, -7901.72, -5206.91, 0.792425, 2.93214, 0, 0, 0.994521, 0.104535, 300, 300, 100, 1), -- Tanaris (Lost Rigger Cove)
(@GUID := @GUID + 1, 153453, 0, 1, -7763.62, -1524.23, 131.932, 0.401425, 0, 0, 0.199367, 0.979925, 300, 300, 100, 1), -- Burning Steppes (Blackrock Stronghold)
(@GUID := @GUID + 1, 153453, 0, 1, -7550.28, -2740.63, 136.647, 3.21142, 0, 0, -0.999391, 0.0349061, 300, 300, 100, 1), -- Burning Steppes (Terror Wing Path)
(@GUID := @GUID + 1, 4149, 0, 1, -6666.43, -716.584, 238.184, 5.2709, 0, 0, -0.484809, 0.87462, 300, 300, 100, 1), -- Searing Gorge (Firewatch Ridge)
(@GUID := @GUID + 1, 2855, 1, 1, -6518.72, -3304.22, -92.86, 5.8370, 0, 0, 0, 0, 300, 300, 100, 1), -- Thousand Needles (The Rustmaul Dig Site)
(@GUID := @GUID + 1, 2855, 1, 1, -6484.66, -3499.6, -70.0346, 6.10865, 0, 0, -0.0871553, 0.996195, 300, 300, 100, 1), -- Thousand Needles (The Rustmaul Dig Site)
(@GUID := @GUID + 1, 2855, 1, 1, -6399.73, -3446.07, -77.6406, 0.541051, 0, 0, 0.267238, 0.963631, 300, 300, 100, 1), -- Thousand Needles (The Rustmaul Dig Site)
(@GUID := @GUID + 1, 106319, 0, 1, -6094.4, -2773.76, 415.758, 0, 0, 0, 0, 1, 300, 300, 100, 1), -- Loch Modan (Stonesplinter Valley)
(@GUID := @GUID + 1, 106319, 0, 1, -6043.68, -2985.55, 402.241, 6.26573, 0, 0, -0.00872612, 0.999962, 300, 300, 100, 1), -- Loch Modan (Stonesplinter Valley)
(@GUID := @GUID + 1, 106318, 0, 1, -5906.34, -1873.73, 404.95, 5.91667, 0, 0, -0.182235, 0.983255, 300, 300, 100, 1), -- Dun Morogh (Ironband''s Compound)
(@GUID := @GUID + 1, 106318, 0, 1, -5658.51, 657.265, 383.448, 2.63544, 0, 0, 0.968147, 0.250381, 300, 300, 100, 1), -- Dun Morogh (Frostmane Hold)
(@GUID := @GUID + 1, 2849, 0, 1, -5636.4, -3893.67, 329.955, 2.63544, 0, 0, 0.968147, 0.250381, 300, 300, 100, 1), -- Loch Modan (Ironband''s Excavation Site)
(@GUID := @GUID + 1, 2852, 1, 1, -5508.08, -1629.43, 25.3012, 0.85521, 0, 0, 0.414693, 0.909962, 300, 300, 100, 1), -- Thousand Needles (Roguefeather Den)
(@GUID := @GUID + 1, 2849, 0, 1, -5485.15, -3341.43, 261.019, 1.27409, 0, 0, 0.594822, 0.803857, 300, 300, 100, 1), -- Loch Modan (The Loch)
(@GUID := @GUID + 1, 106318, 0, 1, -5454.06, -170.441, 349.799, 2.35619, 0, 0, 0.92388, 0.382683, 300, 300, 100, 1), -- Dun Morogh (The Grizzled Den)
(@GUID := @GUID + 1, 106318, 0, 1, -5423.45, -307.859, 358.594, 1.65806, 0, 0, 0.737277, 0.675591, 300, 300, 100, 1), -- Dun Morogh (The Grizzled Den)
(@GUID := @GUID + 1, 2849, 0, 1, -5284.79, -3250.98, 235.57, 1.97222, 0, 0, 0.833885, 0.551938, 300, 300, 100, 1), -- Loch Modan (The Loch)
(@GUID := @GUID + 1, 2852, 1, 1, -5192.65, -1209.24, 49.3863, 2.09439, 0, 0, 0.866025, 0.500001, 300, 300, 100, 1), -- Thousand Needles (Highperch)
(@GUID := @GUID + 1, 2852, 1, 1, -5063.35, -2291.98, -53.2818, 1.48353, 0, 0, 0.67559, 0.737278, 300, 300, 100, 1), -- Thousand Needles (Splithoof Crag)
(@GUID := @GUID + 1, 106318, 0, 1, -5055.85, -264.972, 442.079, 4.04917, 0, 0, -0.898793, 0.438373, 300, 300, 100, 1), -- Dun Morogh (Shimmer Ridge)
(@GUID := @GUID + 1, 2852, 1, 1, -5046.38, -2326.3, -52.8083, 6.0912, 0, 0, -0.0958452, 0.995396, 300, 300, 100, 1), -- Thousand Needles (Splithoof Crag)
(@GUID := @GUID + 1, 106319, 0, 1, -4965.29, -3494.63, 305.484, 3.9619, 0, 0, -0.91706, 0.39875, 300, 300, 100, 1), -- Loch Modan
(@GUID := @GUID + 1, 2852, 1, 1, -4896.52, -2290.6, -59.8061, 6.17847, 0, 0, -0.0523357, 0.99863, 300, 300, 100, 1), -- Thousand Needles (Splithoof Hold)
(@GUID := @GUID + 1, 106319, 0, 1, -4786.32, -2979.21, 323.46, 2.63544, 0, 0, 0.968147, 0.250381, 300, 300, 100, 1), -- Loch Modan (Silver Stream Mine)
(@GUID := @GUID + 1, 106319, 0, 1, -4781.68, -3033.98, 301.639, 2.37364, 0, 0, 0.927183, 0.374608, 300, 300, 100, 1), -- Loch Modan (Silver Stream Mine)
(@GUID := @GUID + 1, 4149, 1, 1, -4606.16, -3779.07, 38.6056, 3.14159, 0, 0, -1, 0, 300, 300, 100, 1), -- Dustwallow Marsh (Wyrmbog)
(@GUID := @GUID + 1, 2850, 0, 1, -4141.16, -2950.04, 11.5826, 5.88176, 0, 0, -0.199367, 0.979925, 300, 300, 100, 1), -- Wetlands
(@GUID := @GUID + 1, 3702, 1, 1, -4084.18, -2386.98, 124.743, 3.71755, 0, 0, -0.958819, 0.284016, 300, 300, 100, 1), -- The Barrens (Bael''dun Keep) - if it stays to only be one then just add as normal spawn as its was oversight
(@GUID := @GUID + 1, 3689, 1, 1, -4049.89, -2390.31, 126.13, 3.00195, 0, 0, 0.997563, 0.0697661, 300, 300, 100, 1), -- The Barrens (Bael''dun Keep)
(@GUID := @GUID + 1, 2850, 1, 1, -4010.15, -1747.43, 97.6985, 0.191985, 0, 0, 0.0958452, 0.995396, 300, 300, 100, 1), -- The Barrens (Blackthorn Ridge)
(@GUID := @GUID + 1, 2850, 0, 1, -3751.49, -2922.89, 12.0202, 3.73501, 0, 0, -0.956305, 0.292372, 300, 300, 100, 1), -- Wetlands (Mosshide Fen)
(@GUID := @GUID + 1, 2852, 0, 1, -3656.05, -2609.75, 51.9026, 0.488691, 0, 0, 0.241921, 0.970296, 300, 300, 100, 1), -- Wetlands (Angerfang Encampment)
(@GUID := @GUID + 1, 2852, 0, 1, -3418.88, -2505.52, 27.1158, 3.10665, 0, 0, 0.999847, 0.0174693, 300, 300, 100, 1), -- Wetlands (Angerfang Encampment)
(@GUID := @GUID + 1, 2852, 0, 1, -3321.84, -2279.77, 51.8986, 1.0472, 0, 0, 0.5, 0.866025, 300, 300, 100, 1), -- Wetlands (Angerfang Encampment)
(@GUID := @GUID + 1, 2850, 0, 1, -3107.93, -963.956, 8.52378, 5.13127, 0, 0, -0.544639, 0.838671, 300, 300, 100, 1), -- Wetlands (Bluegill Marsh)
(@GUID := @GUID + 1, 106318, 1, 1, -2782.11, -707.654, 6.42457, 2.68781, 0, 0, 0.97437, 0.224951, 300, 300, 100, 1), -- Mulgore
(@GUID := @GUID + 1, 2857, 1, 1, -2668.7, -4211.17, 0.174256, 3.01941, 0, 0, 0.998135, 0.0610518, 300, 300, 100, 1), -- Dustwallow Marsh (Dreadmurk Shore)
(@GUID := @GUID + 1, 106318, 1, 1, -2643.5, -1320.99, 12.1203, 0.90757, 0, 0, 0.438371, 0.898794, 300, 300, 100, 1), -- Mulgore (The Rolling Plains)
(@GUID := @GUID + 1, 106318, 1, 1, -2402.06, 233.673, 49.2433, 2.80997, 0, 0, 0.986285, 0.16505, 300, 300, 100, 1), -- Mulgore (Paleman Rock)
(@GUID := @GUID + 1, 111095, 1, 1, -2214.52, -3689.79, 93.4471, 5.49779, 0, 0, -0.382683, 0.92388, 300, 300, 100, 1), -- The Barrens (Northwatch Hold)
(@GUID := @GUID + 1, 2857, 0, 1, -2169.96, -1708.87, -46.6102, 1.18682, 0, 0, 0.559193, 0.829038, 300, 300, 100, 1), -- Arathi Highlands (The Drowned Reef)
(@GUID := @GUID + 1, 3689, 1, 1, -2120.48, -3896.26, -10.2095, 1.0472, 0, 0, 0.5, 0.866025, 300, 300, 100, 1), -- The Barrens (Northwatch Hold)
(@GUID := @GUID + 1, 2849, 1, 1, -2109.41, -1719.49, 91.7509, 2.94959, 0, 0, 0.995396, 0.0958512, 300, 300, 100, 1), -- The Barrens (Agama'gor)
(@GUID := @GUID + 1, 111095, 1, 1, -2101.53, -3646.35, 61.716, 0.0523589, 0, 0, 0.0261765, 0.999657, 300, 300, 100, 1), -- The Barrens (Northwatch Hold)
(@GUID := @GUID + 1, 2857, 0, 1, -2051.7, -2796.66, 72.4766, 5.20108, 0, 0, -0.515037, 0.857168, 300, 300, 100, 1), -- Arathi Highlands (Boulderfist Hall)
(@GUID := @GUID + 1, 2849, 1, 1, -2030.24, -1970.71, 91.6668, 0.383971, 0, 0, 0.190808, 0.981627, 300, 300, 100, 1), -- The Barrens (Agama''gor)
(@GUID := @GUID + 1, 111095, 1, 1, -2009.53, -3600.92, 21.7593, 3.56047, 0, 0, -0.978148, 0.207912, 300, 300, 100, 1), -- The Barrens (Northwatch Hold)
(@GUID := @GUID + 1, 3689, 1, 1, -2008.18, -3819.33, -9.58786, 2.49582, 0, 0, 0.948323, 0.317306, 300, 300, 100, 1), -- The Barrens (Northwatch Hold)
(@GUID := @GUID + 1, 106318, 1, 1, -1931.86, -715.756, 3.48776, 6.07375, 0, 0, -0.104528, 0.994522, 300, 300, 100, 1), -- Mulgore (Ravaged Caravan)
(@GUID := @GUID + 1, 106318, 1, 1, -1921.73, -1027.15, 43.9631, 1.20428, 0, 0, 0.566406, 0.824126, 300, 300, 100, 1), -- Mulgore (The Venture Co. Mine)
(@GUID := @GUID + 1, 2857, 1, 1, -1905.2, 998.873, 90.611, 5.67232, 0, 0, -0.300705, 0.953717, 300, 300, 100, 1), -- Desolace (Magram Village)
(@GUID := @GUID + 1, 106318, 1, 1, -1893.65, 353.875, 107.361, 5.67232, 0, 0, -0.300705, 0.953717, 300, 300, 100, 1), -- Mulgore (Bael''dun Digsite)
(@GUID := @GUID + 1, 2855, 0, 1, -1883.55, -3068.64, 57.881, 4.34587, 0, 0, -0.824126, 0.566406, 300, 300, 100, 1), -- Arathi Highlands (Witherbark Village)
(@GUID := @GUID + 1, 2849, 1, 1, -1855.86, -1936.17, 92.8053, 3.4383, 0, 0, -0.989016, 0.147811, 300, 300, 100, 1), -- The Barrens (Agama''gor)
(@GUID := @GUID + 1, 3689, 1, 1, -1850.05, -3819.51, -6.28771, 5.02655, 0, 0, -0.587785, 0.809017, 300, 300, 100, 1), -- The Barrens (The Merchant Coast)
(@GUID := @GUID + 1, 2855, 0, 1, -1813.15, -3409.62, 45.5308, 1.01229, 0, 0, 0.484809, 0.87462, 300, 300, 100, 1), -- Arathi Highlands (Witherbark Village)
(@GUID := @GUID + 1, 2857, 0, 1, -1789.1, -1580.76, 52.8563, 0.314158, 0, 0, 0.156434, 0.987688, 300, 300, 100, 1), -- Arathi Highlands (Stromgarde Keep)
(@GUID := @GUID + 1, 3689, 1, 1, -1778.77, -3946.77, -5.78729, 0.418879, 0, 0, 0.207912, 0.978148, 300, 300, 100, 1), -- The Barrens (The Merchant Coast)
(@GUID := @GUID + 1, 106319, 1, 1, -1710.46, -3836.71, 11.2646, 0.558504, 0, 0, 0.275637, 0.961262, 300, 300, 100, 1), -- The Barrens (The Merchant Coast)
(@GUID := @GUID + 1, 106318, 1, 1, -1681.09, -1218.6, 127.419, 0.453785, 0, 0, 0.224951, 0.97437, 300, 300, 100, 1), -- Mulgore (The Venture Co. Mine)
(@GUID := @GUID + 1, 2857, 0, 1, -1677.67, -1769.35, 81.2149, 4.59022, 0, 0, -0.748956, 0.66262, 300, 300, 100, 1), -- Arathi Highlands (Stromgarde Keep)
(@GUID := @GUID + 1, 105581, 0, 1, -1601.2, -1644.99, 68.1097, 2.9845, 0, 0, 0.996917, 0.0784664, 300, 300, 100, 1), -- Arathi Highlands (Stromgarde Keep)
(@GUID := @GUID + 1, 3660, 1, 1, -1574.72, -3902.17, 12.9352, 3.59538, 0, 0, -0.97437, 0.224951, 300, 300, 100, 1), -- The Barrens (The Merchant Coast)
(@GUID := @GUID + 1, 3661, 1, 1, -1568.41, -3894.21, 14.4994, 0.401425, 0, 0, 0.199367, 0.979925, 300, 300, 100, 1), -- The Barrens (The Merchant Coast)
(@GUID := @GUID + 1, 105581, 0, 1, -1544.81, -1751.48, 68.1662, 1.11701, 0, 0, 0.529919, 0.848048, 300, 300, 100, 1), -- Arathi Highlands (Stromgarde Keep)
(@GUID := @GUID + 1, 105578, 0, 1, -1542.43, -3033.22, 12.9803, 6.23083, 0, 0, -0.0261765, 0.999657, 300, 300, 100, 1), -- Arathi Highlands (Go''Shek Farm)
(@GUID := @GUID + 1, 106319, 1, 1, -1505.74, -3811.72, 23.4231, 5.65487, 0, 0, -0.309016, 0.951057, 300, 300, 100, 1), -- The Barrens (The Merchant Coast)
(@GUID := @GUID + 1, 3661, 1, 1, -1493.29, -3815.57, 24.6679, 5.86431, 0, 0, -0.207912, 0.978148, 300, 300, 100, 1), -- The Barrens (The Merchant Coast)
(@GUID := @GUID + 1, 3689, 1, 1, -1476.84, -3908.77, -0.348957, 4.03171, 0, 0, -0.902585, 0.430512, 300, 300, 100, 1), -- The Barrens (The Merchant Coast)
(@GUID := @GUID + 1, 3661, 1, 1, -1443.09, -3652.76, 92.2653, 5.42798, 0, 0, -0.414693, 0.909962, 300, 300, 100, 1), -- The Barrens
(@GUID := @GUID + 1, 3660, 1, 1, -1441.32, -3645.93, 92.1507, 1.11701, 0, 0, 0.529919, 0.848048, 300, 300, 100, 1), -- The Barrens
(@GUID := @GUID + 1, 106319, 1, 1, -1385.64, -2732.88, 91.6845, 4.03171, 0, 0, -0.902585, 0.430512, 300, 300, 100, 1), -- The Barrens
(@GUID := @GUID + 1, 2857, 1, 1, -1364.17, 2916.2, 127.253, 4.4855, 0, 0, -0.782608, 0.622515, 300, 300, 100, 1), -- Desolace (Valley of Spears)
(@GUID := @GUID + 1, 3661, 1, 1, -1360.28, -3913.57, 9.11687, 1.37881, 0, 0, 0.636078, 0.771625, 300, 300, 100, 1), -- The Barrens (The Merchant Coast)
(@GUID := @GUID + 1, 2857, 1, 1, -1333.23, 2760.84, 113.199, 2.44346, 0, 0, 0.939692, 0.342021, 300, 300, 100, 1), -- Desolace (Valley of Spears)
(@GUID := @GUID + 1, 106319, 1, 1, -1296.6, -2839.76, 93.7541, 0.872664, 0, 0, 0.422618, 0.906308, 300, 300, 100, 1), -- The Barrens (The Stagnant Oasis)
(@GUID := @GUID + 1, 3689, 1, 1, -1278.59, -3934.92, -10.439, 4.2237, 0, 0, -0.857167, 0.515038, 300, 300, 100, 1), -- The Barrens (The Tidus Stair)
(@GUID := @GUID + 1, 2857, 1, 1, -1200.01, 2761.32, 111.421, 1.50098, 0, 0, 0.681998, 0.731354, 300, 300, 100, 1), -- Desolace (Valley of Spears)
(@GUID := @GUID + 1, 2857, 1, 1, -1191.4, 2860.78, 139.005, 5.5676, 0, 0, -0.350207, 0.936672, 300, 300, 100, 1), -- Desolace (Valley of Spears)
(@GUID := @GUID + 1, 3689, 1, 1, -1136.38, -4072.17, -87.6331, 5.21854, 0, 0, -0.507538, 0.861629, 300, 300, 100, 1), -- The Barrens (The Merchant Coast)
(@GUID := @GUID + 1, 2857, 1, 1, -1133.85, 2694.59, 111.414, 2.93214, 0, 0, 0.994521, 0.104535, 300, 300, 100, 1), -- Desolace (Valley of Spears)
(@GUID := @GUID + 1, 106319, 1, 1, -1123.9, -2786.77, 91.6816, 0.0698117, 0, 0, 0.0348988, 0.999391, 300, 300, 100, 1), -- The Barrens
(@GUID := @GUID + 1, 105579, 0, 1, -1106.34, -2921.2, 42.197, 4.66003, 0, 0, -0.725374, 0.688355, 300, 300, 100, 1), -- Arathi Highlands (Dabyrie''s Farmstead)
(@GUID := @GUID + 1, 2855, 0, 1, -1068.21, -78.6024, 1.3575, 1.43117, 0, 0, 0.656058, 0.75471, 300, 300, 100, 1), -- Hillsbrad Foothills (Western Strand)
(@GUID := @GUID + 1, 105579, 0, 1, -1047.59, -2811.98, 42.197, 3.85718, 0, 0, -0.936671, 0.35021, 300, 300, 100, 1), -- Arathi Highlands (Dabyrie''s Farmstead)
(@GUID := @GUID + 1, 3689, 1, 1, -1037.3, -3923.91, -73.2812, 1.37881, 0, 0, 0.636078, 0.771625, 300, 300, 100, 1), -- The Barrens (The Merchant Coast)
(@GUID := @GUID + 1, 3689, 1, 1, -1035.84, -3986.77, -75.3307, 5.8294, 0, 0, -0.224951, 0.97437, 300, 300, 100, 1), -- The Barrens (The Merchant Coast)
(@GUID := @GUID + 1, 106319, 1, 1, -1010.49, -2335.26, 91.6865, 1.44862, 0, 0, 0.66262, 0.748956, 300, 300, 100, 1), -- The Barrens
(@GUID := @GUID + 1, 2855, 1, 1, -961.253, 880.802, 91.5103, 2.16421, 0, 0, 0.882947, 0.469473, 300, 300, 100, 1), -- Desolace (Kolkar Village)
(@GUID := @GUID + 1, 2852, 0, 1, -890.011, -1052.25, 31.2693, 4.69494, 0, 0, -0.71325, 0.70091, 300, 300, 100, 1), -- Hillsbrad Foothills (Nethander Stead)
(@GUID := @GUID + 1, 106318, 1, 1, -824.101, -780.587, -2.7132, 4.27606, 0, 0, -0.843391, 0.5373, 300, 300, 100, 1), -- Mulgore (The Golden Plains)
(@GUID := @GUID + 1, 4096, 0, 1, -801.115, 65.3181, 8.89202, 0.785397, 0, 0, 0.382683, 0.92388, 300, 300, 100, 1), -- Hillsbrad Foothills (Azurelode Mine)
(@GUID := @GUID + 1, 2855, 0, 1, -793.025, -2082.12, 34.9696, 2.28638, 0, 0, 0.909961, 0.414694, 300, 300, 100, 1), -- Arathi Highlands (Northfold Manor)
(@GUID := @GUID + 1, 2855, 0, 1, -776.63, -2028.77, 34.105, 1.06465, 0, 0, 0.507538, 0.861629, 300, 300, 100, 1), -- Arathi Highlands (Northfold Manor)
(@GUID := @GUID + 1, 3715, 0, 1, -566.732, 32.3075, 49.8843, 2.53072, 0, 0, 0.953716, 0.300708, 300, 300, 100, 1), -- Hillsbrad Foothills (Hillsbrad Fields)
(@GUID := @GUID + 1, 3715, 0, 1, -488.521, 109.981, 60.4183, 6.23083, 0, 0, -0.0261765, 0.999657, 300, 300, 100, 1), -- Hillsbrad Foothills ("Hillsbrad Fields")
(@GUID := @GUID + 1, 3661, 1, 1, -483.763, -2601.68, 127.867, 4.2237, 0, 0, -0.857167, 0.515038, 300, 300, 100, 1), -- The Barrens (The Crossroads & Ratchet)
(@GUID := @GUID + 1, 111095, 0, 1, -470.033, 826.422, 96.8248, 5.67232, 0, 0, -0.300705, 0.953717, 300, 300, 100, 1), -- Silverpine Forest (Beren''s Peril)
(@GUID := @GUID + 1, 153451, 0, 1, -417.437, -4015.42, 195.178, 4.08407, 0, 0, -0.891007, 0.453991, 300, 300, 100, 1), -- The Hinterlands (Jintha''Alor)
(@GUID := @GUID + 1, 106319, 0, 1, -336.079, 1516.02, 16.8309, 5.07891, 0, 0, -0.566406, 0.824126, 300, 300, 100, 1), -- Silverpine Forest (Pyrewood Village)
(@GUID := @GUID + 1, 3661, 1, 1, -332.152, -2559.53, 95.7875, 2.19912, 0, 0, 0.891007, 0.453991, 300, 300, 100, 1), -- The Barrens (The Crossroads & Ratchet)
(@GUID := @GUID + 1, 106319, 1, 1, -245.361, -3332.41, 92.4171, 4.08407, 0, 0, -0.891007, 0.453991, 300, 300, 100, 1), -- The Barrens (Thorn Hill)
(@GUID := @GUID + 1, 2855, 0, 1, -243.951, -378.061, 47.6736, 1.62316, 0, 0, 0.725374, 0.688355, 300, 300, 100, 1), -- Hillsbrad Foothills (Darrow Hill)
(@GUID := @GUID + 1, 106319, 1, 1, -175.803, -1799.15, 91.6667, 6.0912, 0, 0, -0.0958452, 0.995396, 300, 300, 100, 1), -- The Barrens
(@GUID := @GUID + 1, 153451, 0, 1, -161.006, -3784.68, 239.553, 1.13446, 0, 0, 0.537299, 0.843392, 300, 300, 100, 1), -- The Hinterlands (Jintha''Alor)
(@GUID := @GUID + 1, 2855, 1, 1, -127.378, 869.742, 119.095, 2.47837, 0, 0, 0.945518, 0.325568, 300, 300, 100, 1), -- Desolace (Sargeron)
(@GUID := @GUID + 1, 2849, 1, 1, -66.701, -517.713, -46.1329, 1.48353, 0, 0, 0.67559, 0.737278, 300, 300, 100, 1), -- Stonetalon Mountains (Camp Aparaje)
(@GUID := @GUID + 1, 106319, 1, 1, -52.4683, -1644.28, 91.6667, 0, 0, 0, 0, 1, 300, 300, 100, 1), -- The Barrens
(@GUID := @GUID + 1, 111095, 0, 1, 62.7082, 789.352, 64.0437, 2.42601, 0, 0, 0.936672, 0.350207, 300, 300, 100, 1), -- Silverpine Forest (Ambermill)
(@GUID := @GUID + 1, 111095, 0, 1, 73.6613, 767.879, 63.6439, 4.88692, 0, 0, -0.642787, 0.766045, 300, 300, 100, 1), -- Silverpine Forest (Ambermill)
(@GUID := @GUID + 1, 105579, 0, 1, 96.9252, 367.759, 43.922, 3.97936, 0, 0, -0.913545, 0.406738, 300, 300, 100, 1), -- Alterac Mountains (Dalaran)
(@GUID := @GUID + 1, 105579, 0, 1, 335.954, 185.797, 42.9273, 4.69494, 0, 0, -0.71325, 0.70091, 300, 300, 100, 1), -- Alterac Mountains (Dalaran)
(@GUID := @GUID + 1, 2849, 0, 1, 389.709, 645.387, 35.1687, 3.89209, 0, 0, -0.930417, 0.366502, 300, 300, 100, 1), -- Silverpine Forest
(@GUID := @GUID + 1, 105579, 0, 1, 424.828, 221.755, 42.888, 0.663223, 0, 0, 0.325567, 0.945519, 300, 300, 100, 1), -- Alterac Mountains (Dalaran)
(@GUID := @GUID + 1, 2857, 0, 1, 457.387, -219.749, 152.522, 0.488691, 0, 0, 0.241921, 0.970296, 300, 300, 100, 1), -- Alterac Mountains (Ruins of Alterac)
(@GUID := @GUID + 1, 2855, 0, 1, 511.342, -333.542, 153.674, 0.925024, 0, 0, 0.446198, 0.894934, 300, 300, 100, 1), -- Alterac Mountains (Ruins of Alterac)
(@GUID := @GUID + 1, 2849, 1, 1, 532.814, -1432.29, 91.6667, 4.95674, 0, 0, -0.615661, 0.788011, 300, 300, 100, 1), -- The Barrens (The Dry Hills)
(@GUID := @GUID + 1, 106318, 1, 1, 555.007, -4266.48, 16.5141, 4.24115, 0, 0, -0.85264, 0.522499, 300, 300, 100, 1), -- Durotar
(@GUID := @GUID + 1, 2855, 0, 1, 623.352, -295.892, 152.887, 3.85718, 0, 0, -0.936671, 0.35021, 300, 300, 100, 1), -- Alterac Mountains (Ruins of Alterac)
(@GUID := @GUID + 1, 2850, 1, 1, 628.739, 1822.79, -10.3557, 3.9619, 0, 0, -0.91706, 0.39875, 300, 300, 100, 1), -- Stonetalon Mountains (The Charred Vale)
(@GUID := @GUID + 1, 2850, 1, 1, 676.759, 1439.35, -7.96637, 5.51524, 0, 0, -0.374606, 0.927184, 300, 300, 100, 1), -- Stonetalon Mountains (The Charred Vale)
(@GUID := @GUID + 1, 106319, 1, 1, 892.032, -2694.98, 100.275, 3.26377, 0, 0, -0.998135, 0.0610518, 300, 300, 100, 1), -- The Barrens
(@GUID := @GUID + 1, 106319, 0, 1, 983.86, 1199.85, 48.4682, 0.680677, 0, 0, 0.333806, 0.942642, 300, 300, 100, 1), -- Silverpine Forest (Valgan''s Field)
(@GUID := @GUID + 1, 2849, 1, 1, 998.705, -333.697, 0.770707, 4.72984, 0, 0, -0.700909, 0.713251, 300, 300, 100, 1), -- Stonetalon Mountains (Windshear Mine)
(@GUID := @GUID + 1, 2849, 0, 1, 999.366, 699.265, 53.8206, 1.02974, 0, 0, 0.492423, 0.870356, 300, 300, 100, 1), -- Silverpine Forest (Fenris Keep)
(@GUID := @GUID + 1, 2850, 1, 1, 1001.33, 1698.48, -5.53388, 0.087266, 0, 0, 0.0436192, 0.999048, 300, 300, 100, 1), -- Stonetalon Mountains (The Charred Vale)
(@GUID := @GUID + 1, 106319, 0, 1, 1007.36, 1566.84, 28.9856, 1.32645, 0, 0, 0.615661, 0.788011, 300, 300, 100, 1), -- Silverpine Forest (The Dead Field)
(@GUID := @GUID + 1, 106319, 1, 1, 1019.25, -3119.55, 80.7686, 2.09439, 0, 0, 0.866025, 0.500001, 300, 300, 100, 1), -- The Barrens (The Sludge Fen)
(@GUID := @GUID + 1, 106319, 0, 1, 1036.53, 1620.64, 25.1019, 0.820303, 0, 0, 0.398748, 0.91706, 300, 300, 100, 1), -- Silverpine Forest (The Dead Field)
(@GUID := @GUID + 1, 2857, 0, 1, 1108.17, -719.517, 71.5193, 3.99681, 0, 0, -0.909961, 0.414694, 300, 300, 100, 1), -- Alterac Mountains (The Uplands)
(@GUID := @GUID + 1, 2857, 0, 1, 1115.39, -344.918, 43.6731, 5.51524, 0, 0, -0.374606, 0.927184, 300, 300, 100, 1), -- Alterac Mountains (Dandred''s Fold)
(@GUID := @GUID + 1, 106319, 0, 1, 1158.05, 965.709, 32.3014, 3.07177, 0, 0, 0.999391, 0.0349061, 300, 300, 100, 1), -- Silverpine Forest (The Shining Strand)
(@GUID := @GUID + 1, 106319, 0, 1, 1175.96, 931.949, 33.0883, 3.89209, 0, 0, -0.930417, 0.366502, 300, 300, 100, 1), -- Silverpine Forest (The Shining Strand)
(@GUID := @GUID + 1, 106319, 0, 1, 1208.59, 896.666, 33.4174, 2.61799, 0, 0, 0.965925, 0.258821, 300, 300, 100, 1), -- Silverpine Forest (The Shining Strand)
(@GUID := @GUID + 1, 2857, 0, 1, 1215.36, -326.468, 48.3828, 0.942477, 0, 0, 0.45399, 0.891007, 300, 300, 100, 1), -- Alterac Mountains (Dandred''s Fold)
(@GUID := @GUID + 1, 2849, 1, 1, 1262.87, -5.11133, -5.45986, 4.31097, 0, 0, -0.833885, 0.551938, 300, 300, 100, 1), -- Stonetalon Mountains (Windshear Crag)
(@GUID := @GUID + 1, 2849, 1, 1, 1427.23, -3411.86, 91.7705, 1.37881, 0, 0, 0.636078, 0.771625, 300, 300, 100, 1), -- The Barrens (Boulder Lode Mine)
(@GUID := @GUID + 1, 106318, 1, 1, 1485.68, -4739.94, -4.47406, 0.104719, 0, 0, 0.0523357, 0.99863, 300, 300, 100, 1), -- Durotar (Skull Rock)
(@GUID := @GUID + 1, 106318, 1, 1, 1488.48, -4752.36, 21.0269, 1.3439, 0, 0, 0.622514, 0.782609, 300, 300, 100, 1), -- Durotar (Skull Rock)
(@GUID := @GUID + 1, 2849, 1, 1, 1608.78, 141.983, 104.847, 5.3058, 0, 0, -0.469471, 0.882948, 300, 300, 100, 1), -- Stonetalon Mountains (Cragpool Lake)
(@GUID := @GUID + 1, 3689, 1, 1, 1817.35, -2628.76, 61.1289, 1.67551, 0, 0, 0.743144, 0.669132, 300, 300, 100, 1), -- Ashenvale (The Dor''Danil Barrow Den)
(@GUID := @GUID + 1, 2852, 1, 1, 1872.33, -2765.32, 62.6937, 2.65289, 0, 0, 0.970295, 0.241925, 300, 300, 100, 1), -- Ashenvale (The Dor''Danil Barrow Den)
(@GUID := @GUID + 1, 3702, 1, 1, 1914.78, -2641.69, 82.8735, 0.209439, 0, 0, 0.104528, 0.994522, 300, 300, 100, 1), -- Ashenvale (The Dor''Danil Barrow Den)
(@GUID := @GUID + 1, 2850, 1, 1, 1994.6, -1234.64, 57.3724, 0.523598, 0, 0, 0.258819, 0.965926, 300, 300, 100, 1), -- Ashenvale (Mystral Lake)
(@GUID := @GUID + 1, 2850, 1, 1, 2203.02, -1432.82, 90.4306, 0.872664, 0, 0, 0.422618, 0.906308, 300, 300, 100, 1), -- Ashenvale (Greenpaw Village)
(@GUID := @GUID + 1, 2850, 1, 1, 2241.25, -1544.39, 88.66, 0.820303, 0, 0, 0.398748, 0.91706, 300, 300, 100, 1), -- Ashenvale (Greenpaw Village)
(@GUID := @GUID + 1, 106318, 0, 1, 2342.99, 1319.23, 34.0111, 4.55531, 0, 0, -0.760405, 0.649449, 300, 300, 100, 1), -- Tirisfal Glades (Solliden Farmstead)
(@GUID := @GUID + 1, 2850, 1, 1, 2380.96, -1179.1, 91.4765, 3.47321, 0, 0, -0.986285, 0.16505, 300, 300, 100, 1), -- Ashenvale
(@GUID := @GUID + 1, 153454, 0, 1, 2416.02, -3709.41, 177.675, 4.46804, 0, 0, -0.788011, 0.615662, 300, 300, 100, 1), -- Eastern Plaguelands (The Fungal Vale)
(@GUID := @GUID + 1, 3715, 1, 1, 2419.41, 1791.47, 349.38, 3.17653, 0, 0, -0.999847, 0.0174693, 300, 300, 100, 1), -- Stonetalon Mountains (The Talon Den)
(@GUID := @GUID + 1, 153453, 0, 1, 2704.41, -1942.55, 72.15, 3.82227, 0, 0, -0.942641, 0.333808, 300, 300, 100, 1), -- Western Plaguelands
(@GUID := @GUID + 1, 153453, 1, 1, 2754.89, -5400.19, 116.273, 5.81195, 0, 0, -0.233445, 0.97237, 300, 300, 100, 1), -- Azshara (Lake Mennar)
(@GUID := @GUID + 1, 106318, 0, 1, 2762.72, 788.501, 114.367, 1.95477, 0, 0, 0.829038, 0.559193, 300, 300, 100, 1), -- Tirisfal Glades (Agamand Mills)
(@GUID := @GUID + 1, 2852, 1, 1, 2774.58, -3016.76, 154.125, 0.85521, 0, 0, 0.414693, 0.909962, 300, 300, 100, 1), -- Ashenvale (Satyrnaar)
(@GUID := @GUID + 1, 153454, 0, 1, 2796.36, -5403.23, 162.927, 2.56563, 0, 0, 0.958819, 0.284016, 300, 300, 100, 1), -- Eastern Plaguelands (The Noxious Glade)
(@GUID := @GUID + 1, 106318, 0, 1, 3026.86, 373.43, -1.28392, 3.26377, 0, 0, -0.998135, 0.0610518, 300, 300, 100, 1), -- Tirisfal Glades (The North Coast)
(@GUID := @GUID + 1, 106318, 0, 1, 3058.99, 2.03689, -1.59202, 3.71755, 0, 0, -0.958819, 0.284016, 300, 300, 100, 1), -- Tirisfal Glades (The North Coast)
(@GUID := @GUID + 1, 2850, 1, 1, 3288.89, -586.277, 156.085, 0.680677, 0, 0, 0.333806, 0.942642, 300, 300, 100, 1), -- Ashenvale (Thistlefur Village)
(@GUID := @GUID + 1, 153454, 0, 1, 3333.82, -5000.1, 168.712, 4.36332, 0, 0, -0.819152, 0.573577, 300, 300, 100, 1), -- Eastern Plaguelands (Zul''Mashar)
(@GUID := @GUID + 1, 2850, 1, 1, 3334.05, -738.619, 165.437, 4.46804, 0, 0, -0.788011, 0.615662, 300, 300, 100, 1), -- Ashenvale (Thistlefur Hold)
(@GUID := @GUID + 1, 2850, 1, 1, 3374.5, -485.57, 154.218, 1.16937, 0, 0, 0.551936, 0.833886, 300, 300, 100, 1), -- Ashenvale (Thistlefur Village)
(@GUID := @GUID + 1, 2849, 1, 1, 3450.3, 1033.85, 0.674683, 3.03684, 0, 0, 0.998629, 0.0523532, 300, 300, 100, 1), -- Ashenvale (The Zoram Strand)
(@GUID := @GUID + 1, 153453, 1, 1, 4301.38, -7222.64, 24.7146, 1.27409, 0, 0, 0.594822, 0.803857, 300, 300, 100, 1), -- Azshara (The Shattered Strand)
(@GUID := @GUID + 1, 153453, 1, 1, 4376.94, -6132.56, 122.385, 1.8675, 0, 0, 0.803857, 0.594823, 300, 300, 100, 1), -- Azshara (Thalassian Base Camp)
(@GUID := @GUID + 1, 153453, 1, 1, 4459.83, -5529.17, 109.138, 4.57276, 0, 0, -0.754709, 0.656059, 300, 300, 100, 1), -- Azshara (Ursolan)
(@GUID := @GUID + 1, 3661, 1, 1, 5470.45, 583.138, -0.04548, 5.09636, 0, 0, -0.559193, 0.829038, 300, 300, 100, 1), -- Darkshore (Twilight Shore)
(@GUID := @GUID + 1, 3661, 1, 1, 5566.8, 575.271, -1.72532, 5.21854, 0, 0, -0.507538, 0.861629, 300, 300, 100, 1), -- Darkshore (Twilight Shore)
(@GUID := @GUID + 1, 106319, 1, 1, 5627.37, 163.007, 32.416, 4.79966, 0, 0, -0.67559, 0.737278, 300, 300, 100, 1), -- Darkshore (Ameth''Aran)
(@GUID := @GUID + 1, 3661, 1, 1, 6103.46, 815.633, -33.4195, 2.61799, 0, 0, 0.965925, 0.258821, 300, 300, 100, 1), -- Darkshore (The Long Wash)
(@GUID := @GUID + 1, 106319, 1, 1, 6744.83, -207.431, 33.7675, 3.15906, 0, 0, -0.999962, 0.00873464, 300, 300, 100, 1), -- Darkshore (Bashal''Aran)
(@GUID := @GUID + 1, 3660, 1, 1, 7046.27, 407.369, -22.604, 2.04204, 0, 0, 0.85264, 0.522499, 300, 300, 100, 1), -- Darkshore (Mist''s Edge)
(@GUID := @GUID + 1, 3660, 1, 1, 7133.91, 303.566, -40.9871, 3.76991, 0, 0, -0.951056, 0.309017, 300, 300, 100, 1), -- Darkshore (Mist''s Edge)
(@GUID := @GUID + 1, 2849, 1, 1, 7443.65, 49.5524, 1.6797, 4.01426, 0, 0, -0.906307, 0.422619, 300, 300, 100, 1), -- Darkshore (Mist''s Edge)
(@GUID := @GUID + 1, 3660, 1, 1, 7444.92, -227.195, -0.214618, 3.68265, 0, 0, -0.96363, 0.267241, 300, 300, 100, 1), -- Darkshore (Mist''s Edge)
(@GUID := @GUID + 1, 3660, 1, 1, 7558.19, -376.235, -1.87434, 1.37881, 0, 0, 0.636078, 0.771625, 300, 300, 100, 1), -- Darkshore (Mist''s Edge)
(@GUID := @GUID + 1, 2849, 1, 1, 7644.49, -909.221, 18.4929, 5.16618, 0, 0, -0.529919, 0.848048, 300, 300, 100, 1), -- Darkshore (Ruins of Mathystra)
(@GUID := @GUID + 1, 3660, 1, 1, 8059.07, -1012.45, -6.44795, 0.767944, 0, 0, 0.374606, 0.927184, 300, 300, 100, 1), -- Darkshore (Mist''s Edge)
(@GUID := @GUID + 1, 106318, 1, 1, 9730.49, 1576.73, 1269.44, 3.07177, 0, 0, 0.999391, 0.0349061, 300, 300, 100, 1), -- Teldrassil (Ban''ethil Barrow Den)
(@GUID := @GUID + 1, 106318, 1, 1, 9800.56, 1581.16, 1291.2, 5.65487, 0, 0, -0.309016, 0.951057, 300, 300, 100, 1), -- Teldrassil (Ban''ethil Barrow Den)
(@GUID := @GUID + 1, 106318, 1, 1, 9831.43, 1533.49, 1257.51, 1.36136, 0, 0, 0.62932, 0.777146, 300, 300, 100, 1), -- Teldrassil (Ban''ethil Barrow Den)
(@GUID := @GUID + 1, 106318, 1, 1, 10620.3, 2089.35, 1336.54, 4.7822, 0, 0, -0.681998, 0.731354, 300, 300, 100, 1), -- Teldrassil (The Oracle Glade)
(@GUID := @GUID + 1, 106318, 1, 1, 10751.3, 2214.47, 1331.51, 4.69494, 0, 0, -0.71325, 0.70091, 300, 300, 100, 1), -- Teldrassil (The Oracle Glade)
(@GUID := @GUID + 1, 106318, 1, 1, 10890.4, 1968.21, 1321.79, 4.95674, 0, 0, -0.615661, 0.788011, 300, 300, 100, 1); -- Teldrassil (The Oracle Glade)

-- some pools might be empty for now 31050,31019,31238,31177,31080,31081,31263,31218,31030,31102,31217,31239,31138,31197,31130
-- mostly zone pools without area identifier, keep them though as they do no harm and might be needed again
DELETE FROM `pool_template` WHERE `entry` IN (31151,31330,31331,31332,31333,31334,31335,31336,31337,31338,31339,31340,31341);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(31151, 1, 'Stonetalon Mountains (Windshear Mine)'),
(31330, 1, 'Dun Morogh (Shimmer Ridge) - Chest Pool'),
(31331, 1, 'The Barrens (The Tidus Stair) - Chest Pool'),
(31332, 1, 'Silverpine Forest (Beren''s Peril) - Chest Pool'),
(31333, 1, 'Stonetalon Mountains (Camp Aparaje) - Chest Pool'),
(31334, 1, 'Stonetalon Mountains (Cragpool Lake) - Chest Pool'),
(31335, 1, 'Tirisfal Glades (Solliden Farmstead) - Chest Pool'),
(31336, 1, 'Azshara (The Shattered Strand) - Chest Pool'),
(31337, 1, 'Azshara (Thalassian Base Camp) - Chest Pool'),
(31338, 1, 'Darkshore (Twilight Shore) - Chest Pool'),
(31339, 1, 'Darkshore (The Long Wash) - Chest Pool'),
(31340, 1, 'Stonetalon Mountains (Windshear Crag)'),
(31341, 1, 'The Barrens (The Crossroads & Ratchet) - Chest Pool');

DELETE FROM `pool_pool` WHERE `pool_id` IN (31151,31330,31331,31332,31333,31334,31335,31336,31337,31338,31339,31340,31341);
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES
(31151, 39912, 0, 'Stonetalon Mountains (Windshear Mine)'),
(31330, 39900, 0, 'Dun Morogh (Shimmer Ridge) - Chest Pool'),
(31331, 39910, 0, 'The Barrens (The Tidus Stair) - Chest Pool'),
(31332, 39908, 0, 'Silverpine Forest (Beren''s Peril) - Chest Pool'),
(31333, 39912, 0, 'Stonetalon Mountains (Camp Aparaje) - Chest Pool'),
(31334, 39912, 0, 'Stonetalon Mountains (Cragpool Lake) - Chest Pool'),
(31335, 39905, 0, 'Tirisfal Glades (Solliden Farmstead) - Chest Pool'),
(31336, 39929, 0, 'Azshara (The Shattered Strand) - Chest Pool'),
(31337, 39929, 0, 'Azshara (Thalassian Base Camp) - Chest Pool'),
(31338, 39906, 0, 'Darkshore (Twilight Shore) - Chest Pool'),
(31339, 39906, 0, 'Darkshore (The Long Wash) - Chest Pool'),
(31340, 39912, 0, 'Stonetalon Mountains (Windshear Crag)'),
(31341, 39910, 0, 'The Barrens (The Crossroads & Ratchet) - Chest Pool');

-- set each mother pool max_limit to the number of pools in the mother pool
-- https://github.com/cmangos/tbc-db/commit/3316cd0581a870e18b51b155b9d806d94029fab0#r53800232
UPDATE `pool_template` SET `max_limit` = 13 WHERE `entry` = 39900; -- Dun Morogh - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 11 WHERE `entry` = 39901; -- Durotar - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 14 WHERE `entry` = 39902; -- Elwynn Forest - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 8 WHERE `entry` = 39903; -- Mulgore - Master Chest Pool	
UPDATE `pool_template` SET `max_limit` = 7 WHERE `entry` = 39904; -- Teldrassil - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 9 WHERE `entry` = 39905; -- Tirisfal Glades - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 13 WHERE `entry` = 39906; -- Darkshore - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 7 WHERE `entry` = 39907; -- Loch Modan - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 11 WHERE `entry` = 39908; -- Silverpine Forest - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 13 WHERE `entry` = 39909; -- Westfall - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 20 WHERE `entry` = 39910; -- Barrens - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 15 WHERE `entry` = 39911; -- Redridge Mountains - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 8 WHERE `entry` = 39912; -- Stonetalon Mountains - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 11 WHERE `entry` = 39913; -- Ashenvale - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 12 WHERE `entry` = 39914; -- Duskwood - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 7 WHERE `entry` = 39915; -- Hillsbrad Foothills - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 12 WHERE `entry` = 39916; -- Wetlands - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 7 WHERE `entry` = 39917; -- Thousand Needles - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 6 WHERE `entry` = 39918; -- Alterac Mountains - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 9 WHERE `entry` = 39919; -- Arathi Highlands - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 8 WHERE `entry` = 39920; -- Desolace - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 24 WHERE `entry` = 39921; -- Stranglethorn Vale - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 10 WHERE `entry` = 39922; -- Dustwallow Marsh - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 7 WHERE `entry` = 39923; -- Badlands - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 6 WHERE `entry` = 39924; -- Swamp of Sorrows - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 11 WHERE `entry` = 39926; -- The Hinterlands - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 5 WHERE `entry` = 39927; -- Tanaris - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 6 WHERE `entry` = 39928; -- Searing Gorge - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 14 WHERE `entry` = 39929; -- Azshara - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 3 WHERE `entry` = 39930; -- Blasted Lands - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 6 WHERE `entry` = 39933; -- Burning Steppes - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 11 WHERE `entry` = 39934; -- Western Plaguelands - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 11 WHERE `entry` = 39936; -- Eastern Plaguelands - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 6 WHERE `entry` = 39937; -- Winterspring - Master Chest Pool

SET @GUID := 300051;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN @GUID AND @GUID+206;
DELETE FROM `pool_gameobject` WHERE `guid` IN (40708,40709,40711,13310,300048,13305,13309,48651,48765,48774,13435,13438,47972,47973);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@GUID := @GUID + 0, 31076, 0, 'Stranglethorn Vale (Crystalvein Mine) - Solid Chest (4149)'),
(@GUID := @GUID + 1, 31073, 0, 'Stranglethorn Vale - Solid Chest (4149)'),
(@GUID := @GUID + 1, 31078, 0, 'Stranglethorn Vale (Mizjah Ruins) - Solid Chest (4149)'),
(@GUID := @GUID + 1, 31278, 0, 'Stranglethorn Vale (The Stockpile) - Solid Chest (2857)'),
(@GUID := @GUID + 1, 31093, 0, 'Westfall (Longshore) - Battered Chest (2849)'),
(@GUID := @GUID + 1, 31025, 0, 'Swamp of Sorrows (Misty Reed Strand) - Solid Chest (4149)'),
(@GUID := @GUID + 1, 31088, 0, 'Westfall (Moonbrook) - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31021, 0, 'Blasted Lands (Dreadmaul Hold) - Solid Chest (153451)'),
(@GUID := @GUID + 1, 31089, 0, 'Westfall (Gold Coast Quarry) - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31036, 0, 'Duskwood (Manor Mistmantle) - Solid Chest (2852)'),
(@GUID := @GUID + 1, 31026, 0, 'Swamp of Sorrows (Misty Valley) - Solid Chest (2857)'),
(@GUID := @GUID + 1, 31022, 0, 'Swamp of Sorrows (Fallow Sanctuary) - Solid Chest (2857)'),
(@GUID := @GUID + 1, 31090, 0, 'Westfall (Jangolode Mine) - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31200, 0, 'Redridge Mountains (Galardell Valley) - Solid Chest (2850)'),
(@GUID := @GUID + 1, 31250, 0, 'Elwynn Forest (Stone Cairn Lake) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31196, 0, 'Redridge Mountains (Redridge Canyons) - Battered Chest (2849)'),
(@GUID := @GUID + 1, 31314, 0, 'Redridge Mountains (Rethban Caverns) - Battered Chest (2849)'),
(@GUID := @GUID + 1, 31202, 0, 'Redridge Mountains (Render''s Camp) - Solid Chest (2850)'),
(@GUID := @GUID + 1, 31143, 0, 'Tanaris (Dunemaul Compound) - Solid Chest (153451)'),
(@GUID := @GUID + 1, 31143, 0, 'Tanaris (Dunemaul Compound) - Solid Chest (153451)'),
(@GUID := @GUID + 1, 31188, 0, 'Burning Steppes - Solid Chest (153453)'),
(@GUID := @GUID + 1, 31188, 0, 'Burning Steppes - Solid Chest (153453)'),
(@GUID := @GUID + 1, 31193, 0, 'Burning Steppes (Terror Wing Path) - Solid Chest (153453)'),
(@GUID := @GUID + 1, 31188, 0, 'Burning Steppes - Solid Chest (153453)'),
(@GUID := @GUID + 1, 31142, 0, 'Tanaris (Lost Rigger Cove) - Solid Chest (153451)'),
(@GUID := @GUID + 1, 31189, 0, 'Burning Steppes (Blackrock Stronghold) - Solid Chest (153453)'),
(@GUID := @GUID + 1, 31193, 0, 'Burning Steppes (Terror Wing Path) - Solid Chest (153453)'),
(@GUID := @GUID + 1, 31115, 0, 'Searing Gorge (Firewatch Ridge) - Solid Chest (4149)'),
(@GUID := @GUID + 1, 31134, 0, 'Thousand Needles (The Rustmaul Dig Site) - Solid Chest (2855)'),
(@GUID := @GUID + 1, 31134, 0, 'Thousand Needles (The Rustmaul Dig Site) - Solid Chest (2855)'),
(@GUID := @GUID + 1, 31134, 0, 'Thousand Needles (The Rustmaul Dig Site) - Solid Chest (2855)'),
(@GUID := @GUID + 1, 31209, 0, 'Loch Modan (Stonesplinter Valley) - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31209, 0, 'Loch Modan (Stonesplinter Valley) - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31242, 0, 'Dun Morogh (Ironband''s Compound) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31237, 0, 'Dun Morogh (Frostmane Hold) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31207, 0, 'Loch Modan (Ironband''s Excavation Site) - Battered Chest (2849)'),
(@GUID := @GUID + 1, 31300, 0, 'Thousand Needles (Roguefeather Den) - Solid Chest (2852)'),
(@GUID := @GUID + 1, 31206, 0, 'Loch Modan (The Loch) - Battered Chest (2849)'),
(@GUID := @GUID + 1, 31322, 0, 'Dun Morogh (The Grizzled Den) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31322, 0, 'Dun Morogh (The Grizzled Den) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31206, 0, 'Loch Modan (The Loch) - Battered Chest (2849)'),
(@GUID := @GUID + 1, 31132, 0, 'Thousand Needles (Highperch) - Solid Chest (2852)'),
(@GUID := @GUID + 1, 31133, 0, 'Thousand Needles (Splithoof Crag) - Solid Chest (2852)'),
(@GUID := @GUID + 1, 31330, 0, 'Dun Morogh (Shimmer Ridge) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31133, 0, 'Thousand Needles (Splithoof Crag) - Solid Chest (2852)'),
(@GUID := @GUID + 1, 31210, 0, 'Loch Modan - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31301, 0, 'Thousand Needles (Splithoof Hold) - Solid Chest (2852)'),
(@GUID := @GUID + 1, 31211, 0, 'Loch Modan (Silver Stream Mine) - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31211, 0, 'Loch Modan (Silver Stream Mine) - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31274, 0, 'Dustwallow Marsh (Wyrmbog) - Solid Chest (4149)'),
(@GUID := @GUID + 1, 31038, 0, 'Wetlands - Solid Chest (2850)'),
(@GUID := @GUID + 1, 31320, 0, 'The Barrens (Bael''dun Keep) - Weapon/Armor Crate (3689,3702)'),
(@GUID := @GUID + 1, 31320, 0, 'The Barrens (Bael''dun Keep) - Weapon/Armor Crate (3689,3702)'),
(@GUID := @GUID + 1, 31216, 0, 'The Barrens (Blackthorn Ridge) - Solid Chest (2850)'),
(@GUID := @GUID + 1, 31040, 0, 'Wetlands (Mosshide Fen) - Solid Chest (2850)'),
(@GUID := @GUID + 1, 31043, 0, 'Wetlands (Angerfang Encampment) - Solid Chest (2852)'),
(@GUID := @GUID + 1, 31043, 0, 'Wetlands (Angerfang Encampment) - Solid Chest (2852)'),
(@GUID := @GUID + 1, 31043, 0, 'Wetlands (Angerfang Encampment) - Solid Chest (2852)'),
(@GUID := @GUID + 1, 31041, 0, 'Wetlands (Bluegill Marsh) - Solid Chest (2850)'),
(@GUID := @GUID + 1, 31164, 0, 'Mulgore - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31048, 0, 'Dustwallow Marsh (Dreadmurk Shore) - Solid Chest (2857)'),
(@GUID := @GUID + 1, 31170, 0, 'Mulgore (The Rolling Plains) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31308, 0, 'Mulgore (Paleman Rock) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31317, 0, 'The Barrens (Northwatch Hold) - Tattered Chest (111095)'),
(@GUID := @GUID + 1, 31100, 0, 'Arathi Highlands (The Drowned Reef) - Solid Chest (2857)'),
(@GUID := @GUID + 1, 31317, 0, 'The Barrens (Northwatch Hold) - Weapon Crate (3689)'),
(@GUID := @GUID + 1, 31213, 0, 'The Barrens (Agama''gor) - Battered Chest (2849)'),
(@GUID := @GUID + 1, 31317, 0, 'The Barrens (Northwatch Hold) - Tattered Chest (111095)'),
(@GUID := @GUID + 1, 31101, 0, 'Arathi Highlands (Boulderfist Hall) - Solid Chest (2857)'),
(@GUID := @GUID + 1, 31213, 0, 'The Barrens (Agama''gor) - Battered Chest (2849)'),
(@GUID := @GUID + 1, 31317, 0, 'The Barrens (Northwatch Hold) - Tattered Chest (111095)'),
(@GUID := @GUID + 1, 31317, 0, 'The Barrens (Northwatch Hold) - Weapon Crate (3689)'),
(@GUID := @GUID + 1, 31168, 0, 'Mulgore (Ravaged Caravan) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31169, 0, 'Mulgore (The Venture Co. Mine) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31140, 0, 'Desolace (Magram Village) - Solid Chest (2857)'),
(@GUID := @GUID + 1, 31166, 0, 'Mulgore (Bael''dun Digsite) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31097, 0, 'Arathi Highlands (Witherbark Village) - Solid Chest (2855)'),
(@GUID := @GUID + 1, 31213, 0, 'The Barrens (Agama''gor) - Battered Chest (2849)'),
(@GUID := @GUID + 1, 31225, 0, 'The Barrens (The Merchant Coast) - Weapon Crate (3689)'),
(@GUID := @GUID + 1, 31097, 0, 'Arathi Highlands (Witherbark Village) - Solid Chest (2855)'),
(@GUID := @GUID + 1, 31099, 0, 'Arathi Highlands (Stromgarde Keep) - Solid Chest (2857)'),
(@GUID := @GUID + 1, 31225, 0, 'The Barrens (The Merchant Coast) - Weapon Crate (3689)'),
(@GUID := @GUID + 1, 31225, 0, 'The Barrens (The Merchant Coast) - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31169, 0, 'Mulgore (The Venture Co. Mine) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31099, 0, 'Arathi Highlands (Stromgarde Keep) - Solid Chest (2857)'),
(@GUID := @GUID + 1, 31099, 0, 'Arathi Highlands (Stromgarde Keep) - Tattered Chest (105581)'),
(@GUID := @GUID + 1, 31225, 0, 'The Barrens (The Merchant Coast) - Armor/Weapon Crate (3660,3661)'),
(@GUID := @GUID + 1, 31225, 0, 'The Barrens (The Merchant Coast) - Armor/Weapon Crate (3660,3661)'),
(@GUID := @GUID + 1, 31099, 0, 'Arathi Highlands (Stromgarde Keep) - Tattered Chest (105581)'),
(@GUID := @GUID + 1, 31289, 0, 'Arathi Highlands (Go''Shek Farm) - Tattered Chest (105578)'),
(@GUID := @GUID + 1, 31225, 0, 'The Barrens (The Merchant Coast) - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31225, 0, 'The Barrens (The Merchant Coast) - Armor/Weapon Crate (3660,3661)'),
(@GUID := @GUID + 1, 31225, 0, 'The Barrens (The Merchant Coast) - Weapon Crate (3689)'),
(@GUID := @GUID + 1, 31221, 0, 'The Barrens - Armor/Weapon Crate (3660,3661)'),
(@GUID := @GUID + 1, 31221, 0, 'The Barrens - Armor/Weapon Crate (3660,3661)'),
(@GUID := @GUID + 1, 31221, 0, 'The Barrens - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31139, 0, 'Desolace (Valley of Spears) - Solid Chest (2857)'),
(@GUID := @GUID + 1, 31225, 0, 'The Barrens (The Merchant Coast) - Armor/Weapon Crate (3660,3661)'),
(@GUID := @GUID + 1, 31139, 0, 'Desolace (Valley of Spears) - Solid Chest (2857)'),
(@GUID := @GUID + 1, 31220, 0, 'The Barrens (The Stagnant Oasis) - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31331, 0, 'The Barrens (The Tidus Stair) - Weapon Crate (3689)'),
(@GUID := @GUID + 1, 31139, 0, 'Desolace (Valley of Spears) - Solid Chest (2857)'),
(@GUID := @GUID + 1, 31139, 0, 'Desolace (Valley of Spears) - Solid Chest (2857)'),
(@GUID := @GUID + 1, 31225, 0, 'The Barrens (The Merchant Coast) - Weapon Crate (3689)'),
(@GUID := @GUID + 1, 31139, 0, 'Desolace (Valley of Spears) - Solid Chest (2857)'),
(@GUID := @GUID + 1, 31221, 0, 'The Barrens - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31290, 0, 'Arathi Highlands (Dabyrie''s Farmstead) - Tattered Chest (105579)'),
(@GUID := @GUID + 1, 31128, 0, 'Hillsbrad Foothills (Western Strand) - Solid Chest (2855)'),
(@GUID := @GUID + 1, 31290, 0, 'Arathi Highlands (Dabyrie''s Farmstead) - Tattered Chest (105579)'),
(@GUID := @GUID + 1, 31225, 0, 'The Barrens (The Merchant Coast) - Weapon Crate (3689)'),
(@GUID := @GUID + 1, 31225, 0, 'The Barrens (The Merchant Coast) - Weapon Crate (3689)'),
(@GUID := @GUID + 1, 31221, 0, 'The Barrens - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31135, 0, 'Desolace (Kolkar Village) - Solid Chest (2855)'),
(@GUID := @GUID + 1, 31129, 0, 'Hillsbrad Foothills (Nethander Stead) - Solid Chest (2852)'),
(@GUID := @GUID + 1, 31165, 0, 'Mulgore (The Golden Plains) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31299, 0, 'Hillsbrad Foothills (Azurelode Mine) - Tattered Chest (4096)'),
(@GUID := @GUID + 1, 31098, 0, 'Arathi Highlands (Northfold Manor) - Solid Chest (2855)'),
(@GUID := @GUID + 1, 31098, 0, 'Arathi Highlands (Northfold Manor) - Solid Chest (2855)'),
(@GUID := @GUID + 1, 31297, 0, 'Hillsbrad Foothills (Hillsbrad Fields) - Tattered Chest (3715)'),
(@GUID := @GUID + 1, 31297, 0, 'Hillsbrad Foothills (Hillsbrad Fields) - Tattered Chest (3715)'),
(@GUID := @GUID + 1, 31341, 0, 'The Barrens (The Crossroads & Ratchet) - Weapon Crate (3661)'),
(@GUID := @GUID + 1, 31332, 0, 'Silverpine Forest (Beren''s Peril) - Tattered Chest (111095)'),
(@GUID := @GUID + 1, 31107, 0, 'The Hinterlands (Jintha''Alor) - Solid Chest (153451)'),
(@GUID := @GUID + 1, 31182, 0, 'Silverpine Forest (Pyrewood Village) - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31341, 0, 'The Barrens (The Crossroads & Ratchet) - Weapon Crate (3661)'),
(@GUID := @GUID + 1, 31224, 0, 'The Barrens (Thorn Hill) - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31296, 0, 'Hillsbrad Foothills (Darrow Hill) - Solid Chest (2855)'),
(@GUID := @GUID + 1, 31221, 0, 'The Barrens - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31107, 0, 'The Hinterlands (Jintha''Alor) - Solid Chest (153451)'),
(@GUID := @GUID + 1, 31137, 0, 'Desolace (Sargeron) - Solid Chest (2855)'),
(@GUID := @GUID + 1, 31333, 0, 'Stonetalon Mountains (Camp Aparaje) - Battered Chest (2849)'),
(@GUID := @GUID + 1, 31221, 0, 'The Barrens - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31312, 0, 'Silverpine Forest (Ambermill) - Tattered Chest (111095)'),
(@GUID := @GUID + 1, 31312, 0, 'Silverpine Forest (Ambermill) - Tattered Chest (111095)'),
(@GUID := @GUID + 1, 31286, 0, 'Alterac Mountains (Dalaran) - Tattered Chest (105579)'),
(@GUID := @GUID + 1, 31286, 0, 'Alterac Mountains (Dalaran) - Tattered Chest (105579)'),
(@GUID := @GUID + 1, 31180, 0, 'Silverpine Forest - Battered Chest (2849)'),
(@GUID := @GUID + 1, 31286, 0, 'Alterac Mountains (Dalaran) - Tattered Chest (105579)'),
(@GUID := @GUID + 1, 31083, 0, 'Alterac Mountains (Ruins of Alterac) - Solid Chest (2857)'),
(@GUID := @GUID + 1, 31083, 0, 'Alterac Mountains (Ruins of Alterac) - Solid Chest (2855)'),
(@GUID := @GUID + 1, 31212, 0, 'The Barrens (The Dry Hills) - Battered Chest (2849)'),
(@GUID := @GUID + 1, 31230, 0, 'Durotar - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31083, 0, 'Alterac Mountains (Ruins of Alterac) - Solid Chest (2855)'),
(@GUID := @GUID + 1, 31153, 0, 'Stonetalon Mountains (The Charred Vale) - Solid Chest (2850)'),
(@GUID := @GUID + 1, 31153, 0, 'Stonetalon Mountains (The Charred Vale) - Solid Chest (2850)'),
(@GUID := @GUID + 1, 31221, 0, 'The Barrens - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31185, 0, 'Silverpine Forest (Valgan''s Field) - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31151, 0, 'Stonetalon Mountains (Windshear Mine) - Battered Chest (2849)'),
(@GUID := @GUID + 1, 31181, 0, 'Silverpine Forest (Fenris Keep) - Battered Chest (2849)'),
(@GUID := @GUID + 1, 31153, 0, 'Stonetalon Mountains (The Charred Vale) - Solid Chest (2850)'),
(@GUID := @GUID + 1, 31186, 0, 'Silverpine Forest (The Dead Field) - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31318, 0, 'The Barrens (The Sludge Fen) - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31186, 0, 'Silverpine Forest (The Dead Field) - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31084, 0, 'Alterac Mountains (The Uplands) - Solid Chest (2857)'),
(@GUID := @GUID + 1, 31085, 0, 'Alterac Mountains (Dandred''s Fold) - Solid Chest (2857)'),
(@GUID := @GUID + 1, 31183, 0, 'Silverpine Forest (The Shining Strand) - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31183, 0, 'Silverpine Forest (The Shining Strand) - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31183, 0, 'Silverpine Forest (The Shining Strand) - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31085, 0, 'Alterac Mountains (Dandred''s Fold) - Solid Chest (2857)'),
(@GUID := @GUID + 1, 31340, 0, 'Stonetalon Mountains (Windshear Crag) - Battered Chest (2849)'),
(@GUID := @GUID + 1, 31215, 0, 'The Barrens (Boulder Lode Mine) - Battered Chest (2849)'),
(@GUID := @GUID + 1, 31233, 0, 'Durotar (Skull Rock) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31233, 0, 'Durotar (Skull Rock) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31334, 0, 'Stonetalon Mountains (Cragpool Lake) - Battered Chest (2849)'),
(@GUID := @GUID + 1, 31162, 0, 'Ashenvale (The Dor''Danil Barrow Den) - Weapon/Armor Crate (3689,3702)'),
(@GUID := @GUID + 1, 31162, 0, 'Ashenvale (The Dor''Danil Barrow Den) - Solid Chest (2852)'),
(@GUID := @GUID + 1, 31162, 0, 'Ashenvale (The Dor''Danil Barrow Den) - Weapon/Armor Crate (3689,3702)'),
(@GUID := @GUID + 1, 31156, 0, 'Ashenvale (Mystral Lake) - Solid Chest (2850)'),
(@GUID := @GUID + 1, 31158, 0, 'Ashenvale (Greenpaw Village) - Solid Chest (2850)'),
(@GUID := @GUID + 1, 31158, 0, 'Ashenvale (Greenpaw Village) - Solid Chest (2850)'),
(@GUID := @GUID + 1, 31335, 0, 'Tirisfal Glades (Solliden Farmstead) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31155, 0, 'Ashenvale - Solid Chest (2850)'),
(@GUID := @GUID + 1, 31120, 0, 'Eastern Plaguelands (The Fungal Vale) - Solid Chest (153454)'),
(@GUID := @GUID + 1, 31306, 0, 'Stonetalon Mountains (The Talon Den) - Tattered Chest (3715)'),
(@GUID := @GUID + 1, 31258, 0, 'Western Plaguelands - Solid Chest (153453)'),
(@GUID := @GUID + 1, 31059, 0, 'Azshara (Lake Mennar) - Solid Chest (153453)'),
(@GUID := @GUID + 1, 31266, 0, 'Tirisfal Glades (Agamand Mills) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31163, 0, 'Ashenvale (Satyrnaar) - Solid Chest (2852)'),
(@GUID := @GUID + 1, 31121, 0, 'Eastern Plaguelands (The Noxious Glade) - Solid Chest (153454)'),
(@GUID := @GUID + 1, 31264, 0, 'Tirisfal Glades (The North Coast) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31264, 0, 'Tirisfal Glades (The North Coast) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31157, 0, 'Ashenvale (Thistlefur Village) - Solid Chest (2850)'),
(@GUID := @GUID + 1, 31119, 0, 'Eastern Plaguelands (Zul''Mashar) - Solid Chest (153454)'),
(@GUID := @GUID + 1, 31307, 0, 'Ashenvale (Thistlefur Hold) - Solid Chest (2850)'),
(@GUID := @GUID + 1, 31157, 0, 'Ashenvale (Thistlefur Village) - Solid Chest (2850)'),
(@GUID := @GUID + 1, 31154, 0, 'Ashenvale (The Zoram Strand) - Battered Chest (2849)'),
(@GUID := @GUID + 1, 31336, 0, 'Azshara (The Shattered Strand) - Solid Chest (153453)'),
(@GUID := @GUID + 1, 31337, 0, 'Azshara (Thalassian Base Camp) - Solid Chest (153453)'),
(@GUID := @GUID + 1, 31061, 0, 'Azshara (Ursolan) - Solid Chest (153453)'),
(@GUID := @GUID + 1, 31338, 0, 'Darkshore (Twilight Shore) - Armor/Weapon Crate (3660,3661)'),
(@GUID := @GUID + 1, 31338, 0, 'Darkshore (Twilight Shore) - Armor/Weapon Crate (3660,3661)'),
(@GUID := @GUID + 1, 31175, 0, 'Darkshore (Ameth''Aran) - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31339, 0, 'Darkshore (The Long Wash) - Armor/Weapon Crate (3660,3661)'),
(@GUID := @GUID + 1, 31176, 0, 'Darkshore (Bashal''Aran) - Battered Chest (106319)'),
(@GUID := @GUID + 1, 31310, 0, 'Darkshore (Mist''s Edge) - Armor/Weapon Crate (3660,3661)'),
(@GUID := @GUID + 1, 31310, 0, 'Darkshore (Mist''s Edge) - Armor/Weapon Crate (3660,3661)'),
(@GUID := @GUID + 1, 31310, 0, 'Darkshore (Mist''s Edge) - Battered Chest (2849)'),
(@GUID := @GUID + 1, 31310, 0, 'Darkshore (Mist''s Edge) - Armor/Weapon Crate (3660,3661)'),
(@GUID := @GUID + 1, 31310, 0, 'Darkshore (Mist''s Edge) - Armor/Weapon Crate (3660,3661)'),
(@GUID := @GUID + 1, 31174, 0, 'Darkshore (Ruins of Mathystra) - Battered Chest (2849)'),
(@GUID := @GUID + 1, 31310, 0, 'Darkshore (Mist''s Edge) - Armor/Weapon Crate (3660,3661)'),
(@GUID := @GUID + 1, 31329, 0, 'Teldrassil (Ban''ethil Barrow Den) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31329, 0, 'Teldrassil (Ban''ethil Barrow Den) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31329, 0, 'Teldrassil (Ban''ethil Barrow Den) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31267, 0, 'Teldrassil (The Oracle Glade) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31267, 0, 'Teldrassil (The Oracle Glade) - Battered Chest (106318)'),
(@GUID := @GUID + 1, 31267, 0, 'Teldrassil (The Oracle Glade) - Battered Chest (106318)'),
-- Reinsert for better pool/description
(40708, 31151, 0, 'Stonetalon Mountains (Windshear Mine) - Battered Chest (2849)'),
(40709, 31151, 0, 'Stonetalon Mountains (Windshear Mine) - Battered Chest (2849)'),
(40711, 31340, 0, 'Stonetalon Mountains (Windshear Crag) - Battered Chest (2849)'),
(13310, 31341, 0, 'The Barrens (The Crossroads & Ratchet) - Weapon Crate (3661)'),
(300048, 31341, 0, 'The Barrens (The Crossroads & Ratchet) - Weapon Crate (3689)'),
(13305, 31225, 0, 'The Barrens (The Merchant Coast) - Armor/Weapon Crate (3660,3661)'),
(13309, 31221, 0, 'The Barrens - Armor/Weapon Crate (3660,3661)'),
(48651, 31310, 0, 'Darkshore (Mist\'s Edge) - Armor/Weapon Crate (3660,3661)'),
(48765, 31310, 0, 'Darkshore (Mist\'s Edge) - Armor/Weapon Crate (3660,3661)'),
(48774, 31310, 0, 'Darkshore (Mist\'s Edge) - Armor/Weapon Crate (3660,3661)'),
(13435, 31320, 0, 'The Barrens (Bael\'dun Keep) - Weapon/Armor Crate (3689,3702)'),
(13438, 31320, 0, 'The Barrens (Bael\'dun Keep) - Weapon/Armor Crate (3689,3702)'),
(47972, 31162, 0, 'Ashenvale (The Dor\'Danil Barrow Den) - Weapon/Armor Crate (3689,3702)'),
(47973, 31162, 0, 'Ashenvale (The Dor\'Danil Barrow Den) - Weapon/Armor Crate (3689,3702)');

-- gameobject_spawn_entry for 3660,3661
-- Darkshore & The Barrens
UPDATE `gameobject` SET `id` = 3660, `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` IN (3660,3661) AND `guid` NOT IN (13310,300048,300171,300175); -- 3600 7200
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `guid` IN (13310,300048,300171,300175); -- 3600 7200
REPLACE INTO `gameobject_spawn_entry` (`guid`, `entry`) SELECT `guid` AS `guid`, 3660 FROM `gameobject` WHERE `gameobject`.`id` = 3660 AND `gameobject`.`guid` NOT IN (13310,300048,300171,300175);
REPLACE INTO `gameobject_spawn_entry` (`guid`, `entry`) SELECT `guid` AS `guid`, 3661 FROM `gameobject` WHERE `gameobject`.`id` = 3660 AND `gameobject`.`guid` NOT IN (13310,300048,300171,300175);
UPDATE `gameobject` SET `id` = 0 WHERE `id` = 3660;

-- gameobject_spawn_entry for 3689,3702
-- only in bael dun keep, barrow den, bfd
UPDATE `gameobject` SET `id` = 3689, `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` IN (3689,3702) AND `guid` IN (13438,13435,47972,47973,300102,300103,300215,300217); -- 3600 7200
REPLACE INTO `gameobject_spawn_entry` (`guid`, `entry`) SELECT `guid` AS `guid`, 3689 FROM `gameobject` WHERE `gameobject`.`guid` IN (13438,13435,47972,47973,300102,300103,300215,300217);
REPLACE INTO `gameobject_spawn_entry` (`guid`, `entry`) SELECT `guid` AS `guid`, 3702 FROM `gameobject` WHERE `gameobject`.`guid` IN (13438,13435,47972,47973,300102,300103,300215,300217);
UPDATE `gameobject` SET `id` = 0 WHERE `id` =3689 AND `guid` IN (13438,13435,47972,47973,300102,300103,300215,300217);

-- Adjust Respawntime
-- https://github.com/cmangos/classic-db/commit/def2564b92ca6da7cfcac55fdb3d98cab44b20ec#commitcomment-52421239
-- We have 102 "pools" which currently only hold 1 chest, doing a flat 5min respawn seems overkill, still better then 3600min 7200max
-- Exclude reduction for instanced maps as they get reworked in files
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 2843; -- Battered Chest (2843) 3600/7200
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 2844; -- Battered Chest (2844) 3600/7200
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 2845; -- Tattered Chest (2845) 3600/7200
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 2846; -- Tattered Chest (2846) 1200/1200
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 2847; -- Tattered Chest (2847) 3600/7200
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 2849; -- Battered Chest (2849) 3600/7200
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 2850; -- Solid Chest (2850) 3600/7200
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 2852; -- Solid Chest (2852) 3600/7200
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 2855; -- Solid Chest (2855) 3600/7200
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 2857; -- Solid Chest (2857) 3600/7200
-- Armor Crate (3660)
-- Weapon Crate (3661)
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 3689 AND `map` != 48; -- Weapon Crate (3689) 3600/7200
-- Armor Crate (3702)
-- Armor Crate (3703)
-- Weapon Crate (3704)
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 3715; -- Tattered Chest (3715) 3600/7200
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 4096; -- Tattered Chest (4096) 3600/7200
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 4149; -- Solid Chest (4149) 3600/7200
-- Large Iron Bound Chest (74447)
-- Large Solid Chest (74448)
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 75293 AND `map` = 530; -- Large Battered Chest (75293) 3600/7200
-- Large Iron Bound Chest (75295)
-- Large Iron Bound Chest (75296)
-- Large Iron Bound Chest (75297)
-- Large Solid Chest (75298)
-- Large Solid Chest (75299)
-- Large Solid Chest (75300)
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 105578; -- Tattered Chest (105578) 3600/7200
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 105579; -- Tattered Chest (105579) 3600/7200
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 105581; -- Tattered Chest (105581) 3600/7200
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 106318; -- Battered Chest (106318) 3600/7200
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 106319; -- Battered Chest (106319) 3600/7200
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 111095; -- Tattered Chest (111095) 3600/7200
-- Large Mithril Bound Chest (131978)
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 153451; -- Solid Chest (153451) 3600/7200
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 153453; -- Solid Chest (153453) 3600/7200
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 153454; -- Solid Chest (153454) 3600/7200
-- Large Solid Chest (153462)
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 153463; -- Large Solid Chest (153463) 3600/7200
-- Large Solid Chest (153464)
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` = 153468; -- Large Mithril Bound Chest (153468) 3600/7200
-- Large Mithril Bound Chest (153469)

-- Add another missing chest
DELETE FROM `gameobject` WHERE `guid` = 300258 AND `id` = 2850;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnmask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(300258, 2850, 0, 1, -9373.0693359375, -3168.828125, 83.51155853271484375, 1.797688722610473632, 0, 0, 0.7826080322265625, 0.622514784336090087, 300, 900, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` = 300258;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(300258, 31200, 0, 'Redridge Mountains (Galardell Valley) - Solid Chest (2850)');