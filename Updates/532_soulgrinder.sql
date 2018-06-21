UPDATE `creature_template` SET `ModelId1`=19905, `ModelId2`=11549, `ModelId3`=11550, `ModelId4`=19755, `UnitFlags`=33536, `NpcFlags`=0, `MovementType`=2, `GossipMenuId`=8640 WHERE `entry`=23052; -- Bloodmaul Supplicant
UPDATE `creature_template` SET `ModelId1`=19762, `ModelId2`=19756, `ModelId3`=19765, `ModelId4`=11544, `UnitFlags`=33536, `NpcFlags`=0, `MovementType`=2, `GossipMenuId`=8640 WHERE `entry`=23053; -- Bladespire Supplicant
UPDATE `creature_template` SET `ModelId1`=16480, `ModelId2`=11686, `UnitFlags`=33554432 WHERE `entry`=23056; -- Ogre Drum Bunny
UPDATE gameobject SET spawntimesecsmin=-301000, spawntimesecsmax=-301000 WHERE guid IN(27627,27628,27629,27630,27620,27621,27622,27625,27626) AND id IN (185591,185596,185597,185598,185914); -- Should only be spawned during event

UPDATE quest_template SET CompleteScript=0 WHERE entry=11000;

-- ----------------------
-- Gossip
-- ----------------------
-- Bloodmaul/Bladespire Supplicant
DELETE FROM gossip_menu WHERE entry=8640;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(8640, 10838, 0, 0);

DELETE FROM npc_text WHERE id=10838; -- Source: Trinity
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES 
(10838, 'Yes, $g king : queen;?', '', 0, 1, 0, 1, 0, 0, 0, 0, 'You kill gronn!  Now you fight things from sky?', '', 0, 1, 0, 15, 0, 0, 0, 0, 'Me life for $N!', '', 0, 1, 0, 15, 0, 0, 0, 0, 'Dis drink good!', '', 0, 1, 0, 1, 0, 0, 0, 0, 'If $G King : Queen; $N dance, me dance!', '', 0, 1, 0, 1, 0, 0, 0, 0, '$G King : Queen; not angry with me?', '', 0, 1, 0, 1, 0, 0, 0, 0, 'Why you look at me like dat?  You not gonna kiss me, right!?', '', 0, 1, 0, 1, 0, 0, 0, 0, 'Now all Sons of Gruul dead!  Now new $g king : queen; lead all ogres to Ogri\'la!', '', 0, 1, 0, 15, 0, 0, 0, 0);

-- ----------------------------
-- Grok (Entry: 22940)
DELETE FROM `conditions` WHERE `condition_entry`=10040;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10040, 8, 11000, 0); -- Quest 11000 Rewarded

UPDATE gossip_menu SET condition_id=10040 WHERE entry=8619 AND text_id=10879; -- Quest 11000 Rewarded

-- ----------------------------
-- Chort (Entry: 22995)
UPDATE creature_template SET GossipMenuId=8657 WHERE entry=22995;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=22995);

DELETE FROM `gossip_menu` WHERE `entry`=8657;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(8657, 10877, 0, 0),
(8657, 10878, 0, 10040); -- Quest 11000 Rewarded

DELETE FROM `npc_text` WHERE `ID`=10878; -- Source: Trinity
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES 
(10878, 'Da $g king : queen;!  Chort ready to serve.', '', 0, 1, 0, 2, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Mog'dorg the Wizened (Entry: 22941)
UPDATE creature_template SET GossipMenuId=8620 WHERE entry=22941;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=22941);

DELETE FROM `gossip_menu` WHERE `entry`=8620;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(8620, 10800, 0, 0),
(8620, 10860, 0, 10040); -- Quest 11000 Rewarded

-- ----------------------
-- spell_area
-- ----------------------

DELETE FROM spell_area WHERE spell=39960 AND area=3522;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `condition_id`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES 
(39960, 3522, 0, 0, 0, 10040, 0, 0, 2, 1);

-- ------------------
-- DBScripts
-- ------------------

