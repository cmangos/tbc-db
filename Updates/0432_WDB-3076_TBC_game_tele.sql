-- teleports - shortcuts for all TBC Dungeons/Raids
-- according to: https://wow.gamepedia.com/The_Burning_Crusade_instances_by_level
DELETE FROM `game_tele` WHERE `id` IN (32,82,85,87,90,104,129,171,326,341,343,346,348,363,365,367,369,379,381,384,385,421,422,430);
-- 129	-247.29	910.638	84.3798	1.49341	530	TheDarkPortalOutland
-- 171	-11091.2	-1992.38	49.816	0.95178	532	kara
-- 430	4252.72	-4226.16	868.222	2.35619	534	HyjalEntranceRoom
-- 384	-40.8716	-19.7538	-13.8065	1.11133	540	sh
-- 381	-3.9967	14.6363	-44.8009	1.21574	542	bf
-- 385	-1346.58	1653.44	68.8313	0.486942	543	ramp
-- 379	190.035	3.38458	67.9651	3.15819	544	magtheridon
-- 365	1.60675	8.07684	-4.12796	4.467	545	sv
-- 369	9.71391	-16.2008	-2.75334	5.62187	546	underbog
-- 363	130.446	-127.482	-1.59053	1.86731	547	sp
-- 367	9.83957	2.74496	822.096	0.106614	548	ssc
-- 90	-10.8021	-1.15045	-2.42833	6.22821	550	eye
-- 82	-1.23165	0.014346	-0.204293	0.00984	552	arca
-- 85	40.0395	-28.613	-1.1189	2.35856	553	bota
-- 87	-28.906	0.680314	-1.81282	6.26827	554	mech
-- 341	-5.10147	0.126865	-1.12788	3.08034	555	sl
-- 348	-4.6811	-0.09308	0.0062	0.035342	556	sethekk
-- 343	-11.1808	0.991746	-0.9543	3.13767	557	mt
-- 346	-21.8975	0.16	-0.1206	6.28318	558	ac
-- 326	96.4462	1002.35	-86.9984	6.26671	564	bt
-- 104	62.7842	35.462	-3.9835	1.41844	565	gruul
-- 32	120.7	1776	43.46	4.7713	568	za
-- 422	1784.23	924.563	15.581	3.5177	580	swp
-- 421	15.2235	-0.221107	-2.79687	0.007752	585	mgt
DELETE FROM `game_tele` WHERE `id` BETWEEN 1000 AND 1026;
INSERT INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES -- ORDER BY MAP
(1000, -1491.61, 7056.51, 32.1011, 1.74533, 269, 'BM'), -- Caverns Of Time, Black Morass (Entrance)
(1001, -248.149, 921.875, 84.3885, 1.58415, 530, 'Outland'), -- Dark Portal To Outland
(1002, -11101.8, -1998.31, 49.8927, 0.007069, 532, 'KaraFront'), -- Karazhan, Main (Entrance)
(1003, -11040.1, -1996.85, 94.6837, 2.20224, 532, 'KaraBack'), -- Karazhan, Service (Entrance)
(1004, 4252.72, -4226.16, 868.222, 2.35619, 534, 'Hyjal'), -- Caverns Of Time, Battle Of Mount Hyjal (Entrance)
(1005, -40.8716, -19.7538, -13.8065, 1.11133, 540, 'SHH'), -- The Shattered Halls (Entrance)
(1006, -3.9967, 14.6363, -44.8009, 4.88748, 542, ' 	BF'), -- The Blood Furnace (Entrance)
(1007, -1355.24, 1641.12, 68.2491, 0.6687, 543, 'Ramps'), -- Hellfire Ramparts (Entrance)
(1008, 187.843, 35.9232, 67.9252, 4.79879, 544, 'Mags'), -- Magtheridon\'s Lair (Entrance)
(1009, -13.8425, 6.7542, -4.2586, 0, 545, 'SV'), -- The Steamvault (Entrance)
(1010, 9.71391, -16.2008, -2.75334, 5.57082, 546, 'UB'), -- The Underbog (Entrance)
(1011, 120.101, -131.957, -0.801547, 1.47574, 547, 'SP'), -- The Slave Pens (Entrance)
(1012, 2.5343, -0.022318, 821.727, 0.004512, 548, 'SSC'), -- Serpentshrine Cavern (Entrance)
(1013, -10.8021, -1.15045, -2.42833, 6.22821, 550, 'TK'), -- The Eye (Entrance)
(1014, -1.23165, 0.0143459, -0.204293, 0.0157123, 552, 'Arca'), -- The Arcatraz (Entrance)
(1015, 40.0395, -28.613, -1.1189, 2.35856, 553, 'Bota'), -- The Botanica (Entrance)
(1016, -28.906, 0.680314, -1.81282, 0.0345509, 554, 'Mecha'), -- The Mechanar (Entrance)
(1017, 0.488033, -0.215935, -1.12788, 3.15888, 555, 'SL'), -- Shadow Labyrinth (Entrance)
(1018, -4.6811, -0.0930796, 0.0062, 0.0353424, 556, 'SH'), -- Sethekk Halls (Entrance)
(1019, 0.0191, 0.9478, -0.9543, 3.03164, 557, 'MT'), -- Mana Tombs (Entrance)
(1020, -21.8975, 0.16, -0.1206, 0.0353412, 558, 'AC'), -- Auchenai Crypts (Entrance)
(1021, 2741.68, 1312.64, 14.0413, 2.79253, 560, 'OHF'), -- Caverns Of Time, Old Hillsbrad Foothills (Entrance)
(1022, 96.4462, 1002.35, -86.9984, 6.15675, 564, 'BT'), -- Black Temple (Entrance)
(1023, 62.7842, 35.462, -3.9835, 1.41844, 565, 'Gruul'), -- Gruul\'s Lair (Entrance)
(1024, 120.7, 1776, 43.46, 4.7713, 568, 'ZA'), -- Zul\'Aman (Entrance)
(1025, 1790.65, 925.67, 15.15, 3.1, 580, 'SWP'), -- Sunwell Plateau (Entrance)
(1026, 7.09, -0.45, -2.8, 0.05, 585, 'MgT'); -- Magisters\' Terrace (Entrance)