DELETE FROM `dbscripts_on_relay` WHERE `id`=10104;
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10104,0,31,23052,100,0,0,0,0,0,0,0,8,'Quest 11000 Terminate Script If Bloodmaul Supplicant Found',0,0,0,0),
-- Bloodmaul Supplicant
(10104,1,10,23052,301000,1,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2670.433,5780.756,-16.33455,0.4870457),
(10104,1,10,23052,301000,2,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2670.953,5792.641,-16.36926,0.4018067),
(10104,1,10,23052,301000,3,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2662.435,5832.351,-14.07655,0.0620333),
(10104,1,10,23052,301000,4,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2667.39,5805.522,-15.84094,0.2906941),
(10104,1,10,23052,301000,5,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2681.438,5780.493,-16.60589,0.5332212),
(10104,1,10,23052,301000,6,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2677.563,5788.854,-16.58593,0.4541311),
(10104,1,10,23052,301000,7,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2669.953,5820.54,-15.1719,0.1701613),
(10104,1,10,23052,301000,8,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2676.619,5799.581,-16.42442,0.3647692),
(10104,1,10,23052,301000,9,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2673.533,5839.284,-15.32024,0.004471309),
(10104,1,10,23052,301000,10,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2677.164,5857.225,-15.12731,6.117974),
(10104,1,10,23052,301000,11,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2690.39,5781.105,-16.84657,0.5702516),
(10104,1,10,23052,301000,12,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2682.3,5797.806,-16.56606,0.3988743),
(10104,1,10,23052,301000,13,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2687.55,5790.383,-16.75846,0.4823809),
(10104,1,10,23052,301000,14,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2677.373,5831.368,-15.00962,0.08022223),
(10104,1,10,23052,301000,15,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2678.947,5845.084,-15.34514,6.231583),
(10104,1,10,23052,301000,16,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2699.168,5780.762,-16.42737,0.6197592),
(10104,1,10,23052,301000,17,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2681.735,5821.651,-14.72962,0.1790045),
(10104,1,10,23052,301000,18,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2694.593,5789.631,-16.53328,0.5214713),
(10104,1,10,23052,301000,19,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2691.08,5800.016,-16.40028,0.4127415),
(10104,1,10,23052,301000,20,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2684.6,5857.132,-15.33362,6.106526),
(10104,1,10,23052,301000,21,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2690.175,5811.602,-15.62479,0.298055),
(10104,1,10,23052,301000,22,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2686.572,5826.938,-14.54977,0.1338425),
(10104,1,10,23052,301000,23,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2687.632,5835.818,-15.01108,0.04190132),
(10104,1,10,23052,301000,24,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2693.179,5866.683,-16.04778,5.98853),
(10104,1,10,23052,301000,25,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2690.235,5847.786,-15.49406,6.195906),
(10104,1,10,23052,301000,26,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2703.155,5792.928,-15.30062,0.5368259),
(10104,1,10,23052,301000,27,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2695.537,5814.8,-15.35081,0.2815523),
(10104,1,10,23052,301000,28,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2693.602,5855.765,-15.61896,6.103895),
(10104,1,10,23052,301000,29,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2693.921,5820.99,-14.99893,0.2103733),
(10104,1,10,23052,301000,30,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2700.039,5803.477,-15.57214,0.417465),
(10104,1,10,23052,301000,31,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2695.319,5828.696,-14.8074,0.1272538),
(10104,1,10,23052,301000,32,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2696.707,5837.702,-15.4793,0.0242615),
(10104,1,10,23052,301000,33,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2704.865,5808.66,-14.82297,0.3839664),
(10104,1,10,23052,301000,34,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2701.62,5855.959,-15.6445,6.084083),
(10104,1,10,23052,301000,35,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2701.346,5847.94,-15.57445,6.182039),
(10104,1,10,23052,301000,36,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2709.725,5804.641,-13.96786,0.4531571),
(10104,1,10,23052,301000,37,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2708.627,5861.856,-15.54748,5.990266),
(10104,1,10,23052,301000,38,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2706.538,5834.85,-15.44075,0.06520417),
(10104,1,10,23052,301000,39,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2708.62,5842.039,-15.37756,6.252195),
(10104,1,10,23052,301000,40,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2710.641,5852.413,-15.35385,6.107485),
(10104,1,10,23052,301000,41,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2714.796,5813.435,-13.14151,0.3741513),
(10104,1,10,23052,301000,42,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2713.041,5826.883,-14.73765,0.1850924),
(10104,1,10,23052,301000,43,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2716.531,5835.825,-15.13918,0.06028583),
(10104,1,10,23052,301000,44,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2725.352,5807.081,-11.02464,0.5244183),
(10104,1,10,23052,301000,45,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2722.473,5821.006,-11.93857,0.3060048),
(10104,1,10,23052,301000,46,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2734.678,5812.071,-7.892187,0.5308068),
(10104,1,10,23052,301000,47,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2732.273,5825.77,-8.409297,0.2751314),
(10104,1,10,23052,301000,48,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2739.496,5817.305,-7.570641,0.4875387),
(10104,1,10,23052,301000,49,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2740.929,5826.928,-6.440495,0.3039658),
(10104,1,10,23052,301000,50,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2739.599,5839.685,-3.164296,0.001987162),
(10104,1,10,23052,301000,51,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2739.617,5850.988,-0.7879967,6.023602),
(10104,1,10,23052,301000,52,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2754.409,5814.579,-6.256382,0.7424291),
(10104,1,10,23052,301000,53,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2752.079,5824.336,-4.99764,0.4780643),
(10104,1,10,23052,301000,54,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2749.196,5856.374,-0.2547106,5.812909),
(10104,1,10,23052,301000,55,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2751.154,5839.311,-3.240088,0.01489793),
(10104,1,10,23052,301000,56,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2756.677,5854.316,-1.418432,5.759375),
(10104,1,10,23052,301000,57,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2762.146,5825.248,-3.420345,0.6347809),
(10104,1,10,23052,301000,58,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2772.646,5817.649,-0.8886007,1.176015),
-- Bladespire Supplicant
(10104,1,10,23053,301000,1,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2667.219,5788.563,-16.33452,0.4200683),
(10104,1,10,23053,301000,2,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2677.232,5775.235,-16.38574,0.5526659),
(10104,1,10,23053,301000,3,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2676.657,5783.034,-16.50204,0.4945691),
(10104,1,10,23053,301000,4,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2665.541,5812.776,-15.23027,0.2280162),
(10104,1,10,23053,301000,5,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2671.549,5799.131,-16.30528,0.3529583),
(10104,1,10,23053,301000,6,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2670.344,5853.094,-15.42004,6.16426),
(10104,1,10,23053,301000,7,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2687.72,5776.508,-17.02175,0.591661),
(10104,1,10,23053,301000,8,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2677.291,5795.139,-16.57993,0.4033819),
(10104,1,10,23053,301000,9,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2682.791,5786.822,-16.74239,0.4908067),
(10104,1,10,23053,301000,10,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2671.964,5830.465,-15.03648,0.08445194),
(10104,1,10,23053,301000,11,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2673.782,5845.839,-15.33225,6.227075),
(10104,1,10,23053,301000,12,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2695.471,5776.34,-16.99145,0.6333112),
(10104,1,10,23053,301000,13,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2681.091,5862.079,-15.47492,6.065301),
(10104,1,10,23053,301000,14,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2675.222,5824.717,-14.94844,0.1402185),
(10104,1,10,23053,301000,15,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2683.682,5803.543,-16.29072,0.3534732),
(10104,1,10,23053,301000,16,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2694.154,5784.808,-16.71326,0.5597692),
(10104,1,10,23053,301000,17,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2680.646,5827.524,-14.76703,0.1203845),
(10104,1,10,23053,301000,18,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2687.635,5806.44,-16.10388,0.339972),
(10104,1,10,23053,301000,19,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2682.673,5850.268,-15.30297,6.17773),
(10104,1,10,23053,301000,20,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2682.196,5837.667,-15.16663,0.02108782),
(10104,1,10,23053,301000,21,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2693.775,5795.163,-16.39018,0.4687398),
(10104,1,10,23053,301000,22,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2687.161,5815.276,-15.1849,0.2530813),
(10104,1,10,23053,301000,23,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2701.463,5785.488,-15.82281,0.5938436),
(10104,1,10,23053,301000,24,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2685.47,5843.786,-15.29153,6.24153),
(10104,1,10,23053,301000,25,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2688.568,5820.4,-14.82412,0.2046954),
(10104,1,10,23053,301000,26,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2689.857,5859.694,-15.7386,6.069907),
(10104,1,10,23053,301000,27,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2700.278,5795.283,-15.7762,0.499205),
(10104,1,10,23053,301000,28,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2696.342,5806.063,-15.89385,0.3754344),
(10104,1,10,23053,301000,29,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2690.06,5830.619,-14.64328,0.0993366),
(10104,1,10,23053,301000,30,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2692.451,5841.281,-15.50815,6.266269),
(10104,1,10,23053,301000,31,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2696.569,5848.355,-15.5579,6.182848),
(10104,1,10,23053,301000,32,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2705.801,5800.709,-14.69386,0.4744084),
(10104,1,10,23053,301000,33,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2698.397,5823.464,-15.04335,0.1929123),
(10104,1,10,23053,301000,34,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2700.236,5861.428,-15.93911,6.023812),
(10104,1,10,23053,301000,35,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2704.536,5868.829,-15.65267,5.923704),
(10104,1,10,23053,301000,36,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2700.724,5830.671,-15.1589,0.1116594),
(10104,1,10,23053,301000,37,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2702.978,5839.67,-15.57351,0.001250344),
(10104,1,10,23053,301000,38,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2705.106,5824.687,-15.1272,0.1940205),
(10104,1,10,23053,301000,39,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2707.26,5855.679,-15.43325,6.07306),
(10104,1,10,23053,301000,40,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2706.644,5847.776,-15.49038,6.177125),
(10104,1,10,23053,301000,41,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2716.655,5804.323,-12.6736,0.497906),
(10104,1,10,23053,301000,42,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2714.311,5842.397,-15.23648,6.244295),
(10104,1,10,23053,301000,43,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2718.166,5822.354,-13.37906,0.266876),
(10104,1,10,23053,301000,44,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2721.566,5814.438,-12.09889,0.3977192),
(10104,1,10,23053,301000,45,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2723.902,5827.151,-11.43457,0.2143413),
(10104,1,10,23053,301000,46,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2728.983,5812.26,-9.931931,0.4796886),
(10104,1,10,23053,301000,47,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2730.656,5819.917,-9.735991,0.3698293),
(10104,1,10,23053,301000,48,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2751.385,5810.043,-7.20096,0.7729083),
(10104,1,10,23053,301000,49,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2737.804,5833.646,-5.154177,0.1380797),
(10104,1,10,23053,301000,50,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2748.693,5819.53,-6.327135,0.5478623),
(10104,1,10,23053,301000,51,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2743.603,5858.121,-0.6288747,5.835931),
(10104,1,10,23053,301000,52,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2745.669,5831.537,-4.913702,0.2236416),
(10104,1,10,23053,301000,53,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2745.614,5845.916,-1.776619,6.115192),
(10104,1,10,23053,301000,54,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2759.586,5816.921,-4.292243,0.7980689),
(10104,1,10,23053,301000,55,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2755.514,5861.03,-0.01289567,5.60423),
(10104,1,10,23053,301000,56,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2754.574,5846.337,-2.505016,6.046975),
(10104,1,10,23053,301000,57,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2758.238,5832.049,-3.559237,0.3158112),
(10104,1,10,23053,301000,58,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2767.659,5820.182,-2.214573,0.943397),
-- Ogre Drum Bunny
(10104,1,10,23056,301000,0,0,0,0,0,0,0,8,'Quest 11000 Completescript: Summon Ogres',2705.111,5817.062,-14.82143,0.9599311),
-- ----------------
-- Gameobjects
-- ----------------
-- Banners
(10104,1,9,27627,301000,0,0,0,0,0,0,0,0,'Quest 11000 Completescript: Respawn Gameobjects',0,0,0,0),
(10104,1,9,27628,301000,0,0,0,0,0,0,0,0,'Quest 11000 Completescript: Respawn Gameobjects',0,0,0,0),
(10104,1,9,27629,301000,0,0,0,0,0,0,0,0,'Quest 11000 Completescript: Respawn Gameobjects',0,0,0,0),
(10104,1,9,27630,301000,0,0,0,0,0,0,0,0,'Quest 11000 Completescript: Respawn Gameobjects',0,0,0,0),
(10104,1,9,27620,301000,0,0,0,0,0,0,0,0,'Quest 11000 Completescript: Respawn Gameobjects',0,0,0,0),
(10104,1,9,27621,301000,0,0,0,0,0,0,0,0,'Quest 11000 Completescript: Respawn Gameobjects',0,0,0,0),
-- Barrels/Drums
(10104,1,9,27626,301000,0,0,0,0,0,0,0,0,'Quest 11000 Completescript: Respawn Gameobjects',0,0,0,0),
(10104,1,9,27625,301000,0,0,0,0,0,0,0,0,'Quest 11000 Completescript: Respawn Gameobjects',0,0,0,0),
(10104,1,9,27622,301000,0,0,0,0,0,0,0,0,'Quest 11000 Completescript: Respawn Gameobjects',0,0,0,0);


DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 2305201 AND 2305207;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
-- Default behaviour (most ogres has this)
(2305201,0,32,1,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Pause Waypoints',0,0,0,0),
(2305201,25,35,1001,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Send AI Event 1001 to Self',0,0,0,0),
(2305201,26,28,8,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Set Stand State Kneel',0,0,0,0),
(2305201,56,28,0,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Set Stand State Stand',0,0,0,0),
(2305201,58,1,15,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - ONESHOT_ROAR',0,0,0,0),
(2305201,62,2,168,1,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Set NPCFlags to 1',0,0,0,0),
(2305201,62,35,1000,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Send AI Event 1000 to Self',0,0,0,0),
(2305201,295,1,15,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - ONESHOT_ROAR',0,0,0,0),
-- Quest giver
(2305202,0,32,1,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Pause Waypoints',0,0,0,0),
(2305202,25,35,1001,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Send AI Event 1001 to Self',0,0,0,0),
(2305202,26,28,8,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Set Stand State Kneel',0,0,0,0),
(2305202,56,28,0,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Set Stand State Stand',0,0,0,0),
(2305202,58,1,15,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - ONESHOT_ROAR',0,0,0,0),
(2305202,62,2,168,3,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Set NPCFlags to 3',0,0,0,0),
(2305202,62,35,1000,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Send AI Event 1000 to Self',0,0,0,0),
(2305202,295,1,15,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - ONESHOT_ROAR',0,0,0,0),
-- Plays sound ID 11632 and 11634
(2305203,0,32,1,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Pause Waypoints',0,0,0,0),
(2305203,25,35,1001,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Send AI Event 1001 to Self',0,0,0,0),
(2305203,26,28,8,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Set Stand State Kneel',0,0,0,0),
(2305203,26,16,11632,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Play Sound ID 11632',0,0,0,0),
(2305203,56,28,0,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Set Stand State Stand',0,0,0,0),
(2305203,56,16,11634,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Play Sound ID 11634',0,0,0,0),
(2305203,58,1,15,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - ONESHOT_ROAR',0,0,0,0),
(2305203,62,2,168,1,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Set NPCFlags to 1',0,0,0,0),
(2305203,62,35,1000,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Send AI Event 1000 to Self',0,0,0,0),
(2305203,295,1,15,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - ONESHOT_ROAR',0,0,0,0),
-- Plays sound ID 11633 and 11635
(2305204,0,32,1,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Pause Waypoints',0,0,0,0),
(2305204,25,35,1001,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Send AI Event 1001 to Self',0,0,0,0),
(2305204,26,28,8,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Set Stand State Kneel',0,0,0,0),
(2305204,26,16,11633,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Play Sound ID 11633',0,0,0,0),
(2305204,56,28,0,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Set Stand State Stand',0,0,0,0),
(2305204,56,16,11635,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Play Sound ID 11635',0,0,0,0),
(2305204,58,1,15,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - ONESHOT_ROAR',0,0,0,0),
(2305204,62,2,168,1,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Set NPCFlags to 1',0,0,0,0),
(2305204,62,35,1000,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Send AI Event 1000 to Self',0,0,0,0),
(2305204,295,1,15,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - ONESHOT_ROAR',0,0,0,0),
-- Plays sound ID 11631
(2305205,0,32,1,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Pause Waypoints',0,0,0,0),
(2305205,25,35,1001,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Send AI Event 1001 to Self',0,0,0,0),
(2305205,26,28,8,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Set Stand State Kneel',0,0,0,0),
(2305205,56,28,0,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Set Stand State Stand',0,0,0,0),
(2305205,58,1,15,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - ONESHOT_ROAR',0,0,0,0),
(2305205,58,16,11631,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Play Sound ID 11631',0,0,0,0),
(2305205,62,2,168,1,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Set NPCFlags to 1',0,0,0,0),
(2305205,62,35,1000,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Send AI Event 1000 to Self',0,0,0,0),
(2305205,295,1,15,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - ONESHOT_ROAR',0,0,0,0),
(2305205,295,16,11631,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Play Sound ID 11631',0,0,0,0),
-- Drummers
(2305206,0,32,1,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Pause Waypoints',0,0,0,0),
(2305206,25,35,1001,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Send AI Event 1001 to Self',0,0,0,0),
(2305206,26,28,8,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Set Stand State Kneel',0,0,0,0),
(2305206,56,28,0,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Set Stand State Stand',0,0,0,0),
(2305206,58,1,15,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - ONESHOT_ROAR',0,0,0,0),
(2305206,62,2,168,1,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Set NPCFlags to 1',0,0,0,0),
(2305206,62,35,1002,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Send AI Event 1002 to Self',0,0,0,0),
(2305206,295,1,15,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - ONESHOT_ROAR',0,0,0,0),
-- Plays sound ID 11627 - 11630 randomly
(2305207,0,32,1,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Pause Waypoints',0,0,0,0),
(2305207,25,35,1001,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Send AI Event 1001 to Self',0,0,0,0),
(2305207,26,28,8,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Set Stand State Kneel',0,0,0,0),
(2305207,56,28,0,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Set Stand State Stand',0,0,0,0),
(2305207,58,1,15,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - ONESHOT_ROAR',0,0,0,0),
(2305207,62,2,168,1,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Set NPCFlags to 1',0,0,0,0),
(2305207,62,35,1000,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Send AI Event 1000 to Self',0,0,0,0),
(2305207,62,35,1003,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - Send AI Event 1003 to Self',0,0,0,0),
(2305207,295,1,15,0,0,0,0,0,0,0,0,0,'Bloodmaul/Bladespire Supplicant - ONESHOT_ROAR',0,0,0,0);

DELETE FROM creature_movement_template WHERE entry IN(23052,23053);
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
-- Bloodmaul Supplicant
(23052,1,1,2670.433,5780.756,-16.33455,1000,2305201,0.4870457),
(23052,1,2,2670.953,5792.641,-16.36926,1000,2305201,0.4018067),
(23052,1,3,2662.435,5832.351,-14.07655,1000,2305201,0.0620333),
(23052,1,4,2667.39,5805.522,-15.84094,1000,2305201,0.2906941),
(23052,1,5,2681.438,5780.493,-16.60589,1000,2305201,0.5332212),
(23052,1,6,2677.563,5788.854,-16.58593,1000,2305201,0.4541311),
(23052,1,7,2669.953,5820.54,-15.1719,1000,2305201,0.1701613),
(23052,1,8,2676.619,5799.581,-16.42442,1000,2305201,0.3647692),
(23052,1,9,2673.533,5839.284,-15.32024,1000,2305201,0.004471309),
(23052,1,10,2677.164,5857.225,-15.12731,1000,2305201,6.117974),
(23052,1,11,2690.39,5781.105,-16.84657,1000,2305201,0.5702516),
(23052,1,12,2682.3,5797.806,-16.56606,1000,2305201,0.3988743),
(23052,1,13,2687.55,5790.383,-16.75846,1000,2305201,0.4823809),
(23052,1,14,2677.373,5831.368,-15.00962,1000,2305201,0.08022223),
(23052,1,15,2678.947,5845.084,-15.34514,1000,2305201,6.231583),
(23052,1,16,2699.168,5780.762,-16.42737,1000,2305201,0.6197592),
(23052,1,17,2681.735,5821.651,-14.72962,1000,2305201,0.1790045),
(23052,1,18,2694.593,5789.631,-16.53328,1000,2305207,0.5214713), -- Plays sound ID 11627 - 11630 randomly
(23052,1,19,2691.08,5800.016,-16.40028,1000,2305201,0.4127415),
(23052,1,20,2684.6,5857.132,-15.33362,1000,2305201,6.106526),
(23052,1,21,2690.175,5811.602,-15.62479,1000,2305201,0.298055),
(23052,1,22,2686.572,5826.938,-14.54977,1000,2305201,0.1338425),
(23052,1,23,2687.632,5835.818,-15.01108,1000,2305201,0.04190132),
(23052,1,24,2693.179,5866.683,-16.04778,1000,2305201,5.98853),
(23052,1,25,2690.235,5847.786,-15.49406,1000,2305201,6.195906),
(23052,1,26,2703.155,5792.928,-15.30062,1000,2305201,0.5368259),
(23052,1,27,2695.537,5814.8,-15.35081,1000,2305205,0.2815523), -- Plays sound ID 11631
(23052,1,28,2693.602,5855.765,-15.61896,1000,2305201,6.103895),
(23052,1,29,2693.921,5820.99,-14.99893,1000,2305201,0.2103733),
(23052,1,30,2700.039,5803.477,-15.57214,1000,2305201,0.417465),
(23052,1,31,2695.319,5828.696,-14.8074,1000,2305201,0.1272538),
(23052,1,32,2696.707,5837.702,-15.4793,1000,2305201,0.0242615),
(23052,1,33,2704.865,5808.66,-14.82297,1000,2305206,0.3839664), -- Drummer
(23052,1,34,2701.62,5855.959,-15.6445,1000,2305207,6.084083), -- Plays sound ID 11627 - 11630 randomly
(23052,1,35,2701.346,5847.94,-15.57445,1000,2305201,6.182039),
(23052,1,36,2709.725,5804.641,-13.96786,1000,2305201,0.4531571),
(23052,1,37,2708.627,5861.856,-15.54748,1000,2305201,5.990266),
(23052,1,38,2706.538,5834.85,-15.44075,1000,2305201,0.06520417),
(23052,1,39,2708.62,5842.039,-15.37756,1000,2305201,6.252195),
(23052,1,40,2710.641,5852.413,-15.35385,1000,2305201,6.107485),
(23052,1,41,2714.796,5813.435,-13.14151,1000,2305207,0.3741513), -- Plays sound ID 11627 - 11630 randomly
(23052,1,42,2713.041,5826.883,-14.73765,1000,2305201,0.1850924),
(23052,1,43,2716.531,5835.825,-15.13918,1000,2305201,0.06028583),
(23052,1,44,2725.352,5807.081,-11.02464,1000,2305201,0.5244183),
(23052,1,45,2722.473,5821.006,-11.93857,1000,2305201,0.3060048),
(23052,1,46,2734.678,5812.071,-7.892187,1000,2305201,0.5308068),
(23052,1,47,2732.273,5825.77,-8.409297,1000,2305201,0.2751314),
(23052,1,48,2739.496,5817.305,-7.570641,1000,2305201,0.4875387),
(23052,1,49,2740.929,5826.928,-6.440495,1000,2305201,0.3039658),
(23052,1,50,2739.599,5839.685,-3.164296,1000,2305201,0.001987162),
(23052,1,51,2739.617,5850.988,-0.7879967,1000,2305203,6.023602), -- Plays sound ID 11632 and 11634
(23052,1,52,2754.409,5814.579,-6.256382,1000,2305207,0.7424291), -- Plays sound ID 11627 - 11630 randomly
(23052,1,53,2752.079,5824.336,-4.99764,1000,2305205,0.4780643), -- Plays sound ID 11631
(23052,1,54,2749.196,5856.374,-0.2547106,1000,2305201,5.812909),
(23052,1,55,2751.154,5839.311,-3.240088,1000,2305201,0.01489793),
(23052,1,56,2756.677,5854.316,-1.418432,1000,2305201,5.759375),
(23052,1,57,2762.146,5825.248,-3.420345,1000,2305201,0.6347809),
(23052,1,58,2772.646,5817.649,-0.8886007,1000,2305201,1.176015),
-- Bladespire Supplicant
(23053,1,1,2667.219,5788.563,-16.33452,1000,2305201,0.4200683),
(23053,1,2,2677.232,5775.235,-16.38574,1000,2305201,0.5526659),
(23053,1,3,2676.657,5783.034,-16.50204,1000,2305201,0.4945691),
(23053,1,4,2665.541,5812.776,-15.23027,1000,2305201,0.2280162),
(23053,1,5,2671.549,5799.131,-16.30528,1000,2305207,0.3529583), -- Plays sound ID 11627 - 11630 randomly
(23053,1,6,2670.344,5853.094,-15.42004,1000,2305201,6.16426),
(23053,1,7,2687.72,5776.508,-17.02175,1000,2305201,0.591661),
(23053,1,8,2677.291,5795.139,-16.57993,1000,2305201,0.4033819),
(23053,1,9,2682.791,5786.822,-16.74239,1000,2305201,0.4908067),
(23053,1,10,2671.964,5830.465,-15.03648,1000,2305201,0.08445194),
(23053,1,11,2673.782,5845.839,-15.33225,1000,2305201,6.227075),
(23053,1,12,2695.471,5776.34,-16.99145,1000,2305201,0.6333112),
(23053,1,13,2681.091,5862.079,-15.47492,1000,2305201,6.065301),
(23053,1,14,2675.222,5824.717,-14.94844,1000,2305201,0.1402185),
(23053,1,15,2683.682,5803.543,-16.29072,1000,2305201,0.3534732),
(23053,1,16,2694.154,5784.808,-16.71326,1000,2305201,0.5597692),
(23053,1,17,2680.646,5827.524,-14.76703,1000,2305201,0.1203845),
(23053,1,18,2687.635,5806.44,-16.10388,1000,2305201,0.339972),
(23053,1,19,2682.673,5850.268,-15.30297,1000,2305201,6.17773),
(23053,1,20,2682.196,5837.667,-15.16663,1000,2305201,0.02108782),
(23053,1,21,2693.775,5795.163,-16.39018,1000,2305204,0.4687398), -- Plays sound ID 11633 and 11635
(23053,1,22,2687.161,5815.276,-15.1849,1000,2305201,0.2530813),
(23053,1,23,2701.463,5785.488,-15.82281,1000,2305201,0.5938436),
(23053,1,24,2685.47,5843.786,-15.29153,1000,2305201,6.24153),
(23053,1,25,2688.568,5820.4,-14.82412,1000,2305201,0.2046954),
(23053,1,26,2689.857,5859.694,-15.7386,1000,2305201,6.069907),
(23053,1,27,2700.278,5795.283,-15.7762,1000,2305201,0.499205),
(23053,1,28,2696.342,5806.063,-15.89385,1000,2305201,0.3754344),
(23053,1,29,2690.06,5830.619,-14.64328,1000,2305201,0.0993366),
(23053,1,30,2692.451,5841.281,-15.50815,1000,2305203,6.266269), -- Plays sound ID 11632 and 11634
(23053,1,31,2696.569,5848.355,-15.5579,1000,2305201,6.182848),
(23053,1,32,2705.801,5800.709,-14.69386,1000,2305201,0.4744084),
(23053,1,33,2698.397,5823.464,-15.04335,1000,2305201,0.1929123),
(23053,1,34,2700.236,5861.428,-15.93911,1000,2305201,6.023812),
(23053,1,35,2704.536,5868.829,-15.65267,1000,2305201,5.923704),
(23053,1,36,2700.724,5830.671,-15.1589,1000,2305201,0.1116594),
(23053,1,37,2702.978,5839.67,-15.57351,1000,2305201,0.001250344),
(23053,1,38,2705.106,5824.687,-15.1272,1000,2305206,0.1940205), -- Drummer
(23053,1,39,2707.26,5855.679,-15.43325,1000,2305201,6.07306),
(23053,1,40,2706.644,5847.776,-15.49038,1000,2305201,6.177125),
(23053,1,41,2716.655,5804.323,-12.6736,1000,2305201,0.497906),
(23053,1,42,2714.311,5842.397,-15.23648,1000,2305201,6.244295),
(23053,1,43,2718.166,5822.354,-13.37906,1000,2305201,0.266876),
(23053,1,44,2721.566,5814.438,-12.09889,1000,2305201,0.3977192),
(23053,1,45,2723.902,5827.151,-11.43457,1000,2305201,0.2143413),
(23053,1,46,2728.983,5812.26,-9.931931,1000,2305201,0.4796886),
(23053,1,47,2730.656,5819.917,-9.735991,1000,2305202,0.3698293), -- Quest Giver
(23053,1,48,2751.385,5810.043,-7.20096,1000,2305201,0.7729083),
(23053,1,49,2737.804,5833.646,-5.154177,1000,2305201,0.1380797),
(23053,1,50,2748.693,5819.53,-6.327135,1000,2305204,0.5478623), -- Plays sound ID 11633 and 11635
(23053,1,51,2743.603,5858.121,-0.6288747,1000,2305201,5.835931),
(23053,1,52,2745.669,5831.537,-4.913702,1000,2305201,0.2236416),
(23053,1,53,2745.614,5845.916,-1.776619,1000,2305207,6.115192), -- -- Plays sound ID 11627 - 11630 randomly
(23053,1,54,2759.586,5816.921,-4.292243,1000,2305201,0.7980689),
(23053,1,55,2755.514,5861.03,-0.01289567,1000,2305201,5.60423),
(23053,1,56,2754.574,5846.337,-2.505016,1000,2305201,6.046975),
(23053,1,57,2758.238,5832.049,-3.559237,1000,2305201,0.3158112),
(23053,1,58,2767.659,5820.182,-2.214573,1000,2305201,0.943397);

-- Combat Script
DELETE FROM creature_loot_template WHERE entry IN(22910); -- soul should drop from GO
DELETE FROM creature WHERE Id IN(23037); -- spawned by script

UPDATE creature_template SET MinLevel=70,MaxLevel=70,Expansion=1 WHERE entry IN(23019); -- correct stats for The Soulgrinder
UPDATE creature_template SET UnitFlags=33587968,ModelId1=11686,AIName='NullAI' WHERE entry IN(23037); -- should not react in any way, correct flags and model
UPDATE creature_template SET DamageMultiplier=1 WHERE entry IN(22912);

DELETE FROM creature_template_addon WHERE entry=23019;
INSERT INTO `creature_template_addon` VALUES
(23019, 0, 0, 0,0,0,0, '39918'); -- model aura for The Soulgrinder

UPDATE creature_template SET FactionAlliance=14,FactionHorde=14,UnitFlags=33587968 WHERE entry IN(22912); -- correct faction, flags and no regeneration for Sundered Spirit
UPDATE creature_template SET FactionAlliance=290,FactionHorde=290,ModelId1=17612,RegenerateStats=0 WHERE entry IN(23019); -- correct faction and correct hollow model for The Soulgrinder
UPDATE creature_template SET FactionAlliance=14,FactionHorde=14,ModelId1=19677,UnitFlags=33587456 WHERE entry IN(22910); -- correct factions, model and flags for Skulloc Soulgrinder

DELETE FROM spell_script_target WHERE entry IN(39914);
INSERT INTO spell_script_target VALUES(39914,0,22912,0); -- target for Soulgrinder Ghost spell

UPDATE spell_script_target SET targetEntry=300127,type=0 WHERE entry=40328; -- correct target for Vim'Gol's Cantation - Soulgrinder Altar

-- 14:21:59.147 - cast vimgol cantation
-- 14:22:29.600 - spirit attacks 1
-- 14:22:33.615 - spirit spawns in 2
-- 14:22:35.584 - spirit attacks 2
-- 14:22:36.459 - spawn first bunny and skulloc
-- Position: X: 3491.224 Y: 5529.023 Z: 17.14335 Orientation: 6.195919 - bunny
-- Position: X: 3478.563 Y: 5550.74 Z: 7.838801 Orientation: 0.3665192 - skulloc
-- bunny cast 39920 at 23019
-- skulloc self cast 39947
-- spawn GO 185592 - Stationary Position: X: 3478.554 Y: 5550.647 Z: 7.761434 Stationary Orientation: 0.5061446 GameObject Rotation: X: 0 Y: 0 Z: 0.2503796 W: 0.9681478
-- 14:22:43.756 - spirit attacks 3
-- 14:22:50.662 - spirit attacks 4
-- 14:22:57.256 - spirit attacks 5
-- 14:23:03.365 - spirit attacks 6
-- 14:23:08.631 - spirit attacks 7
-- 14:23:11.459 - spirit spawns in 8
-- skulloc self cast 39944 and 39951
-- 14:23:12.662 - spawn second bunny
-- Position: X: 3464.954 Y: 5564.684 Z: 17.99977 Orientation: 5.67232
-- 14:23:15.100 - spirit attacks 8
-- 14:23:21.162 - spirit attacks 9
-- 14:23:27.256 - spirit attacks 10
-- 14:23:32.412 - spirit attacks 11
-- 14:23:39.412 - spirit attacks 12
-- 14:23:45.100 - spirit attacks 13
-- 14:23:47.272 - skulloc self cast 39946 and 39951
-- 14:23:47.912 - spirit spawns in 14
-- 14:23:48.287 - spawn third bunny
-- Position: X: 3515.021 Y: 5524.386 Z: 16.89271 Orientation: 3.560472
-- 14:23:51.975 - spirit attacks 14
-- 14:23:55.787 - spirit attacks 15
-- 14:24:04.131 - spirit attacks 16
-- 14:24:10.193 - spirit attacks 17
-- 14:24:15.459 - spirit attacks 18
-- 14:24:22.209 - spirit attacks 19
-- 14:24:23.428 - skulloc self cast 39947 and 39951
-- 14:24:24.381 - spirit spawn in 20
-- 14:24:24.787 - spawn fourth bunny
-- Position: X: 3468.821 Y: 5581.413 Z: 17.52053 Orientation: 0.01745329
-- 14:24:28.162 - spirit attacks 20
-- 14:24:34.475 - spirit attacks 21
-- 14:24:40.272 - spirit attacks 22
-- 14:24:46.225 - spirit attacks 23
-- 14:24:51.475 - spirit attacks 24
-- 14:24:57.600 - spirit attacks 25
-- 14:24:59.209 - skulloc self cast 39947 and 39951
-- 14:24:59.209 - soulgrinder cast 39914 and 39920 at skulloc
-- 14:25:00.225 - soulgrinder cast 39920 at skulloc
-- 14:25:04.443 - only flags 32768 on skulloc
-- 14:25:04.568 - skulloc Argh!  I will shred your soul and grind it to dust!
-- 14:25:04.443 - despawn GO 185592
-- 14:25:09.350 - spawn GO 185592 - Stationary Position: X: 3478.554 Y: 5550.647 Z: 7.761434 Stationary Orientation: 0.5061446 GameObject Rotation: X: 0 Y: 0 Z: 0.2503796 W: 0.9681478
-- 14:25:09.740 - remove auras from skulloc, soulgrinder stop casting
-- 14:25:14.600 - skulloc soulgrinder attack starts initiated by player
-- 14:26:25.818 - soulgrinder despawns



