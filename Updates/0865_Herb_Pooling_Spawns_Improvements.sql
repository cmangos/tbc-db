-- Improve tbc-db herb pooling (tbc-db is substantially different from wotlk-db and classic-db in that regard)
-- Supplement spawns from wotlk-db and classic-db
-- Remove duplicate nodes

-- Silverleaf 1617
-- https://tbc.wowhead.com/object=1617/silverleaf
UPDATE `gameobject` SET `map` = 0 WHERE `guid` = 138602 AND `id` = 1617;
UPDATE `pool_gameobject` SET `pool_entry` = 13005, `description` = 'Dun Morogh - Silverleaf' WHERE `guid` = 138602;
DELETE FROM `gameobject` WHERE `guid` IN (135686,135694); -- Duplicate 135690
DELETE FROM `pool_gameobject` WHERE `guid` IN (135686,135694);
DELETE FROM `gameobject` WHERE `guid` = 135704; -- Duplicate 135673
DELETE FROM `pool_gameobject` WHERE `guid` = 135704;
DELETE FROM `gameobject` WHERE `guid` = 135701; -- Duplicate 135671
DELETE FROM `pool_gameobject` WHERE `guid` = 135701;
DELETE FROM `gameobject` WHERE `guid` = 132296; -- Duplicate 132257
DELETE FROM `pool_gameobject` WHERE `guid` = 132296;
UPDATE `gameobject` SET `position_x` = -9869.6, `position_y` = 879.703, `position_z` = 32.099, `orientation` = 2.42601, `rotation2` = 0.936673, `rotation3` = 0.350206 WHERE `guid` = 135683 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 135693; -- Duplicate 135696
DELETE FROM `pool_gameobject` WHERE `guid` = 135693;
DELETE FROM `gameobject` WHERE `guid` = 132250; -- Duplicate 135699
DELETE FROM `pool_gameobject` WHERE `guid` = 132250;
UPDATE `gameobject` SET `position_x` = -9627.64, `position_y` = -1495.21, `position_z` = 58.7032, `orientation` = -0.558504, `rotation2` = -0.275637, `rotation3` = 0.961262 WHERE `guid` = 132290 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 132289; -- Duplicate 132255
DELETE FROM `pool_gameobject` WHERE `guid` = 132289;
DELETE FROM `gameobject` WHERE `guid` = 132285; -- Duplicate 132270
DELETE FROM `pool_gameobject` WHERE `guid` = 132285;
DELETE FROM `gameobject` WHERE `guid` = 132284; -- Duplicate 132278
DELETE FROM `pool_gameobject` WHERE `guid` = 132284;
DELETE FROM `gameobject` WHERE `guid` = 130935; -- Duplicate 133054
DELETE FROM `pool_gameobject` WHERE `guid` = 130935;
DELETE FROM `gameobject` WHERE `guid` = 133057; -- Duplicate 133097
DELETE FROM `pool_gameobject` WHERE `guid` = 133057;
DELETE FROM `gameobject` WHERE `guid` = 131450; -- Duplicate 131420
DELETE FROM `pool_gameobject` WHERE `guid` = 131450;
UPDATE `gameobject` SET `map` = 0 WHERE `guid` = 138604 AND `id` = 1617;
UPDATE `pool_gameobject` SET `pool_entry` = 13005, `description` = 'Dun Morogh - Silverleaf' WHERE `guid` = 138604;
DELETE FROM `gameobject` WHERE `guid` = 138603; -- Duplicate 131425
DELETE FROM `pool_gameobject` WHERE `guid` = 138603;
DELETE FROM `gameobject` WHERE `guid` = 133065; -- Duplicate 133113
DELETE FROM `pool_gameobject` WHERE `guid` = 133065;
DELETE FROM `gameobject` WHERE `guid` = 133125; -- Duplicate 133059
DELETE FROM `pool_gameobject` WHERE `guid` = 133125;
DELETE FROM `gameobject` WHERE `guid` = 133095; -- Duplicate 133112
DELETE FROM `pool_gameobject` WHERE `guid` = 133095;
DELETE FROM `gameobject` WHERE `guid` = 133108; -- Duplicate 133126
DELETE FROM `pool_gameobject` WHERE `guid` = 133108;
DELETE FROM `gameobject` WHERE `guid` = 131455; -- Duplicate 131457
DELETE FROM `pool_gameobject` WHERE `guid` = 131455;
UPDATE `gameobject` SET `position_x` = -4694.24, `position_y` = -2836.63, `position_z` = 324.716, `orientation` = -0.139624, `rotation2` = -0.0697553, `rotation3` = 0.997564 WHERE `guid` = 133096 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 137295; -- Duplicate 85307
DELETE FROM `pool_gameobject` WHERE `guid` = 137295;
DELETE FROM `gameobject` WHERE `guid` = 137289; -- Duplicate 137305
DELETE FROM `pool_gameobject` WHERE `guid` = 137289;
DELETE FROM `gameobject` WHERE `guid` = 137290; -- Duplicate 137317
DELETE FROM `pool_gameobject` WHERE `guid` = 137290;
UPDATE `gameobject` SET `position_x` = -2679.12, `position_y` = -261.173, `position_z` = 3.0219, `orientation` = -1.8675, `rotation2` = -0.803856, `rotation3` = 0.594824 WHERE `guid` = 138793 AND `id` = 1617;
UPDATE `gameobject` SET `position_x` = -2475.99, `position_y` = -71.0842, `position_z` = -3.06786, `orientation` = 2.07694, `rotation2` = 0.861629, `rotation3` = 0.507539 WHERE `guid` = 138841 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 138825; -- Duplicate 138797
DELETE FROM `pool_gameobject` WHERE `guid` = 138825;
DELETE FROM `gameobject` WHERE `guid` = 139645; -- Duplicate 138838
DELETE FROM `pool_gameobject` WHERE `guid` = 139645;
DELETE FROM `gameobject` WHERE `guid` = 139644; -- Duplicate 138834
DELETE FROM `pool_gameobject` WHERE `guid` = 139644;
DELETE FROM `gameobject` WHERE `guid` = 138823; -- Duplicate 138859
DELETE FROM `pool_gameobject` WHERE `guid` = 138823;
DELETE FROM `gameobject` WHERE `guid` = 139604; -- Duplicate 138807
DELETE FROM `pool_gameobject` WHERE `guid` = 139604;
DELETE FROM `gameobject` WHERE `guid` = 139672; -- Duplicate 138860
DELETE FROM `pool_gameobject` WHERE `guid` = 139672;
DELETE FROM `gameobject` WHERE `guid` = 139669; -- Duplicate 138864
DELETE FROM `pool_gameobject` WHERE `guid` = 139669;
DELETE FROM `gameobject` WHERE `guid` = 138865; -- Duplicate 139671
DELETE FROM `pool_gameobject` WHERE `guid` = 138865;
UPDATE `gameobject` SET `position_x` = -1762.1, `position_y` = 224.467, `position_z` = 38.1832, `orientation` = -2.28638, `rotation2` = -0.909961, `rotation3` = 0.414694 WHERE `guid` = 138849 AND `id` = 1617;
UPDATE `gameobject` SET `position_x` = -1723.28, `position_y` = -707.532, `position_z` = -9.68622, `orientation` = -0.593412, `rotation2` = -0.292372, `rotation3` = 0.956305 WHERE `guid` = 138802 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 137778; -- Duplicate 138814
DELETE FROM `pool_gameobject` WHERE `guid` = 137778;
DELETE FROM `gameobject` WHERE `guid` = 138869; -- Duplicate 138822
DELETE FROM `pool_gameobject` WHERE `guid` = 138869;
DELETE FROM `gameobject` WHERE `guid` = 137781; -- Duplicate 138842
DELETE FROM `pool_gameobject` WHERE `guid` = 137781;
DELETE FROM `gameobject` WHERE `guid` = 137780; -- Duplicate 138792
DELETE FROM `pool_gameobject` WHERE `guid` = 137780;
DELETE FROM `gameobject` WHERE `guid` = 139625; -- Duplicate 138054
DELETE FROM `pool_gameobject` WHERE `guid` = 139625;
UPDATE `gameobject` SET `position_x` = -1342.66, `position_y` = -3034.1, `position_z` = 93.1366, `orientation` = -1.15192, `rotation2` = -0.54464, `rotation3` = 0.83867 WHERE `guid` = 139603 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 13586; -- Duplicate 139603
DELETE FROM `pool_gameobject` WHERE `guid` = 13586;
UPDATE `gameobject` SET `position_x` = -1312.37, `position_y` = -3093.32, `position_z` = 93.212, `orientation` = -2.00713, `rotation2` = -0.843392, `rotation3` = 0.537299 WHERE `guid` = 139670 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 139608; -- Duplicate 138819
DELETE FROM `pool_gameobject` WHERE `guid` = 139608;
UPDATE `gameobject` SET `position_x` = -1281.33, `position_y` = -396.379, `position_z` = -38.5493, `orientation` = 2.80997, `rotation2` = 0.986285, `rotation3` = 0.165053 WHERE `guid` = 138833 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 139659; -- Duplicate 138076
DELETE FROM `pool_gameobject` WHERE `guid` = 139659;
DELETE FROM `gameobject` WHERE `guid` = 139653; -- Duplicate 138109
DELETE FROM `pool_gameobject` WHERE `guid` = 139653;
UPDATE `gameobject` SET `position_x` = -1186.96, `position_y` = -3192.73, `position_z` = 91.8396, `orientation` = -1.27409, `rotation2` = -0.594823, `rotation3` = 0.803857 WHERE `guid` = 139628 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 13574; -- Duplicate 139628
DELETE FROM `pool_gameobject` WHERE `guid` = 13574;
UPDATE `gameobject` SET `position_x` = -1165.9, `position_y` = -2065.73, `position_z` = 92.2977, `orientation` = -2.82743, `rotation2` = -0.987688, `rotation3` = 0.156436 WHERE `guid` = 139572 AND `id` = 1617;
UPDATE `gameobject` SET `position_x` = -1157.22, `position_y` = -2283.67, `position_z` = 90.7383, `orientation` = -1.36136, `rotation2` = -0.629322, `rotation3` = 0.777145 WHERE `guid` = 139618 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 139588; -- Duplicate 138096
DELETE FROM `pool_gameobject` WHERE `guid` = 139588;
DELETE FROM `gameobject` WHERE `guid` = 139607; -- Duplicate 138028
DELETE FROM `pool_gameobject` WHERE `guid` = 139607;
DELETE FROM `gameobject` WHERE `guid` = 13577; -- Duplicate 139592
DELETE FROM `pool_gameobject` WHERE `guid` = 13577;
DELETE FROM `gameobject` WHERE `guid` IN (138806,137779,137777); -- Duplicate 138808
DELETE FROM `pool_gameobject` WHERE `guid` IN (138806,137779,137777);
DELETE FROM `gameobject` WHERE `guid` = 137776; -- Duplicate 138829
DELETE FROM `pool_gameobject` WHERE `guid` = 137776;
UPDATE `gameobject` SET `position_x` = -1032.97, `position_y` = -2624.85, `position_z` = 91.6771, `orientation` = 1.91986, `rotation2` = 0.819151, `rotation3` = 0.573577 WHERE `guid` = 139601 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 13575; -- Duplicate 139601
DELETE FROM `pool_gameobject` WHERE `guid` = 13575;
UPDATE `gameobject` SET `position_x` = -1028.34, `position_y` = -4863.9, `position_z` = 8.51242, `orientation` = -0.715585, `rotation2` = -0.350207, `rotation3` = 0.936672 WHERE `guid` = 138097 AND `id` = 1617;
UPDATE `gameobject` SET `position_x` = -1022.05, `position_y` = -2285.38, `position_z` = 93.5404, `orientation` = 0.541051, `rotation2` = 0.267238, `rotation3` = 0.963631 WHERE `guid` = 139596 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 13584; -- Duplicate 139596
DELETE FROM `pool_gameobject` WHERE `guid` = 13584;
UPDATE `gameobject` SET `position_x` = -845.504, `position_y` = -2742.02, `position_z` = 91.6667, `orientation` = 0.314158, `rotation2` = 0.156434, `rotation3` = 0.987688 WHERE `guid` = 139637 AND `id` = 1617;
UPDATE `gameobject` SET `position_x` = -823.522, `position_y` = 173.456, `position_z` = -10.2636, `orientation` = 0.471238, `rotation2` = 0.233445, `rotation3` = 0.97237 WHERE `guid` = 138862 AND `id` = 1617;
UPDATE `gameobject` SET `position_x` = -798.95, `position_y` = -2859.27, `position_z` = 91.6667, `orientation` = 0.471238, `rotation2` = 0.233445, `rotation3` = 0.97237 WHERE `guid` = 139626 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 13573; -- Duplicate 139626
DELETE FROM `pool_gameobject` WHERE `guid` = 13573;
DELETE FROM `gameobject` WHERE `guid` IN (132692,133598); -- Duplicate 133612
DELETE FROM `pool_gameobject` WHERE `guid` IN (132692,133598);
DELETE FROM `gameobject` WHERE `guid` = 139622; -- Duplicate 138816
DELETE FROM `pool_gameobject` WHERE `guid` = 139622;
UPDATE `gameobject` SET `position_x` = -496.945, `position_y` = -4685.08, `position_z` = 38.0286, `orientation` = -1.98967, `rotation2` = -0.838669, `rotation3` = 0.544641 WHERE `guid` = 138098 AND `id` = 1617;
UPDATE `gameobject` SET `position_x` = -475.922, `position_y` = -1968.03, `position_z` = 92.3905, `orientation` = -0.139624, `rotation2` = -0.0697553, `rotation3` = 0.997564 WHERE `guid` = 139646 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 13571; -- Duplicate 139646
DELETE FROM `pool_gameobject` WHERE `guid` = 13571;
UPDATE `gameobject` SET `position_x` = -334.918, `position_y` = -5162.35, `position_z` = 20.7662, `orientation` = -2.63544, `rotation2` = -0.968147, `rotation3` = 0.250383 WHERE `guid` = 138018 AND `id` = 1617;
UPDATE `gameobject` SET `position_x` = -320.032, `position_y` = -2227.09, `position_z` = 96.3361, `orientation` = 1.39626, `rotation2` = 0.642786, `rotation3` = 0.766046 WHERE `guid` = 139621 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 138008; -- Duplicate 138016
DELETE FROM `pool_gameobject` WHERE `guid` = 138008;
UPDATE `gameobject` SET `position_x` = -223.251, `position_y` = -1997.05, `position_z` = 91.7414, `orientation` = 1.85005, `rotation2` = 0.798636, `rotation3` = 0.601815 WHERE `guid` = 139620 AND `id` = 1617;
UPDATE `gameobject` SET `position_x` = -143.622, `position_y` = -2582.51, `position_z` = 91.6667, `orientation` = -1.67551, `rotation2` = -0.743143, `rotation3` = 0.669133 WHERE `guid` = 139605 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 13589; -- Duplicate 139605
DELETE FROM `pool_gameobject` WHERE `guid` = 13589;
DELETE FROM `gameobject` WHERE `guid` = 138034; -- Duplicate 138010
DELETE FROM `pool_gameobject` WHERE `guid` = 138034;
UPDATE `gameobject` SET `position_x` = 10.699, `position_y` = -4619.18, `position_z` = 44.091, `orientation` = -0.802851, `rotation2` = -0.390731, `rotation3` = 0.920505 WHERE `guid` = 137956 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 13590; -- Duplicate 139594
DELETE FROM `pool_gameobject` WHERE `guid` = 13590;
UPDATE `gameobject` SET `position_x` = 17.3861, `position_y` = -2470.59, `position_z` = 91.6666, `orientation` = 1.55334, `rotation2` = 0.700908, `rotation3` = 0.713252 WHERE `guid` = 139594 AND `id` = 1617;
UPDATE `gameobject` SET `position_x` = 20.9071, `position_y` = -4266.03, `position_z` = 72.0731, `orientation` = -0.017452, `rotation2` = -0.00872612, `rotation3` = 0.999962 WHERE `guid` = 137981 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 138061; -- Duplicate 138003
DELETE FROM `pool_gameobject` WHERE `guid` = 138061;
UPDATE `gameobject` SET `position_x` = 64.931, `position_y` = -4331.12, `position_z` = 61.7287, `orientation` = -3.05433, `rotation2` = -0.999048, `rotation3` = 0.0436174 WHERE `guid` = 138087 AND `id` = 1617;
UPDATE `gameobject` SET `position_x` = 101.713, `position_y` = -4080.68, `position_z` = 54.7553, `orientation` = 1.22173, `rotation2` = 0.573576, `rotation3` = 0.819152 WHERE `guid` = 138065 AND `id` = 1617;
UPDATE `gameobject` SET `position_x` = 117.178, `position_y` = -4960.4, `position_z` = 9.15625, `orientation` = 2.02458, `rotation2` = 0.848048, `rotation3` = 0.52992 WHERE `guid` = 137959 AND `id` = 1617;
UPDATE `gameobject` SET `position_x` = 129.599, `position_y` = -2920.54, `position_z` = 92.4678, `orientation` = -1.25664, `rotation2` = -0.587786, `rotation3` = 0.809016 WHERE `guid` = 139639 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 13580; -- Duplicate 139639
DELETE FROM `pool_gameobject` WHERE `guid` = 13580;
DELETE FROM `gameobject` WHERE `guid` = 137992; -- Duplicate 138044
DELETE FROM `pool_gameobject` WHERE `guid` = 137992;
UPDATE `gameobject` SET `position_x` = 238.912, `position_y` = -2780.93, `position_z` = 91.7317, `orientation` = -2.68781, `rotation2` = -0.97437, `rotation3` = 0.22495 WHERE `guid` = 139657 AND `id` = 1617;
UPDATE `gameobject` SET `position_x` = 246.02, `position_y` = -3153.48, `position_z` = 90.0559, `orientation` = -1.11701, `rotation2` = -0.529919, `rotation3` = 0.848048 WHERE `guid` = 139673 AND `id` = 1617;
UPDATE `gameobject` SET `position_x` = 385.542, `position_y` = -4081.23, `position_z` = 32.0753, `orientation` = -2.25147, `rotation2` = -0.902584, `rotation3` = 0.430513 WHERE `guid` = 138031 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 138110; -- Duplicate 138031
DELETE FROM `pool_gameobject` WHERE `guid` = 138110;
UPDATE `gameobject` SET `position_x` = 426.637, `position_y` = -2819.96, `position_z` = 91.6667, `orientation` = 1.29154, `rotation2` = 0.601814, `rotation3` = 0.798637 WHERE `guid` = 139624 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 13579; -- Duplicate 139624
DELETE FROM `pool_gameobject` WHERE `guid` = 13579;
DELETE FROM `gameobject` WHERE `guid` = 138083; -- Duplicate 137997
DELETE FROM `pool_gameobject` WHERE `guid` = 138083;
UPDATE `gameobject` SET `position_x` = 451.24, `position_y` = -3405.39, `position_z` = 91.6825, `orientation` = 0.925024, `rotation2` = 0.446198, `rotation3` = 0.894934 WHERE `guid` = 139638 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 13570; -- Duplicate 139638
DELETE FROM `pool_gameobject` WHERE `guid` = 13570;
UPDATE `gameobject` SET `position_x` = 521.076, `position_y` = -3664.99, `position_z` = 27.5696, `orientation` = -2.58308, `rotation2` = -0.961261, `rotation3` = 0.275641 WHERE `guid` = 139649 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 137958; -- Duplicate 138011
DELETE FROM `pool_gameobject` WHERE `guid` = 137958;
UPDATE `gameobject` SET `position_x` = 549.91, `position_y` = -3523.52, `position_z` = 92.9409, `orientation` = 0.733038, `rotation2` = 0.358368, `rotation3` = 0.93358 WHERE `guid` = 139654 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 133563; -- Duplicate 133590
DELETE FROM `pool_gameobject` WHERE `guid` = 133563;
DELETE FROM `gameobject` WHERE `guid` = 138112; -- Duplicate 137999
DELETE FROM `pool_gameobject` WHERE `guid` = 138112;
DELETE FROM `gameobject` WHERE `guid` = 138023; -- Duplicate 138012
DELETE FROM `pool_gameobject` WHERE `guid` = 138023;
UPDATE `gameobject` SET `position_x` = 982.138, `position_y` = 1784.21, `position_z` = 12.9193, `orientation` = 1.90241, `rotation2` = 0.814116, `rotation3` = 0.580702 WHERE `guid` = 133588 AND `id` = 1617;
UPDATE `gameobject` SET `position_x` = 1037.78, `position_y` = 1133.19, `position_z` = 44.5143, `orientation` = -0.453785, `rotation2` = -0.224951, `rotation3` = 0.97437 WHERE `guid` = 133577 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 133575; -- Duplicate 133583
DELETE FROM `pool_gameobject` WHERE `guid` = 133575;
DELETE FROM `gameobject` WHERE `guid` = 133605; -- Duplicate 133607
DELETE FROM `pool_gameobject` WHERE `guid` = 133605;
DELETE FROM `gameobject` WHERE `guid` = 133615; -- Duplicate 133566
DELETE FROM `pool_gameobject` WHERE `guid` = 133615;
UPDATE `gameobject` SET `position_x` = 1139.96, `position_y` = 1260.25, `position_z` = 41.2663, `orientation` = -1.74533, `rotation2` = -0.766045, `rotation3` = 0.642787 WHERE `guid` = 133591 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 133613; -- Duplicate 133571
DELETE FROM `pool_gameobject` WHERE `guid` = 133613;
DELETE FROM `gameobject` WHERE `guid` = 133582; -- Duplicate 133603
DELETE FROM `pool_gameobject` WHERE `guid` = 133582;
UPDATE `gameobject` SET `position_x` = 1175.17, `position_y` = 1799.59, `position_z` = 18.5994, `orientation` = -0.366518, `rotation2` = -0.182235, `rotation3` = 0.983255 WHERE `guid` = 133600 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 133611; -- Duplicate 133592
DELETE FROM `pool_gameobject` WHERE `guid` = 133611;
DELETE FROM `gameobject` WHERE `guid` = 138079; -- Duplicate 137994
DELETE FROM `pool_gameobject` WHERE `guid` = 138079;
DELETE FROM `gameobject` WHERE `guid` = 138022; -- Duplicate 138005
DELETE FROM `pool_gameobject` WHERE `guid` = 138022;
UPDATE `gameobject` SET `position_x` = 1431.94, `position_y` = 826.901, `position_z` = 51.8469, `orientation` = 2.47837, `rotation2` = 0.945519, `rotation3` = 0.325567 WHERE `guid` = 133602 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` IN (138019,138062); -- Duplicate 137995
DELETE FROM `pool_gameobject` WHERE `guid` IN (138019,138062);
DELETE FROM `gameobject` WHERE `guid` = 133593; -- Duplicate 133614
DELETE FROM `pool_gameobject` WHERE `guid` = 133593;
DELETE FROM `gameobject` WHERE `guid` = 138111; -- Duplicate 138013
DELETE FROM `pool_gameobject` WHERE `guid` = 138111;
UPDATE `gameobject` SET `position_x` = 1419, `position_y` = 1039.6, `position_z` = 53.4083, `orientation` = 0.191985, `rotation2` = 0.0958451, `rotation3` = 0.995396 WHERE `guid` = 133585 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 133601; -- Duplicate 133586
DELETE FROM `pool_gameobject` WHERE `guid` = 133601;
DELETE FROM `gameobject` WHERE `guid` = 138014; -- Duplicate 138026
DELETE FROM `pool_gameobject` WHERE `guid` = 138014;
DELETE FROM `gameobject` WHERE `guid` = 133580; -- Duplicate 133562
DELETE FROM `pool_gameobject` WHERE `guid` = 133580;
UPDATE `gameobject` SET `position_x` = 1431.94, `position_y` = 826.901, `position_z` = 51.8469, `orientation` = 2.47837, `rotation2` = 0.945519, `rotation3` = 0.325567 WHERE `guid` = 133559 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 133581; -- Duplicate 133610
DELETE FROM `pool_gameobject` WHERE `guid` = 133581;
UPDATE `gameobject` SET `position_x` = 1430.56, `position_y` = 653.667, `position_z` = 51.9433, `orientation` = 0.05236, `rotation2` = 0.026177, `rotation3` = 0.999657 WHERE `guid` = 133559 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 135272; -- Duplicate 135298
DELETE FROM `pool_gameobject` WHERE `guid` = 135272;
DELETE FROM `gameobject` WHERE `guid` = 135243; -- Duplicate 135263
DELETE FROM `pool_gameobject` WHERE `guid` = 135243;
DELETE FROM `gameobject` WHERE `guid` IN (135443,135281,135445); -- Duplicate 135305
DELETE FROM `pool_gameobject` WHERE `guid` IN (135443,135281,135445);
DELETE FROM `gameobject` WHERE `guid` IN (135442,135288,135446); -- Duplicate 135291
DELETE FROM `pool_gameobject` WHERE `guid` IN (135442,135288,135446);
DELETE FROM `gameobject` WHERE `guid` = 135273; -- Duplicate 135299
DELETE FROM `pool_gameobject` WHERE `guid` = 135273;
DELETE FROM `gameobject` WHERE `guid` = 135267; -- Duplicate 135314
DELETE FROM `pool_gameobject` WHERE `guid` = 135267;
DELETE FROM `gameobject` WHERE `guid` = 135300; -- Duplicate 135296
DELETE FROM `pool_gameobject` WHERE `guid` = 135300;
UPDATE `gameobject` SET `position_x` = 2065.34, `position_y` = 840.386, `position_z` = 36.0886, `orientation` = 2.9845, `rotation2` = 0.996917, `rotation3` = 0.0784656 WHERE `guid` = 135247 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 135256; -- Duplicate 135274
DELETE FROM `pool_gameobject` WHERE `guid` = 135256;
DELETE FROM `gameobject` WHERE `guid` = 135287; -- Duplicate 135295
DELETE FROM `pool_gameobject` WHERE `guid` = 135287;
UPDATE `gameobject` SET `position_x` = 2171.74, `position_y` = 577.105, `position_z` = 44.4721, `orientation` = -1.83259, `rotation2` = -0.793352, `rotation3` = 0.608764 WHERE `guid` = 135284 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 135302; -- Duplicate 135264
DELETE FROM `pool_gameobject` WHERE `guid` = 135302;
DELETE FROM `gameobject` WHERE `guid` = 135282; -- Duplicate 135238
DELETE FROM `pool_gameobject` WHERE `guid` = 135282;
DELETE FROM `gameobject` WHERE `guid` = 135265; -- Duplicate 135253
DELETE FROM `pool_gameobject` WHERE `guid` = 135265;
DELETE FROM `gameobject` WHERE `guid` = 135303; -- Duplicate 135283
DELETE FROM `pool_gameobject` WHERE `guid` = 135303;
DELETE FROM `gameobject` WHERE `guid` = 135308; -- Duplicate 135248
DELETE FROM `pool_gameobject` WHERE `guid` = 135308;
UPDATE `gameobject` SET `position_x` = 2333.6, `position_y` = 606.94, `position_z` = 34.1543, `orientation` = 0.401425, `rotation2` = 0.199368, `rotation3` = 0.979925 WHERE `guid` = 135285 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 135444; -- Duplicate 135262
DELETE FROM `pool_gameobject` WHERE `guid` = 135444;
DELETE FROM `gameobject` WHERE `guid` = 135293; -- Duplicate 135268
DELETE FROM `pool_gameobject` WHERE `guid` = 135293;
UPDATE `gameobject` SET `position_x` = 2667.91, `position_y` = 323.909, `position_z` = 30.3662, `orientation` = -1.78023, `rotation2` = -0.777144, `rotation3` = 0.629323 WHERE `guid` = 135290 AND `id` = 1617;
UPDATE `gameobject` SET `position_x` = 4645.45, `position_y` = 196.456, `position_z` = 61.7261, `orientation` = 1.02974, `rotation2` = 0.492422, `rotation3` = 0.870357 WHERE `guid` = 137387 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 137439; -- Duplicate 137401
DELETE FROM `pool_gameobject` WHERE `guid` = 137439;
UPDATE `gameobject` SET `position_x` = 5199.67, `position_y` = 283.565, `position_z` = 39.3069, `orientation` = 1.3439, `rotation2` = 0.622513, `rotation3` = 0.782609 WHERE `guid` = 137435 AND `id` = 1617;
UPDATE `gameobject` SET `position_x` = 6062.24, `position_y` = 330.004, `position_z` = 28.136, `orientation` = 1.50098, `rotation2` = 0.681997, `rotation3` = 0.731355 WHERE `guid` = 137438 AND `id` = 1617;
DELETE FROM `gameobject` WHERE `guid` = 137400; -- Duplicate 137394
DELETE FROM `pool_gameobject` WHERE `guid` = 137400;
DELETE FROM `gameobject` WHERE `guid` = 137403; -- Duplicate 137382
DELETE FROM `pool_gameobject` WHERE `guid` = 137403;
DELETE FROM `gameobject` WHERE `guid` = 132429; -- Duplicate 132406
DELETE FROM `pool_gameobject` WHERE `guid` = 132429;
DELETE FROM `gameobject` WHERE `guid` = 139451; -- Duplicate 139442
DELETE FROM `pool_gameobject` WHERE `guid` = 139451;
DELETE FROM `gameobject` WHERE `guid` = 132424; -- Duplicate 132392
DELETE FROM `pool_gameobject` WHERE `guid` = 132424;
DELETE FROM `gameobject` WHERE `guid` = 139464; -- Duplicate 139461
DELETE FROM `pool_gameobject` WHERE `guid` = 139464;
DELETE FROM `gameobject` WHERE `guid` = 139458; -- Duplicate 139412
DELETE FROM `pool_gameobject` WHERE `guid` = 139458;
UPDATE `gameobject` SET `position_x` = -4563.28, `position_y` = -11627.5, `position_z` = 18.2939, `orientation` = -3.01941, `rotation2` = -0.998134, `rotation3` = 0.0610534 WHERE `guid` = 137295 AND `id` = 1617;
UPDATE `gameobject` SET `position_x` = -10307.6, `position_y` = 1344.26, `position_z` = 40.4595, `orientation` = -2.9845, `rotation2` = -0.996917, `rotation3` = 0.0784656 WHERE `guid` = 135675 AND `id` = 1617;
UPDATE `gameobject` SET `position_x` = -5011.31, `position_y` = -3508.53, `position_z` = 299.731, `orientation` = 0.95993, `rotation2` = 0.461748, `rotation3` = 0.887011 WHERE `guid` = 133078 AND `id` = 1617;
UPDATE `gameobject` SET `position_z` = -2.1674 WHERE `guid` = 138836 AND `id` = 1617; -- Silverleaf

DELETE FROM `gameobject` WHERE `guid` IN (64908,64923,64918,64924,64925,64926,64933,64934,64937,64938,64939,85303,85305,85306,85308,85310,85311,85329,85332,85333,85338,85348,85352,85356,86161,86191,86192,86193,87202,63242,64944,63233,63241,63246,63234,63245,86164,63236,63240,63244,86170,64913,64942,85435,64909,64943,64911,85436,85439,87191,87065,86181,87067,87066,87201,86188,87199,86185,86159,87118,86171,86167,86163,86165,86169,86166,86162,87627,86168,86177,86187,86176,86183,86175,86189,86184,87194,87626,87193,87068,87198,87197,87196,87195,64945,86195,86190,87069,557,569,582,588,607,626,637,832,880,895,1172,19969,19972) AND `id` = 1617;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(64908, 1617, 530, 1, 6802.53, -7226.2, 29.1124, -2.14675, 0, 0, -0.878816, 0.477161, 45, 90, 100, 1),
(64923, 1617, 530, 1, 6656.74, -6680.58, 44.1546, 2.94959, 0, 0, 0.995395, 0.0958539, 45, 90, 100, 1),
(64918, 1617, 530, 1, 7636.15, -6052.81, 10.7062, -0.226892, 0, 0, -0.113203, 0.993572, 45, 90, 100, 1),
(64924, 1617, 530, 1, 9278.97, -6164.54, 7.38687, -2.74016, 0, 0, -0.979924, 0.199371, 45, 90, 100, 1),
(64925, 1617, 530, 1, 8793.04, -7966.59, 172.773, 1.46608, 0, 0, 0.669132, 0.743144, 45, 90, 100, 1),
(64926, 1617, 530, 1, 8741.75, -7444.05, 103.339, -1.62316, 0, 0, -0.725376, 0.688353, 45, 90, 100, 1),
(64933, 1617, 530, 1, 7947.32, -6460.41, 50.1804, 1.97222, 0, 0, 0.833885, 0.551938, 45, 90, 100, 1),
(64934, 1617, 530, 1, 7534.86, -6142.36, 19.3165, 0.471238, 0, 0, 0.233445, 0.97237, 45, 90, 100, 1),
(64937, 1617, 530, 1, 9175.33, -7497.61, 69.5724, 0.366518, 0, 0, 0.182235, 0.983255, 45, 90, 100, 1),
(64938, 1617, 530, 1, 8631.52, -7409.71, 126.763, -1.71042, 0, 0, -0.754709, 0.65606, 45, 90, 100, 1),
(64939, 1617, 530, 1, 8295.98, -7256.61, 139.812, 0.331611, 0, 0, 0.165047, 0.986286, 45, 90, 100, 1),
(85303, 1617, 530, 1, -4321.04, -12547.3, 26.8173, -0.820303, 0, 0, -0.398748, 0.91706, 45, 90, 100, 1),
(85305, 1617, 530, 1, -3833.19, -12778.5, 8.89262, -1.44862, 0, 0, -0.662619, 0.748957, 45, 90, 100, 1),
(85306, 1617, 530, 1, -4728.24, -12257.2, 9.2629, 0.977383, 0, 0, 0.469471, 0.882948, 45, 90, 100, 1),
(85308, 1617, 530, 1, -4475.47, -11629.1, 11.5813, 2.94959, 0, 0, 0.995395, 0.0958539, 45, 90, 100, 1),
(85310, 1617, 530, 1, -4325.19, -12090.9, 7.34206, -0.698132, 0, 0, -0.34202, 0.939693, 45, 90, 100, 1),
(85311, 1617, 530, 1, -4969.33, -11266.4, 26.7661, 1.13446, 0, 0, 0.537298, 0.843393, 45, 90, 100, 1),
(85329, 1617, 530, 1, -3595.86, -11863.9, 6.7286, -0.523598, 0, 0, -0.258819, 0.965926, 45, 90, 100, 1),
(85332, 1617, 530, 1, -3800.11, -11847, 3.00253, -2.72271, 0, 0, -0.978147, 0.207914, 45, 90, 100, 1),
(85333, 1617, 530, 1, -3644.42, -12599.9, 14.4675, -2.67035, 0, 0, -0.972369, 0.233447, 45, 90, 100, 1),
(85338, 1617, 530, 1, -4616.37, -12116.4, 39.8854, -0.104719, 0, 0, -0.0523356, 0.99863, 45, 90, 100, 1),
(85348, 1617, 530, 1, -4532.82, -12531.3, 6.59207, 1.74533, 0, 0, 0.766045, 0.642787, 45, 90, 100, 1),
(85352, 1617, 530, 1, -4357.98, -12012.7, 7.51916, -1.32645, 0, 0, -0.615661, 0.788011, 45, 90, 100, 1),
(85356, 1617, 530, 1, -4406.96, -12192.7, 7.10283, 2.25147, 0, 0, 0.902584, 0.430513, 45, 90, 100, 1),
(86161, 1617, 530, 1, -3507.2, -11922.5, 2.58766, -2.51327, 0, 0, -0.951056, 0.309019, 45, 90, 100, 1),
(86191, 1617, 530, 1, -4215.53, -11785.2, 11.3831, -1.13446, 0, 0, -0.537298, 0.843393, 45, 90, 100, 1),
(86192, 1617, 530, 1, -2441.68, -11796.7, 17.4486, 0.994837, 0, 0, 0.477158, 0.878817, 45, 90, 100, 1),
(86193, 1617, 530, 1, -4338.12, -11691.6, 7.28691, -0.034906, 0, 0, -0.0174521, 0.999848, 45, 90, 100, 1),
(87202, 1617, 530, 1, 8891.63, -6787.54, 32.2687, -1.29154, 0, 0, -0.601814, 0.798637, 45, 90, 100, 1),
(63233, 1617, 0, 1, -10004.4, -51.3555, 30.7996, -0.052359, 0, 0, -0.0261765, 0.999657, 45, 90, 100, 1),
(63234, 1617, 0, 1, -9785.19, -1567, 41.5241, -1.97222, 0, 0, -0.833885, 0.551938, 45, 90, 100, 1),
(63236, 1617, 0, 1, -9490.43, -740.377, 60.2324, 2.23402, 0, 0, 0.898794, 0.438372, 45, 90, 100, 1),
(63240, 1617, 0, 1, -9329.45, -801.189, 66.006, -1.6057, 0, 0, -0.719339, 0.694659, 45, 90, 100, 1),
(63241, 1617, 0, 1, -9896.43, -96.5821, 29.1457, -1.16937, 0, 0, -0.551937, 0.833886, 45, 90, 100, 1),
(63242, 1617, 0, 1, -11215.1, 1846.08, 35.4977, -0.645772, 0, 0, -0.317305, 0.948324, 45, 90, 100, 1),
(63244, 1617, 0, 1, -9251, -1383.04, 81.9087, -2.80997, 0, 0, -0.986285, 0.165053, 45, 90, 100, 1),
(63245, 1617, 0, 1, -9757.63, -1501.73, 47.7348, 0.994837, 0, 0, 0.477158, 0.878817, 45, 90, 100, 1),
(63246, 1617, 0, 1, -9787, -297.477, 46.8726, -2.09439, 0, 0, -0.866024, 0.500002, 45, 90, 100, 1),
(64909, 1617, 0, 1, -5685.17, -1872.09, 400.533, -2.87979, 0, 0, -0.991445, 0.130528, 45, 90, 100, 1),
(64911, 1617, 0, 1, -5301.05, 284.52, 392.798, -0.226892, 0, 0, -0.113203, 0.993572, 45, 90, 100, 1),
(64913, 1617, 0, 1, -5742.28, 130.065, 368.739, 1.53589, 0, 0, 0.694658, 0.71934, 45, 90, 100, 1),
(64942, 1617, 0, 1, -5718.47, -1813.51, 399.721, 2.96704, 0, 0, 0.996194, 0.0871655, 45, 90, 100, 1),
(64943, 1617, 0, 1, -5443.69, -2982.44, 356.83, -0.418879, 0, 0, -0.207912, 0.978148, 45, 90, 100, 1),
(64944, 1617, 0, 1, -10042.4, 13.059, 30.5839, -2.3911, 0, 0, -0.930417, 0.366502, 45, 90, 100, 1),
(64945, 1617, 1, 1, 5744.92, 242.318, 32.4345, -1.01229, 0, 0, -0.484809, 0.87462, 45, 90, 100, 1),
(85435, 1617, 0, 1, -5693.27, -1248.39, 389.542, 1.53589, 0, 0, 0.694658, 0.71934, 45, 90, 100, 1),
(85436, 1617, 0, 1, -5120.14, -2750.12, 341.391, 1.93731, 0, 0, 0.824125, 0.566409, 45, 90, 100, 1),
(85439, 1617, 0, 1, -4916.39, -2793.79, 327.134, -0.122173, 0, 0, -0.0610485, 0.998135, 45, 90, 100, 1),
(86159, 1617, 1, 1, -690.432, -5610.89, 26.6571, 2.1293, 0, 0, 0.874619, 0.48481, 45, 90, 100, 1),
(86162, 1617, 1, 1, 654.603, -4906.94, 25.1601, -1.64061, 0, 0, -0.731354, 0.681998, 45, 90, 100, 1),
(86163, 1617, 1, 1, -109.584, -4607.25, 46.3883, -0.942477, 0, 0, -0.45399, 0.891007, 45, 90, 100, 1),
(86164, 1617, 0, 1, -9737.88, 727.222, 27.5254, 1.69297, 0, 0, 0.748956, 0.66262, 45, 90, 100, 1),
(86165, 1617, 1, 1, -62.4103, -5153.83, 9.28289, 0.820303, 0, 0, 0.398748, 0.91706, 45, 90, 100, 1),
(86166, 1617, 1, 1, 332.682, -4996.81, 19.5713, 0.034906, 0, 0, 0.0174521, 0.999848, 45, 90, 100, 1),
(86167, 1617, 1, 1, -168.535, -5166.67, 24.9761, 0, 0, 0, 0, 1, 45, 90, 100, 1),
(86168, 1617, 1, 1, 794.438, -4269.78, 18.8703, 2.14675, 0, 0, 0.878816, 0.477161, 45, 90, 100, 1),
(86169, 1617, 1, 1, 92.4622, -4616.65, 49.7868, -1.23918, 0, 0, -0.580701, 0.814117, 45, 90, 100, 1),
(86170, 1617, 0, 1, -9198.81, -1258.92, 77.0887, 0.314158, 0, 0, 0.156434, 0.987688, 45, 90, 100, 1),
(86171, 1617, 1, 1, -293.877, -4903.56, 31.5329, -1.27409, 0, 0, -0.594823, 0.803857, 45, 90, 100, 1),
(86175, 1617, 1, 1, 1358.3, -4569.46, 37.8919, -0.314158, 0, 0, -0.156434, 0.987688, 45, 90, 100, 1),
(86176, 1617, 1, 1, 1056.99, -5000.04, 17.4907, -1.36136, 0, 0, -0.629322, 0.777145, 45, 90, 100, 1),
(86177, 1617, 1, 1, 821.031, -4890.18, 35.3849, 1.0472, 0, 0, 0.500001, 0.866025, 45, 90, 100, 1),
(86181, 1617, 1, 1, -2257.43, 235.841, 81.6378, -2.426, 0, 0, -0.936671, 0.350211, 45, 90, 100, 1),
(86183, 1617, 0, 1, 1129.89, 1426.89, 37.3946, -2.70526, 0, 0, -0.976296, 0.21644, 45, 90, 100, 1),
(86184, 1617, 0, 1, 2196.37, -359.505, 75.1928, 0.279252, 0, 0, 0.139173, 0.990268, 45, 90, 100, 1),
(86185, 1617, 1, 1, -890.855, 389.65, 32.1049, -2.33874, 0, 0, -0.920505, 0.390732, 45, 90, 100, 1),
(86187, 1617, 1, 1, 1053.77, -4301.23, 17.4971, 1.27409, 0, 0, 0.594823, 0.803857, 45, 90, 100, 1),
(86188, 1617, 1, 1, -1165.96, -981.61, 2.30113, 1.91986, 0, 0, 0.819151, 0.573577, 45, 90, 100, 1),
(86189, 1617, 0, 1, 1966.1, -593.648, 56.9309, 2.42601, 0, 0, 0.936673, 0.350206, 45, 90, 100, 1),
(86190, 1617, 1, 1, 9996.68, 1737.04, 1332.69, 2.68781, 0, 0, 0.97437, 0.22495, 45, 90, 100, 1),
(86195, 1617, 1, 1, 7353.12, 119.21, 12.8687, -1.81514, 0, 0, -0.78801, 0.615662, 45, 90, 100, 1),
(87065, 1617, 1, 1, -2911.91, 228.381, 76.5499, 0.977383, 0, 0, 0.469471, 0.882948, 45, 90, 100, 1),
(87066, 1617, 1, 1, -1952.61, -242.826, -5.01756, 0.802851, 0, 0, 0.390731, 0.920505, 45, 90, 100, 1),
(87067, 1617, 1, 1, -2049.12, -291.195, -7.16006, 1.43117, 0, 0, 0.656059, 0.75471, 45, 90, 100, 1),
(87068, 1617, 0, 1, 2414.88, 311.561, 37.561, -0.575957, 0, 0, -0.284015, 0.95882, 45, 90, 100, 1),
(87069, 1617, 1, 1, 10043.9, 446.943, 1315.5, 0.314158, 0, 0, 0.156434, 0.987688, 45, 90, 100, 1),
(87118, 1617, 0, 1, -408.202, 923.671, 121.549, 2.63544, 0, 0, 0.968147, 0.250383, 45, 90, 100, 1),
(87191, 1617, 0, 1, -4884.1, -3106.54, 322.733, 2.1293, 0, 0, 0.874619, 0.48481, 45, 90, 100, 1),
(87193, 1617, 0, 1, 2363.91, 822.782, 47.6087, -1.13446, 0, 0, -0.537298, 0.843393, 45, 90, 100, 1),
(87194, 1617, 0, 1, 2254.86, 623.59, 34.8548, -0.279252, 0, 0, -0.139173, 0.990268, 45, 90, 100, 1),
(87195, 1617, 0, 1, 2594.16, 1270.24, 56.4382, -1.11701, 0, 0, -0.529919, 0.848048, 45, 90, 100, 1),
(87196, 1617, 0, 1, 2590.68, 540.587, 16.2911, 2.30383, 0, 0, 0.913544, 0.406739, 45, 90, 100, 1),
(87197, 1617, 0, 1, 2532.51, 625.952, 33.2541, 0.977383, 0, 0, 0.469471, 0.882948, 45, 90, 100, 1),
(87198, 1617, 0, 1, 2521.1, 953.773, 90.1524, -2.11185, 0, 0, -0.870356, 0.492423, 45, 90, 100, 1),
(87199, 1617, 1, 1, -909.978, -990.789, 23.0142, 0.890117, 0, 0, 0.430511, 0.902586, 45, 90, 100, 1),
(87201, 1617, 1, 1, -1664.08, 269.539, 35.6687, 0.104719, 0, 0, 0.0523356, 0.99863, 45, 90, 100, 1),
(87626, 1617, 0, 1, 2339.24, -353.655, 69.7924, -1.06465, 0, 0, -0.507538, 0.861629, 45, 90, 100, 1),
(87627, 1617, 0, 1, 783.538, 1408.73, 59.4719, -1.55334, 0, 0, -0.700908, 0.713252, 45, 90, 100, 1),

(557, 1617, 0, 1, 2504.55, 276.301, 45.7606, 2.56563, 0, 0, 0.958819, 0.284016, 45, 90, 100, 1),
(569, 1617, 0, 1, 2717.51, 236.582, 34.224, 1.3439, 0, 0, 0.622514, 0.782609, 45, 90, 100, 1),
(582, 1617, 0, 1, 1397.55, 1006.83, 53.7419, 1.0821, 0, 0, 0.515037, 0.857168, 45, 90, 100, 1),
(588, 1617, 0, 1, -4749.33, -3077.36, 313.461, 5.96903, 0, 0, -0.156434, 0.987688, 45, 90, 100, 1),
(607, 1617, 0, 1, 2357.97, 33.8889, 26.3059, 4.39823, 0, 0, -0.809016, 0.587786, 45, 90, 100, 1),
(626, 1617, 0, 1, 2315.77, 1683.72, 46.5538, 4.92183, 0, 0, -0.62932, 0.777146, 45, 90, 100, 1),
(637, 1617, 0, 1, 2228.95, 1147.06, 37.3862, 3.9619, 0, 0, -0.91706, 0.39875, 45, 90, 100, 1),
(139458, 1617, 0, 1, 2200.77, 789.698, 34.3001, 3.54302, 0, 0, -0.979924, 0.19937, 45, 90, 100, 1), -- 825
(832, 1617, 0, 1, 2842.78, 23.8514, 26.0168, 3.82227, 0, 0, -0.942641, 0.333808, 45, 90, 100, 1),
(880, 1617, 0, 1, 2937.52, 1069.4, 98.3469, 6.17847, 0, 0, -0.0523357, 0.99863, 45, 90, 100, 1),
(895, 1617, 0, 1, 2849.01, 257.817, 31.8816, 4.31097, 0, 0, -0.833885, 0.551938, 45, 90, 100, 1),
(139464, 1617, 0, 1, 896.103, 1337.66, 45.1423, 1.93731, 0, 0, 0.824125, 0.566408, 45, 90, 100, 1), -- 960
(132424, 1617, 0, 1, 2720.47, 856.41, 113.721, 3.4383, 0, 0, -0.989016, 0.147811, 45, 90, 100, 1), -- 967
(1172, 1617, 0, 1, -4837.14, -2743.59, 326.137, 4.20625, 0, 0, -0.861628, 0.507539, 45, 90, 100, 1),
(139451, 1617, 0, 1, -5108.3, -2945.94, 334.151, 5.77704, 0, 0, -0.25038, 0.968148, 45, 90, 100, 1), -- 9720
(132429, 1617, 1, 1, -1240.85, -573.591, -55.5674, 6.10865, 0, 0, -0.0871553, 0.996195, 45, 90, 100, 1), -- 10262
(137403, 1617, 1, 1, -1395.45, -244.261, 3.18103, 3.45576, 0, 0, -0.987688, 0.156436, 45, 90, 100, 1), -- 10278
(137400, 1617, 1, 1, 10232, 1437.95, 1332.42, 1.02974, 0, 0, 0.492423, 0.870356, 45, 90, 100, 1), -- 10283
(137439, 1617, 1, 1, -2813.88, 244.206, 79.3017, 1.01229, 0, 0, 0.484809, 0.87462, 45, 90, 100, 1), -- 10291
(135293, 1617, 1, 1, -935.092, -851.219, 3.78136, 4.67748, 0, 0, -0.719339, 0.694659, 45, 90, 100, 1), -- 10640
(135444, 1617, 1, 1, -940.065, 15.0219, 16.501, 5.96903, 0, 0, -0.156434, 0.987688, 45, 90, 100, 1), -- 18271
(19969, 1617, 1, 1, -906.076, -97.406, 2.42219, 1.98967, 0, 0, 0.83867, 0.54464, 45, 90, 100, 1),
(19972, 1617, 1, 1, 10044.2, 1254.35, 1325.02, 4.95674, 0, 0, -0.615661, 0.788011, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (64908,64923,64918,64924,64925,64926,64933,64934,64937,64938,64939,85303,85305,85306,85308,85310,85311,85329,85332,85333,85338,85348,85352,85356,86161,86191,86192,86193,87202,63242,64944,63233,63241,63246,63234,63245,86164,63236,63240,63244,86170,64913,64942,85435,64909,64943,64911,85436,85439,87191,87065,86181,87067,87066,87201,86188,87199,86185,86159,87118,86171,86167,86163,86165,86169,86166,86162,87627,86168,86177,86187,86176,86183,86175,86189,86184,87194,87626,87193,87068,87198,87197,87196,87195,64945,86195,86190,87069,557,569,582,588,607,626,637,832,880,895,1172,19969,19972);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(64924, 13009, 0, 'Silverleaf zone 3430, node 118'), -- Master Herb Pool - Eversong Woods
(64925, 13009, 0, 'Silverleaf zone 3430, node 119'),
(64926, 13009, 0, 'Silverleaf zone 3430, node 120'),
(64937, 13009, 0, 'Silverleaf zone 3430, node 124'),
(64938, 13009, 0, 'Silverleaf zone 3430, node 125'),
(64939, 13009, 0, 'Silverleaf zone 3430, node 126'),
(87202, 13009, 0, 'Silverleaf zone 3430, node 159'),

(64908, 13010, 0, 'Silverleaf zone 3433, node 93'), -- Master Herb Pool - Ghostlands
(64923, 13010, 0, 'Silverleaf zone 3433, node 95'),
(64918, 13010, 0, 'Silverleaf zone 3433, node 94'),
(64933, 13010, 0, 'Silverleaf zone 3433, node 98'),
(64934, 13010, 0, 'Silverleaf zone 3433, node 99'),

(85303, 13026, 0, 'Silverleaf zone 3524, node 67'), -- Master Herb Pool - Azuremyst Isle
(85305, 13026, 0, 'Silverleaf zone 3524, node 69'),
(85306, 13026, 0, 'Silverleaf zone 3524, node 70'),
(85308, 13026, 0, 'Silverleaf zone 3524, node 72'),
(85310, 13026, 0, 'Silverleaf zone 3524, node 74'),
(85311, 13026, 0, 'Silverleaf zone 3524, node 75'),
(85329, 13026, 0, 'Silverleaf zone 3524, node 90'),
(85332, 13026, 0, 'Silverleaf zone 3524, node 91'),
(85333, 13026, 0, 'Silverleaf zone 3524, node 92'),
(85338, 13026, 0, 'Silverleaf zone 3524, node 93'),
(85348, 13026, 0, 'Silverleaf zone 3524, node 94'),
(85352, 13026, 0, 'Silverleaf zone 3524, node 95'),
(85356, 13026, 0, 'Silverleaf zone 3524, node 96'),
(86161, 13026, 0, 'Silverleaf zone 3524, node 103'),
(86191, 13026, 0, 'Silverleaf zone 3524, node 106'),
(86193, 13026, 0, 'Silverleaf zone 3524, node 107'),

(86192, 13027, 0, 'Bloodmyst Isle - Silverleaf'), -- Master Herb Pool - Bloodmyst Isle

(63242, 13022, 0, 'Silverleaf zone 40, node 284'), -- Master Herb Pool - Westfall

(63233, 13008, 0, 'Silverleaf zone 12, node 113'), -- Master Herb Pool - Elwynn Forest
(63234, 13008, 0, 'Silverleaf zone 12, node 114'),
(63236, 13008, 0, 'Silverleaf zone 12, node 115'),
(63240, 13008, 0, 'Silverleaf zone 12, node 117'),
(63241, 13008, 0, 'Silverleaf zone 12, node 118'),
(63244, 13008, 0, 'Silverleaf zone 12, node 119'),
(63245, 13008, 0, 'Silverleaf zone 12, node 120'),
(63246, 13008, 0, 'Silverleaf zone 12, node 121'),
(64944, 13008, 0, 'Silverleaf zone 12, node 147'),
(86164, 13008, 0, 'Silverleaf zone 12, node 156'),
(86170, 13008, 0, 'Silverleaf zone 12, node 157'),

(64909, 13005, 0, 'Silverleaf zone 1, node 133'), -- Master Herb Pool - Dun Morogh
(64911, 13005, 0, 'Silverleaf zone 1, node 134'),
(64913, 13005, 0, 'Silverleaf zone 1, node 136'),
(64942, 13005, 0, 'Silverleaf zone 1, node 138'),
(85435, 13005, 0, 'Silverleaf zone 1, node 152'),

(64943, 13013, 0, 'Silverleaf zone 38, node 202'), -- Master Herb Pool - Loch Modan
(85436, 13013, 0, 'Silverleaf zone 38, node 211'),
(85439, 13013, 0, 'Silverleaf zone 38, node 213'),
(87191, 13013, 0, 'Silverleaf zone 38, node 215'),
(588, 	13013, 0, 'Loch Modan - Silverleaf'),
(1172, 	13013, 0, 'Loch Modan - Silverleaf'),
(139451,13013, 0, 'Loch Modan - Silverleaf'),

(64945, 13028, 0, 'Silverleaf zone 148, node 353'), -- Master Herb Pool - Darkshore
(86195, 13028, 0, 'Silverleaf zone 148, node 357'),

(86159, 13030, 0, 'Silverleaf zone 14, node 251'), -- Master Herb Pool - Durotar
(86162, 13030, 0, 'Silverleaf zone 14, node 252'),
(86163, 13030, 0, 'Silverleaf zone 14, node 253'),
(86165, 13030, 0, 'Silverleaf zone 14, node 254'),
(86166, 13030, 0, 'Silverleaf zone 14, node 255'),
(86167, 13030, 0, 'Silverleaf zone 14, node 256'),
(86168, 13030, 0, 'Silverleaf zone 14, node 257'),
(86169, 13030, 0, 'Silverleaf zone 14, node 258'),
(86171, 13030, 0, 'Silverleaf zone 14, node 259'),
(86175, 13030, 0, 'Silverleaf zone 14, node 261'),
(86176, 13030, 0, 'Silverleaf zone 14, node 262'),
(86177, 13030, 0, 'Silverleaf zone 14, node 263'),
(86187, 13030, 0, 'Silverleaf zone 14, node 264'),

(86181, 13034, 0, 'Silverleaf zone 215, node 158'), -- Master Herb Pool - Mulgore
(86185, 13034, 0, 'Silverleaf zone 215, node 159'),
(86188, 13034, 0, 'Silverleaf zone 215, node 161'),
(87065, 13034, 0, 'Silverleaf zone 215, node 166'),
(87066, 13034, 0, 'Silverleaf zone 215, node 167'),
(87067, 13034, 0, 'Silverleaf zone 215, node 168'),
(87199, 13034, 0, 'Silverleaf zone 215, node 171'),
(87201, 13034, 0, 'Silverleaf zone 215, node 172'),
(19969, 13034, 0, 'Mulgore - Silverleaf'),
(132429,13034, 0, 'Mulgore - Silverleaf'),
(137403,13034, 0, 'Mulgore - Silverleaf'),
(137439,13034, 0, 'Mulgore - Silverleaf'),
(135293,13034, 0, 'Mulgore - Silverleaf'),
(135444,13034, 0, 'Mulgore - Silverleaf'),

(86183, 13016, 0, 'Silverleaf zone 130, node 209'), -- Master Herb Pool - Silverpine Forest
(87118, 13016, 0, 'Silverleaf zone 130, node 217'),
(87627, 13016, 0, 'Silverpine Forest - Silverleaf'),
(582, 	13016, 0, 'Silverpine Forest - Silverleaf'),
(139464,13016, 0, 'Silverpine Forest - Silverleaf'),

(86184, 13020, 0, 'Silverleaf zone 85, node 154'), -- Master Herb Pool - Tirisfal Glades
(86189, 13020, 0, 'Silverleaf zone 85, node 155'),
(87068, 13020, 0, 'Silverleaf zone 85, node 157'),
(87193, 13020, 0, 'Silverleaf zone 85, node 159'),
(87194, 13020, 0, 'Silverleaf zone 85, node 160'),
(87195, 13020, 0, 'Silverleaf zone 85, node 161'),
(87196, 13020, 0, 'Silverleaf zone 85, node 162'),
(87197, 13020, 0, 'Silverleaf zone 85, node 163'),
(87198, 13020, 0, 'Silverleaf zone 85, node 164'),
(87626, 13020, 0, 'Tirisfal Glades - Silverleaf'),
(557, 	13020, 0, 'Tirisfal Glades - Silverleaf'),
(569, 	13020, 0, 'Tirisfal Glades - Silverleaf'),
(607, 	13020, 0, 'Tirisfal Glades - Silverleaf'),
(626, 	13020, 0, 'Tirisfal Glades - Silverleaf'),
(637, 	13020, 0, 'Tirisfal Glades - Silverleaf'),
(832, 	13020, 0, 'Tirisfal Glades - Silverleaf'),
(880, 	13020, 0, 'Tirisfal Glades - Silverleaf'),
(895, 	13020, 0, 'Tirisfal Glades - Silverleaf'),
(139458,13020, 0, 'Tirisfal Glades - Silverleaf'),
(132424,13020, 0, 'Tirisfal Glades - Silverleaf'),

(86190, 13038, 0, 'Silverleaf zone 141, node 135'), -- Master Herb Pool - Teldrassil
(87069, 13038, 0, 'Silverleaf zone 141, node 137'),
(19972, 13038, 0, 'Teldrassil - Silverleaf'),
(137400,13038, 0, 'Teldrassil - Silverleaf');

-- Peacebloom 1618
-- https://tbc.wowhead.com/object=1618/peacebloom
UPDATE `gameobject` SET `position_x` = -2013.9, `position_y` = -119.341, `position_z` = -7.13839, `orientation` = -1.64061, `rotation2` = -0.731354, `rotation3` = 0.681998 WHERE `guid` = 138923 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = 2188.6, `position_y` = 953.799, `position_z` = 35.976, `orientation` = -1.36136, `rotation2` = -0.629322, `rotation3` = 0.777145 WHERE `guid` = 135341 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = 1166.19, `position_y` = -4927.81, `position_z` = 16.5958, `orientation` = -2.14675, `rotation2` = -0.878816, `rotation3` = 0.477161 WHERE `guid` = 138170 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -453.35, `position_y` = -4824.06, `position_z` = 38.1235, `orientation` = 1.64061, `rotation2` = 0.731354, `rotation3` = 0.681998 WHERE `guid` = 138125 AND `id` = 1618;
DELETE FROM `gameobject` WHERE `guid` = 138172; -- Duplicate 138125 (Durotar - Peacebloom)
DELETE FROM `pool_gameobject` WHERE `guid` = 138172;
UPDATE `gameobject` SET `position_x` = -978.505, `position_y` = 78.1237, `position_z` = 31.3837, `orientation` = -0.401425, `rotation2` = -0.199368, `rotation3` = 0.979925 WHERE `guid` = 138917 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -2383.87, `position_y` = -2246.75, `position_z` = 91.6897, `orientation` = 2.16421, `rotation2` = 0.882948, `rotation3` = 0.469471 WHERE `guid` = 139730 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -366.046, `position_y` = 1367.42, `position_z` = 34.4271, `orientation` = 2.51327, `rotation2` = 0.951056, `rotation3` = 0.309019 WHERE `guid` = 133639 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = 1937.37, `position_y` = 536.597, `position_z` = 50.284, `orientation` = -1.65806, `rotation2` = -0.737276, `rotation3` = 0.675591 WHERE `guid` = 135361 AND `id` = 1618;
DELETE FROM `gameobject` WHERE `guid` = 135334; -- Duplicate 135361 (Tirisfal Glades - Peacebloom)
DELETE FROM `pool_gameobject` WHERE `guid` = 135334;
UPDATE `gameobject` SET `position_x` = -1421.61, `position_y` = 248.471, `position_z` = -4.84939, `orientation` = -0.942477, `rotation2` = -0.45399, `rotation3` = 0.891007 WHERE `guid` = 138891 AND `id` = 1618;
DELETE FROM `gameobject` WHERE `guid` = 138926; -- Duplicate 138891 (Mulgore - Peacebloom)
DELETE FROM `pool_gameobject` WHERE `guid` = 138926;
UPDATE `gameobject` SET `position_x` = -2257.83, `position_y` = -1570.24, `position_z` = 92.2167, `orientation` = 0.698131, `rotation2` = 0.34202, `rotation3` = 0.939693 WHERE `guid` = 139732 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -10038.2, `position_y` = 1397.22, `position_z` = 42.6272, `orientation` = -1.27409, `rotation2` = -0.594823, `rotation3` = 0.803857 WHERE `guid` = 135708 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = 714.725, `position_y` = -2550.9, `position_z` = 92.7443, `orientation` = -1.76278, `rotation2` = -0.771624, `rotation3` = 0.636079 WHERE `guid` = 139734 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -4916.38, `position_y` = -3085, `position_z` = 315.933, `orientation` = 1.83259, `rotation2` = 0.793352, `rotation3` = 0.608764 WHERE `guid` = 133129 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = 280.476, `position_y` = -5047.2, `position_z` = 11.7505, `orientation` = 0.820303, `rotation2` = 0.398748, `rotation3` = 0.91706 WHERE `guid` = 138176 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -1614.72, `position_y` = -2140.22, `position_z` = 94.3504, `orientation` = -2.1293, `rotation2` = -0.874619, `rotation3` = 0.48481 WHERE `guid` = 139721 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -559.779, `position_y` = 874.4, `position_z` = 88.7414, `orientation` = -1.37881, `rotation2` = -0.636078, `rotation3` = 0.771625 WHERE `guid` = 133641 AND `id` = 1618;
DELETE FROM `gameobject` WHERE `guid` = 132693; -- Duplicate 133641 (Hillsbrad Foothills - Peacebloom)
DELETE FROM `pool_gameobject` WHERE `guid` = 132693;
UPDATE `gameobject` SET `position_x` = -1646.32, `position_y` = -2052.02, `position_z` = 93.133, `orientation` = 2.04204, `rotation2` = 0.852641, `rotation3` = 0.522496 WHERE `guid` = 139723 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = 2178.24, `position_y` = 71.7921, `position_z` = 28.6869, `orientation` = -2.80997, `rotation2` = -0.986285, `rotation3` = 0.165053 WHERE `guid` = 135349 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -849.958, `position_y` = -276.665, `position_z` = -16.8615, `orientation` = -1.51844, `rotation2` = -0.688356, `rotation3` = 0.725373 WHERE `guid` = 138930 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = 250.021, `position_y` = -3047.69, `position_z` = 96.0069, `orientation` = -1.72787, `rotation2` = -0.760404, `rotation3` = 0.64945 WHERE `guid` = 139724 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -2616.61, `position_y` = -1888.47, `position_z` = 95.5607, `orientation` = -2.91469, `rotation2` = -0.993571, `rotation3` = 0.113208 WHERE `guid` = 139735 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -2454.54, `position_y` = -2045.98, `position_z` = 96.6962, `orientation` = 3.14159, `rotation2` = 1, `rotation3` = 0.00000126759 WHERE `guid` = 139751 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -3382.04, `position_y` = -1915.07, `position_z` = 92.1843, `orientation` = 3.01941, `rotation2` = 0.998134, `rotation3` = 0.0610534 WHERE `guid` = 139749 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -409.883, `position_y` = -2852.73, `position_z` = 93.4444, `orientation` = -1.71042, `rotation2` = -0.754709, `rotation3` = 0.65606 WHERE `guid` = 139750 AND `id` = 1618;
DELETE FROM `gameobject` WHERE `guid` = 13559; -- Duplicate 139750 (The Barrens - Peacebloom)
DELETE FROM `pool_gameobject` WHERE `guid` = 13559;
UPDATE `gameobject` SET `position_x` = 2026.84, `position_y` = 604.512, `position_z` = 36.0793, `orientation` = 0.401425, `rotation2` = 0.199368, `rotation3` = 0.979925 WHERE `guid` = 135354 AND `id` = 1618;
DELETE FROM `gameobject` WHERE `guid` = 135362; -- Duplicate 135354 (Tirisfal Glades - Peacebloom)
DELETE FROM `pool_gameobject` WHERE `guid` = 135362;
UPDATE `gameobject` SET `position_x` = -146.132, `position_y` = -4716.83, `position_z` = 29.0282, `orientation` = -0.977383, `rotation2` = -0.469471, `rotation3` = 0.882948 WHERE `guid` = 138178 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -5588.98, `position_y` = -3679.32, `position_z` = 308.934, `orientation` = 2.25147, `rotation2` = 0.902584, `rotation3` = 0.430513 WHERE `guid` = 133131 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = 932.837, `position_y` = 1846.68, `position_z` = 5.9389, `orientation` = -2.65289, `rotation2` = -0.970294, `rotation3` = 0.241927 WHERE `guid` = 133635 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -3615.46, `position_y` = -1942.71, `position_z` = 94.1204, `orientation` = -0.296705, `rotation2` = -0.147809, `rotation3` = 0.989016 WHERE `guid` = 139755 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -47.8642, `position_y` = -3250.27, `position_z` = 91.6675, `orientation` = 0.750491, `rotation2` = 0.366501, `rotation3` = 0.930418 WHERE `guid` = 139748 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -146.922, `position_y` = -2948.52, `position_z` = 91.9616, `orientation` = -1.93732, `rotation2` = -0.824127, `rotation3` = 0.566404 WHERE `guid` = 139747 AND `id` = 1618;
DELETE FROM `gameobject` WHERE `guid` = 33549; -- Duplicate 139747 (The Barrens - Peacebloom)
DELETE FROM `pool_gameobject` WHERE `guid` = 33549;
UPDATE `gameobject` SET `position_x` = -946.539, `position_y` = -2618.98, `position_z` = 91.7864, `orientation` = -1.06465, `rotation2` = -0.507538, `rotation3` = 0.861629 WHERE `guid` = 139746 AND `id` = 1618;
DELETE FROM `gameobject` WHERE `guid` = 13564; -- Duplicate 139746 (The Barrens - Peacebloom)
DELETE FROM `pool_gameobject` WHERE `guid` = 13564;
UPDATE `gameobject` SET `position_x` = -308.541, `position_y` = -1819.66, `position_z` = 95.7815, `orientation` = -0.261798, `rotation2` = -0.130525, `rotation3` = 0.991445 WHERE `guid` = 139738 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = 280.543, `position_y` = -2581.38, `position_z` = 93.8831, `orientation` = 2.09439, `rotation2` = 0.866024, `rotation3` = 0.500002 WHERE `guid` = 139739 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -158.029, `position_y` = -3378.55, `position_z` = 92.3938, `orientation` = 0.244346, `rotation2` = 0.121869, `rotation3` = 0.992546 WHERE `guid` = 139741 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = 1103.88, `position_y` = 1458.85, `position_z` = 34.7833, `orientation` = 2.05949, `rotation2` = 0.857168, `rotation3` = 0.515037 WHERE `guid` = 133647 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -2191.67, `position_y` = -1945.28, `position_z` = 93.879, `orientation` = -3.07177, `rotation2` = -0.999391, `rotation3` = 0.0349043 WHERE `guid` = 139688 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -1217.21, `position_y` = -346.838, `position_z` = -17.8093, `orientation` = 0.436332, `rotation2` = 0.216439, `rotation3` = 0.976296 WHERE `guid` = 138910 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -1282.12, `position_y` = 322.474, `position_z` = -0.953603, `orientation` = -0.628317, `rotation2` = -0.309016, `rotation3` = 0.951057 WHERE `guid` = 138911 AND `id` = 1618;
DELETE FROM `gameobject` WHERE `guid` = 137786; -- Duplicate 138911 (Desolace - Peacebloom)
DELETE FROM `pool_gameobject` WHERE `guid` = 137786;
UPDATE `gameobject` SET `position_x` = -218.375, `position_y` = -2586.92, `position_z` = 94.245, `orientation` = -1.309, `rotation2` = -0.608763, `rotation3` = 0.793352 WHERE `guid` = 139690 AND `id` = 1618;
DELETE FROM `gameobject` WHERE `guid` = 13545; -- Duplicate 139690 (The Barrens - Peacebloom)
DELETE FROM `pool_gameobject` WHERE `guid` = 13545;
UPDATE `gameobject` SET `position_x` = -2222.54, `position_y` = 152.929, `position_z` = 61.2913, `orientation` = 0.837757, `rotation2` = 0.406736, `rotation3` = 0.913546 WHERE `guid` = 138916 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -79.9959, `position_y` = -3888.22, `position_z` = 46.938, `orientation` = -0.349065, `rotation2` = -0.173648, `rotation3` = 0.984808 WHERE `guid` = 138153 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -159.638, `position_y` = 950.241, `position_z` = 64.9428, `orientation` = -0.191985, `rotation2` = -0.0958451, `rotation3` = 0.995396 WHERE `guid` = 133649 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -2819.61, `position_y` = -1986.15, `position_z` = 94.3748, `orientation` = 1.0472, `rotation2` = 0.500001, `rotation3` = 0.866025 WHERE `guid` = 139685 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = 576.44, `position_y` = -4645.88, `position_z` = 31.6439, `orientation` = -1.44862, `rotation2` = -0.662619, `rotation3` = 0.748957 WHERE `guid` = 138154 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = 106.372, `position_y` = -4009.62, `position_z` = 46.3773, `orientation` = -0.453785, `rotation2` = -0.224951, `rotation3` = 0.97437 WHERE `guid` = 138156 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = 2039.89, `position_y` = -297.34, `position_z` = 36.1757, `orientation` = 1.37881, `rotation2` = 0.636078, `rotation3` = 0.771625 WHERE `guid` = 135394 AND `id` = 1618;
DELETE FROM `gameobject` WHERE `guid` = 135363; -- Duplicate 135394 (Tirisfal Glades - Peacebloom)
DELETE FROM `pool_gameobject` WHERE `guid` = 135363;
DELETE FROM `gameobject` WHERE `guid` = 135329; -- Duplicate 135394 (Tirisfal Glades - Peacebloom)
DELETE FROM `pool_gameobject` WHERE `guid` = 135329;
UPDATE `gameobject` SET `position_x` = -2619.65, `position_y` = -650.645, `position_z` = 0.39445, `orientation` = 1.95477, `rotation2` = 0.829038, `rotation3` = 0.559192 WHERE `guid` = 138897 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -925.013, `position_y` = 378.549, `position_z` = 15.888, `orientation` = 1.72787, `rotation2` = 0.760404, `rotation3` = 0.64945 WHERE `guid` = 138898 AND `id` = 1618;
DELETE FROM `gameobject` WHERE `guid` = 137784; -- Duplicate 138898 (Mulgore - Peacebloom)
DELETE FROM `pool_gameobject` WHERE `guid` = 137784;
UPDATE `gameobject` SET `position_x` = 1691.54, `position_y` = 646.112, `position_z` = 49.5556, `orientation` = -3.03684, `rotation2` = -0.998629, `rotation3` = 0.0523524 WHERE `guid` = 135330 AND `id` = 1618;
DELETE FROM `gameobject` WHERE `guid` = 135347; -- Duplicate 135330 (Tirisfal Glades - Peacebloom)
DELETE FROM `pool_gameobject` WHERE `guid` = 135347;
UPDATE `gameobject` SET `position_x` = -1985.86, `position_y` = -1981.32, `position_z` = 92.8823, `orientation` = -0.017452, `rotation2` = -0.00872589, `rotation3` = 0.999962 WHERE `guid` = 139681 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = 1267.29, `position_y` = -4862.45, `position_z` = 15.5736, `orientation` = -1.85005, `rotation2` = -0.798636, `rotation3` = 0.601815 WHERE `guid` = 138129 AND `id` = 1618;
DELETE FROM `gameobject` WHERE `guid` = 138159; -- Duplicate 138129 (Durotar - Peacebloom)
DELETE FROM `pool_gameobject` WHERE `guid` = 138159;
UPDATE `gameobject` SET `position_x` = 590.793, `position_y` = -4870.73, `position_z` = 24.6471, `orientation` = -1.51844, `rotation2` = -0.688356, `rotation3` = 0.725373 WHERE `guid` = 138160 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = 2106.63, `position_y` = 1055.04, `position_z` = 33.1502, `orientation` = -0.593412, `rotation2` = -0.292372, `rotation3` = 0.956305 WHERE `guid` = 135332 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = 710.625, `position_y` = -4209.05, `position_z` = 16.8783, `orientation` = -0.139624, `rotation2` = -0.0697553, `rotation3` = 0.997564 WHERE `guid` = 138161 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -5335.43, `position_y` = -2800.35, `position_z` = 350.679, `orientation` = 2.93214, `rotation2` = 0.994521, `rotation3` = 0.104535 WHERE `guid` = 133134 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = 390.577, `position_y` = -3414.15, `position_z` = 95.0342, `orientation` = 0.453785, `rotation2` = 0.224951, `rotation3` = 0.97437 WHERE `guid` = 139712 AND `id` = 1618;
DELETE FROM `gameobject` WHERE `guid` = 13557; -- Duplicate 139712 (The Barrens - Peacebloom)
DELETE FROM `pool_gameobject` WHERE `guid` = 13557;
UPDATE `gameobject` SET `position_x` = -2618.37, `position_y` = -2338.07, `position_z` = 91.7466, `orientation` = -1.91986, `rotation2` = -0.819151, `rotation3` = 0.573577 WHERE `guid` = 139709 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = 1100.14, `position_y` = 1267.14, `position_z` = 41.1007, `orientation` = -0.174532, `rotation2` = -0.0871553, `rotation3` = 0.996195 WHERE `guid` = 133644 AND `id` = 1618;
DELETE FROM `gameobject` WHERE `guid` = 133650; -- Duplicate 133644 (Silverpine Forest - Peacebloom)
DELETE FROM `pool_gameobject` WHERE `guid` = 133650;
UPDATE `gameobject` SET `position_x` = 1317.86, `position_y` = -4986.07, `position_z` = 2.62448, `orientation` = 2.46091, `rotation2` = 0.942641, `rotation3` = 0.333809 WHERE `guid` = 138162 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -182.081, `position_y` = -2814.53, `position_z` = 91.9249, `orientation` = -2.77507, `rotation2` = -0.983255, `rotation3` = 0.182237 WHERE `guid` = 139707 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -2346.98, `position_y` = -1014.55, `position_z` = -9.09553, `orientation` = 2.07694, `rotation2` = 0.861629, `rotation3` = 0.507539 WHERE `guid` = 138901 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = 209.838, `position_y` = -4051.3, `position_z` = 44.4966, `orientation` = 2.26892, `rotation2` = 0.906306, `rotation3` = 0.422622 WHERE `guid` = 138164 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = 2348.53, `position_y` = -211.136, `position_z` = 39.2133, `orientation` = -0.593412, `rotation2` = -0.292372, `rotation3` = 0.956305 WHERE `guid` = 135365 AND `id` = 1618;
DELETE FROM `gameobject` WHERE `guid` = 135381; -- Duplicate 135365 (Tirisfal Glades - Peacebloom)
DELETE FROM `pool_gameobject` WHERE `guid` = 135381;
UPDATE `gameobject` SET `position_x` = -715.41, `position_y` = 90.4643, `position_z` = -6.07189, `orientation` = -0.645772, `rotation2` = -0.317305, `rotation3` = 0.948324 WHERE `guid` = 138913 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = 185.339, `position_y` = -4189.96, `position_z` = 44.9944, `orientation` = -2.23402, `rotation2` = -0.898794, `rotation3` = 0.438372 WHERE `guid` = 138151 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -419.211, `position_y` = -2380.24, `position_z` = 91.7137, `orientation` = -2.26892, `rotation2` = -0.906306, `rotation3` = 0.422622 WHERE `guid` = 139701 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -4554.9, `position_y` = -12318.7, `position_z` = 19.5644, `orientation` = 2.67035, `rotation2` = 0.972369, `rotation3` = 0.233447 WHERE `guid` = 137323 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -4705.27, `position_y` = -11584.4, `position_z` = 26.3765, `orientation` = -1.98967, `rotation2` = -0.838669, `rotation3` = 0.544641 WHERE `guid` = 137321 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -4353.18, `position_y` = -12250.8, `position_z` = 7.59713, `orientation` = -2.37364, `rotation2` = -0.927182, `rotation3` = 0.37461 WHERE `guid` = 137326 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -9752.7, `position_y` = -1765.98, `position_z` = 52.6211, `orientation` = 0.900624, `rotation2` = 0.939099, `rotation3` = 0.343646 WHERE `guid` = 133277 AND `id` = 1618;
DELETE FROM `gameobject` WHERE `guid` = 132325; -- Duplicate 133277 (Elwynn Forest - Peacebloom)
DELETE FROM `pool_gameobject` WHERE `guid` = 132325;
UPDATE `gameobject` SET `position_x` = -9603.04, `position_y` = -1909.8, `position_z` = 61.5558, `orientation` = 4.15038, `rotation2` = 0.14112, `rotation3` = -0.989992 WHERE `guid` = 133276 AND `id` = 1618;
UPDATE `gameobject` SET `position_x` = -9143.82, `position_y` = -2506.89, `position_z` = 118.587, `orientation` = 4.21077, `rotation2` = 0.853935, `rotation3` = 0.52038 WHERE `guid` = 133274 AND `id` = 1618;
DELETE FROM `gameobject` WHERE `guid` = 135707; -- Duplicate 135725
DELETE FROM `pool_gameobject` WHERE `guid` = 135707;
DELETE FROM `gameobject` WHERE `guid` = 132338; -- Duplicate 132322
DELETE FROM `pool_gameobject` WHERE `guid` = 132338;
DELETE FROM `gameobject` WHERE `guid` = 135706; -- Duplicate 135726
DELETE FROM `pool_gameobject` WHERE `guid` = 135706;
DELETE FROM `gameobject` WHERE `guid` = 132339; -- Duplicate 132315
DELETE FROM `pool_gameobject` WHERE `guid` = 132339;
DELETE FROM `gameobject` WHERE `guid` = 133145; -- Duplicate 133133
DELETE FROM `pool_gameobject` WHERE `guid` = 133145;
DELETE FROM `gameobject` WHERE `guid` = 140549; -- Duplicate 133143
DELETE FROM `pool_gameobject` WHERE `guid` = 140549;
DELETE FROM `gameobject` WHERE `guid` = 131500; -- Duplicate 131508
DELETE FROM `pool_gameobject` WHERE `guid` = 131500;
UPDATE `gameobject` SET `map` = 0 WHERE `guid` = 138609 AND `id` = 1618;
UPDATE `pool_gameobject` SET `pool_entry` = 13005, `description` = 'Dun Morogh - Peacebloom' WHERE `guid` = 138609;
DELETE FROM `gameobject` WHERE `guid` = 138608; -- Duplicate 131488
DELETE FROM `pool_gameobject` WHERE `guid` = 138608;
DELETE FROM `gameobject` WHERE `guid` = 138605; -- Duplicate 131470
DELETE FROM `pool_gameobject` WHERE `guid` = 138605;
DELETE FROM `gameobject` WHERE `guid` = 138607; -- Duplicate 64951
DELETE FROM `pool_gameobject` WHERE `guid` = 138607;
UPDATE `gameobject` SET `map` = 0 WHERE `guid` = 138606 AND `id` = 1618;
UPDATE `pool_gameobject` SET `pool_entry` = 13005, `description` = 'Dun Morogh - Peacebloom' WHERE `guid` = 138606;
DELETE FROM `gameobject` WHERE `guid` IN (139697,138880,139743); -- Duplicate 138907
DELETE FROM `pool_gameobject` WHERE `guid` IN (139697,138880,139743);
DELETE FROM `gameobject` WHERE `guid` = 138905; -- Duplicate 139754
DELETE FROM `pool_gameobject` WHERE `guid` = 138905;
DELETE FROM `gameobject` WHERE `guid` = 138905; -- Duplicate 139754
DELETE FROM `pool_gameobject` WHERE `guid` = 138905;
DELETE FROM `gameobject` WHERE `guid` = 139699; -- Duplicate 138127
DELETE FROM `pool_gameobject` WHERE `guid` = 139699;
DELETE FROM `gameobject` WHERE `guid` = 139699; -- Duplicate 138127
DELETE FROM `pool_gameobject` WHERE `guid` = 139699;
DELETE FROM `gameobject` WHERE `guid` = 139700; -- Duplicate 138128
DELETE FROM `pool_gameobject` WHERE `guid` = 139700;
DELETE FROM `gameobject` WHERE `guid` IN (137785,138904,137782); -- Duplicate 138874
DELETE FROM `pool_gameobject` WHERE `guid` IN (137785,138904,137782);
DELETE FROM `gameobject` WHERE `guid` = 137783; -- Duplicate 138912
DELETE FROM `pool_gameobject` WHERE `guid` = 137783;
DELETE FROM `gameobject` WHERE `guid` = 139714; -- Duplicate 138144
DELETE FROM `pool_gameobject` WHERE `guid` = 139714;
DELETE FROM `gameobject` WHERE `guid` = 138175; -- Duplicate 138169
DELETE FROM `pool_gameobject` WHERE `guid` = 138175;
DELETE FROM `gameobject` WHERE `guid` = 138168; -- Duplicate 138142
DELETE FROM `pool_gameobject` WHERE `guid` = 138168;
DELETE FROM `gameobject` WHERE `guid` = 138168; -- Duplicate 138142
DELETE FROM `pool_gameobject` WHERE `guid` = 138168;
DELETE FROM `gameobject` WHERE `guid` = 138120; -- Duplicate 138165
DELETE FROM `pool_gameobject` WHERE `guid` = 138120;
DELETE FROM `gameobject` WHERE `guid` = 139698; -- Duplicate 138870
DELETE FROM `pool_gameobject` WHERE `guid` = 139698;
DELETE FROM `gameobject` WHERE `guid` = 133636; -- Duplicate 133632
DELETE FROM `pool_gameobject` WHERE `guid` = 133636;
DELETE FROM `gameobject` WHERE `guid` = 132694; -- Duplicate 133627
DELETE FROM `pool_gameobject` WHERE `guid` = 132694;
DELETE FROM `gameobject` WHERE `guid` = 138155; -- Duplicate 138133
DELETE FROM `pool_gameobject` WHERE `guid` = 138155;
DELETE FROM `gameobject` WHERE `guid` = 138173; -- Duplicate 138136
DELETE FROM `pool_gameobject` WHERE `guid` = 138173;
DELETE FROM `gameobject` WHERE `guid` = 138140; -- Duplicate 138158
DELETE FROM `pool_gameobject` WHERE `guid` = 138140;
DELETE FROM `gameobject` WHERE `guid` = 133633; -- Duplicate 133648
DELETE FROM `pool_gameobject` WHERE `guid` = 133633;
DELETE FROM `gameobject` WHERE `guid` = 133637; -- Duplicate 133622
DELETE FROM `pool_gameobject` WHERE `guid` = 133637;
DELETE FROM `gameobject` WHERE `guid` = 133623; -- Duplicate 133620
DELETE FROM `pool_gameobject` WHERE `guid` = 133623;
DELETE FROM `gameobject` WHERE `guid` = 138174; -- Duplicate 138118
DELETE FROM `pool_gameobject` WHERE `guid` = 138174;
DELETE FROM `gameobject` WHERE `guid` IN (138124,138177); -- Duplicate 138139
DELETE FROM `pool_gameobject` WHERE `guid` IN (138124,138177);
DELETE FROM `gameobject` WHERE `guid` = 133638; -- Duplicate 133625
DELETE FROM `pool_gameobject` WHERE `guid` = 133638;
DELETE FROM `gameobject` WHERE `guid` = 133643; -- Duplicate 133624
DELETE FROM `pool_gameobject` WHERE `guid` = 133643;
DELETE FROM `gameobject` WHERE `guid` IN (135448,135451,135386); -- Duplicate 135328
DELETE FROM `pool_gameobject` WHERE `guid` IN (135448,135451,135386);
DELETE FROM `gameobject` WHERE `guid` = 135322; -- Duplicate 135389
DELETE FROM `pool_gameobject` WHERE `guid` = 135322;
UPDATE `pool_gameobject` SET `pool_entry` = 13020, `description` = 'Tirisfal Glades - Peacebloom' WHERE `guid` = 135453;
DELETE FROM `gameobject` WHERE `guid` IN (135447,135326); -- Duplicate 135453
DELETE FROM `pool_gameobject` WHERE `guid` IN (135447,135326);
DELETE FROM `gameobject` WHERE `guid` = 135450; -- Duplicate 135385
DELETE FROM `pool_gameobject` WHERE `guid` = 135450;
DELETE FROM `gameobject` WHERE `guid` = 135358; -- Duplicate 135338
DELETE FROM `pool_gameobject` WHERE `guid` = 135358;
DELETE FROM `gameobject` WHERE `guid` = 135348; -- Duplicate 135377
DELETE FROM `pool_gameobject` WHERE `guid` = 135348;
DELETE FROM `gameobject` WHERE `guid` = 135337; -- Duplicate 135376
DELETE FROM `pool_gameobject` WHERE `guid` = 135337;
DELETE FROM `gameobject` WHERE `guid` = 135449; -- Duplicate 135380
DELETE FROM `pool_gameobject` WHERE `guid` = 135449;
DELETE FROM `gameobject` WHERE `guid` = 135375; -- Duplicate 135353
DELETE FROM `pool_gameobject` WHERE `guid` = 135375;
DELETE FROM `gameobject` WHERE `guid` = 135355; -- Duplicate 135339
DELETE FROM `pool_gameobject` WHERE `guid` = 135355;
DELETE FROM `gameobject` WHERE `guid` = 135366; -- Duplicate 135321
DELETE FROM `pool_gameobject` WHERE `guid` = 135366;
DELETE FROM `gameobject` WHERE `guid` = 135360; -- Duplicate 135327
DELETE FROM `pool_gameobject` WHERE `guid` = 135360;
DELETE FROM `gameobject` WHERE `guid` = 135372; -- Duplicate 135324
DELETE FROM `pool_gameobject` WHERE `guid` = 135372;
DELETE FROM `gameobject` WHERE `guid` = 135346; -- Duplicate 135356
DELETE FROM `pool_gameobject` WHERE `guid` = 135346;
UPDATE `gameobject` SET `position_x` = -1819.37, `position_y` = 153.606, `position_z` = 25.2146, `orientation` = 0.226893, `rotation2` = 0.113203, `rotation3` = 0.993572 WHERE `guid` = 138896 AND `id` = 1618;
UPDATE `gameobject` SET `id` = 1618, `map` = 530, `position_x` = -2989.82, `position_y` = -12580.9, `position_z` = 12.1264, `orientation` = 3.14159, `rotation2` = 1, `rotation3` = 0.00000126759 WHERE `guid` = 137375 AND `id` = 1617; -- Duplicate 137365
UPDATE `pool_gameobject` SET `pool_entry` = 13026, `description` = 'Azuremyst Isle - Peacebloom' WHERE `guid` = 137375; -- 1332
DELETE FROM `gameobject` WHERE `guid` IN (13562,138924); -- Duplicate 139732 and Mulgore - Peacebloom in Barrens)
DELETE FROM `pool_gameobject` WHERE `guid` IN (13562,138924);
UPDATE `gameobject` SET `position_x` = -9494.43, `position_y` = -2325.72, `position_z` = 70.0807 WHERE `guid` = 133273 AND `id` = 1618; -- Peacebloom

DELETE FROM `gameobject` WHERE `guid` IN (1332,1399,5491,64947,64948,64950,64958,64959,64961,64962,64963,64965,64966,64969,64970,64971,85312,85313,85316,85318,85364,85369,85372,86218,63252,63256,63257,63260,63261,63264,63265,63267,63268,63269,63275,64952,64955,64957,64964,64973,64974,64975,86196,86198,86199,86200,86201,86202,86204,86205,86206,86208,86209,86210,86211,86215,86216,86217,86219,87070,87071,87072,87073,87074,87204,87205,87207,87208,87209,87210,87630,87632,87633,87634,87636,64951,85371,85370,85384,85380,85362,85363,85375,85361,85383,85381,1326,1325,1327,1332,1314,1316,1315,1329,1381,1337,1336,1354,137354) AND `id` = 1618;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5491, 1618, 530, 1, 6890.79, -7185.62, 36.3848, 2.75761, 0, 0, 0.981626, 0.190814, 45, 90, 100, 1),
(64947, 1618, 530, 1, 9248.45, -6121.2, 31.1044, 1.43117, 0, 0, 0.656059, 0.75471, 45, 90, 100, 1),
(64948, 1618, 530, 1, 8537.23, -7863.8, 154.571, 2.46091, 0, 0, 0.942641, 0.333809, 45, 90, 100, 1),
(64950, 1618, 530, 1, 6796.14, -6292.89, 34.1978, 2.79252, 0, 0, 0.984807, 0.173652, 45, 90, 100, 1),
(64958, 1618, 530, 1, 9482.28, -8044.45, 3.24424, 3.07177, 0, 0, 0.999391, 0.0349061, 45, 90, 100, 1),
(64959, 1618, 530, 1, 8651.87, -6054.54, 38.0361, -3.10665, 0, 0, -0.999847, 0.0174704, 45, 90, 100, 1),
(64961, 1618, 530, 1, 8920.13, -7312.07, 78.0141, 0.872664, 0, 0, 0.422618, 0.906308, 45, 90, 100, 1),
(64962, 1618, 530, 1, 8392.16, -5872.95, 19.1162, -0.506145, 0, 0, -0.25038, 0.968148, 45, 90, 100, 1),
(64963, 1618, 530, 1, 8885.12, -6455.08, 25.7743, 1.95477, 0, 0, 0.829038, 0.559192, 45, 90, 100, 1),
(64965, 1618, 530, 1, 7825.93, -6403.61, 17.622, -1.71042, 0, 0, -0.754709, 0.65606, 45, 90, 100, 1),
(64966, 1618, 530, 1, 6948.95, -6395.53, 37.0867, -0.488691, 0, 0, -0.241921, 0.970296, 45, 90, 100, 1),
(64969, 1618, 530, 1, 8830.32, -7626.97, 121.223, 1.16937, 0, 0, 0.551936, 0.833886, 45, 90, 100, 1),
(64970, 1618, 530, 1, 8249.29, -7342.53, 161.373, -1.81514, 0, 0, -0.78801, 0.615662, 45, 90, 100, 1),
(64971, 1618, 530, 1, 8808.57, -7108.68, 39.6849, -1.6057, 0, 0, -0.719339, 0.694659, 45, 90, 100, 1),
(85312, 1618, 530, 1, -4516.61, -11562.7, 16.7148, 0.541051, 0, 0, 0.267238, 0.963631, 45, 90, 100, 1),
(85313, 1618, 530, 1, -4456.53, -12040.6, 20.2935, -0.890117, 0, 0, -0.430511, 0.902586, 45, 90, 100, 1),
(85316, 1618, 530, 1, -4452.81, -11887.3, 14.5355, 0.087266, 0, 0, 0.0436192, 0.999048, 45, 90, 100, 1),
(85318, 1618, 530, 1, -4419.76, -11646.8, 7.29847, 2.33874, 0, 0, 0.920505, 0.390732, 45, 90, 100, 1),
(85364, 1618, 530, 1, -3640.67, -11911.2, 10.386, 0.488691, 0, 0, 0.241921, 0.970296, 45, 90, 100, 1),
(85369, 1618, 530, 1, -3603.87, -12708.9, 9.11045, 1.36136, 0, 0, 0.629322, 0.777145, 45, 90, 100, 1),
(85372, 1618, 530, 1, -4407.08, -12575.8, 10.3858, -2.44346, 0, 0, -0.939692, 0.342021, 45, 90, 100, 1),
(86218, 1618, 530, 1, -4297.78, -12042, 1.56154, 1.88495, 0, 0, 0.809015, 0.587788, 45, 90, 100, 1),
(1399, 1618, 1, 1, -1564, 166.478, -7.79272, 4.448, 0, 0, 0.794141, -0.607734, 45, 90, 100, 1),
(63252, 1618, 0, 1, -9748.69, -748.682, 41.5984, 2.63544, 0, 0, 0.968147, 0.250383, 45, 90, 100, 1),
(63256, 1618, 0, 1, -5717.34, -3283.28, 308.303, -0.575957, 0, 0, -0.284015, 0.95882, 45, 90, 100, 1),
(63257, 1618, 0, 1, -9879.68, -1028.55, 30.0751, -0.401425, 0, 0, -0.199368, 0.979925, 45, 90, 100, 1),
(63260, 1618, 0, 1, -9738.53, -648.556, 43.5726, 1.93731, 0, 0, 0.824125, 0.566409, 45, 90, 100, 1),
(63261, 1618, 0, 1, -9819.93, -1534.26, 38.1285, 0.506145, 0, 0, 0.25038, 0.968148, 45, 90, 100, 1),
(63264, 1618, 0, 1, -9824.13, -842.282, 40.8678, 1.64061, 0, 0, 0.731354, 0.681998, 45, 90, 100, 1),
(63265, 1618, 0, 1, -9853.78, -952.625, 37.3469, -3.03684, 0, 0, -0.998629, 0.0523524, 45, 90, 100, 1),
(63267, 1618, 0, 1, -11136.2, 761.5, 36.2952, 2.00713, 0, 0, 0.843392, 0.537299, 45, 90, 100, 1),
(63268, 1618, 0, 1, -9814.99, -562.856, 28.7973, 1.20428, 0, 0, 0.566407, 0.824125, 45, 90, 100, 1),
(63269, 1618, 0, 1, -5605.07, -990.954, 393.451, 1.72787, 0, 0, 0.760404, 0.64945, 45, 90, 100, 1),
(63275, 1618, 0, 1, 2004.82, 430.121, 36.5727, -2.58308, 0, 0, -0.961261, 0.275641, 45, 90, 100, 1),
(64952, 1618, 0, 1, -5301.07, 366.328, 393.95, -0.034906, 0, 0, -0.0174521, 0.999848, 45, 90, 100, 1),
(64955, 1618, 0, 1, -9910.36, -1381.62, 30.7112, 0.855211, 0, 0, 0.414693, 0.909961, 45, 90, 100, 1),
(64957, 1618, 0, 1, -9401.43, -772.841, 63.7403, 2.37364, 0, 0, 0.927182, 0.37461, 45, 90, 100, 1),
(64964, 1618, 0, 1, -5882.81, -116.939, 364.699, 1.62316, 0, 0, 0.725376, 0.688353, 45, 90, 100, 1),
(64973, 1618, 0, 1, -5644.59, -1456.99, 399.917, 1.93731, 0, 0, 0.824125, 0.566409, 45, 90, 100, 1),
(64974, 1618, 0, 1, -5555.24, -1461.55, 403.171, -2.68781, 0, 0, -0.97437, 0.22495, 45, 90, 100, 1),
(64975, 1618, 0, 1, -5690.18, -1850.92, 399.83, 1.43117, 0, 0, 0.656059, 0.75471, 45, 90, 100, 1),
(86196, 1618, 1, 1, -721.236, -5611.31, 25.5613, -1.58825, 0, 0, -0.713251, 0.700909, 45, 90, 100, 1),
(86198, 1618, 1, 1, -2692.53, -1177.1, 10.5903, 2.32129, 0, 0, 0.91706, 0.398748, 45, 90, 100, 1),
(86199, 1618, 1, 1, 115.578, -4686.57, 27.4204, 1.18682, 0, 0, 0.559191, 0.829039, 45, 90, 100, 1),
(86200, 1618, 1, 1, 81.6812, -4855.03, 16.2339, -1.71042, 0, 0, -0.754709, 0.65606, 45, 90, 100, 1),
(86201, 1618, 1, 1, 188.786, -5087.78, 10.8326, -0.401425, 0, 0, -0.199368, 0.979925, 45, 90, 100, 1),
(86202, 1618, 1, 1, -55.2088, -5059.32, 10.3872, 1.22173, 0, 0, 0.573576, 0.819152, 45, 90, 100, 1),
(86204, 1618, 1, 1, -726.661, -4810.64, 25.4452, 2.93214, 0, 0, 0.994521, 0.104535, 45, 90, 100, 1),
(86205, 1618, 1, 1, 552.922, -4382.99, 25.6746, -1.8675, 0, 0, -0.803856, 0.594824, 45, 90, 100, 1),
(86206, 1618, 1, 1, 621.033, -4322.41, 18.9057, 1.23918, 0, 0, 0.580701, 0.814117, 45, 90, 100, 1),
(86208, 1618, 1, 1, 1192.58, -4006.66, 17.0034, -2.00713, 0, 0, -0.843392, 0.537299, 45, 90, 100, 1),
(86209, 1618, 1, 1, 950.419, -4981.33, 9.41513, -0.767944, 0, 0, -0.374606, 0.927184, 45, 90, 100, 1),
(86210, 1618, 1, 1, -17.5935, -4018.54, 59.2235, 2.60053, 0, 0, 0.963629, 0.267244, 45, 90, 100, 1),
(86211, 1618, 1, 1, 122.605, -4414.1, 37.6684, 0.209439, 0, 0, 0.104528, 0.994522, 45, 90, 100, 1),
(86215, 1618, 1, 1, 7649.51, -832.593, 15.436, 0.261798, 0, 0, 0.130525, 0.991445, 45, 90, 100, 1),
(86216, 1618, 0, 1, -5519.1, -434.05, 405.842, -2.14675, 0, 0, -0.878816, 0.477161, 45, 90, 100, 1),
(86217, 1618, 1, 1, -2544.55, -1180.8, -3.04812, 1.6057, 0, 0, 0.719339, 0.694659, 45, 90, 100, 1),
(86219, 1618, 1, 1, 481.166, -3884.93, 20.6758, 2.58308, 0, 0, 0.961261, 0.275641, 45, 90, 100, 1),
(87070, 1618, 0, 1, -5876.23, -10.789, 360.485, -1.32645, 0, 0, -0.615661, 0.788011, 45, 90, 100, 1),
(87071, 1618, 1, 1, -727.394, -4670.9, 36.8098, -2.35619, 0, 0, -0.923879, 0.382686, 45, 90, 100, 1),
(87072, 1618, 0, 1, 2205.07, 438.51, 62.0898, -0.017452, 0, 0, -0.00872589, 0.999962, 45, 90, 100, 1),
(87073, 1618, 1, 1, 10074.5, 355.456, 1323.17, -2.75761, 0, 0, -0.981626, 0.190814, 45, 90, 100, 1),
(87074, 1618, 1, 1, 9572.13, 1011.37, 1265.13, 0.645772, 0, 0, 0.317305, 0.948324, 45, 90, 100, 1),
(87204, 1618, 0, 1, 2585.57, 280.206, 46.6648, 0.785397, 0, 0, 0.382683, 0.92388, 45, 90, 100, 1),
(87205, 1618, 0, 1, 2314.62, 1553.87, 33.5216, -2.30383, 0, 0, -0.913544, 0.406739, 45, 90, 100, 1),
(87207, 1618, 0, 1, 1233.81, 933.051, 36.8226, -1.41372, 0, 0, -0.649449, 0.760405, 45, 90, 100, 1),
(87208, 1618, 1, 1, -1944.83, 283.872, 87.9508, 0.087266, 0, 0, 0.0436192, 0.999048, 45, 90, 100, 1),
(87209, 1618, 1, 1, -1003.55, -983.244, 7.90341, 2.70526, 0, 0, 0.976296, 0.21644, 45, 90, 100, 1),
(87210, 1618, 1, 1, 1153.6, -4530.12, 19.5377, 1.74533, 0, 0, 0.766045, 0.642787, 45, 90, 100, 1),
(87630, 1618, 0, 1, 2117.82, 295.335, 61.2261, 0.296705, 0, 0, 0.147809, 0.989016, 45, 90, 100, 1),
(87632, 1618, 0, 1, 2006.02, 694.037, 41.9342, -0.191985, 0, 0, -0.0958451, 0.995396, 45, 90, 100, 1),
(87633, 1618, 0, 1, 1298.74, 1153.24, 52.504, 0.401425, 0, 0, 0.199368, 0.979925, 45, 90, 100, 1),
(87634, 1618, 0, 1, 1348.36, 1005.2, 52.2037, 2.61799, 0, 0, 0.965925, 0.258821, 45, 90, 100, 1),
(87636, 1618, 1, 1, -882.26, -147.573, -0.880346, 2.35619, 0, 0, 0.923879, 0.382686, 45, 90, 100, 1),
(64951, 1618, 0, 1, -5413.17, -399.971, 398.614, -2.56563, 0, 0, -0.958819, 0.284016, 45, 90, 100, 1),
(85361, 1618, 530, 1, -1345.45, -12588.8, 10.4943, -0.645772, 0, 0, -0.317305, 0.948324, 45, 90, 100, 1),
(85362, 1618, 530, 1, -1666.17, -11999.6, 13.1209, -2.60053, 0, 0, -0.963629, 0.267244, 45, 90, 100, 1),
(85363, 1618, 530, 1, -1570.2, -11766.4, 27.0311, -2.70526, 0, 0, -0.976296, 0.21644, 45, 90, 100, 1),
(85370, 1618, 530, 1, -1856.68, -11387.6, 50.0463, -2.30383, 0, 0, -0.913544, 0.406739, 45, 90, 100, 1),
(85371, 1618, 530, 1, -2281.02, -11751.6, 18.0217, -1.95477, 0, 0, -0.829038, 0.559192, 45, 90, 100, 1),
(85375, 1618, 530, 1, -1430.87, -11603.5, 16.1335, -2.16421, 0, 0, -0.882948, 0.469471, 45, 90, 100, 1),
(85380, 1618, 530, 1, -1831.75, -11977.8, 16.4136, -0.401425, 0, 0, -0.199368, 0.979925, 45, 90, 100, 1),
(85381, 1618, 530, 1, -1214.45, -12592, 9.5534, 2.61799, 0, 0, 0.965925, 0.258821, 45, 90, 100, 1),
(85383, 1618, 530, 1, -1296.78, -11536.9, 8.1757, -2.09439, 0, 0, -0.866024, 0.500002, 45, 90, 100, 1),
(85384, 1618, 530, 1, -1856.45, -11605.9, 36.3915, -2.56563, 0, 0, -0.958819, 0.284017, 45, 90, 100, 1),

(1314, 1618, 1, 1, 809.231, -5008.37, 10.3425, 0.436332, 0, 0, 0.216439, 0.976296, 45, 90, 100, 1),
(1315, 1618, 1, 1, 1049.16, -4971.99, 15.5962, 0.157079, 0, 0, 0.0784588, 0.996917, 45, 90, 100, 1),
(1316, 1618, 1, 1, 872.486, -4636.95, 14.7904, 5.63741, 0, 0, -0.317305, 0.948324, 45, 90, 100, 1),
(1325, 1618, 1, 1, -1151.82, -648.848, -58.1973, 5.0091, 0, 0, -0.594823, 0.803857, 45, 90, 100, 1),
(1326, 1618, 1, 1, -1284.96, -776.862, -34.4384, 4.08407, 0, 0, -0.891007, 0.453991, 45, 90, 100, 1),
(1327, 1618, 1, 1, -1150.75, -917.353, -3.13117, 5.28835, 0, 0, -0.477158, 0.878817, 45, 90, 100, 1),
(1329, 1618, 0, 1, 1262.32, 1024.38, 43.5392, 2.54818, 0, 0, 0.956305, 0.292372, 45, 90, 100, 1),
(1332, 1618, 0, 1, -246.822, 1142.97, 61.4903, 0.837758, 0, 0, 0.406736, 0.913545, 45, 90, 100, 1), -- 1332 wotlk-db -> 137375
(1336, 1618, 0, 1, 2363.27, 1298.64, 32.7865, 0.680677, 0, 0, 0.333806, 0.942642, 45, 90, 100, 1),
(1337, 1618, 0, 1, 2314.25, 49.2733, 31.3656, 4.93928, 0, 0, -0.622514, 0.782609, 45, 90, 100, 1),
(1354, 1618, 0, 1, 2643.64, 916.569, 110.331, 5.044, 0, 0, -0.580703, 0.814116, 45, 90, 100, 1),
(1381, 1618, 0, 1, 1801.63, -302.715, 37.7097, 0.436332, 0, 0, 0.216439, 0.976296, 45, 90, 100, 1),
(137354, 1618, 530, 1, -2989.82, -12580.9, 12.1264, 3.14159, 0, 0, 0, 0, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (1332,1399,5491,64947,64948,64950,64958,64959,64961,64962,64963,64965,64966,64969,64970,64971,85312,85313,85316,85318,85364,85369,85372,86218,63252,63256,63257,63260,63261,63264,63265,63267,63268,63269,63275,64952,64955,64957,64964,64973,64974,64975,86196,86198,86199,86200,86201,86202,86204,86205,86206,86208,86209,86210,86211,86215,86216,86217,86219,87070,87071,87072,87073,87074,87204,87205,87207,87208,87209,87210,87630,87632,87633,87634,87636,64951,85371,85370,85384,85380,85362,85363,85375,85361,85383,85381,1326,1325,1327,1332,1314,1316,1315,1329,1381,1337,1336,1354);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(5491, 13010, 0, 'Peacebloom zone 3433, node 117'), -- Master Herb Pool - Ghostlands
(64950, 13010, 0, 'Peacebloom zone 3433, node 102'),
(64965, 13010, 0, 'Peacebloom zone 3433, node 103'),
(64966, 13010, 0, 'Peacebloom zone 3433, node 104'),
(64947, 13009, 0, 'Peacebloom zone 3430, node 128'), -- Master Herb Pool - Eversong Woods
(64948, 13009, 0, 'Peacebloom zone 3430, node 129'),
(64958, 13009, 0, 'Peacebloom zone 3430, node 130'),
(64959, 13009, 0, 'Peacebloom zone 3430, node 131'),
(64961, 13009, 0, 'Peacebloom zone 3430, node 133'),
(64962, 13009, 0, 'Peacebloom zone 3430, node 134'),
(64963, 13009, 0, 'Peacebloom zone 3430, node 135'),
(64969, 13009, 0, 'Peacebloom zone 3430, node 136'),
(64970, 13009, 0, 'Peacebloom zone 3430, node 137'),
(64971, 13009, 0, 'Peacebloom zone 3430, node 138'),

(85312, 13026, 0, 'Peacebloom zone 3524, node 76'), -- Master Herb Pool - Azuremyst Isle
(85313, 13026, 0, 'Peacebloom zone 3524, node 77'),
(85316, 13026, 0, 'Peacebloom zone 3524, node 80'),
(85318, 13026, 0, 'Peacebloom zone 3524, node 82'),
(85364, 13026, 0, 'Peacebloom zone 3524, node 97'),
(85369, 13026, 0, 'Peacebloom zone 3524, node 98'),
(85372, 13026, 0, 'Peacebloom zone 3524, node 99'),
(86218, 13026, 0, 'Peacebloom zone 3524, node 110'),

(85361, 13027, 0, 'Bloodmyst Isle - Peacebloom'), -- Master Herb Pool - Bloodmyst Isle
(85362, 13027, 0, 'Bloodmyst Isle - Peacebloom'),
(85363, 13027, 0, 'Bloodmyst Isle - Peacebloom'),
(85370, 13027, 0, 'Bloodmyst Isle - Peacebloom'),
(85371, 13027, 0, 'Bloodmyst Isle - Peacebloom'),
(85375, 13027, 0, 'Bloodmyst Isle - Peacebloom'),
(85380, 13027, 0, 'Bloodmyst Isle - Peacebloom'),
(85381, 13027, 0, 'Bloodmyst Isle - Peacebloom'),
(85383, 13027, 0, 'Bloodmyst Isle - Peacebloom'),
(85384, 13027, 0, 'Bloodmyst Isle - Peacebloom'),
-- azeroth
(86215, 13028, 0, 'Peacebloom zone 148, node 359'), -- Master Herb Pool - Darkshore
(63256, 13013, 0, 'Peacebloom zone 38, node 200'), -- Master Herb Pool - Loch Modan
(86196, 13030, 0, 'Peacebloom zone 14, node 265'), -- Master Herb Pool - Durotar
(86199, 13030, 0, 'Peacebloom zone 14, node 266'),
(86200, 13030, 0, 'Peacebloom zone 14, node 267'),
(86201, 13030, 0, 'Peacebloom zone 14, node 268'),
(86202, 13030, 0, 'Peacebloom zone 14, node 269'),
(86204, 13030, 0, 'Peacebloom zone 14, node 270'),
(86205, 13030, 0, 'Peacebloom zone 14, node 271'),
(86206, 13030, 0, 'Peacebloom zone 14, node 272'),
(86208, 13030, 0, 'Peacebloom zone 14, node 274'),
(86209, 13030, 0, 'Peacebloom zone 14, node 275'),
(86210, 13030, 0, 'Peacebloom zone 14, node 276'),
(86211, 13030, 0, 'Peacebloom zone 14, node 277'),
(86219, 13030, 0, 'Peacebloom zone 14, node 278'),
(87071, 13030, 0, 'Peacebloom zone 14, node 293'),
(87210, 13030, 0, 'Peacebloom zone 14, node 295'),
(1314, 13030, 0, 'Durotar - Peacebloom'),
(1316, 13030, 0, 'Durotar - Peacebloom'),
(1315, 13030, 0, 'Durotar - Peacebloom'),
(63252, 13008, 0, 'Peacebloom zone 12, node 125'), -- Master Herb Pool - Elwynn Forest
(63257, 13008, 0, 'Peacebloom zone 12, node 126'),
(63260, 13008, 0, 'Peacebloom zone 12, node 127'),
(63261, 13008, 0, 'Peacebloom zone 12, node 128'),
(63264, 13008, 0, 'Peacebloom zone 12, node 129'),
(63265, 13008, 0, 'Peacebloom zone 12, node 130'),
(63268, 13008, 0, 'Peacebloom zone 12, node 132'),
(64955, 13008, 0, 'Peacebloom zone 12, node 149'),
(64957, 13008, 0, 'Peacebloom zone 12, node 150'),
(86198, 13034, 0, 'Peacebloom zone 215, node 162'), -- Master Herb Pool - Mulgore
(86217, 13034, 0, 'Peacebloom zone 215, node 164'),
(87208, 13034, 0, 'Peacebloom zone 215, node 173'),
(87209, 13034, 0, 'Peacebloom zone 215, node 174'),
(87636, 13034, 0, 'Mulgore - Peacebloom'),
(1399,  13034, 0, 'Mulgore - Peacebloom'),
(1326,  13034, 0, 'Mulgore - Peacebloom'),
(1325,  13034, 0, 'Mulgore - Peacebloom'),
(1327,  13034, 0, 'Mulgore - Peacebloom'),
(87207, 13016, 0, 'Peacebloom zone 130, node 220'), -- Master Herb Pool - Silverpine Forest
(87633, 13016, 0, 'Silverpine Forest - Peacebloom'),
(87634, 13016, 0, 'Silverpine Forest - Peacebloom'),
(1332, 	13016, 0, 'Silverpine Forest - Peacebloom'),
(1329, 	13016, 0, 'Silverpine Forest - Peacebloom'),
(87073, 13038, 0, 'Peacebloom zone 141, node 138'), -- Master Herb Pool - Teldrassil
(87074, 13038, 0, 'Peacebloom zone 141, node 139'),
(63267, 13022, 0, 'Peacebloom zone 40, node 287'), -- Master Herb Pool - Westfall
(63275, 13020, 0, 'Peacebloom zone 85, node 152'), -- Master Herb Pool - Tirisfal Glades
(87072, 13020, 0, 'Peacebloom zone 85, node 158'),
(87204, 13020, 0, 'Peacebloom zone 85, node 166'),
(87205, 13020, 0, 'Peacebloom zone 85, node 167'),
(87630, 13020, 0, 'Tirisfal Glades - Peacebloom'),
(87632, 13020, 0, 'Tirisfal Glades - Peacebloom'),
(1381, 	13020, 0, 'Tirisfal Glades - Peacebloom'),
(1337, 	13020, 0, 'Tirisfal Glades - Peacebloom'),
(1336, 	13020, 0, 'Tirisfal Glades - Peacebloom'),
(1354, 	13020, 0, 'Tirisfal Glades - Peacebloom'),
(63269, 13005, 0, 'Peacebloom zone 1, node 128'), -- Master Herb Pool - Dun Morogh
(64952, 13005, 0, 'Peacebloom zone 1, node 140'),
(64964, 13005, 0, 'Peacebloom zone 1, node 141'),
(64973, 13005, 0, 'Peacebloom zone 1, node 142'),
(64974, 13005, 0, 'Peacebloom zone 1, node 143'),
(64975, 13005, 0, 'Peacebloom zone 1, node 144'),
(86216, 13005, 0, 'Peacebloom zone 1, node 156'),
(87070, 13005, 0, 'Peacebloom zone 1, node 157'),
(64951, 13005, 0, 'Peacebloom zone 1, node 139');

REPLACE INTO `game_event_gameobject` (`guid`, `event`) VALUES (1399, -79),(1399, -80),(1399, -81);

-- Earthroot 1619
-- https://tbc.wowhead.com/object=1619/earthroot
UPDATE `gameobject` SET `position_x` = -10276, `position_y` = 1513.82, `position_z` = 41.183, `orientation` = 1.639, `rotation2` = 0.730805, `rotation3` = 0.682587 WHERE `guid` = 135741 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = 827.721, `position_y` = 1257.76, `position_z` = 55.3613, `orientation` = -0.331611, `rotation2` = -0.165047, `rotation3` = 0.986286 WHERE `guid` = 133659 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = 826.997, `position_y` = -3665.93, `position_z` = 37.5249, `orientation` = -1.85005, `rotation2` = -0.798636, `rotation3` = 0.601815 WHERE `guid` = 139862 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = -116.039, `position_y` = -4694.84, `position_z` = 29.5269, `orientation` = -0.95993, `rotation2` = -0.461748, `rotation3` = 0.887011 WHERE `guid` = 138181 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = 659.889, `position_y` = -3663.35, `position_z` = 42.7321, `orientation` = 0.349065, `rotation2` = 0.173648, `rotation3` = 0.984808 WHERE `guid` = 139865 AND `id` = 1619;
DELETE FROM `gameobject` WHERE `guid` = 13595; -- Duplicate 139865
DELETE FROM `pool_gameobject` WHERE `guid` = 13595;
UPDATE `gameobject` SET `position_x` = -1546.28, `position_y` = -3958.2, `position_z` = 20.1385, `orientation` = 0.645772, `rotation2` = 0.317305, `rotation3` = 0.948324 WHERE `guid` = 139849 AND `id` = 1619;
DELETE FROM `gameobject` WHERE `guid` = 13605; -- Duplicate 139849
DELETE FROM `pool_gameobject` WHERE `guid` = 13605;
UPDATE `gameobject` SET `position_x` = 52.9918, `position_y` = -4088.75, `position_z` = 59.7974, `orientation` = 2.74016, `rotation2` = 0.979924, `rotation3` = 0.199371 WHERE `guid` = 138184 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = 958.55, `position_y` = -4054.57, `position_z` = -11.1736, `orientation` = -2.32129, `rotation2` = -0.91706, `rotation3` = 0.398748 WHERE `guid` = 138194 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = -5598.14, `position_y` = -2744.07, `position_z` = 375.994, `orientation` = -2.51327, `rotation2` = -0.951056, `rotation3` = 0.309019 WHERE `guid` = 133155 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = 515.16, `position_y` = -3927.33, `position_z` = 22.4875, `orientation` = 1.55334, `rotation2` = 0.700908, `rotation3` = 0.713252 WHERE `guid` = 138195 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = -9346.42, `position_y` = -1887.48, `position_z` = 72.7737, `orientation` = -0.541051, `rotation2` = -0.267238, `rotation3` = 0.963631 WHERE `guid` = 133292 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = 40.5391, `position_y` = -1749.56, `position_z` = 111.579, `orientation` = -2.40855, `rotation2` = -0.93358, `rotation3` = 0.35837 WHERE `guid` = 139840 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = 378.769, `position_y` = 1152.34, `position_z` = 92.5748, `orientation` = -1.83259, `rotation2` = -0.793352, `rotation3` = 0.608764 WHERE `guid` = 133654 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = -1367.89, `position_y` = -3949.43, `position_z` = 42.8773, `orientation` = 2.07694, `rotation2` = 0.861629, `rotation3` = 0.507539 WHERE `guid` = 139894 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = 2469.43, `position_y` = 329.287, `position_z` = 32.3891, `orientation` = -2.02458, `rotation2` = -0.848048, `rotation3` = 0.52992 WHERE `guid` = 135400 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = 308.67, `position_y` = -3438.26, `position_z` = 56.0001, `orientation` = -0.244346, `rotation2` = -0.121869, `rotation3` = 0.992546 WHERE `guid` = 139887 AND `id` = 1619;
DELETE FROM `gameobject` WHERE `guid` = 13596; -- Duplicate 139887
DELETE FROM `pool_gameobject` WHERE `guid` = 13596;
UPDATE `gameobject` SET `position_x` = -183.78, `position_y` = -3576.83, `position_z` = 47.203, `orientation` = 0.541051, `rotation2` = 0.267238, `rotation3` = 0.963631 WHERE `guid` = 139870 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = -284.883, `position_y` = -3613.54, `position_z` = 52.1593, `orientation` = -1.15192, `rotation2` = -0.54464, `rotation3` = 0.83867 WHERE `guid` = 139878 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = 5192.54, `position_y` = 151.976, `position_z` = 58.6893, `orientation` = -2.04204, `rotation2` = -0.852641, `rotation3` = 0.522496 WHERE `guid` = 137477 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = 2885.77, `position_y` = -695, `position_z` = 137.149, `orientation` = 1.85, `rotation2` = 0.798621, `rotation3` = 0.601835 WHERE `guid` = 135406 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = 749.328, `position_y` = -4482.91, `position_z` = 22.0128, `orientation` = -0.052359, `rotation2` = -0.0261765, `rotation3` = 0.999657 WHERE `guid` = 138207 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = -2234.58, `position_y` = 276.564, `position_z` = 109.757, `orientation` = 1.58825, `rotation2` = 0.713251, `rotation3` = 0.700909 WHERE `guid` = 138951 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = 223.02, `position_y` = -5020.5, `position_z` = 15.0214, `orientation` = 1.81514, `rotation2` = 0.78801, `rotation3` = 0.615662 WHERE `guid` = 138206 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = 2527.52, `position_y` = 721.967, `position_z` = 116.89, `orientation` = -1.20428, `rotation2` = -0.566407, `rotation3` = 0.824125 WHERE `guid` = 135430 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = -10300, `position_y` = 1637.92, `position_z` = 44.069, `orientation` = 0.728, `rotation2` = 0.356015, `rotation3` = 0.93448 WHERE `guid` = 135745 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = -10300, `position_y` = 1648.74, `position_z` = 41.808, `orientation` = 1.635, `rotation2` = 0.729438, `rotation3` = 0.684047 WHERE `guid` = 135727 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = -10308, `position_y` = 1949.05, `position_z` = 34.555, `orientation` = 2.745, `rotation2` = 0.980404, `rotation3` = 0.196999 WHERE `guid` = 135748 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = -2818.18, `position_y` = -732.171, `position_z` = 38.7207, `orientation` = -0.244346, `rotation2` = -0.121869, `rotation3` = 0.992546 WHERE `guid` = 138958 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = 962.542, `position_y` = -3658.51, `position_z` = 52.2945, `orientation` = -1.51844, `rotation2` = -0.688356, `rotation3` = 0.725373 WHERE `guid` = 139802 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = -1815.75, `position_y` = -1971.06, `position_z` = 104.918, `orientation` = -1.69297, `rotation2` = -0.748956, `rotation3` = 0.66262 WHERE `guid` = 139805 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = 1101.2, `position_y` = -4333.65, `position_z` = 25.7644, `orientation` = -1.95477, `rotation2` = -0.829038, `rotation3` = 0.559192 WHERE `guid` = 138199 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = 663.15, `position_y` = -4806.97, `position_z` = 26.2461, `orientation` = -2.14675, `rotation2` = -0.878816, `rotation3` = 0.477161 WHERE `guid` = 138191 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = 1150.29, `position_y` = -4129.9, `position_z` = 20.6516, `orientation` = 1.01229, `rotation2` = 0.484809, `rotation3` = 0.87462 WHERE `guid` = 138210 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = -5678.37, `position_y` = -1411.78, `position_z` = 405.54, `orientation` = -1.25664, `rotation2` = -0.587786, `rotation3` = 0.809016 WHERE `guid` = 131531 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = -9503.87, `position_y` = -2112.98, `position_z` = 101.672, `orientation` = -1.0821, `rotation2` = -0.515036, `rotation3` = 0.857168 WHERE `guid` = 133291 AND `id` = 1619;
DELETE FROM `gameobject` WHERE `guid` = 133283; -- Duplicate 133291
DELETE FROM `pool_gameobject` WHERE `guid` = 133283;
UPDATE `gameobject` SET `position_x` = -9430.68, `position_y` = -1904.9, `position_z` = 93.3589, `orientation` = -1.13446, `rotation2` = -0.537298, `rotation3` = 0.843393 WHERE `guid` = 133295 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = -9614.35, `position_y` = -2156.73, `position_z` = 73.633, `orientation` = -2.54818, `rotation2` = -0.956305, `rotation3` = 0.292372 WHERE `guid` = 133294 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = -4780.23, `position_y` = -11437.1, `position_z` = 6.16672, `orientation` = -1.46608, `rotation2` = -0.669132, `rotation3` = 0.743144 WHERE `guid` = 137374 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = -3864.88, `position_y` = -12538.9, `position_z` = 37.1232, `orientation` = -0.541051, `rotation2` = -0.267238, `rotation3` = 0.963631 WHERE `guid` = 137377 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = -3301.15, `position_y` = -11950.4, `position_z` = 15.1225, `orientation` = 3.08918, `rotation2` = 0.999657, `rotation3` = 0.0262033 WHERE `guid` = 137370 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = -9692.28, `position_y` = 1155.58, `position_z` = 18.8213, `orientation` = 1.74533, `rotation2` = 0.766045, `rotation3` = 0.642787 WHERE `guid` = 135730 AND `id` = 1619;
UPDATE `gameobject` SET `position_x` = -9614.35, `position_y` = -2156.73, `position_z` = 73.633, `orientation` = -2.54818, `rotation2` = -0.956305, `rotation3` = 0.292372 WHERE `guid` = 133294 AND `id` = 1619;
DELETE FROM `gameobject` WHERE `guid` = 135753; -- Duplicate 135733
DELETE FROM `pool_gameobject` WHERE `guid` = 135753;
DELETE FROM `gameobject` WHERE `guid` = 133305; -- Duplicate 133302
DELETE FROM `pool_gameobject` WHERE `guid` = 133305;
DELETE FROM `gameobject` WHERE `guid` = 133307; -- Duplicate 133284
DELETE FROM `pool_gameobject` WHERE `guid` = 133307;
DELETE FROM `gameobject` WHERE `guid` = 133308; -- Duplicate 133298
DELETE FROM `pool_gameobject` WHERE `guid` = 133308;
DELETE FROM `gameobject` WHERE `guid` = 133288; -- Duplicate 133281
DELETE FROM `pool_gameobject` WHERE `guid` = 133288;
DELETE FROM `gameobject` WHERE `guid` = 131538; -- Duplicate 131549
DELETE FROM `pool_gameobject` WHERE `guid` = 131538;
DELETE FROM `gameobject` WHERE `guid` = 131541; -- Duplicate 131554
DELETE FROM `pool_gameobject` WHERE `guid` = 131541;
DELETE FROM `gameobject` WHERE `guid` = 137378; -- Duplicate 137357
DELETE FROM `pool_gameobject` WHERE `guid` = 137378;
DELETE FROM `gameobject` WHERE `guid` = 139827; -- Duplicate 138953
DELETE FROM `pool_gameobject` WHERE `guid` = 139827;
DELETE FROM `gameobject` WHERE `guid` = 139837; -- Duplicate 138949
DELETE FROM `pool_gameobject` WHERE `guid` = 139837;
DELETE FROM `gameobject` WHERE `guid` = 137790; -- Duplicate 138956
DELETE FROM `pool_gameobject` WHERE `guid` = 137790;
DELETE FROM `gameobject` WHERE `guid` = 137789; -- Duplicate 138950
DELETE FROM `pool_gameobject` WHERE `guid` = 137789;
DELETE FROM `gameobject` WHERE `guid` = 139808; -- Duplicate 138936
DELETE FROM `pool_gameobject` WHERE `guid` = 139808;
DELETE FROM `gameobject` WHERE `guid` = 139820; -- Duplicate 138952
DELETE FROM `pool_gameobject` WHERE `guid` = 139820;
DELETE FROM `gameobject` WHERE `guid` = 137788; -- Duplicate 138955
DELETE FROM `pool_gameobject` WHERE `guid` = 137788;
DELETE FROM `gameobject` WHERE `guid` = 137787; -- Duplicate 138943
DELETE FROM `pool_gameobject` WHERE `guid` = 137787;
DELETE FROM `gameobject` WHERE `guid` = 139806; -- Duplicate 138940
DELETE FROM `pool_gameobject` WHERE `guid` = 139806;
DELETE FROM `gameobject` WHERE `guid` = 139811; -- Duplicate 138959
DELETE FROM `pool_gameobject` WHERE `guid` = 139811;
DELETE FROM `gameobject` WHERE `guid` = 139807; -- Duplicate 138935
DELETE FROM `pool_gameobject` WHERE `guid` = 139807;
DELETE FROM `gameobject` WHERE `guid` = 133663; -- Duplicate 133664
DELETE FROM `pool_gameobject` WHERE `guid` = 133663;
DELETE FROM `gameobject` WHERE `guid` = 132695; -- Duplicate 133664
DELETE FROM `pool_gameobject` WHERE `guid` = 132695;
DELETE FROM `gameobject` WHERE `guid` = 139867; -- Duplicate 138945
DELETE FROM `pool_gameobject` WHERE `guid` = 139867;
DELETE FROM `gameobject` WHERE `guid` = 138208; -- Duplicate 138203
DELETE FROM `pool_gameobject` WHERE `guid` = 138208;
DELETE FROM `gameobject` WHERE `guid` = 138198; -- Duplicate 138189
DELETE FROM `pool_gameobject` WHERE `guid` = 138198;
DELETE FROM `gameobject` WHERE `guid` = 133655; -- Duplicate 133656
DELETE FROM `pool_gameobject` WHERE `guid` = 133655;
DELETE FROM `gameobject` WHERE `guid` = 138196; -- Duplicate 138193
DELETE FROM `pool_gameobject` WHERE `guid` = 138196;
UPDATE `gameobject` SET `position_x` = 2986.87, `position_y` = 180.857, `position_z` = 1.89819, `orientation` = 2.09439, `rotation2` = 0.866025, `rotation3` = 0.500001 WHERE `guid` = 135456 AND `id` = 1619; -- 55754
UPDATE `pool_gameobject` SET `pool_entry` = 13020, `description` = 'Tirisfal Glades - Earthroot' WHERE `guid` = 135456; -- Duplicate 135427
DELETE FROM `gameobject` WHERE `guid` = 135455; -- Duplicate 135419
DELETE FROM `pool_gameobject` WHERE `guid` = 135455;
DELETE FROM `gameobject` WHERE `guid` = 135404; -- Duplicate 135399
DELETE FROM `pool_gameobject` WHERE `guid` = 135404;
DELETE FROM `gameobject` WHERE `guid` = 135424; -- Duplicate 135397
DELETE FROM `pool_gameobject` WHERE `guid` = 135424;
DELETE FROM `gameobject` WHERE `guid` = 135437; -- Duplicate 135416
DELETE FROM `pool_gameobject` WHERE `guid` = 135437;
DELETE FROM `gameobject` WHERE `guid` = 135454; -- Duplicate 135414
DELETE FROM `pool_gameobject` WHERE `guid` = 135454;
DELETE FROM `gameobject` WHERE `guid` = 135417; -- Duplicate 135436
DELETE FROM `pool_gameobject` WHERE `guid` = 135417;
DELETE FROM `gameobject` WHERE `guid` = 138354; -- Duplicate 137473
DELETE FROM `pool_gameobject` WHERE `guid` = 138354;
DELETE FROM `gameobject` WHERE `guid` = 139530; -- Duplicate 139545
DELETE FROM `pool_gameobject` WHERE `guid` = 139530;
DELETE FROM `gameobject` WHERE `guid` = 139529; -- Duplicate 139522
DELETE FROM `pool_gameobject` WHERE `guid` = 139529;
DELETE FROM `gameobject` WHERE `guid` = 139535; -- Duplicate 139533
DELETE FROM `pool_gameobject` WHERE `guid` = 139535;
DELETE FROM `gameobject` WHERE `guid` = 139552; -- Duplicate 139523
DELETE FROM `pool_gameobject` WHERE `guid` = 139552;
DELETE FROM `gameobject` WHERE `guid` = 138179; -- Duplicate 138191
DELETE FROM `pool_gameobject` WHERE `guid` = 138179;

DELETE FROM `gameobject` WHERE `guid` IN (5492,5497,63277,63278,63283,63284,63288,63291,63294,63295,63297,64977,64978,64984,64985,64988,64989,64990,64991,64992,64993,64994,64995,64997,65003,65004,85386,85443,85444,85447,85449,86220,86221,86223,86224,86225,86226,86227,86228,86229,86230,86233,86234,86235,86236,86237,86238,86239,86240,86241,87042,87059,87075,87076,87211,87212,87213,87214,87215,87216,87461,87462,87638,85319,85320,85321,85324,85325,85326,85388,85391,85396,85398,85399,1872,1873,1597,1860,1623,1628) AND `id` = 1619;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5492, 1619, 0, 1, -9083.2, -1084.1, 82.282, 0.331611, 0, 0, 0.165047, 0.986286, 45, 90, 100, 1),
(5497, 1619, 0, 1, -9436.08, 556.346, 70.3439, 2.63544, 0, 0, 0.968147, 0.250383, 45, 90, 100, 1),
(63277, 1619, 0, 1, -8728.46, -973.577, 99.7805, -3.00195, 0, 0, -0.997563, 0.0697646, 45, 90, 100, 1),
(63278, 1619, 0, 1, -5469.14, -2707.13, 373.47, -0.872664, 0, 0, -0.422618, 0.906308, 45, 90, 100, 1),
(63283, 1619, 0, 1, -8753.15, -806.402, 100.999, -2.18166, 0, 0, -0.88701, 0.461749, 45, 90, 100, 1),
(63284, 1619, 0, 1, -10529.2, 2043.47, 36.7139, -0.802851, 0, 0, -0.390731, 0.920505, 45, 90, 100, 1),
(63288, 1619, 0, 1, -9923.33, -223.855, 48.9006, 2.96704, 0, 0, 0.996194, 0.0871655, 45, 90, 100, 1),
(63291, 1619, 0, 1, -9902.2, -205.827, 39.8754, -2.53072, 0, 0, -0.953716, 0.300709, 45, 90, 100, 1),
(63294, 1619, 0, 1, -9699.69, 1070.95, 24.5274, -2.74016, 0, 0, -0.979924, 0.199371, 45, 90, 100, 1),
(63295, 1619, 0, 1, -5768, -1224.3, 379.924, 1.6057, 0, 0, 0.719339, 0.694659, 45, 90, 100, 1),
(63297, 1619, 0, 1, -8993.99, -2544.28, 142.519, -1.83259, 0, 0, -0.793352, 0.608764, 45, 90, 100, 1),
(64977, 1619, 530, 1, 9177.01, -6057.25, 102.425, 0.261798, 0, 0, 0.130525, 0.991445, 45, 90, 100, 1),
(64978, 1619, 530, 1, 8631.06, -6702.65, 118.631, 2.51327, 0, 0, 0.951056, 0.309019, 45, 90, 100, 1),
(64984, 1619, 530, 1, 6782.58, -7151.8, 44.9719, 0.069812, 0, 0, 0.0348989, 0.999391, 45, 90, 100, 1),
(64985, 1619, 0, 1, -9819.25, -1392.68, 53.7644, 3.08918, 0, 0, 0.999657, 0.0262033, 45, 90, 100, 1),
(64988, 1619, 0, 1, -9804.1, -1442.02, 43.9482, -0.628317, 0, 0, -0.309016, 0.951057, 45, 90, 100, 1),
(64989, 1619, 0, 1, -9785.67, -1340.88, 52.0721, -0.802851, 0, 0, -0.390731, 0.920505, 45, 90, 100, 1),
(64990, 1619, 0, 1, -9655.55, -2019.22, 56.6992, -2.67035, 0, 0, -0.972369, 0.233448, 45, 90, 100, 1),
(64991, 1619, 530, 1, 7111, -5851.78, 24.8521, 0.977383, 0, 0, 0.469471, 0.882948, 45, 90, 100, 1),
(64992, 1619, 530, 1, 8069.74, -7947.57, 191.26, 2.82743, 0, 0, 0.987688, 0.156436, 45, 90, 100, 1),
(64993, 1619, 530, 1, 8733.86, -8028.91, 190.21, 0.471238, 0, 0, 0.233445, 0.97237, 45, 90, 100, 1),
(64994, 1619, 530, 1, 8423.9, -5896.26, 35.8895, -2.18166, 0, 0, -0.88701, 0.461749, 45, 90, 100, 1),
(64995, 1619, 530, 1, 8080.21, -6306.36, 71.77, -2.09439, 0, 0, -0.866024, 0.500002, 45, 90, 100, 1),
(64997, 1619, 530, 1, 8967.45, -7152.78, 52.1016, 2.40855, 0, 0, 0.93358, 0.35837, 45, 90, 100, 1),
(65003, 1619, 0, 1, -5838.34, -1653.31, 358.806, -2.72271, 0, 0, -0.978147, 0.207914, 45, 90, 100, 1),
(65004, 1619, 0, 1, -5745.33, -1616.57, 363.214, -0.191985, 0, 0, -0.0958451, 0.995396, 45, 90, 100, 1),
(85386, 1619, 530, 1, -1494.34, -11469.2, 68.286, 0.698132, 0, 0, 0.34202, 0.939693, 45, 90, 100, 1),
(85443, 1619, 0, 1, -5678.3, -1469.82, 405.582, 2.58308, 0, 0, 0.961261, 0.275641, 45, 90, 100, 1),
(85444, 1619, 0, 1, -9803.82, -2286.89, 63.6404, 0.890117, 0, 0, 0.430511, 0.902586, 45, 90, 100, 1),
(85447, 1619, 0, 1, -9125.74, -3186.11, 113.986, 2.3911, 0, 0, 0.930417, 0.366502, 45, 90, 100, 1),
(85449, 1619, 0, 1, -9319.15, -3281.53, 99.8038, 1.98967, 0, 0, 0.838669, 0.544641, 45, 90, 100, 1),
(86220, 1619, 1, 1, -1004.58, -4805.93, 12.8968, -1.3439, 0, 0, -0.622513, 0.782609, 45, 90, 100, 1),
(86221, 1619, 530, 1, -3505.93, -11809.1, 6.61314, 1.97222, 0, 0, 0.833885, 0.551938, 45, 90, 100, 1),
(86223, 1619, 0, 1, -9242.07, -500.695, 72.2388, 2.58308, 0, 0, 0.961261, 0.275641, 45, 90, 100, 1),
(86224, 1619, 1, 1, 191.52, -4436.94, 33.9087, 1.02974, 0, 0, 0.492422, 0.870357, 45, 90, 100, 1),
(86225, 1619, 1, 1, -61.418, -4616.06, 42.8898, -1.18682, 0, 0, -0.559191, 0.829039, 45, 90, 100, 1),
(86226, 1619, 1, 1, -734.752, -4977.03, 22.2292, -0.209439, 0, 0, -0.104528, 0.994522, 45, 90, 100, 1),
(86227, 1619, 1, 1, 159.863, -3927.96, 45.6035, 1.43117, 0, 0, 0.656059, 0.75471, 45, 90, 100, 1),
(86228, 1619, 1, 1, 225.312, -4230.02, 41.828, -1.74533, 0, 0, -0.766045, 0.642787, 45, 90, 100, 1),
(86229, 1619, 0, 1, -9125.45, -647.984, 83.9311, 1.37881, 0, 0, 0.636078, 0.771625, 45, 90, 100, 1),
(86230, 1619, 0, 1, -9194.63, -1313.42, 94.5443, -1.90241, 0, 0, -0.814116, 0.580702, 45, 90, 100, 1),
(86233, 1619, 1, 1, 1313.98, -4928.83, 9.16377, 1.91986, 0, 0, 0.819151, 0.573577, 45, 90, 100, 1),
(86234, 1619, 1, 1, 944.376, -4231.94, -6.23417, 1.36136, 0, 0, 0.629322, 0.777145, 45, 90, 100, 1),
(86235, 1619, 1, 1, 934.805, -3918.83, 19.6192, 1.65806, 0, 0, 0.737276, 0.675591, 45, 90, 100, 1),
(86236, 1619, 1, 1, -460.157, -4712.15, 37.342, -0.610864, 0, 0, -0.300705, 0.953717, 45, 90, 100, 1),
(86237, 1619, 530, 1, -2540.3, -11824.2, 19.3858, 1.48353, 0, 0, 0.67559, 0.737277, 45, 90, 100, 1),
(86238, 1619, 0, 1, 275.478, 1292.72, 79.5945, -1.5708, 0, 0, -0.707108, 0.707106, 45, 90, 100, 1),
(86239, 1619, 0, 1, 1892.15, -682.06, 50.8038, 2.75761, 0, 0, 0.981626, 0.190814, 45, 90, 100, 1),
(86240, 1619, 1, 1, 10245.8, 1532.83, 1332.78, -3.07177, 0, 0, -0.999391, 0.0349043, 45, 90, 100, 1),
(86241, 1619, 1, 1, -1281.1, -1042.77, 48.7105, 2.14675, 0, 0, 0.878816, 0.477161, 45, 90, 100, 1),
(87042, 1619, 0, 1, -9339.2, -3063.91, 136.63, 1.97222, 0, 0, 0.833885, 0.551938, 45, 90, 100, 1),
(87059, 1619, 530, 1, -4281.44, -12716.9, 25.5493, 1.98967, 0, 0, 0.838669, 0.544641, 45, 90, 100, 1),
(87075, 1619, 1, 1, -2790.54, -404.294, 13.6166, 1.25664, 0, 0, 0.587786, 0.809016, 45, 90, 100, 1),
(87076, 1619, 1, 1, -2735.74, -321.652, 13.0835, 1.27409, 0, 0, 0.594823, 0.803857, 45, 90, 100, 1),
(87211, 1619, 0, 1, 2386.79, 822.591, 46.8164, -1.309, 0, 0, -0.608763, 0.793352, 45, 90, 100, 1),
(87212, 1619, 0, 1, 889.81, 1172.7, 49.8807, -2.67035, 0, 0, -0.972369, 0.233447, 45, 90, 100, 1),
(87213, 1619, 0, 1, -8844.8, -1293.87, 111.635, -3.07177, 0, 0, -0.999391, 0.0349043, 45, 90, 100, 1),
(87214, 1619, 0, 1, -8802.97, -1242.1, 95.1466, 2.40855, 0, 0, 0.93358, 0.35837, 45, 90, 100, 1),
(87215, 1619, 1, 1, -998.674, -1065.87, 46.8172, -1.71042, 0, 0, -0.754709, 0.65606, 45, 90, 100, 1),
(87216, 1619, 1, 1, -1664.08, 368.102, 111.681, -1.39626, 0, 0, -0.642786, 0.766046, 45, 90, 100, 1),
(87461, 1619, 0, 1, -11053.9, 1954.27, 30.9819, -2.65289, 0, 0, -0.970294, 0.241927, 45, 90, 100, 1),
(87462, 1619, 1, 1, 5189.79, 343.254, 41.3473, 1.79769, 0, 0, 0.782608, 0.622514, 45, 90, 100, 1),
(87638, 1619, 0, 1, 827.243, 1324.17, 54.6776, 0.820303, 0, 0, 0.398748, 0.91706, 45, 90, 100, 1),
(85319, 1619, 530, 1, -4985.8, -10981.5, 20.7943, -0.296705, 0, 0, -0.147809, 0.989016, 45, 90, 100, 1),
(85320, 1619, 530, 1, -4793.52, -12273.3, 3.84495, 2.75761, 0, 0, 0.981626, 0.190814, 45, 90, 100, 1),
(85321, 1619, 530, 1, -3996.94, -12731.7, 19.4022, 1.55334, 0, 0, 0.700908, 0.713252, 45, 90, 100, 1),
(85324, 1619, 530, 1, -4409.37, -11519.9, 15.7371, -2.72271, 0, 0, -0.978147, 0.207914, 45, 90, 100, 1),
(85325, 1619, 530, 1, -5226.13, -11224.4, 38.4356, -1.16937, 0, 0, -0.551937, 0.833886, 45, 90, 100, 1),
(85326, 1619, 530, 1, -4102.36, -12695.5, 13.7054, 2.28638, 0, 0, 0.909961, 0.414694, 45, 90, 100, 1),
(85388, 1619, 530, 1, -3789.32, -11808.1, 15.0198, 1.22173, 0, 0, 0.573576, 0.819152, 45, 90, 100, 1),
(85391, 1619, 530, 1, -2220.26, -12375.8, 48.2671, 2.84488, 0, 0, 0.989015, 0.147813, 45, 90, 100, 1),
(85396, 1619, 530, 1, -1759.49, -12047.2, 36.6137, -0.785397, 0, 0, -0.382683, 0.92388, 45, 90, 100, 1),
(85398, 1619, 530, 1, -1641.72, -11850.3, 19.4328, -0.750491, 0, 0, -0.366501, 0.930418, 45, 90, 100, 1),
(85399, 1619, 530, 1, -2106.3, -11203.8, 80.7396, 0.157079, 0, 0, 0.0784588, 0.996917, 45, 90, 100, 1),

(1597, 1619, 0, 1, 357.362, 713.061, 45.0774, 0.785397, 0, 0, 0.382683, 0.92388, 45, 90, 100, 1),
(1623, 1619, 0, 1, 2785.7, 501.149, 26.605, 5.18363, 0, 0, -0.522498, 0.852641, 45, 90, 100, 1),
(1628, 1619, 0, 1, 2992.24, 441.681, 24.7336, 1.11701, 0, 0, 0.529919, 0.848048, 45, 90, 100, 1),
(1860, 1619, 0, 1, 1854.79, -199.715, 49.3374, 1.67551, 0, 0, 0.743144, 0.669132, 45, 90, 100, 1),
(1872, 1619, 0, 1, -5521.8, -3031.14, 361.204, 0.942477, 0, 0, 0.45399, 0.891007, 45, 90, 100, 1),
(1873, 1619, 1, 1, -233.734, -4837.06, 28.8369, 0.733038, 0, 0, 0.358368, 0.933581, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (5492,5497,63277,63278,63283,63284,63288,63291,63294,63295,63297,64977,64978,64984,64985,64988,64989,64990,64991,64992,64993,64994,64995,64997,65003,65004,85386,85443,85444,85447,85449,86220,86221,86223,86224,86225,86226,86227,86228,86229,86230,86233,86234,86235,86236,86237,86238,86239,86240,86241,87042,87059,87075,87076,87211,87212,87213,87214,87215,87216,87461,87462,87638,85319,85320,85321,85324,85325,85326,85388,85391,85396,85398,85399,1872,1873,1597,1860,1623,1628);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(63295, 13005, 0, 'Earthroot zone 1, node 132'), -- Master Herb Pool - Dun Morogh
(65003, 13005, 0, 'Earthroot zone 1, node 148'),
(65004, 13005, 0, 'Earthroot zone 1, node 149'),
(85443, 13005, 0, 'Earthroot zone 1, node 153'),

(5492, 13008, 0, 'Earthroot zone 12, node 165'), -- Master Herb Pool - Elwynn Forest
(5497, 13008, 0, 'Earthroot zone 12, node 166'),
(63277, 13008, 0, 'Earthroot zone 12, node 135'),
(63283, 13008, 0, 'Earthroot zone 12, node 136'),
(63288, 13008, 0, 'Earthroot zone 12, node 138'),
(63291, 13008, 0, 'Earthroot zone 12, node 141'),
(64985, 13008, 0, 'Earthroot zone 12, node 152'),
(64988, 13008, 0, 'Earthroot zone 12, node 153'),
(64989, 13008, 0, 'Earthroot zone 12, node 154'),
(86223, 13008, 0, 'Earthroot zone 12, node 158'),
(86229, 13008, 0, 'Earthroot zone 12, node 159'),
(86230, 13008, 0, 'Earthroot zone 12, node 160'),
(87213, 13008, 0, 'Earthroot zone 12, node 163'),
(87214, 13008, 0, 'Earthroot zone 12, node 164'),

(63278, 13013, 0, 'Earthroot zone 38, node 201'), -- Master Herb Pool - Loch Modan
(1872, 13013, 0, 'Loch Modan - Earthroot'),

(63284, 13022, 0, 'Earthroot zone 40, node 288'), -- Master Herb Pool - Westfall
(63294, 13022, 0, 'Earthroot zone 40, node 291'),
(87461, 13022, 0, 'Earthroot zone 40, node 310'),

(63297, 13014, 0, 'Earthroot zone 44, node 185'), -- Master Herb Pool - Redridge Mountains
(64990, 13014, 0, 'Earthroot zone 44, node 187'),
(85444, 13014, 0, 'Earthroot zone 44, node 196'),
(85447, 13014, 0, 'Earthroot zone 44, node 199'),
(85449, 13014, 0, 'Earthroot zone 44, node 201'),
(87042, 13014, 0, 'Earthroot zone 44, node 217'),

(86220, 13030, 0, 'Earthroot zone 14, node 279'), -- Master Herb Pool - Durotar
(86224, 13030, 0, 'Earthroot zone 14, node 281'),
(86225, 13030, 0, 'Earthroot zone 14, node 282'),
(86226, 13030, 0, 'Earthroot zone 14, node 283'),
(86227, 13030, 0, 'Earthroot zone 14, node 284'),
(86228, 13030, 0, 'Earthroot zone 14, node 285'),
(86233, 13030, 0, 'Earthroot zone 14, node 287'),
(86234, 13030, 0, 'Earthroot zone 14, node 288'),
(86235, 13030, 0, 'Earthroot zone 14, node 289'),
(86236, 13030, 0, 'Earthroot zone 14, node 290'),
(1873, 13030, 0, 'Durotar - Earthroot'),

(86239, 13020, 0, 'Earthroot zone 85, node 156'), -- Master Herb Pool - Tirisfal Glades
(87211, 13020, 0, 'Earthroot zone 85, node 169'),
(1623, 13020, 0, 'Tirisfal Glades - Earthroot'),
(1628, 13020, 0, 'Tirisfal Glades - Earthroot'),
(1860, 13020, 0, 'Tirisfal Glades - Earthroot'),

(86238, 13016, 0, 'Earthroot zone 130, node 210'), -- Master Herb Pool - Silverpine Forest
(87212, 13016, 0, 'Earthroot zone 130, node 221'),
(87638, 13016, 0, 'Silverpine Forest - Earthroot'),
(1597, 13016, 0, 'Silverpine Forest - Earthroot'),

(64977, 13009, 0, 'Earthroot zone 3430, node 139'), -- Master Herb Pool - Eversong Woods
(64978, 13009, 0, 'Earthroot zone 3430, node 140'),
(64992, 13009, 0, 'Earthroot zone 3430, node 141'),
(64993, 13009, 0, 'Earthroot zone 3430, node 142'),
(64994, 13009, 0, 'Earthroot zone 3430, node 143'),
(64997, 13009, 0, 'Earthroot zone 3430, node 145'),

(64984, 13010, 0, 'Earthroot zone 3433, node 107'), -- Master Herb Pool - Ghostlands
(64991, 13010, 0, 'Earthroot zone 3433, node 108'),
(64995, 13010, 0, 'Earthroot zone 3433, node 109'),

(86221, 13026, 0, 'Earthroot zone 3524, node 111'), -- Master Herb Pool - Azuremyst Isle
(87059, 13026, 0, 'Earthroot zone 3524, node 115'),
(85319, 13026, 0, 'Earthroot zone 3524, node 83'),
(85320, 13026, 0, 'Earthroot zone 3524, node 84'),
(85321, 13026, 0, 'Earthroot zone 3524, node 85'),
(85324, 13026, 0, 'Earthroot zone 3524, node 87'),
(85325, 13026, 0, 'Earthroot zone 3524, node 88'),
(85326, 13026, 0, 'Earthroot zone 3524, node 89'),
(85388, 13026, 0, 'Earthroot zone 3524, node 101'),

(86237, 13027, 0, 'Bloodmyst Isle - Earthroot'), -- Master Herb Pool - Bloodmyst Isle
(85386, 13027, 0, 'Bloodmyst Isle - Earthroot'),
(85391, 13027, 0, 'Bloodmyst Isle - Earthroot'),
(85396, 13027, 0, 'Bloodmyst Isle - Earthroot'),
(85398, 13027, 0, 'Bloodmyst Isle - Earthroot'),
(85399, 13027, 0, 'Bloodmyst Isle - Earthroot'),

(86240, 13038, 0, 'Earthroot zone 141, node 136'), -- Master Herb Pool - Teldrassil

(86241, 13034, 0, 'Earthroot zone 215, node 165'), -- Master Herb Pool - Mulgore
(87075, 13034, 0, 'Earthroot zone 215, node 169'),
(87076, 13034, 0, 'Earthroot zone 215, node 170'),
(87215, 13034, 0, 'Earthroot zone 215, node 175'),
(87216, 13034, 0, 'Earthroot zone 215, node 176'),

(87462, 13028, 0, 'Earthroot zone 148, node 383'); -- Master Herb Pool - Darkshore

-- Mageroyal 1620
-- https://tbc.wowhead.com/object=1620/mageroyal
UPDATE `gameobject` SET `position_x` = -11047.3, `position_y` = -1116.92, `position_z` = 38.599, `orientation` = 0.296705, `rotation2` = 0.147809, `rotation3` = 0.989016 WHERE `guid` = 131567 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -10901.2, `position_y` = 1166.75, `position_z` = 35.9096, `orientation` = 2.68781, `rotation2` = 0.97437, `rotation3` = 0.22495 WHERE `guid` = 135778 AND `id` = 1620;
DELETE FROM `gameobject` WHERE `guid` = 135797; -- Duplicate 135778
DELETE FROM `pool_gameobject` WHERE `guid` = 135797;
UPDATE `gameobject` SET `position_x` = -10778.7, `position_y` = -774.291, `position_z` = 43.2322, `orientation` = -2.30383, `rotation2` = -0.913544, `rotation3` = 0.406739 WHERE `guid` = 131565 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -10533, `position_y` = 585.718, `position_z` = 29.9915, `orientation` = 2.75762, `rotation2` = 0.981627, `rotation3` = 0.190809 WHERE `guid` = 131558 AND `id` = 1620;
DELETE FROM `gameobject` WHERE `guid` = 131570; -- Duplicate 131558
DELETE FROM `pool_gameobject` WHERE `guid` = 131570;
UPDATE `gameobject` SET `position_x` = -10368.2, `position_y` = 1069.46, `position_z` = 36.6281, `orientation` = 0.069812, `rotation2` = 0.0348989, `rotation3` = 0.999391 WHERE `guid` = 135783 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -10112.6, `position_y` = 941.912, `position_z` = 33.8729, `orientation` = 2.67035, `rotation2` = 0.972369, `rotation3` = 0.233447 WHERE `guid` = 135766 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -10017.7, `position_y` = 1736.41, `position_z` = 33.7083, `orientation` = 0.261798, `rotation2` = 0.130525, `rotation3` = 0.991445 WHERE `guid` = 135757 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -9699.21, `position_y` = 1276.32, `position_z` = 10.1858, `orientation` = -0.890117, `rotation2` = -0.430511, `rotation3` = 0.902586 WHERE `guid` = 135760 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -9670.18, `position_y` = -1768.52, `position_z` = 55.2736, `orientation` = -1.50098, `rotation2` = -0.681997, `rotation3` = 0.731355 WHERE `guid` = 133327 AND `id` = 1620;
DELETE FROM `gameobject` WHERE `guid` = 132379; -- Duplicate 133327
DELETE FROM `pool_gameobject` WHERE `guid` = 132379;
UPDATE `gameobject` SET `position_x` = -9666.2, `position_y` = -2385.5, `position_z` = 60.3805, `orientation` = -2.14675, `rotation2` = -0.878816, `rotation3` = 0.477161 WHERE `guid` = 133329 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -9495.91, `position_y` = -2337.42, `position_z` = 69.3455, `orientation` = 0.977383, `rotation2` = 0.469471, `rotation3` = 0.882948 WHERE `guid` = 133314 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -9282.55, `position_y` = -2730.74, `position_z` = 84.4196, `orientation` = 2.74016, `rotation2` = 0.979924, `rotation3` = 0.199371 WHERE `guid` = 133328 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -9090.56, `position_y` = -2716.7, `position_z` = 93.1088, `orientation` = 0.925024, `rotation2` = 0.446198, `rotation3` = 0.894934 WHERE `guid` = 133318 AND `id` = 1620;
DELETE FROM `gameobject` WHERE `guid` = 133326; -- Duplicate 133318
DELETE FROM `pool_gameobject` WHERE `guid` = 133326;
UPDATE `gameobject` SET `position_x` = -5266.11, `position_y` = -3118.4, `position_z` = 300.486, `orientation` = 0.698132, `rotation2` = 0.34202, `rotation3` = 0.939693 WHERE `guid` = 133171 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -5064.71, `position_y` = -3133.72, `position_z` = 299.455, `orientation` = -0.261798, `rotation2` = -0.130525, `rotation3` = 0.991445 WHERE `guid` = 133174 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -4896.99, `position_y` = -3304.25, `position_z` = 304.202, `orientation` = 1.51844, `rotation2` = 0.688356, `rotation3` = 0.725373 WHERE `guid` = 133175 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -3982.32, `position_y` = -2953.52, `position_z` = 12.4004, `orientation` = 0.174532, `rotation2` = 0.0871553, `rotation3` = 0.996195 WHERE `guid` = 135990 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -3914.26, `position_y` = -2181.78, `position_z` = 91.6667, `orientation` = -0.157079, `rotation2` = -0.0784588, `rotation3` = 0.996917 WHERE `guid` = 140035 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -3651.67, `position_y` = -2086.83, `position_z` = 92.3989, `orientation` = 1.48353, `rotation2` = 0.67559, `rotation3` = 0.737277 WHERE `guid` = 140110 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -3283.59, `position_y` = -2118.74, `position_z` = 91.8353, `orientation` = 1.58825, `rotation2` = 0.713251, `rotation3` = 0.700909 WHERE `guid` = 140066 AND `id` = 1620;
DELETE FROM `gameobject` WHERE `guid` = 13821; -- Duplicate 140066
DELETE FROM `pool_gameobject` WHERE `guid` = 13821;
UPDATE `gameobject` SET `position_x` = -3279.59, `position_y` = -1705.84, `position_z` = 91.6667, `orientation` = -1.309, `rotation2` = -0.608763, `rotation3` = 0.793352 WHERE `guid` = 139973 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -3207.48, `position_y` = -2241.12, `position_z` = 91.8736, `orientation` = 0.401425, `rotation2` = 0.199368, `rotation3` = 0.979925 WHERE `guid` = 139924 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -2929.99, `position_y` = -1959.83, `position_z` = 91.6667, `orientation` = -2.93214, `rotation2` = -0.994521, `rotation3` = 0.104535 WHERE `guid` = 140094 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -2807.56, `position_y` = -1419.77, `position_z` = 11.2288, `orientation` = 1.48353, `rotation2` = 0.67559, `rotation3` = 0.737277 WHERE `guid` = 136004 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -2772.87, `position_y` = -2109.86, `position_z` = 96.147, `orientation` = -1.37881, `rotation2` = -0.636078, `rotation3` = 0.771625 WHERE `guid` = 139918 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -2721.75, `position_y` = -1951.37, `position_z` = 95.6936, `orientation` = 2.09439, `rotation2` = 0.866024, `rotation3` = 0.500002 WHERE `guid` = 139915 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -2702.22, `position_y` = -2023.16, `position_z` = 97.1988, `orientation` = 1.93731, `rotation2` = 0.824125, `rotation3` = 0.566409 WHERE `guid` = 139993 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -2518.09, `position_y` = -1851.83, `position_z` = 92.2329, `orientation` = -0.593412, `rotation2` = -0.292372, `rotation3` = 0.956305 WHERE `guid` = 140099 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -2213.99, `position_y` = -2046.5, `position_z` = 93.1859, `orientation` = 0.052359, `rotation2` = 0.0261765, `rotation3` = 0.999657 WHERE `guid` = 140097 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -1755.6, `position_y` = -2587.81, `position_z` = 91.6667, `orientation` = 1.48353, `rotation2` = 0.67559, `rotation3` = 0.737277 WHERE `guid` = 140053 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -1486.6, `position_y` = -2077.56, `position_z` = 82.5848, `orientation` = 1.39626, `rotation2` = 0.642786, `rotation3` = 0.766046 WHERE `guid` = 140013 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -1445.05, `position_y` = -2186.18, `position_z` = 91.6629, `orientation` = -2.58308, `rotation2` = -0.961261, `rotation3` = 0.275641 WHERE `guid` = 139935 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -846.395, `position_y` = -2877.4, `position_z` = 91.7914, `orientation` = -2.04204, `rotation2` = -0.852641, `rotation3` = 0.522496 WHERE `guid` = 140139 AND `id` = 1620;
DELETE FROM `gameobject` WHERE `guid` = 14187; -- Duplicate 140139
DELETE FROM `pool_gameobject` WHERE `guid` = 14187;
UPDATE `gameobject` SET `position_x` = -716.563, `position_y` = -682.115, `position_z` = 13.0308, `orientation` = 0.366518, `rotation2` = 0.182235, `rotation3` = 0.983255 WHERE `guid` = 132707 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -688.772, `position_y` = -2010.5, `position_z` = 64.995, `orientation` = -1.15192, `rotation2` = -0.54464, `rotation3` = 0.83867 WHERE `guid` = 139983 AND `id` = 1620;
DELETE FROM `gameobject` WHERE `guid` = 140002; -- Duplicate 139983
DELETE FROM `pool_gameobject` WHERE `guid` = 140002;
UPDATE `gameobject` SET `position_x` = -157.146, `position_y` = -3992.43, `position_z` = 57.2922, `orientation` = -1.62316, `rotation2` = -0.725376, `rotation3` = 0.688353 WHERE `guid` = 138222 AND `id` = 1620;
DELETE FROM `gameobject` WHERE `guid` = 138217; -- Duplicate 138222
DELETE FROM `pool_gameobject` WHERE `guid` = 138217;
DELETE FROM `gameobject` WHERE `guid` = 132379; -- Duplicate 133327
DELETE FROM `pool_gameobject` WHERE `guid` = 132379;
DELETE FROM `gameobject` WHERE `guid` = 135787; -- Duplicate 135799
DELETE FROM `pool_gameobject` WHERE `guid` = 135787;
DELETE FROM `gameobject` WHERE `guid` = 131570; -- Duplicate 131558
DELETE FROM `pool_gameobject` WHERE `guid` = 131570;
DELETE FROM `gameobject` WHERE `guid` = 135790; -- Duplicate 135764
DELETE FROM `pool_gameobject` WHERE `guid` = 135790;
DELETE FROM `gameobject` WHERE `guid` = 130001; -- Duplicate 132699
DELETE FROM `pool_gameobject` WHERE `guid` = 130001;
UPDATE `gameobject` SET `position_x` = -142.373, `position_y` = -770.859, `position_z` = 57.7179, `orientation` = 1.93731, `rotation2` = 0.824125, `rotation3` = 0.566409 WHERE `guid` = 132701 AND `id` = 1620;
DELETE FROM `gameobject` WHERE `guid` IN (132702,130003,130000); -- Duplicate 132701
DELETE FROM `pool_gameobject` WHERE `guid` IN (132702,130003,130000);
UPDATE `gameobject` SET `position_x` = 317.927, `position_y` = -1883.46, `position_z` = 91.6667, `orientation` = -3.03684, `rotation2` = -0.998629, `rotation3` = 0.0523524 WHERE `guid` = 140034 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = 422.249, `position_y` = -3630.41, `position_z` = 28.3725, `orientation` = 2.89724, `rotation2` = 0.992546, `rotation3` = 0.121873 WHERE `guid` = 140100 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = 551.666, `position_y` = -3675.08, `position_z` = 27.2787, `orientation` = -0.767944, `rotation2` = -0.374606, `rotation3` = 0.927184 WHERE `guid` = 140098 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = 580.55, `position_y` = -2781.6, `position_z` = 91.7421, `orientation` = 1.79769, `rotation2` = 0.782608, `rotation3` = 0.622514 WHERE `guid` = 139917 AND `id` = 1620;
DELETE FROM `gameobject` WHERE `guid` = 13689; -- Duplicate 139917
DELETE FROM `pool_gameobject` WHERE `guid` = 13689;
UPDATE `gameobject` SET `position_x` = 737.1, `position_y` = -3683.63, `position_z` = 29.4815, `orientation` = 1.44862, `rotation2` = 0.662619, `rotation3` = 0.748957 WHERE `guid` = 139922 AND `id` = 1620;
DELETE FROM `gameobject` WHERE `guid` = 30894; -- Duplicate 139922
DELETE FROM `pool_gameobject` WHERE `guid` = 30894;
UPDATE `gameobject` SET `position_x` = 843.962, `position_y` = 1089.3, `position_z` = 46.8802, `orientation` = 1.309, `rotation2` = 0.608763, `rotation3` = 0.793352 WHERE `guid` = 133693 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = 921.922, `position_y` = -3667.02, `position_z` = 31.433, `orientation` = -0.191985, `rotation2` = -0.0958451, `rotation3` = 0.995396 WHERE `guid` = 140131 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = 962.671, `position_y` = -4245.07, `position_z` = -8.28712, `orientation` = -2.9845, `rotation2` = -0.996917, `rotation3` = 0.0784656 WHERE `guid` = 138224 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = 969.203, `position_y` = -4704.17, `position_z` = 30.3343, `orientation` = -1.44862, `rotation2` = -0.662619, `rotation3` = 0.748957 WHERE `guid` = 138216 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = 1001.31, `position_y` = -4820.73, `position_z` = 16.7528, `orientation` = -0.191985, `rotation2` = -0.0958451, `rotation3` = 0.995396 WHERE `guid` = 138221 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = 1087.7, `position_y` = 1095.32, `position_z` = 39.4568, `orientation` = 1.88495, `rotation2` = 0.809015, `rotation3` = 0.587788 WHERE `guid` = 133669 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = 1199.77, `position_y` = 940.93, `position_z` = 34.9147, `orientation` = 3.08918, `rotation2` = 0.999657, `rotation3` = 0.0262033 WHERE `guid` = 133670 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = 1233.28, `position_y` = -3801.56, `position_z` = 33.4924, `orientation` = -2.07694, `rotation2` = -0.861629, `rotation3` = 0.507539 WHERE `guid` = 139933 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = 1316.55, `position_y` = 680.78, `position_z` = 35.2747, `orientation` = -1.78023, `rotation2` = -0.777144, `rotation3` = 0.629323 WHERE `guid` = 133675 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = 1338.74, `position_y` = 800.474, `position_z` = 34.4119, `orientation` = 1.6057, `rotation2` = 0.719339, `rotation3` = 0.694659 WHERE `guid` = 133677 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = 1398.94, `position_y` = -2367.47, `position_z` = 106.623, `orientation` = -2.60053, `rotation2` = -0.963629, `rotation3` = 0.267244 WHERE `guid` = 136362 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = 4953.92, `position_y` = 435.788, `position_z` = 33.406, `orientation` = 1.18682, `rotation2` = 0.559191, `rotation3` = 0.829039 WHERE `guid` = 137489 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = 5097.59, `position_y` = 514.898, `position_z` = 13.3284, `orientation` = 0.087266, `rotation2` = 0.0436192, `rotation3` = 0.999048 WHERE `guid` = 137542 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = 5250.59, `position_y` = 495.726, `position_z` = 16.0721, `orientation` = -2.09439, `rotation2` = -0.866024, `rotation3` = 0.500002 WHERE `guid` = 137516 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = 5411.81, `position_y` = 463.373, `position_z` = 19.6885, `orientation` = 0.698132, `rotation2` = 0.34202, `rotation3` = 0.939693 WHERE `guid` = 137527 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = 5669.05, `position_y` = 474.506, `position_z` = 14.5995, `orientation` = -0.174532, `rotation2` = -0.0871553, `rotation3` = 0.996195 WHERE `guid` = 137497 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = 5866.61, `position_y` = 166.033, `position_z` = 31.1269, `orientation` = 1.0472, `rotation2` = 0.500001, `rotation3` = 0.866025 WHERE `guid` = 137520 AND `id` = 1620;
UPDATE `gameobject` SET `position_x` = -10144, `position_y` = 1642.86, `position_z` = 37.93, `orientation` = 0.372, `rotation2` = 0.184929, `rotation3` = 0.982752 WHERE `guid` = 135767 AND `id` = 1620;
DELETE FROM `gameobject` WHERE `guid` = 135794; -- Duplicate 135762
DELETE FROM `pool_gameobject` WHERE `guid` = 135794;
DELETE FROM `gameobject` WHERE `guid` = 131557; -- Duplicate 131571
DELETE FROM `pool_gameobject` WHERE `guid` = 131557;
DELETE FROM `gameobject` WHERE `guid` = 131569; -- Duplicate 131560
DELETE FROM `pool_gameobject` WHERE `guid` = 131569;
DELETE FROM `gameobject` WHERE `guid` = 131568; -- Duplicate 131574
DELETE FROM `pool_gameobject` WHERE `guid` = 131568;
DELETE FROM `gameobject` WHERE `guid` = 131563; -- Duplicate 131566
DELETE FROM `pool_gameobject` WHERE `guid` = 131563;
DELETE FROM `gameobject` WHERE `guid` = 133339; -- Duplicate 133325
DELETE FROM `pool_gameobject` WHERE `guid` = 133339;
DELETE FROM `gameobject` WHERE `guid` = 133313; -- Duplicate 133332
DELETE FROM `pool_gameobject` WHERE `guid` = 133313;
DELETE FROM `gameobject` WHERE `guid` = 133182; -- Duplicate 133184
DELETE FROM `pool_gameobject` WHERE `guid` = 133182;
DELETE FROM `gameobject` WHERE `guid` = 133179; -- Duplicate 133183
DELETE FROM `pool_gameobject` WHERE `guid` = 133179;
DELETE FROM `gameobject` WHERE `guid` = 139969; -- Duplicate 140551
DELETE FROM `pool_gameobject` WHERE `guid` = 139969;
DELETE FROM `gameobject` WHERE `guid` = 140550; -- Duplicate 140032
DELETE FROM `pool_gameobject` WHERE `guid` = 140550;
DELETE FROM `gameobject` WHERE `guid` = 139980; -- Duplicate 140016
DELETE FROM `pool_gameobject` WHERE `guid` = 139980;
DELETE FROM `gameobject` WHERE `guid` = 132703; -- Duplicate 130002
DELETE FROM `pool_gameobject` WHERE `guid` = 132703;
DELETE FROM `gameobject` WHERE `guid` = 139981; -- Duplicate 139041
DELETE FROM `pool_gameobject` WHERE `guid` = 139981;
DELETE FROM `gameobject` WHERE `guid` = 139982; -- Duplicate 139040
DELETE FROM `pool_gameobject` WHERE `guid` = 139982;
DELETE FROM `gameobject` WHERE `guid` = 133667; -- Duplicate 133698
DELETE FROM `pool_gameobject` WHERE `guid` = 133667;
DELETE FROM `gameobject` WHERE `guid` = 133672; -- Duplicate 133696
DELETE FROM `pool_gameobject` WHERE `guid` = 133672;
DELETE FROM `gameobject` WHERE `guid` = 136373; -- Duplicate 136384
DELETE FROM `pool_gameobject` WHERE `guid` = 136373;
DELETE FROM `gameobject` WHERE `guid` = 137501; -- Duplicate 137548
DELETE FROM `pool_gameobject` WHERE `guid` = 137501;
DELETE FROM `gameobject` WHERE `guid` = 139559; -- Duplicate 139567
DELETE FROM `pool_gameobject` WHERE `guid` = 139559;
DELETE FROM `gameobject` WHERE `guid` = 138240; -- Duplicate 65010 (wrong map)
DELETE FROM `pool_gameobject` WHERE `guid` = 138240;
DELETE FROM `gameobject` WHERE `guid` = 132706; -- Duplicate 132696
DELETE FROM `pool_gameobject` WHERE `guid` = 132706;
UPDATE `pool_gameobject` SET `pool_entry` = 13011, `description` = 'Hillsbrad Foothills - Mageroyal' WHERE `guid` = 130002;

DELETE FROM `gameobject` WHERE `guid` IN (63310,63311,63308,63305,63306,85453,5504,63309,5498,65018,63313,65020,87221,65017,85454,85451,85455,87220,65011,65012,87219,87218,65009,65010,87223,65008,87222,63314,85401,85403,85408,86252,85404,85405,87642,86246,86254,63299,86249,87228,86253,86255,87641,86248,87217,87224,87225,87639,87227,87640,63315,65022,87226,87463,86260,63300,65006,86251,86261,86247,65015,65021,87077,2059,2032,2024,2373,2416,2396,2449,2484,2391,2371,2399,2239,2157,2248,2102) AND `id` = 1620;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(63310, 1620, 0, 1, -11040.9, -1344.31, 53.8028, -0.645772, 0, 0, -0.317305, 0.948324, 45, 90, 100, 1),
(63311, 1620, 0, 1, -11025.7, -145.29, 14.9451, -2.79252, 0, 0, -0.984807, 0.173652, 45, 90, 100, 1),
(5498, 1620, 0, 1, -10124.6, 1280.59, 39.4595, -2.58308, 0, 0, -0.961261, 0.275641, 45, 90, 100, 1),
(5504, 1620, 0, 1, -10193, 88.2107, 27.1032, 1.65806, 0, 0, 0.737277, 0.675591, 45, 90, 100, 1),
(63299, 1620, 1, 1, -42.3266, -421.136, -29.0841, -3.08918, 0, 0, -0.999657, 0.0262033, 45, 90, 100, 1),
(63305, 1620, 0, 1, -10804.1, 2060.42, 10.0065, 2.11185, 0, 0, 0.870356, 0.492423, 45, 90, 100, 1),
(63306, 1620, 0, 1, -10380, -916.736, 46.281, 0.506145, 0, 0, 0.25038, 0.968148, 45, 90, 100, 1),
(63308, 1620, 0, 1, -10953.2, 255.44, 28.4609, 1.48353, 0, 0, 0.67559, 0.737277, 45, 90, 100, 1),
(63309, 1620, 0, 1, -10147.6, -61.248, 29.0283, -2.96704, 0, 0, -0.996194, 0.0871655, 45, 90, 100, 1),
(63313, 1620, 0, 1, -10020.2, -883.023, 29.7899, 2.51327, 0, 0, 0.951056, 0.309019, 45, 90, 100, 1),
(63314, 1620, 0, 1, -2713.41, -1618.32, 10.448, -3.05433, 0, 0, -0.999048, 0.0436174, 45, 90, 100, 1),
(65008, 1620, 0, 1, -2988.7, -2823.87, 26.3481, -0.575957, 0, 0, -0.284015, 0.95882, 45, 90, 100, 1),
(65009, 1620, 0, 1, -4992.66, -3306.73, 299.76, -0.628317, 0, 0, -0.309016, 0.951057, 45, 90, 100, 1),
(65010, 1620, 0, 1, -4949.69, -3498.08, 304.366, -0.244346, 0, 0, -0.121869, 0.992546, 45, 90, 100, 1),
(65011, 1620, 0, 1, -5548.28, -4147.27, 376.306, -0.994837, 0, 0, -0.477158, 0.878817, 45, 90, 100, 1),
(65012, 1620, 0, 1, -5430.76, -3878.28, 332.083, -0.122173, 0, 0, -0.0610485, 0.998135, 45, 90, 100, 1),
(65017, 1620, 0, 1, -9381.91, -1962.83, 58.4079, -0.471238, 0, 0, -0.233445, 0.97237, 45, 90, 100, 1),
(65018, 1620, 0, 1, -10024.5, -1190.48, 27.327, -1.95477, 0, 0, -0.829038, 0.559192, 45, 90, 100, 1),
(65020, 1620, 0, 1, -9688.03, -2101.71, 58.5017, -2.26892, 0, 0, -0.906306, 0.422622, 45, 90, 100, 1),
(85401, 1620, 530, 1, -1466.48, -11258.5, 11.789, 3.01941, 0, 0, 0.998134, 0.0610534, 45, 90, 100, 1),
(85403, 1620, 530, 1, -1871.22, -11113.5, 57.8671, -0.157079, 0, 0, -0.0784588, 0.996917, 45, 90, 100, 1),
(85404, 1620, 530, 1, -1340.06, -11433, 21.3861, -0.698132, 0, 0, -0.34202, 0.939693, 45, 90, 100, 1),
(85405, 1620, 530, 1, -1116.09, -12429.9, 29.4141, 3.14159, 0, 0, 1, 0.00000126759, 45, 90, 100, 1),
(85408, 1620, 530, 1, -1882.93, -10831.7, 66.4228, 1.37881, 0, 0, 0.636078, 0.771625, 45, 90, 100, 1),
(85451, 1620, 0, 1, -8929.93, -2214.44, 136.017, -1.78023, 0, 0, -0.777145, 0.629321, 45, 90, 100, 1),
(85453, 1620, 0, 1, -10355.7, 117.561, 30.0454, 2.51327, 0, 0, 0.951056, 0.309019, 45, 90, 100, 1),
(85454, 1620, 0, 1, -8976.07, -2171.74, 132.628, 0.069812, 0, 0, 0.0348988, 0.999391, 45, 90, 100, 1),
(85455, 1620, 0, 1, -8744.09, -2456.23, 138.914, 1.79769, 0, 0, 0.782608, 0.622514, 45, 90, 100, 1),
(86246, 1620, 1, 1, -628.346, -2029.38, 64.2924, 0.59341, 0, 0, 0.292371, 0.956305, 45, 90, 100, 1),
(86249, 1620, 1, 1, 12.6286, -4112.04, 68.9858, -1.90241, 0, 0, -0.814116, 0.580702, 45, 90, 100, 1),
(86252, 1620, 530, 1, -2516.52, -12175.1, 28.0866, -2.14675, 0, 0, -0.878816, 0.477161, 45, 90, 100, 1),
(86254, 1620, 0, 1, -293.199, 1221.4, 47.9139, -2.49582, 0, 0, -0.948324, 0.317305, 45, 90, 100, 1),
(87218, 1620, 0, 1, -5005.27, -3419.37, 303.401, 3.07177, 0, 0, 0.999391, 0.0349043, 45, 90, 100, 1),
(87219, 1620, 0, 1, -5072.19, -3795.14, 310.585, 2.40855, 0, 0, 0.93358, 0.35837, 45, 90, 100, 1),
(87220, 1620, 0, 1, -5856.29, -3448.97, 318.345, -2.56563, 0, 0, -0.958819, 0.284017, 45, 90, 100, 1),
(87221, 1620, 0, 1, -9657.54, 1504.9, 11.0599, 1.78023, 0, 0, 0.777144, 0.629323, 45, 90, 100, 1),
(87222, 1620, 0, 1, -2980.93, -1986.43, 9.31201, 1.62316, 0, 0, 0.725376, 0.688353, 45, 90, 100, 1),
(87223, 1620, 0, 1, -3139.51, -2545.52, 9.23924, 2.30383, 0, 0, 0.913544, 0.406739, 45, 90, 100, 1),
(87228, 1620, 1, 1, 40.5508, -735.211, -18.9994, 2.19912, 0, 0, 0.891008, 0.453988, 45, 90, 100, 1),
(87642, 1620, 0, 1, -748.175, -32.9106, 28.1021, -0.122173, 0, 0, -0.0610485, 0.998135, 45, 90, 100, 1),
(63300, 1620, 1, 1, 3633.68, 770.675, 6.55052, 3.07177, 0, 0, 0.999391, 0.0349043, 45, 90, 100, 1),
(63315, 1620, 1, 1, 1999.51, -2599.35, 93.9171, 0.663223, 0, 0, 0.325567, 0.945519, 45, 90, 100, 1),
(65006, 1620, 530, 1, 7452.1, -5841.48, 6.8812, -1.27409, 0, 0, -0.594823, 0.803857, 45, 90, 100, 1),
(65015, 1620, 530, 1, 7622.29, -7521.17, 155.27, 0.628317, 0, 0, 0.309016, 0.951057, 45, 90, 100, 1),
(65021, 1620, 530, 1, 7700.73, -6540.21, 14.0813, 2.74016, 0, 0, 0.979924, 0.199371, 45, 90, 100, 1),
(65022, 1620, 1, 1, 2271.92, -1275.44, 76.1553, 1.81514, 0, 0, 0.78801, 0.615662, 45, 90, 100, 1),
(86247, 1620, 1, 1, 7588.91, -803.94, 15.4576, 2.96704, 0, 0, 0.996194, 0.0871655, 45, 90, 100, 1),
(86248, 1620, 1, 1, 931.2, -4038.23, -13.3467, -2.30383, 0, 0, -0.913544, 0.406739, 45, 90, 100, 1),
(86251, 1620, 1, 1, 7518.13, -999.679, -9.88135, 1.36136, 0, 0, 0.629322, 0.777145, 45, 90, 100, 1),
(86253, 1620, 0, 1, 626.599, 1114.28, 63.7859, 2.14675, 0, 0, 0.878816, 0.477161, 45, 90, 100, 1),
(86255, 1620, 0, 1, 664.761, 1137.47, 57.2768, 3.00195, 0, 0, 0.997563, 0.0697646, 45, 90, 100, 1),
(86260, 1620, 1, 1, 2576.27, 1677.75, 294.842, 0.157079, 0, 0, 0.0784588, 0.996917, 45, 90, 100, 1),
(86261, 1620, 1, 1, 7549.78, -934.65, 12.8812, -2.1293, 0, 0, -0.874619, 0.48481, 45, 90, 100, 1),
(87077, 1620, 1, 1, 10019.4, 483.16, 1314.04, 2.19912, 0, 0, 0.891008, 0.453988, 45, 90, 100, 1),
(87217, 1620, 0, 1, 958.84, 1069.46, 36.558, -0.069812, 0, 0, -0.0348989, 0.999391, 45, 90, 100, 1),
(87224, 1620, 0, 1, 1123.37, 1095.89, 40.1016, -2.37364, 0, 0, -0.927182, 0.37461, 45, 90, 100, 1),
(87225, 1620, 1, 1, 1131.9, -4685.81, 20.0887, -2.05949, 0, 0, -0.857168, 0.515037, 45, 90, 100, 1),
(87226, 1620, 1, 1, 2448.9, 1512.97, 262.881, -2.40855, 0, 0, -0.93358, 0.35837, 45, 90, 100, 1),
(87227, 1620, 1, 1, 1269.18, -11.3787, -5.88981, -0.314158, 0, 0, -0.156434, 0.987688, 45, 90, 100, 1),
(87463, 1620, 1, 1, 2525.04, -3616.79, 58.6529, 0.925024, 0, 0, 0.446198, 0.894934, 45, 90, 100, 1),
(87639, 1620, 0, 1, 1207.02, 2047.57, 4.10904, 2.56563, 0, 0, 0.958819, 0.284017, 45, 90, 100, 1),
(87640, 1620, 0, 1, 1336.83, 743.906, 34.2843, 2.54818, 0, 0, 0.956305, 0.292372, 45, 90, 100, 1),
(87641, 1620, 0, 1, 818.656, 574.509, 35.8591, 2.07694, 0, 0, 0.861629, 0.507539, 45, 90, 100, 1),

(2024, 1620, 0, 1, -4799.45, -3015.7, 305.452, 4.57276, 0, 0, -0.754709, 0.656059, 45, 90, 100, 1),
(2032, 1620, 0, 1, -5042.01, -3358.18, 298.81, 5.48033, 0, 0, -0.390731, 0.920505, 45, 90, 100, 1),
(2059, 1620, 0, 1, -5407.17, -2842.9, 349.277, 5.77704, 0, 0, -0.25038, 0.968148, 45, 90, 100, 1),
(2102, 1620, 0, 1, 1212.28, 1081.24, 38.5364, 5.95157, 0, 0, -0.165047, 0.986286, 45, 90, 100, 1),
(2157, 1620, 0, 1, 809.661, 1477.3, 33.4895, 2.75761, 0, 0, 0.981627, 0.190812, 45, 90, 100, 1),
(2239, 1620, 0, 1, 708.846, 1229.78, 62.9129, 4.34587, 0, 0, -0.824126, 0.566406, 45, 90, 100, 1),
(2248, 1620, 0, 1, 868.94, 1162.26, 35.5119, 4.13643, 0, 0, -0.878817, 0.47716, 45, 90, 100, 1),
(2371, 1620, 1, 1, -652.396, -2330.84, 19.6195, 5.93412, 0, 0, -0.173648, 0.984808, 45, 90, 100, 1),
(2373, 1620, 0, 1, -4232.42, -2674.76, 41.5726, 3.17653, 0, 0, -0.999847, 0.0174693, 45, 90, 100, 1),
(2391, 1620, 0, 1, -3065.17, -2583.33, 11.2463, 3.31614, 0, 0, -0.996194, 0.087165, 45, 90, 100, 1),
(2396, 1620, 0, 1, -3847.47, -2681.57, 31.1856, 5.39307, 0, 0, -0.43051, 0.902586, 45, 90, 100, 1),
(2399, 1620, 0, 1, -81.7723, -770.163, 56.3972, 2.67035, 0, 0, 0.972369, 0.233448, 45, 90, 100, 1),
(2416, 1620, 0, 1, -3918.23, -2716.54, 26.4426, 5.20108, 0, 0, -0.515037, 0.857168, 45, 90, 100, 1),
(2449, 1620, 0, 1, -3348.16, -3278.91, 23.1451, 2.28638, 0, 0, 0.909961, 0.414694, 45, 90, 100, 1),
(2484, 1620, 0, 1, -3317.16, -2676.49, 14.5292, 6.02139, 0, 0, -0.130526, 0.991445, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (63310,63311,63308,63305,63306,85453,5504,63309,5498,65018,63313,65020,87221,65017,85454,85451,85455,87220,65011,65012,87219,87218,65009,65010,87223,65008,87222,63314,85401,85403,85408,86252,85404,85405,87642,86246,86254,63299,86249,87228,86253,86255,87641,86248,87217,87224,87225,87639,87227,87640,63315,65022,87226,87463,86260,63300,65006,86251,86261,86247,65015,65021,87077,2059,2032,2024,2373,2416,2396,2449,2484,2391,2371,2399,2239,2157,2248,2102);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(63310, 13006, 0, 'Mageroyal zone 10, node 255'), -- Duskwood
(63311, 13006, 0, 'Mageroyal zone 10, node 256'),
(5504, 13006, 0, 'Mageroyal zone 10, node 314'),
(63306, 13006, 0, 'Mageroyal zone 10, node 252'),
(63308, 13006, 0, 'Mageroyal zone 10, node 253'),
(63309, 13006, 0, 'Mageroyal zone 10, node 254'),
(63313, 13006, 0, 'Mageroyal zone 10, node 257'),
(65018, 13006, 0, 'Mageroyal zone 10, node 290'),
(85453, 13006, 0, 'Mageroyal zone 10, node 303'),

(5498, 13022, 0, 'Mageroyal zone 40, node 316'), -- Westfall
(63305, 13022, 0, 'Mageroyal zone 40, node 292'),
(87221, 13022, 0, 'Mageroyal zone 40, node 305'),

(63299, 13036, 0, 'Mageroyal zone 406, node 249'), -- Stonetalon Mountains
(87228, 13036, 0, 'Mageroyal zone 406, node 278'),
(86260, 13036, 0, 'Mageroyal zone 406, node 259'),
(87226, 13036, 0, 'Mageroyal zone 406, node 276'),
(87227, 13036, 0, 'Mageroyal zone 406, node 277'),

(63314, 13023, 0, 'Mageroyal zone 11, node 319'), -- Wetlands
(65008, 13023, 0, 'Mageroyal zone 11, node 331'),
(87222, 13023, 0, 'Mageroyal zone 11, node 393'),
(87223, 13023, 0, 'Mageroyal zone 11, node 394'),
(2373, 13023, 0, 'Wetlands - Mageroyal'),
(2391, 13023, 0, 'Wetlands - Mageroyal'),
(2396, 13023, 0, 'Wetlands - Mageroyal'),
(2416, 13023, 0, 'Wetlands - Mageroyal'),
(2449, 13023, 0, 'Wetlands - Mageroyal'),
(2484, 13023, 0, 'Wetlands - Mageroyal'),

(65009, 13013, 0, 'Mageroyal zone 38, node 203'), -- Loch Modan
(65010, 13013, 0, 'Mageroyal zone 38, node 204'),
(65011, 13013, 0, 'Mageroyal zone 38, node 205'),
(65012, 13013, 0, 'Mageroyal zone 38, node 206'),
(87218, 13013, 0, 'Mageroyal zone 38, node 216'),
(87219, 13013, 0, 'Mageroyal zone 38, node 217'),
(87220, 13013, 0, 'Mageroyal zone 38, node 218'),
(2024, 13013, 0, 'Loch Modan - Mageroyal'),
(2032, 13013, 0, 'Loch Modan - Mageroyal'),
(2059, 13013, 0, 'Loch Modan - Mageroyal'),

(65017, 13014, 0, 'Mageroyal zone 44, node 190'), -- Redridge Mountains
(65020, 13014, 0, 'Mageroyal zone 44, node 191'),
(85451, 13014, 0, 'Mageroyal zone 44, node 203'),
(85454, 13014, 0, 'Mageroyal zone 44, node 205'),
(85455, 13014, 0, 'Mageroyal zone 44, node 206'),

(86249, 13030, 0, 'Mageroyal zone 14, node 292'), -- Durotar
(86248, 13030, 0, 'Mageroyal zone 14, node 291'),
(87225, 13030, 0, 'Mageroyal zone 14, node 296'),

(86254, 13016, 0, 'Mageroyal zone 130, node 212'), -- Silverpine Forest
(86253, 13016, 0, 'Mageroyal zone 130, node 211'),
(86255, 13016, 0, 'Mageroyal zone 130, node 213'),
(87217, 13016, 0, 'Mageroyal zone 130, node 222'),
(87224, 13016, 0, 'Mageroyal zone 130, node 223'),
(87639, 13016, 0, 'Silverpine Forest - Mageroyal'),
(87640, 13016, 0, 'Silverpine Forest - Mageroyal'),
(87641, 13016, 0, 'Silverpine Forest - Mageroyal'),
(2102, 13016, 0, 'Silverpine Forest - Mageroyal'),
(2157, 13016, 0, 'Silverpine Forest - Mageroyal'),
(2239, 13016, 0, 'Silverpine Forest - Mageroyal'),
(2248, 13016, 0, 'Silverpine Forest - Mageroyal'),

(63300, 13024, 0, 'Mageroyal zone 331, node 412'), -- Ashenvale
(63315, 13024, 0, 'Mageroyal zone 331, node 413'),
(65022, 13024, 0, 'Mageroyal zone 331, node 421'),
(87463, 13024, 0, 'Mageroyal zone 331, node 449'),

(65006, 13010, 0, 'Mageroyal zone 3433, node 110'), -- Ghostlands
(65015, 13010, 0, 'Mageroyal zone 3433, node 111'),
(65021, 13010, 0, 'Mageroyal zone 3433, node 112'),

(86247, 13028, 0, 'Mageroyal zone 148, node 360'), -- Darkshore
(86251, 13028, 0, 'Mageroyal zone 148, node 361'),
(86261, 13028, 0, 'Mageroyal zone 148, node 363'),

(87077, 13038, 0, 'Mageroyal zone 141, node 140'), -- Teldrassil

(85401, 13027, 0, 'Bloodmyst Isle - Mageroyal'), -- Bloodmyst Isle
(85403, 13027, 0, 'Bloodmyst Isle - Mageroyal'),
(85404, 13027, 0, 'Bloodmyst Isle - Mageroyal'),
(85405, 13027, 0, 'Bloodmyst Isle - Mageroyal'),
(85408, 13027, 0, 'Bloodmyst Isle - Mageroyal'),
(86252, 13027, 0, 'Bloodmyst Isle - Mageroyal'),

(86246, 13039, 0, 'The Barrens - Mageroyal'), -- The Barrens
(2371, 13039, 0, 'The Barrens - Mageroyal'),

(87642, 13011, 0, 'Hillsbrad Foothills - Mageroyal'), -- Hillsbrad Foothills
(2399, 13011, 0, 'Hillsbrad Foothills - Mageroyal');

-- Briarthorn 1621
-- https://tbc.wowhead.com/object=1621/briarthorn
DELETE FROM `gameobject` WHERE `guid` = 135850; -- Duplicate 135836
DELETE FROM `pool_gameobject` WHERE `guid` = 135850;
UPDATE `gameobject` SET `position_x` = -11066, `position_y` = -15.7862, `position_z` = 34.7084, `orientation` = 0.383971, `rotation2` = 0.190808, `rotation3` = 0.981627 WHERE `guid` = 131666 AND `id` = 1621;
UPDATE `gameobject` SET `position_x` = -11018.9, `position_y` = -436.104, `position_z` = 30.6316, `orientation` = -2.33874, `rotation2` = -0.920505, `rotation3` = 0.390732 WHERE `guid` = 131610 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 131647; -- Duplicate 131610
DELETE FROM `pool_gameobject` WHERE `guid` = 131647;
UPDATE `gameobject` SET `position_x` = -10894, `position_y` = -1028.04, `position_z` = 75.3045, `orientation` = 3.10665, `rotation2` = 0.999847, `rotation3` = 0.0174704 WHERE `guid` = 131622 AND `id` = 1621;
UPDATE `gameobject` SET `position_x` = -10871.4, `position_y` = -1205, `position_z` = 40.8238, `orientation` = 0.034906, `rotation2` = 0.0174521, `rotation3` = 0.999848 WHERE `guid` = 131609 AND `id` = 1621;
UPDATE `gameobject` SET `position_x` = -10782.7, `position_y` = -197.056, `position_z` = 44.2139, `orientation` = 1.09956, `rotation2` = 0.5225, `rotation3` = 0.852639 WHERE `guid` = 131592 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 131611; -- Duplicate 131646
DELETE FROM `pool_gameobject` WHERE `guid` = 131611;
UPDATE `gameobject` SET `position_x` = -10743.1, `position_y` = -646.991, `position_z` = 41.3031, `orientation` = -2.68781, `rotation2` = -0.97437, `rotation3` = 0.22495 WHERE `guid` = 131620 AND `id` = 1621;
UPDATE `gameobject` SET `position_x` = -10707.2, `position_y` = -1411.07, `position_z` = 41.8335, `orientation` = 2.67035, `rotation2` = 0.972369, `rotation3` = 0.233447 WHERE `guid` = 131632 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 131616; -- Duplicate 131636
DELETE FROM `pool_gameobject` WHERE `guid` = 131616;
UPDATE `gameobject` SET `position_x` = -10656.5, `position_y` = -858.591, `position_z` = 54.3311, `orientation` = -1.23918, `rotation2` = -0.580701, `rotation3` = 0.814117 WHERE `guid` = 131578 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 131584; -- Duplicate 131649
DELETE FROM `pool_gameobject` WHERE `guid` = 131584;
UPDATE `gameobject` SET `position_x` = -10597.8, `position_y` = 498.424, `position_z` = 29.1544, `orientation` = 3.14159, `rotation2` = 1, `rotation3` = 1.26759E-6 WHERE `guid` = 131589 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 131579; -- Duplicate 131650
DELETE FROM `pool_gameobject` WHERE `guid` = 131579;
UPDATE `gameobject` SET `position_x` = -10448.7, `position_y` = -1362.45, `position_z` = 79.5184, `orientation` = 2.67035, `rotation2` = 0.972369, `rotation3` = 0.233447 WHERE `guid` = 131576 AND `id` = 1621;
UPDATE `gameobject` SET `position_x` = -10372.8, `position_y` = -1319.4, `position_z` = 52.773, `orientation` = -0.575957, `rotation2` = -0.284015, `rotation3` = 0.95882 WHERE `guid` = 131602 AND `id` = 1621;
UPDATE `gameobject` SET `position_x` = -10362.4, `position_y` = 784.97, `position_z` = 30.9238, `orientation` = -1.50098, `rotation2` = -0.681997, `rotation3` = 0.731355 WHERE `guid` = 135829 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 131651; -- Duplicate 131673
DELETE FROM `pool_gameobject` WHERE `guid` = 131651;
DELETE FROM `gameobject` WHERE `guid` = 135817; -- Duplicate 135852
DELETE FROM `pool_gameobject` WHERE `guid` = 135817;
UPDATE `gameobject` SET `position_x` = -10254.1, `position_y` = 1136.24, `position_z` = 37.0174, `orientation` = -1.85005, `rotation2` = -0.798636, `rotation3` = 0.601815 WHERE `guid` = 135841 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 131653; -- Duplicate 131582
DELETE FROM `pool_gameobject` WHERE `guid` = 131653;
UPDATE `gameobject` SET `position_x` = -10179.5, `position_y` = -918.365, `position_z` = 36.9741, `orientation` = -0.383971, `rotation2` = -0.190808, `rotation3` = 0.981627 WHERE `guid` = 131577 AND `id` = 1621;
UPDATE `gameobject` SET `position_x` = -9562.72, `position_y` = -1868.06, `position_z` = 69.7337, `orientation` = 3.12412, `rotation2` = 0.999962, `rotation3` = 0.00873622 WHERE `guid` = 133355 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 133341; -- Duplicate 133365
DELETE FROM `pool_gameobject` WHERE `guid` = 133341;
DELETE FROM `gameobject` WHERE `guid` = 133344; -- Duplicate 133366
DELETE FROM `pool_gameobject` WHERE `guid` = 133344;
DELETE FROM `gameobject` WHERE `guid` = 133353; -- Duplicate 133369
DELETE FROM `pool_gameobject` WHERE `guid` = 133353;
UPDATE `gameobject` SET `position_x` = -9282.73, `position_y` = -1880.83, `position_z` = 85.4043, `orientation` = -1.36136, `rotation2` = -0.629322, `rotation3` = 0.777145 WHERE `guid` = 133345 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 133203; -- Duplicate 133191
DELETE FROM `pool_gameobject` WHERE `guid` = 133203;
DELETE FROM `gameobject` WHERE `guid` = 133186; -- Duplicate 133192
DELETE FROM `pool_gameobject` WHERE `guid` = 133186;
DELETE FROM `gameobject` WHERE `guid` = 133198; -- Duplicate 133193
DELETE FROM `pool_gameobject` WHERE `guid` = 133198;
UPDATE `gameobject` SET `position_x` = -4187.31, `position_y` = -2018.41, `position_z` = 93.5895, `orientation` = -1.83259, `rotation2` = -0.793352, `rotation3` = 0.608764 WHERE `guid` = 140217 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` IN (136031,138241); -- Duplicate 136027
DELETE FROM `pool_gameobject` WHERE `guid` IN (136031,138241);
UPDATE `gameobject` SET `position_x` = -3334.19, `position_y` = -2619.98, `position_z` = 10.2918, `orientation` = 1.6057, `rotation2` = 0.719339, `rotation3` = 0.694659 WHERE `guid` = 136034 AND `id` = 1621; -- 48641 Wetlands
UPDATE `gameobject` SET `position_x` = -3637.74, `position_y` = -2216.63, `position_z` = 92.2857, `orientation` = -2.35619, `rotation2` = -0.923879, `rotation3` = 0.382686 WHERE `guid` = 140167 AND `id` = 1621;
UPDATE `gameobject` SET `position_x` = -3402.69, `position_y` = -3235.19, `position_z` = 23.3302, `orientation` = 4.10152, `rotation2` = -0.887011, `rotation3` = 0.461749 WHERE `guid` = 136010 AND `id` = 1621; -- 30009 Wetlands
UPDATE `gameobject` SET `position_x` = -3375.92, `position_y` = -2271.41, `position_z` = 91.6667, `orientation` = -0.401425, `rotation2` = -0.199368, `rotation3` = 0.979925 WHERE `guid` = 140166 AND `id` = 1621;
UPDATE `gameobject` SET `position_x` = -3183.31, `position_y` = -1111.6, `position_z` = 9.17652, `orientation` = -0.366518, `rotation2` = -0.182235, `rotation3` = 0.983255 WHERE `guid` = 136015 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` IN (138242,140176); -- Duplicate 136025
DELETE FROM `pool_gameobject` WHERE `guid` IN (138242,140176);
UPDATE `gameobject` SET `position_x` = -3008.33, `position_y` = -1158.85, `position_z` = 9.70504, `orientation` = -2.79252, `rotation2` = -0.984807, `rotation3` = 0.173652 WHERE `guid` = 136018 AND `id` = 1621;
UPDATE `gameobject` SET `position_x` = -2563.49, `position_y` = -1947.9, `position_z` = 91.6731, `orientation` = -0.802851, `rotation2` = -0.390731, `rotation3` = 0.920505 WHERE `guid` = 140218 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 138961; -- Duplicate 140223
DELETE FROM `pool_gameobject` WHERE `guid` = 138961;
DELETE FROM `gameobject` WHERE `guid` = 138962; -- Duplicate 140182
DELETE FROM `pool_gameobject` WHERE `guid` = 138962;
UPDATE `gameobject` SET `position_x` = -2090.82, `position_y` = -2130.27, `position_z` = 93.2031, `orientation` = 1.78023, `rotation2` = 0.777144, `rotation3` = 0.629323 WHERE `guid` = 140145 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 14455; -- Duplicate 140145
DELETE FROM `pool_gameobject` WHERE `guid` = 14455;
UPDATE `gameobject` SET `position_x` = -1797.42, `position_y` = -2472.61, `position_z` = 91.6667, `orientation` = -0.279252, `rotation2` = -0.139173, `rotation3` = 0.990268 WHERE `guid` = 140198 AND `id` = 1621;
UPDATE `gameobject` SET `position_x` = -1696.34, `position_y` = -2225.82, `position_z` = 92.0846, `orientation` = -1.0821, `rotation2` = -0.515036, `rotation3` = 0.857168 WHERE `guid` = 140164 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 132739; -- Duplicate 132711
DELETE FROM `pool_gameobject` WHERE `guid` = 132739;
UPDATE `gameobject` SET `position_x` = -928.639, `position_y` = -1740.88, `position_z` = 91.7356, `orientation` = 0.558504, `rotation2` = 0.275637, `rotation3` = 0.961262 WHERE `guid` = 140175 AND `id` = 1621;
UPDATE `gameobject` SET `position_x` = -909.752, `position_y` = -3053.74, `position_z` = 92.0618, `orientation` = -1.3439, `rotation2` = -0.622513, `rotation3` = 0.782609 WHERE `guid` = 140205 AND `id` = 1621;
UPDATE `gameobject` SET `position_x` = -883.319, `position_y` = -3361.04, `position_z` = 91.7687, `orientation` = -0.139624, `rotation2` = -0.0697553, `rotation3` = 0.997564 WHERE `guid` = 140222 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 130366; -- Duplicate 132734
DELETE FROM `pool_gameobject` WHERE `guid` = 130366;
DELETE FROM `gameobject` WHERE `guid` = 132723; -- Duplicate 132712
DELETE FROM `pool_gameobject` WHERE `guid` = 132723;
DELETE FROM `gameobject` WHERE `guid` = 132741; -- Duplicate 132729
DELETE FROM `pool_gameobject` WHERE `guid` = 132741;
UPDATE `gameobject` SET `position_x` = -680.054, `position_y` = -3098.36, `position_z` = 91.8174, `orientation` = -0.855211, `rotation2` = -0.414693, `rotation3` = 0.909961 WHERE `guid` = 140155 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 130367; -- Duplicate 132724
DELETE FROM `pool_gameobject` WHERE `guid` = 130367;
UPDATE `gameobject` SET `position_x` = -566.923, `position_y` = -446.173, `position_z` = 40.7825, `orientation` = -0.506145, `rotation2` = -0.25038, `rotation3` = 0.968148 WHERE `guid` = 132720 AND `id` = 1621;
UPDATE `gameobject` SET `position_x` = -550.962, `position_y` = 798.357, `position_z` = 88.7893, `orientation` = -2.37364, `rotation2` = -0.927182, `rotation3` = 0.37461 WHERE `guid` = 133713 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 132731; -- Duplicate 133713
DELETE FROM `pool_gameobject` WHERE `guid` = 132731;
DELETE FROM `gameobject` WHERE `guid` = 132745; -- Duplicate 132722
DELETE FROM `pool_gameobject` WHERE `guid` = 132745;
DELETE FROM `gameobject` WHERE `guid` = 130365; -- Duplicate 132714
DELETE FROM `pool_gameobject` WHERE `guid` = 130365;
DELETE FROM `gameobject` WHERE `guid` = 132747; -- Duplicate 133725
DELETE FROM `pool_gameobject` WHERE `guid` = 132747;
UPDATE `gameobject` SET `position_x` = -470.076, `position_y` = -1971.71, `position_z` = 91.7485, `orientation` = -2.77507, `rotation2` = -0.983255, `rotation3` = 0.182237 WHERE `guid` = 140183 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 14201; -- Duplicate 140183
DELETE FROM `pool_gameobject` WHERE `guid` = 14201;
DELETE FROM `gameobject` WHERE `guid` = 133721; -- Duplicate 133714
DELETE FROM `pool_gameobject` WHERE `guid` = 133721;
UPDATE `gameobject` SET `position_x` = -455.338, `position_y` = -2946.19, `position_z` = 91.6667, `orientation` = -0.261798, `rotation2` = -0.130525, `rotation3` = 0.991445 WHERE `guid` = 140188 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 140161; -- Duplicate 132744
DELETE FROM `pool_gameobject` WHERE `guid` = 140161;
DELETE FROM `gameobject` WHERE `guid` = 132721; -- Duplicate 132713
DELETE FROM `pool_gameobject` WHERE `guid` = 132721;
UPDATE `gameobject` SET `position_x` = -318.421, `position_y` = 120.038, `position_z` = 74.9717, `orientation` = -0.628317, `rotation2` = -0.309016, `rotation3` = 0.951057 WHERE `guid` = 132715 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 130004; -- Duplicate 132715
DELETE FROM `pool_gameobject` WHERE `guid` = 130004;
DELETE FROM `gameobject` WHERE `guid` = 133728; -- Duplicate 133724
DELETE FROM `pool_gameobject` WHERE `guid` = 133728;
UPDATE `gameobject` SET `position_x` = -121.538, `position_y` = -3301.52, `position_z` = 94.357, `orientation` = -2.21656, `rotation2` = -0.894933, `rotation3` = 0.446202 WHERE `guid` = 140209 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` IN (130006,132735,130007); -- Duplicate 132746
DELETE FROM `pool_gameobject` WHERE `guid` IN (130006,132735,130007);
UPDATE `gameobject` SET `position_x` = -97.7302, `position_y` = -3208.84, `position_z` = 92.757, `orientation` = -2.9845, `rotation2` = -0.996917, `rotation3` = 0.0784656 WHERE `guid` = 140215 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 130005; -- Duplicate 132730
DELETE FROM `pool_gameobject` WHERE `guid` = 130005;
DELETE FROM `gameobject` WHERE `guid` = 130008; -- Duplicate 132733
DELETE FROM `pool_gameobject` WHERE `guid` = 130008;
UPDATE `gameobject` SET `position_x` = 21.0643, `position_y` = -3032.41, `position_z` = 92.1659, `orientation` = -0.034906, `rotation2` = -0.0174521, `rotation3` = 0.999848 WHERE `guid` = 140211 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 130009; -- Duplicate 132736
DELETE FROM `pool_gameobject` WHERE `guid` = 130009;
UPDATE `gameobject` SET `position_x` = 157.615, `position_y` = -1984.88, `position_z` = 94.3733, `orientation` = -2.25147, `rotation2` = -0.902584, `rotation3` = 0.430513 WHERE `guid` = 140144 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 133712; -- Duplicate 133732
DELETE FROM `pool_gameobject` WHERE `guid` = 133712;
UPDATE `gameobject` SET `position_x` = 628.438, `position_y` = 1829.14, `position_z` = -10.4462, `orientation` = -1.09956, `rotation2` = -0.5225, `rotation3` = 0.852639 WHERE `guid` = 139053 AND `id` = 1621;
UPDATE `gameobject` SET `position_x` = 726.712, `position_y` = 1387.03, `position_z` = 72.8429, `orientation` = 2.11185, `rotation2` = 0.870356, `rotation3` = 0.492423 WHERE `guid` = 133722 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 133707; -- Duplicate 133731
DELETE FROM `pool_gameobject` WHERE `guid` = 133707;
UPDATE `gameobject` SET `position_x` = 794.476, `position_y` = -2997.77, `position_z` = 91.6667, `orientation` = -1.78023, `rotation2` = -0.777144, `rotation3` = 0.629323 WHERE `guid` = 140204 AND `id` = 1621;
UPDATE `gameobject` SET `position_x` = 907.072, `position_y` = 1553.71, `position_z` = -15.2808, `orientation` = 2.44346, `rotation2` = 0.939692, `rotation3` = 0.342021 WHERE `guid` = 139056 AND `id` = 1621;
UPDATE `gameobject` SET `position_x` = 925.201, `position_y` = -3498.32, `position_z` = 91.6667, `orientation` = -1.62316, `rotation2` = -0.725376, `rotation3` = 0.688353 WHERE `guid` = 140151 AND `id` = 1621;
UPDATE `gameobject` SET `position_x` = 951.368, `position_y` = -2331.42, `position_z` = 91.7039, `orientation` = 0.418879, `rotation2` = 0.207912, `rotation3` = 0.978148 WHERE `guid` = 140168 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 14200; -- Duplicate 140168
DELETE FROM `pool_gameobject` WHERE `guid` = 14200;
UPDATE `gameobject` SET `position_x` = 1058.32, `position_y` = -3678.57, `position_z` = 36.0646, `orientation` = -1.93732, `rotation2` = -0.824127, `rotation3` = 0.566404 WHERE `guid` = 140200 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 136444; -- Duplicate 136442
DELETE FROM `pool_gameobject` WHERE `guid` = 136444;
UPDATE `gameobject` SET `position_x` = 2048.55, `position_y` = -2083.42, `position_z` = 126.551, `orientation` = -1.55334, `rotation2` = -0.700908, `rotation3` = 0.713252 WHERE `guid` = 136469 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 139045; -- Duplicate 136438
DELETE FROM `pool_gameobject` WHERE `guid` = 139045;
DELETE FROM `gameobject` WHERE `guid` = 139057; -- Duplicate 136461
DELETE FROM `pool_gameobject` WHERE `guid` = 139057;
UPDATE `gameobject` SET `position_x` = 2570.96, `position_y` = 1726.28, `position_z` = 314.527, `orientation` = 0.226892, `rotation2` = 0.113203, `rotation3` = 0.993572 WHERE `guid` = 139049 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 138355; -- Duplicate 136456
DELETE FROM `pool_gameobject` WHERE `guid` = 138355;
DELETE FROM `gameobject` WHERE `guid` = 137552; -- Duplicate 136427
DELETE FROM `pool_gameobject` WHERE `guid` = 137552;
DELETE FROM `gameobject` WHERE `guid` = 137598; -- Duplicate 136474
DELETE FROM `pool_gameobject` WHERE `guid` = 137598;
UPDATE `gameobject` SET `position_x` = 5284.13, `position_y` = 161.754, `position_z` = 38.9968, `orientation` = -0.191985, `rotation2` = -0.0958451, `rotation3` = 0.995396 WHERE `guid` = 137578 AND `id` = 1621;
UPDATE `gameobject` SET `position_x` = 5323.75, `position_y` = 346.489, `position_z` = 30.7388, `orientation` = -0.890117, `rotation2` = -0.430511, `rotation3` = 0.902586 WHERE `guid` = 137554 AND `id` = 1621;
DELETE FROM `gameobject` WHERE `guid` = 137561; -- Duplicate 137579
DELETE FROM `pool_gameobject` WHERE `guid` = 137561;
DELETE FROM `gameobject` WHERE `guid` = 132672; -- Duplicate 132666
DELETE FROM `pool_gameobject` WHERE `guid` = 132672;
DELETE FROM `gameobject` WHERE `guid` = 137560; -- Duplicate 137601
DELETE FROM `pool_gameobject` WHERE `guid` = 137560;
DELETE FROM `gameobject` WHERE `guid` = 132380; -- Duplicate 133354
DELETE FROM `pool_gameobject` WHERE `guid` = 132380;
UPDATE `pool_gameobject` SET `pool_entry` = 13011, `description` = 'Hillsbrad Foothills - Briarthorn' WHERE `guid` = 130364;

DELETE FROM `gameobject` WHERE `guid` IN (63324,63325,63327,63333,63326,63321,63332,87467,87231,65036,5507,86271,63336,65033,65051,63328,65037,65042,63334,65040,63323,63331,87466,63322,87232,85457,65030,65043,86263,85461,65032,85460,65029,87233,87235,86265,87234,65028,65046,65052,65044,87119,65027,86262,86268,86270,65048,63338,87230,87120,86269,87122,87121,87648,63337,87646,87647,87644,87645,87237,86274,87239,87238,63316,87240,63317,5505,86273,63319,87236,63339,87468,87469,86275,87465,87241,86266,65055,65054,65049,65025,65045,5508,86267,2613,2617,2658,2692,2894,48751,2896,2895,2597,2795,2587,2789,2794,2788,2815,2823,2704,2837,2853) AND `id` = 1621;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5505, 1621, 1, 1, 1805.19, -2050.75, 104.122, 1.83259, 0, 0, 0.793353, 0.608762, 45, 90, 100, 1),
(5507, 1621, 0, 1, -10827.9, 1783.94, 35.4826, -2.54818, 0, 0, -0.956305, 0.292372, 45, 90, 100, 1),
(5508, 1621, 530, 1, 6958.79, -7527.29, 46.6838, 2.46091, 0, 0, 0.942641, 0.333809, 45, 90, 100, 1),
(63316, 1621, 1, 1, 830.578, 578.432, 88.3972, 1.41372, 0, 0, 0.649449, 0.760405, 45, 90, 100, 1),
(63317, 1621, 1, 1, 1475.06, 856.463, 134.955, 0.366518, 0, 0, 0.182235, 0.983255, 45, 90, 100, 1),
(63319, 1621, 1, 1, 2023.3, -2363.69, 91.3253, -2.19912, 0, 0, -0.891008, 0.453988, 45, 90, 100, 1),
(63321, 1621, 0, 1, -11052.6, 1197.83, 44.0466, 2.86233, 0, 0, 0.990267, 0.139178, 45, 90, 100, 1),
(63322, 1621, 0, 1, -10137.5, 1752.56, 31.8003, 3.03684, 0, 0, 0.998629, 0.0523524, 45, 90, 100, 1),
(63323, 1621, 0, 1, -10319.7, 1886.76, 38.4418, 0.523598, 0, 0, 0.258819, 0.965926, 45, 90, 100, 1),
(63324, 1621, 0, 1, -11254.3, 1911.64, 36.2096, -0.767944, 0, 0, -0.374606, 0.927184, 45, 90, 100, 1),
(63325, 1621, 0, 1, -11211.2, 1228.7, 90.7387, -2.54818, 0, 0, -0.956305, 0.292372, 45, 90, 100, 1),
(63326, 1621, 0, 1, -11056.3, -138.435, 23.7818, 2.96704, 0, 0, 0.996194, 0.0871655, 45, 90, 100, 1),
(63327, 1621, 0, 1, -11105.6, -731.904, 56.4545, 0.820303, 0, 0, 0.398748, 0.91706, 45, 90, 100, 1),
(63328, 1621, 0, 1, -10442.3, 2009.9, 34.8024, -2.00713, 0, 0, -0.843392, 0.537299, 45, 90, 100, 1),
(63331, 1621, 0, 1, -10282.3, -948.749, 43.6457, -1.39626, 0, 0, -0.642786, 0.766046, 45, 90, 100, 1),
(63332, 1621, 0, 1, -11019.6, 80.7746, 38.6331, 2.80997, 0, 0, 0.986285, 0.165053, 45, 90, 100, 1),
(63333, 1621, 0, 1, -11081.1, 327.136, 31.15, 1.48353, 0, 0, 0.67559, 0.737277, 45, 90, 100, 1),
(63334, 1621, 0, 1, -10386.6, -798.105, 52.4095, -2.93214, 0, 0, -0.994521, 0.104535, 45, 90, 100, 1),
(63336, 1621, 0, 1, -10685.5, -985.969, 70.5648, -1.32645, 0, 0, -0.615661, 0.788011, 45, 90, 100, 1),
(63337, 1621, 0, 1, -330.845, -1500.32, 66.9755, -0.785397, 0, 0, -0.382683, 0.92388, 45, 90, 100, 1),
(63338, 1621, 0, 1, -724.908, -1357.02, 67.9433, -1.78023, 0, 0, -0.777144, 0.629323, 45, 90, 100, 1),
(63339, 1621, 1, 1, 2163.18, -3106.93, 110.897, 0.104719, 0, 0, 0.0523356, 0.99863, 45, 90, 100, 1),
(65025, 1621, 530, 1, 6844.84, -6193.89, 32.7456, 1.309, 0, 0, 0.608763, 0.793352, 45, 90, 100, 1),
(65027, 1621, 0, 1, -2713.48, -1961.67, 17.293, 2.30383, 0, 0, 0.913544, 0.406739, 45, 90, 100, 1),
(65028, 1621, 0, 1, -3160.43, -1554.23, 8.60373, 1.53589, 0, 0, 0.694658, 0.71934, 45, 90, 100, 1),
(65029, 1621, 0, 1, -5464.19, -3965.31, 347.369, 2.07694, 0, 0, 0.861629, 0.507539, 45, 90, 100, 1),
(65030, 1621, 0, 1, -9770.06, -2221.82, 59.8902, -0.314158, 0, 0, -0.156434, 0.987688, 45, 90, 100, 1),
(65032, 1621, 0, 1, -9262.77, -1977.89, 75.5952, -2.9845, 0, 0, -0.996917, 0.0784656, 45, 90, 100, 1),
(65033, 1621, 0, 1, -10617.7, -913.665, 55.1904, -2.96704, 0, 0, -0.996194, 0.0871655, 45, 90, 100, 1),
(65036, 1621, 0, 1, -10970.5, -1142.02, 39.3726, -0.069812, 0, 0, -0.0348989, 0.999391, 45, 90, 100, 1),
(65037, 1621, 0, 1, -10435.6, 42.7232, 44.7757, -1.01229, 0, 0, -0.484809, 0.87462, 45, 90, 100, 1),
(65040, 1621, 0, 1, -10346.4, 28.2568, 50.1187, -2.56563, 0, 0, -0.958819, 0.284017, 45, 90, 100, 1),
(65042, 1621, 0, 1, -10387.3, -1191.86, 43.122, -1.95477, 0, 0, -0.829038, 0.559192, 45, 90, 100, 1),
(65043, 1621, 0, 1, -9658.02, -2111.7, 60.2108, 0.925024, 0, 0, 0.446198, 0.894934, 45, 90, 100, 1),
(65044, 1621, 0, 1, -2917.71, -1810.56, 8.50937, -1.67551, 0, 0, -0.743143, 0.669133, 45, 90, 100, 1),
(65045, 1621, 530, 1, 6864.21, -6025.7, 43.6682, 0.191985, 0, 0, 0.0958451, 0.995396, 45, 90, 100, 1),
(65046, 1621, 0, 1, -3108, -2187.96, 9.23061, -2.23402, 0, 0, -0.898794, 0.438372, 45, 90, 100, 1),
(65048, 1621, 0, 1, -766.645, -956.938, 34.0646, 1.53589, 0, 0, 0.694658, 0.71934, 45, 90, 100, 1),
(65049, 1621, 1, 1, 5603.32, 241.437, 31.5457, -1.69297, 0, 0, -0.748956, 0.66262, 45, 90, 100, 1),
(65051, 1621, 0, 1, -10474, -78.0064, 45.7854, 2.23402, 0, 0, 0.898794, 0.438372, 45, 90, 100, 1),
(65052, 1621, 0, 1, -3067.73, -2692.13, 16.6828, -0.785397, 0, 0, -0.382683, 0.92388, 45, 90, 100, 1),
(65054, 1621, 1, 1, 4823.35, 275.858, 52.1601, 1.65806, 0, 0, 0.737276, 0.675591, 45, 90, 100, 1),
(65055, 1621, 1, 1, 4760.79, 137.93, 54.6364, -2.23402, 0, 0, -0.898794, 0.438372, 45, 90, 100, 1),
(85457, 1621, 0, 1, -9904.38, -1880.45, 37.9255, -2.47837, 0, 0, -0.945519, 0.325567, 45, 90, 100, 1),
(85460, 1621, 0, 1, -9083.6, -2206.59, 130.86, 1.93731, 0, 0, 0.824125, 0.566409, 45, 90, 100, 1),
(85461, 1621, 0, 1, -9496.37, -3203.11, 62.4749, 2.11185, 0, 0, 0.870356, 0.492423, 45, 90, 100, 1),
(86262, 1621, 0, 1, -1185.91, -1002.09, 54.4282, -0.575957, 0, 0, -0.284015, 0.95882, 45, 90, 100, 1),
(86263, 1621, 0, 1, -9567.76, -2131.51, 74.0443, 0.890117, 0, 0, 0.430511, 0.902586, 45, 90, 100, 1),
(86265, 1621, 0, 1, -3558.61, -1292.08, 10.0193, -1.65806, 0, 0, -0.737276, 0.675591, 45, 90, 100, 1),
(86266, 1621, 1, 1, 3281.95, 405.828, 3.70566, 1.72787, 0, 0, 0.760404, 0.64945, 45, 90, 100, 1),
(86268, 1621, 0, 1, -1058.08, -1048.58, 48.0192, 1.83259, 0, 0, 0.793352, 0.608764, 45, 90, 100, 1),
(86269, 1621, 0, 1, -510.528, 1345.62, 42.9607, -0.95993, 0, 0, -0.461748, 0.887011, 45, 90, 100, 1),
(86270, 1621, 0, 1, -952.438, 185.32, 39.5891, 1.27409, 0, 0, 0.594823, 0.803857, 45, 90, 100, 1),
(86271, 1621, 0, 1, -10724.6, 431.879, 39.0428, 0.977383, 0, 0, 0.469471, 0.882948, 45, 90, 100, 1),
(86273, 1621, 1, 1, 1897.15, 946.018, 167.142, 2.58308, 0, 0, 0.961261, 0.275641, 45, 90, 100, 1),
(86274, 1621, 1, 1, 206.765, 90.7655, 51.4756, -1.83259, 0, 0, -0.793352, 0.608764, 45, 90, 100, 1),
(86275, 1621, 1, 1, 2903.98, -987.834, 199.138, 1.98967, 0, 0, 0.838669, 0.544641, 45, 90, 100, 1),
(87119, 1621, 0, 1, -2833.1, -1328.37, 8.95405, -0.418879, 0, 0, -0.207912, 0.978148, 45, 90, 100, 1),
(87120, 1621, 0, 1, -523.583, 434.796, 85.6967, -2.00713, 0, 0, -0.843392, 0.537299, 45, 90, 100, 1),
(87121, 1621, 0, 1, -446.982, 847.415, 96.9973, 0.314158, 0, 0, 0.156434, 0.987688, 45, 90, 100, 1),
(87122, 1621, 0, 1, -491.957, 1211.93, 51.9617, -0.994837, 0, 0, -0.477158, 0.878817, 45, 90, 100, 1),
(87230, 1621, 0, 1, -633.39, -1566.65, 64.1649, 0.418879, 0, 0, 0.207912, 0.978148, 45, 90, 100, 1),
(87231, 1621, 0, 1, -10982.5, 1119.15, 40.2986, 2.30383, 0, 0, 0.913544, 0.406739, 45, 90, 100, 1),
(87232, 1621, 0, 1, -10092.6, 1601.71, 41.0102, 0.104719, 0, 0, 0.0523356, 0.99863, 45, 90, 100, 1),
(87233, 1621, 0, 1, -5147.11, -3496.26, 304.571, 2.35619, 0, 0, 0.923879, 0.382686, 45, 90, 100, 1),
(87234, 1621, 0, 1, -3482.48, -2876.22, 9.41632, -0.244346, 0, 0, -0.121869, 0.992546, 45, 90, 100, 1),
(87235, 1621, 0, 1, -4154.25, -2961.75, 12.0112, -2.11185, 0, 0, -0.870356, 0.492423, 45, 90, 100, 1),
(87236, 1621, 1, 1, 2128.42, 1074.31, 238.538, 1.41372, 0, 0, 0.649449, 0.760405, 45, 90, 100, 1),
(87237, 1621, 1, 1, 163.633, -713.723, -0.409156, -0.296705, 0, 0, -0.147809, 0.989016, 45, 90, 100, 1),
(87238, 1621, 1, 1, 574.272, 266.641, 56.5523, 2.47837, 0, 0, 0.945519, 0.325567, 45, 90, 100, 1),
(87239, 1621, 1, 1, 381.768, 388.748, 53.0068, 1.67551, 0, 0, 0.743143, 0.669133, 45, 90, 100, 1),
(87240, 1621, 1, 1, 862.329, 691.778, 96.6315, -1.64061, 0, 0, -0.731354, 0.681998, 45, 90, 100, 1),
(87241, 1621, 1, 1, 3228.99, -562.044, 153.91, -2.84488, 0, 0, -0.989015, 0.147813, 45, 90, 100, 1),
(87465, 1621, 1, 1, 3032.72, -911.838, 194.145, 0.017452, 0, 0, 0.00872589, 0.999962, 45, 90, 100, 1),
(87466, 1621, 0, 1, -10213.5, 441.273, 37.4833, 1.78023, 0, 0, 0.777144, 0.629323, 45, 90, 100, 1),
(87467, 1621, 0, 1, -11008.7, 1678.96, 41.2772, -2.07694, 0, 0, -0.861629, 0.507539, 45, 90, 100, 1),
(87468, 1621, 1, 1, 2759.72, -3136.69, 168.858, 0, 0, 0, 0, 1, 45, 90, 100, 1),
(87469, 1621, 1, 1, 2764.2, -2492.12, 192.814, 2.96704, 0, 0, 0.996194, 0.0871655, 45, 90, 100, 1),
(87644, 1621, 0, 1, 58.2199, 1275.59, 64.48, 2.16421, 0, 0, 0.882948, 0.469471, 45, 90, 100, 1),
(87645, 1621, 0, 1, 67.2836, 1266.24, 65.0148, 0.349065, 0, 0, 0.173648, 0.984808, 45, 90, 100, 1),
(87646, 1621, 0, 1, -17.5433, 1120.78, 65.7508, 2.63544, 0, 0, 0.968147, 0.250383, 45, 90, 100, 1),
(87647, 1621, 0, 1, 9.14334, 1086.47, 68.8772, -2.60053, 0, 0, -0.963629, 0.267244, 45, 90, 100, 1),
(87648, 1621, 0, 1, -445.137, -277.211, 54.5082, -2.3911, 0, 0, -0.930417, 0.366502, 45, 90, 100, 1),

(86267, 1621, 530, 1, -2638.05, -12250.8, 13.4452, -1.55334, 0, 0, -0.700908, 0.713252, 45, 90, 100, 1),
(2613, 1621, 0, 1, -5259.97, -3520.82, 300.448, 6.07375, 0, 0, -0.104528, 0.994522, 45, 90, 100, 1),
(2587, 1621, 0, 1, -507.498, 242.908, 73.3424, 1.02974, 0, 0, 0.492423, 0.870356, 45, 90, 100, 1),
(2597, 1621, 0, 1, -921.657, 75.1367, 36.0038, 3.35105, 0, 0, -0.994521, 0.104535, 45, 90, 100, 1),
(2617, 1621, 0, 1, -5177.44, -3443.42, 304.83, 3.22886, 0, 0, -0.999048, 0.0436193, 45, 90, 100, 1),
(2658, 1621, 0, 1, -4874.16, -3374.26, 308.717, 1.3439, 0, 0, 0.622514, 0.782609, 45, 90, 100, 1),
(2692, 1621, 0, 1, -9100.39, -2601.51, 117.783, 2.30383, 0, 0, 0.913545, 0.406738, 45, 90, 100, 1),
(2704, 1621, 0, 1, 691.563, 1286.89, 74.3206, 4.04917, 0, 0, -0.898793, 0.438373, 45, 90, 100, 1),
(2788, 1621, 0, 1, -322.612, 1153.8, 70.5041, 2.77507, 0, 0, 0.983254, 0.182238, 45, 90, 100, 1),
(2789, 1621, 0, 1, -495.378, 1155, 63.7513, 4.5204, 0, 0, -0.771625, 0.636078, 45, 90, 100, 1),
(2794, 1621, 0, 1, -493.935, 1189.47, 61.2801, 2.61799, 0, 0, 0.965925, 0.258821, 45, 90, 100, 1),
(2795, 1621, 0, 1, -517.273, 1045.46, 91.7688, 5.20108, 0, 0, -0.515037, 0.857168, 45, 90, 100, 1),
(2815, 1621, 1, 1, -213.583, -511.994, 10.9339, 2.25147, 0, 0, 0.902585, 0.430512, 45, 90, 100, 1),
(2823, 1621, 1, 1, 284.004, 238.587, 68.6627, 3.76991, 0, 0, -0.951056, 0.309017, 45, 90, 100, 1),
(2837, 1621, 1, 1, 1839.3, 957.335, 149.863, 5.02655, 0, 0, -0.587785, 0.809017, 45, 90, 100, 1),
(2853, 1621, 0, 1, -10605.6, 1229.34, 33.087, 0.436332, 0, 0, 0.216439, 0.976296, 45, 90, 100, 1),
(2894, 1621, 0, 1, -3925.27, -2591.35, 43.6762, 4.15388, 0, 0, -0.874619, 0.48481, 45, 90, 100, 1),
(2895, 1621, 0, 1, -3141.5, -2912.14, 21.8747, 4.15388, 0, 0, -0.874619, 0.48481, 45, 90, 100, 1),
(2896, 1621, 0, 1, -3326.56, -3155.95, 24.4531, 5.93412, 0, 0, -0.173648, 0.984808, 45, 90, 100, 1),
(48751, 1621, 0, 1, -3526.27, -2432.7, 56.1001, 3.38594, 0, 0, -0.992546, 0.12187, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (63324,63325,63327,63333,63326,63321,63332,87467,87231,65036,5507,86271,63336,65033,65051,63328,65037,65042,63334,65040,63323,63331,87466,63322,87232,85457,65030,65043,86263,85461,65032,85460,65029,87233,87235,86265,87234,65028,65046,65052,65044,87119,65027,86262,86268,86270,65048,63338,87230,87120,86269,87122,87121,87648,63337,87646,87647,87644,87645,87237,86274,87239,87238,63316,87240,63317,5505,86273,63319,87236,63339,87468,87469,86275,87465,87241,86266,65055,65054,65049,65025,65045,5508,87466,87644,87645,87646,87647,87648,86267,2613,2617,2658,2692,2894,48751,2896,2895,2597,2795,2587,2789,2794,2788,2815,2823,2704,2837,2853);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(87240, 13036, 0, 'Briarthorn zone 406, node 283'), -- Stonetalon Mountains
(87239, 13036, 0, 'Briarthorn zone 406, node 282'),
(87238, 13036, 0, 'Briarthorn zone 406, node 281'),
(87237, 13036, 0, 'Briarthorn zone 406, node 280'),
(87236, 13036, 0, 'Briarthorn zone 406, node 279'),
(86274, 13036, 0, 'Briarthorn zone 406, node 262'),
(63317, 13036, 0, 'Briarthorn zone 406, node 251'),
(63316, 13036, 0, 'Briarthorn zone 406, node 250'),
(86273, 13036, 0, 'Briarthorn zone 406, node 261'),
(2815, 13036, 0, 'Stonetalon Mountains - Briarthorn'),
(2823, 13036, 0, 'Stonetalon Mountains - Briarthorn'),
(2837, 13036, 0, 'Stonetalon Mountains - Briarthorn'),

(65043, 13014, 0, 'Briarthorn zone 44, node 194'), -- Redridge Mountains
(86263, 13014, 0, 'Briarthorn zone 44, node 216'),
(65030, 13014, 0, 'Briarthorn zone 44, node 192'),
(65032, 13014, 0, 'Briarthorn zone 44, node 193'),
(85461, 13014, 0, 'Briarthorn zone 44, node 210'),
(85457, 13014, 0, 'Briarthorn zone 44, node 207'),
(85460, 13014, 0, 'Briarthorn zone 44, node 209'),
(2692, 13014, 0, 'Redridge Mountains - Briarthorn'),

(63321, 13022, 0, 'Briarthorn zone 40, node 293'), -- Westfall
(63323, 13022, 0, 'Briarthorn zone 40, node 295'),
(63322, 13022, 0, 'Briarthorn zone 40, node 294'),
(87231, 13022, 0, 'Briarthorn zone 40, node 306'),
(63325, 13022, 0, 'Briarthorn zone 40, node 297'),
(87232, 13022, 0, 'Briarthorn zone 40, node 307'),
(5507, 13022, 0, 'Briarthorn zone 40, node 317'),
(87467, 13022, 0, 'Briarthorn zone 40, node 312'),
(63324, 13022, 0, 'Briarthorn zone 40, node 296'),
(63328, 13022, 0, 'Briarthorn zone 40, node 298'),
(2853, 13022, 0, 'Westfall - Briarthorn'),

(65029, 13013, 0, 'Briarthorn zone 38, node 207'), -- Loch Modan
(87233, 13013, 0, 'Briarthorn zone 38, node 219'),
(2613, 13013, 0, 'Loch Modan - Briarthorn'),
(2617, 13013, 0, 'Loch Modan - Briarthorn'),
(2658, 13013, 0, 'Loch Modan - Briarthorn'),

(87122, 13016, 0, 'Briarthorn zone 130, node 219'), -- Silverpine Forest
(86269, 13016, 0, 'Briarthorn zone 130, node 214'),
(87121, 13016, 0, 'Briarthorn zone 130, node 218'),
(87644, 13016, 0, 'Silverpine Forest - Briarthorn'),
(87645, 13016, 0, 'Silverpine Forest - Briarthorn'),
(87646, 13016, 0, 'Silverpine Forest - Briarthorn'),
(87647, 13016, 0, 'Silverpine Forest - Briarthorn'),
(2795, 13016, 0, 'Silverpine Forest - Briarthorn'),
(2789, 13016, 0, 'Silverpine Forest - Briarthorn'),
(2794, 13016, 0, 'Silverpine Forest - Briarthorn'),
(2788, 13016, 0, 'Silverpine Forest - Briarthorn'),
(2704, 13016, 0, 'Silverpine Forest - Briarthorn'),

(65048, 13011, 0, 'Briarthorn zone 267, node 238'), -- Hillsbrad Foothills
(86270, 13011, 0, 'Briarthorn zone 267, node 253'),
(86262, 13011, 0, 'Briarthorn zone 267, node 251'),
(86268, 13011, 0, 'Briarthorn zone 267, node 252'),
(87120, 13011, 0, 'Briarthorn zone 267, node 264'),
(87230, 13011, 0, 'Briarthorn zone 267, node 265'),
(63337, 13011, 0, 'Briarthorn zone 267, node 233'),
(63338, 13011, 0, 'Briarthorn zone 267, node 234'),
(87648, 13011, 0, 'Hillsbrad Foothills - Briarthorn'),
(2587, 13011, 0, 'Hillsbrad Foothills - Briarthorn'),
(2597, 13011, 0, 'Hillsbrad Foothills - Briarthorn'),

(86275, 13024, 0, 'Briarthorn zone 331, node 429'), -- Ashenvale
(87465, 13024, 0, 'Briarthorn zone 331, node 450'),
(86266, 13024, 0, 'Briarthorn zone 331, node 428'),
(87468, 13024, 0, 'Briarthorn zone 331, node 451'),
(87469, 13024, 0, 'Briarthorn zone 331, node 452'),
(87241, 13024, 0, 'Briarthorn zone 331, node 439'),
(63319, 13024, 0, 'Briarthorn zone 331, node 414'),
(63339, 13024, 0, 'Briarthorn zone 331, node 415'),
(5505, 13024, 0, 'Briarthorn zone 331, node 457'),

(65055, 13028, 0, 'Briarthorn zone 148, node 356'), -- Darkshore
(65054, 13028, 0, 'Briarthorn zone 148, node 355'),
(65049, 13028, 0, 'Briarthorn zone 148, node 354'),

(65025, 13010, 0, 'Briarthorn zone 3433, node 114'), -- Ghostlands
(5508, 13010, 0, 'Briarthorn zone 3433, node 118'),
(65045, 13010, 0, 'Briarthorn zone 3433, node 115'),

(65028, 13023, 0, 'Briarthorn zone 11, node 336'), -- Wetlands
(86265, 13023, 0, 'Briarthorn zone 11, node 381'),
(87235, 13023, 0, 'Briarthorn zone 11, node 396'),
(87234, 13023, 0, 'Briarthorn zone 11, node 395'),
(65052, 13023, 0, 'Briarthorn zone 11, node 341'),
(65027, 13023, 0, 'Briarthorn zone 11, node 335'),
(65046, 13023, 0, 'Briarthorn zone 11, node 339'),
(87119, 13023, 0, 'Briarthorn zone 11, node 392'),
(65044, 13023, 0, 'Briarthorn zone 11, node 338'),
(2894, 13023, 0, 'Wetlands - Briarthorn'),
(48751, 13023, 0, 'Wetlands - Briarthorn'),
(2896, 13023, 0, 'Wetlands - Briarthorn'),
(2895, 13023, 0, 'Wetlands - Briarthorn'),

(65033, 13006, 0, 'Briarthorn zone 10, node 291'), -- Duskwood
(65036, 13006, 0, 'Briarthorn zone 10, node 292'),
(63326, 13006, 0, 'Briarthorn zone 10, node 258'),
(63327, 13006, 0, 'Briarthorn zone 10, node 259'),
(63331, 13006, 0, 'Briarthorn zone 10, node 260'),
(63332, 13006, 0, 'Briarthorn zone 10, node 261'),
(63333, 13006, 0, 'Briarthorn zone 10, node 262'),
(63334, 13006, 0, 'Briarthorn zone 10, node 263'),
(63336, 13006, 0, 'Briarthorn zone 10, node 264'),
(65042, 13006, 0, 'Briarthorn zone 10, node 296'),
(65040, 13006, 0, 'Briarthorn zone 10, node 295'),
(65051, 13006, 0, 'Briarthorn zone 10, node 297'),
(65037, 13006, 0, 'Briarthorn zone 10, node 293'),
(86271, 13006, 0, 'Briarthorn zone 10, node 307'),
(87466, 13006, 0, 'Duskwood - Briarthorn'),

(86267, 13027, 0, 'Bloodmyst Isle - Briarthorn'); -- Bloodmyst Isle

-- Bruiseweed 1622
-- https://tbc.wowhead.com/object=1622/bruiseweed
UPDATE `gameobject` SET `position_x` = -11014.1, `position_y` = 194.772, `position_z` = 27.8686, `orientation` = -2.84488, `rotation2` = -0.989015, `rotation3` = 0.147813 WHERE `guid` = 131680 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` = 135928; -- Duplicate 135932
DELETE FROM `pool_gameobject` WHERE `guid` = 135928;
UPDATE `gameobject` SET `position_x` = -10929.8, `position_y` = 447.35, `position_z` = 45.6105, `orientation` = -2.53072, `rotation2` = -0.953716, `rotation3` = 0.300709 WHERE `guid` = 131714 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` = 135939; -- Duplicate 135923
DELETE FROM `pool_gameobject` WHERE `guid` = 135939;
UPDATE `gameobject` SET `position_x` = -10765.3, `position_y` = -1252.41, `position_z` = 31.1958, `orientation` = 1.0821, `rotation2` = 0.515036, `rotation3` = 0.857168 WHERE `guid` = 131756 AND `id` = 1622;
UPDATE `gameobject` SET `position_x` = -10680.6, `position_y` = -715.178, `position_z` = 50.4884, `orientation` = -2.67035, `rotation2` = -0.972369, `rotation3` = 0.233447 WHERE `guid` = 131711 AND `id` = 1622;
UPDATE `gameobject` SET `position_x` = -10524.1, `position_y` = 1007.91, `position_z` = 56.1392, `orientation` = -0.541051, `rotation2` = -0.267238, `rotation3` = 0.963631 WHERE `guid` = 135948 AND `id` = 1622;
UPDATE `gameobject` SET `position_x` = -10476.5, `position_y` = -771.538, `position_z` = 59.4434, `orientation` = -1.6057, `rotation2` = -0.719339, `rotation3` = 0.694659 WHERE `guid` = 131703 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` = 131747; -- Duplicate 131739
DELETE FROM `pool_gameobject` WHERE `guid` = 131747;
DELETE FROM `gameobject` WHERE `guid` = 135887; -- Duplicate 135927
DELETE FROM `pool_gameobject` WHERE `guid` = 135887;
UPDATE `gameobject` SET `position_x` = -10353.9, `position_y` = 200.277, `position_z` = 34.39, `orientation` = -0.95993, `rotation2` = -0.461748, `rotation3` = 0.887011 WHERE `guid` = 131700 AND `id` = 1622;
UPDATE `gameobject` SET `position_x` = -10043.7, `position_y` = 1089.09, `position_z` = 39.466, `orientation` = -2.54818, `rotation2` = -0.956305, `rotation3` = 0.292372 WHERE `guid` = 135898 AND `id` = 1622;
UPDATE `gameobject` SET `position_x` = -9986.18, `position_y` = 852.699, `position_z` = 37.2665, `orientation` = -2.93214, `rotation2` = -0.994521, `rotation3` = 0.104535 WHERE `guid` = 135905 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` = 135878; -- Duplicate 135926
DELETE FROM `pool_gameobject` WHERE `guid` = 135878;
UPDATE `gameobject` SET `position_x` = -9853.16, `position_y` = 1047.78, `position_z` = 33.4548, `orientation` = 0.488691, `rotation2` = 0.241921, `rotation3` = 0.970296 WHERE `guid` = 135889 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` = 132381; -- Duplicate 135929
DELETE FROM `pool_gameobject` WHERE `guid` = 132381;
DELETE FROM `gameobject` WHERE `guid` = 133446; -- Duplicate 133389
DELETE FROM `pool_gameobject` WHERE `guid` = 133446;
DELETE FROM `gameobject` WHERE `guid` = 132382; -- Duplicate 135912
DELETE FROM `pool_gameobject` WHERE `guid` = 132382;
DELETE FROM `gameobject` WHERE `guid` = 135913; -- Duplicate 135956
DELETE FROM `pool_gameobject` WHERE `guid` = 135913;
UPDATE `gameobject` SET `position_x` = -9608.53, `position_y` = -2269.69, `position_z` = 85.5731, `orientation` = -2.23402, `rotation2` = -0.898794, `rotation3` = 0.438372 WHERE `guid` = 133439 AND `id` = 1622;
UPDATE `gameobject` SET `position_x` = -9603.1, `position_y` = -2377.98, `position_z` = 61.0354, `orientation` = -2.37364, `rotation2` = -0.927182, `rotation3` = 0.37461 WHERE `guid` = 133461 AND `id` = 1622;
UPDATE `gameobject` SET `position_x` = -9503.31, `position_y` = -2082.8, `position_z` = 100.905, `orientation` = 1.25664, `rotation2` = 0.587786, `rotation3` = 0.809016 WHERE `guid` = 133454 AND `id` = 1622;
UPDATE `gameobject` SET `position_x` = -9499.42, `position_y` = -3054.76, `position_z` = 110.48, `orientation` = 0.436332, `rotation2` = 0.216439, `rotation3` = 0.976296 WHERE `guid` = 133429 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` = 133442; -- Duplicate 133459
DELETE FROM `pool_gameobject` WHERE `guid` = 133442;
UPDATE `gameobject` SET `position_x` = -9172.05, `position_y` = -2443.96, `position_z` = 114.471, `orientation` = 0.890117, `rotation2` = 0.430511, `rotation3` = 0.902586 WHERE `guid` = 133455 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` = 133438; -- Duplicate 133427
DELETE FROM `pool_gameobject` WHERE `guid` = 133438;
DELETE FROM `gameobject` WHERE `guid` = 133475; -- Duplicate 133415
DELETE FROM `pool_gameobject` WHERE `guid` = 133475;
DELETE FROM `gameobject` WHERE `guid` = 131217; -- Duplicate 133374
DELETE FROM `pool_gameobject` WHERE `guid` = 131217;
DELETE FROM `gameobject` WHERE `guid` = 131219; -- Duplicate 133470
DELETE FROM `pool_gameobject` WHERE `guid` = 131219;
DELETE FROM `gameobject` WHERE `guid` = 131220; -- Duplicate 133465
DELETE FROM `pool_gameobject` WHERE `guid` = 131220;
DELETE FROM `gameobject` WHERE `guid` = 131218; -- Duplicate 133381
DELETE FROM `pool_gameobject` WHERE `guid` = 131218;
DELETE FROM `gameobject` WHERE `guid` = 131221; -- Duplicate 133384
DELETE FROM `pool_gameobject` WHERE `guid` = 131221;
DELETE FROM `gameobject` WHERE `guid` = 131222; -- Duplicate 133380
DELETE FROM `pool_gameobject` WHERE `guid` = 131222;
UPDATE `gameobject` SET `position_x` = -5569.09, `position_y` = -2710.54, `position_z` = -46.951, `orientation` = -2.58308, `rotation2` = -0.961261, `rotation3` = 0.275641 WHERE `guid` = 140601 AND `id` = 1622;
UPDATE `gameobject` SET `position_x` = -5548.45, `position_y` = -1953.49, `position_z` = -58.7428, `orientation` = -2.28638, `rotation2` = -0.909961, `rotation3` = 0.414694 WHERE `guid` = 140575 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` = 133223; -- Duplicate 133216
DELETE FROM `pool_gameobject` WHERE `guid` = 133223;
UPDATE `gameobject` SET `position_x` = -4971.19, `position_y` = -1936.63, `position_z` = -37.8026, `orientation` = 2.56563, `rotation2` = 0.958819, `rotation3` = 0.284017 WHERE `guid` = 140562 AND `id` = 1622;
UPDATE `gameobject` SET `position_x` = -4679.05, `position_y` = -1474.73, `position_z` = -48.2578, `orientation` = -0.663223, `rotation2` = -0.325567, `rotation3` = 0.945519 WHERE `guid` = 140607 AND `id` = 1622;
UPDATE `gameobject` SET `position_x` = -4399.95, `position_y` = -1006.17, `position_z` = -53.1422, `orientation` = -2.05949, `rotation2` = -0.857168, `rotation3` = 0.515037 WHERE `guid` = 140556 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` = 138614; -- Duplicate 140556
DELETE FROM `pool_gameobject` WHERE `guid` = 138614;
DELETE FROM `gameobject` WHERE `guid` = 138243; -- Duplicate 136131 (map)
DELETE FROM `pool_gameobject` WHERE `guid` = 138243;
DELETE FROM `gameobject` WHERE `guid` = 136117; -- Duplicate 136133
DELETE FROM `pool_gameobject` WHERE `guid` = 136117;
DELETE FROM `gameobject` WHERE `guid` = 136123; -- Duplicate 136104
DELETE FROM `pool_gameobject` WHERE `guid` = 136123;
UPDATE `gameobject` SET `position_x` = -3920.28, `position_y` = -1053.16, `position_z` = 28.3773, `orientation` = 2.70526, `rotation2` = 0.976296, `rotation3` = 0.21644 WHERE `guid` = 136124 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` = 136113; -- Duplicate 136140
DELETE FROM `pool_gameobject` WHERE `guid` = 136113;
UPDATE `gameobject` SET `position_x` = -3327.7, `position_y` = -1823.19, `position_z` = 101.588, `orientation` = 2.63544, `rotation2` = 0.968147, `rotation3` = 0.250383 WHERE `guid` = 140278 AND `id` = 1622;
UPDATE `gameobject` SET `position_x` = -3047.77, `position_y` = -1973.38, `position_z` = 99.2705, `orientation` = -2.51327, `rotation2` = -0.951056, `rotation3` = 0.309019 WHERE `guid` = 140249 AND `id` = 1622;
UPDATE `gameobject` SET `position_x` = -2859.65, `position_y` = -1473.97, `position_z` = 10.1537, `orientation` = -2.84488, `rotation2` = -0.989015, `rotation3` = 0.147813 WHERE `guid` = 136044 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` = 136139; -- Duplicate 136072
DELETE FROM `pool_gameobject` WHERE `guid` = 136139;
DELETE FROM `gameobject` WHERE `guid` = 130384; -- Duplicate 136051
DELETE FROM `pool_gameobject` WHERE `guid` = 130384;
DELETE FROM `gameobject` WHERE `guid` = 130373; -- Duplicate 136142
DELETE FROM `pool_gameobject` WHERE `guid` = 130373;
DELETE FROM `gameobject` WHERE `guid` = 137836; -- Duplicate 137806
DELETE FROM `pool_gameobject` WHERE `guid` = 137836;
UPDATE `gameobject` SET `position_x` = -1748.82, `position_y` = 1969.21, `position_z` = 61.7136, `orientation` = -0.314158, `rotation2` = -0.156434, `rotation3` = 0.987688 WHERE `guid` = 137810 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` = 130386; -- Duplicate 130379
DELETE FROM `pool_gameobject` WHERE `guid` = 130386;
UPDATE `gameobject` SET `position_x` = -828.508, `position_y` = -804.159, `position_z` = 30.5714, `orientation` = 1.95477, `rotation2` = 0.829038, `rotation3` = 0.559192 WHERE `guid` = 132816 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` = 140244; -- Inside Ore Node
DELETE FROM `pool_gameobject` WHERE `guid` = 140244;
DELETE FROM `gameobject` WHERE `guid` = 132837; -- Duplicate 132827
DELETE FROM `pool_gameobject` WHERE `guid` = 132837;
DELETE FROM `gameobject` WHERE `guid` = 132829; -- Duplicate 132824
DELETE FROM `pool_gameobject` WHERE `guid` = 132829;
DELETE FROM `gameobject` WHERE `guid` = 140270; -- Duplicate 140238
DELETE FROM `pool_gameobject` WHERE `guid` = 140270;
DELETE FROM `gameobject` WHERE `guid` = 140355; -- Duplicate 140264
DELETE FROM `pool_gameobject` WHERE `guid` = 140355;
DELETE FROM `gameobject` WHERE `guid` = 132845; -- Duplicate 132830
DELETE FROM `pool_gameobject` WHERE `guid` = 132845;
UPDATE `gameobject` SET `position_x` = -475.658, `position_y` = -246.216, `position_z` = 61.4152, `orientation` = 2.61799, `rotation2` = 0.965925, `rotation3` = 0.258821 WHERE `guid` = 132757 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` IN (132833,130052,130043); -- Duplicate 132756
DELETE FROM `pool_gameobject` WHERE `guid` IN (132833,130052,130043);
DELETE FROM `gameobject` WHERE `guid` = 130026; -- Duplicate 132803
DELETE FROM `pool_gameobject` WHERE `guid` = 130026;
DELETE FROM `gameobject` WHERE `guid` IN (132832,130051,130019); -- Duplicate 132819
DELETE FROM `pool_gameobject` WHERE `guid` IN (132832,130051,130019);
DELETE FROM `gameobject` WHERE `guid` IN (130037,130044); -- Duplicate 132822
DELETE FROM `pool_gameobject` WHERE `guid` IN (130037,130044);
UPDATE `gameobject` SET `position_x` = -265.137, `position_y` = 211.242, `position_z` = 99.8042, `orientation` = 1.27409, `rotation2` = 0.594823, `rotation3` = 0.803857 WHERE `guid` = 132784 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` = 130029; -- Duplicate 132784
DELETE FROM `pool_gameobject` WHERE `guid` = 130029;
UPDATE `gameobject` SET `position_x` = -241.761, `position_y` = 1474.43, `position_z` = 54.0086, `orientation` = 3.03684, `rotation2` = 0.998629, `rotation3` = 0.0523524 WHERE `guid` = 133773 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` = 133770; -- Duplicate 133774
DELETE FROM `pool_gameobject` WHERE `guid` = 133770;
DELETE FROM `gameobject` WHERE `guid` = 130038; -- Duplicate 132817
DELETE FROM `pool_gameobject` WHERE `guid` = 130038;
DELETE FROM `gameobject` WHERE `guid` = 130024; -- Duplicate 132792
DELETE FROM `pool_gameobject` WHERE `guid` = 130024;
DELETE FROM `gameobject` WHERE `guid` = 130022; -- Duplicate 132761
DELETE FROM `pool_gameobject` WHERE `guid` = 130022;
DELETE FROM `gameobject` WHERE `guid` = 130027; -- Duplicate 132802
DELETE FROM `pool_gameobject` WHERE `guid` = 130027;
DELETE FROM `gameobject` WHERE `guid` = 130010; -- Duplicate 132791
DELETE FROM `pool_gameobject` WHERE `guid` = 130010;
DELETE FROM `gameobject` WHERE `guid` = 130045; -- Duplicate 132821
DELETE FROM `pool_gameobject` WHERE `guid` = 130045;
DELETE FROM `gameobject` WHERE `guid` = 130017; -- Duplicate 132771
DELETE FROM `pool_gameobject` WHERE `guid` = 130017;
DELETE FROM `gameobject` WHERE `guid` = 140283; -- Duplicate 139068
DELETE FROM `pool_gameobject` WHERE `guid` = 140283;
DELETE FROM `gameobject` WHERE `guid` = 140268; -- Duplicate 139090
DELETE FROM `pool_gameobject` WHERE `guid` = 140268;
DELETE FROM `gameobject` WHERE `guid` = 140309; -- Duplicate 139135
DELETE FROM `pool_gameobject` WHERE `guid` = 140309;
DELETE FROM `gameobject` WHERE `guid` = 132778; -- Duplicate 130013
DELETE FROM `pool_gameobject` WHERE `guid` = 132778;
DELETE FROM `gameobject` WHERE `guid` = 140325; -- Duplicate 139179
DELETE FROM `pool_gameobject` WHERE `guid` = 140325;
DELETE FROM `gameobject` WHERE `guid` = 132748; -- Duplicate 130012
DELETE FROM `pool_gameobject` WHERE `guid` = 132748;
DELETE FROM `gameobject` WHERE `guid` = 140308; -- Duplicate 139134
DELETE FROM `pool_gameobject` WHERE `guid` = 140308;
DELETE FROM `gameobject` WHERE `guid` = 132851; -- Duplicate 133761
DELETE FROM `pool_gameobject` WHERE `guid` = 132851;
DELETE FROM `gameobject` WHERE `guid` = 132855; -- Duplicate 133735
DELETE FROM `pool_gameobject` WHERE `guid` = 132855;
DELETE FROM `gameobject` WHERE `guid` = 132854; -- Duplicate 133772
DELETE FROM `pool_gameobject` WHERE `guid` = 132854;
DELETE FROM `gameobject` WHERE `guid` = 130025; -- Duplicate 132809
DELETE FROM `pool_gameobject` WHERE `guid` = 130025;
UPDATE `gameobject` SET `position_x` = -11.2203, `position_y` = -709.006, `position_z` = -16.4602, `orientation` = 2.3911, `rotation2` = 0.930417, `rotation3` = 0.366502 WHERE `guid` = 139121 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` = 140307; -- Duplicate 139121
DELETE FROM `pool_gameobject` WHERE `guid` = 140307;
DELETE FROM `gameobject` WHERE `guid` = 140240; -- Duplicate 139082
DELETE FROM `pool_gameobject` WHERE `guid` = 140240;
DELETE FROM `gameobject` WHERE `guid` = 140335; -- Duplicate 139157
DELETE FROM `pool_gameobject` WHERE `guid` = 140335;
DELETE FROM `gameobject` WHERE `guid` = 132788; -- Duplicate 133767
DELETE FROM `pool_gameobject` WHERE `guid` = 132788;
DELETE FROM `gameobject` WHERE `guid` = 140241; -- Duplicate 139085
DELETE FROM `pool_gameobject` WHERE `guid` = 140241;
DELETE FROM `gameobject` WHERE `guid` = 132755; -- Duplicate 133743
DELETE FROM `pool_gameobject` WHERE `guid` = 132755;
DELETE FROM `gameobject` WHERE `guid` = 140356; -- Duplicate 139177
DELETE FROM `pool_gameobject` WHERE `guid` = 140356;
DELETE FROM `gameobject` WHERE `guid` = 140362; -- Duplicate 139166
DELETE FROM `pool_gameobject` WHERE `guid` = 140362;
DELETE FROM `gameobject` WHERE `guid` = 140256; -- Duplicate 139086
DELETE FROM `pool_gameobject` WHERE `guid` = 140256;
DELETE FROM `gameobject` WHERE `guid` = 140359; -- Duplicate 139165
DELETE FROM `pool_gameobject` WHERE `guid` = 140359;
DELETE FROM `gameobject` WHERE `guid` = 140302; -- Duplicate 139130
DELETE FROM `pool_gameobject` WHERE `guid` = 140302;
DELETE FROM `gameobject` WHERE `guid` = 132825; -- Duplicate 133765
DELETE FROM `pool_gameobject` WHERE `guid` = 132825;
DELETE FROM `gameobject` WHERE `guid` = 132814; -- Duplicate 133757
DELETE FROM `pool_gameobject` WHERE `guid` = 132814;
DELETE FROM `gameobject` WHERE `guid` = 132760; -- Duplicate 130011
DELETE FROM `pool_gameobject` WHERE `guid` = 132760;
DELETE FROM `gameobject` WHERE `guid` = 132815; -- Duplicate 130050
DELETE FROM `pool_gameobject` WHERE `guid` = 132815;
DELETE FROM `gameobject` WHERE `guid` = 130028; -- Duplicate 132812
DELETE FROM `pool_gameobject` WHERE `guid` = 130028;
DELETE FROM `gameobject` WHERE `guid` = 140342; -- Duplicate 139183
DELETE FROM `pool_gameobject` WHERE `guid` = 140342;
DELETE FROM `gameobject` WHERE `guid` = 132834; -- Duplicate 133749
DELETE FROM `pool_gameobject` WHERE `guid` = 132834;
DELETE FROM `gameobject` WHERE `guid` = 140266; -- Duplicate 139098
DELETE FROM `pool_gameobject` WHERE `guid` = 140266;
DELETE FROM `gameobject` WHERE `guid` = 140275; -- Duplicate 139059
DELETE FROM `pool_gameobject` WHERE `guid` = 140275;
DELETE FROM `gameobject` WHERE `guid` = 140321; -- Duplicate 139119
DELETE FROM `pool_gameobject` WHERE `guid` = 140321;
DELETE FROM `gameobject` WHERE `guid` = 130034; -- Duplicate 132856
DELETE FROM `pool_gameobject` WHERE `guid` = 130034;
DELETE FROM `gameobject` WHERE `guid` = 140303; -- Duplicate 139131
DELETE FROM `pool_gameobject` WHERE `guid` = 140303;
DELETE FROM `gameobject` WHERE `guid` = 140274; -- Duplicate 139072
DELETE FROM `pool_gameobject` WHERE `guid` = 140274;
DELETE FROM `gameobject` WHERE `guid` = 140267; -- Duplicate 139097
DELETE FROM `pool_gameobject` WHERE `guid` = 140267;
DELETE FROM `gameobject` WHERE `guid` = 140263; -- Duplicate 139101
DELETE FROM `pool_gameobject` WHERE `guid` = 140263;
DELETE FROM `gameobject` WHERE `guid` = 140276; -- Duplicate 139060
DELETE FROM `pool_gameobject` WHERE `guid` = 140276;
DELETE FROM `gameobject` WHERE `guid` = 140236; -- Duplicate 139077
DELETE FROM `pool_gameobject` WHERE `guid` = 140236;
DELETE FROM `gameobject` WHERE `guid` = 130023; -- Duplicate 132780
DELETE FROM `pool_gameobject` WHERE `guid` = 130023;
DELETE FROM `gameobject` WHERE `guid` IN (132841,130035,130049); -- Duplicate 132862
DELETE FROM `pool_gameobject` WHERE `guid` IN (132841,130035,130049);
DELETE FROM `gameobject` WHERE `guid` = 130033; -- Duplicate 132781
DELETE FROM `pool_gameobject` WHERE `guid` = 130033;
UPDATE `gameobject` SET `position_x` = 531.04, `position_y` = 393.078, `position_z` = 78.7715, `orientation` = 0.436332, `rotation2` = 0.216439, `rotation3` = 0.976296 WHERE `guid` = 139074 AND `id` = 1622;
UPDATE `gameobject` SET `position_x` = 917.237, `position_y` = 1645.03, `position_z` = -8.82564, `orientation` = -0.034906, `rotation2` = -0.0174521, `rotation3` = 0.999848 WHERE `guid` = 139155 AND `id` = 1622;	
UPDATE `gameobject` SET `position_x` = 1285.63, `position_y` = 1439.63, `position_z` = 96.9013, `orientation` = 1.46608, `rotation2` = 0.669132, `rotation3` = 0.743144 WHERE `guid` = 139122 AND `id` = 1622;
UPDATE `gameobject` SET `position_x` = 1494.71, `position_y` = 1292.89, `position_z` = 181.399, `orientation` = 2.63544, `rotation2` = 0.968147, `rotation3` = 0.250383 WHERE `guid` = 139100 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` = 140330; -- Duplicate 136544
DELETE FROM `pool_gameobject` WHERE `guid` = 140330;
DELETE FROM `gameobject` WHERE `guid` = 139116; -- Duplicate 136581
DELETE FROM `pool_gameobject` WHERE `guid` = 139116;
UPDATE `gameobject` SET `position_x` = 2302.93, `position_y` = -1491.48, `position_z` = 97.8416, `orientation` = -1.62316, `rotation2` = -0.725376, `rotation3` = 0.688353 WHERE `guid` = 136497 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` = 136508; -- Duplicate 136569
DELETE FROM `pool_gameobject` WHERE `guid` = 136508;
UPDATE `gameobject` SET `position_x` = 2726.56, `position_y` = 212.083, `position_z` = 77.6215, `orientation` = -1.01229, `rotation2` = -0.484809, `rotation3` = 0.87462 WHERE `guid` = 136541 AND `id` = 1622;
UPDATE `gameobject` SET `position_x` = 2786.12, `position_y` = 286.809, `position_z` = 76.6258, `orientation` = -1.55334, `rotation2` = -0.700908, `rotation3` = 0.713252 WHERE `guid` = 136526 AND `id` = 1622;
UPDATE `gameobject` SET `position_x` = 3333.21, `position_y` = -492.065, `position_z` = 154.218, `orientation` = 0.977383, `rotation2` = 0.469471, `rotation3` = 0.882948 WHERE `guid` = 136567 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` = 136566; -- Duplicate 136503
DELETE FROM `pool_gameobject` WHERE `guid` = 136566;
DELETE FROM `gameobject` WHERE `guid` = 137629; -- Duplicate 136576
DELETE FROM `pool_gameobject` WHERE `guid` = 137629;
DELETE FROM `gameobject` WHERE `guid` = 137613; -- Duplicate 136516
DELETE FROM `pool_gameobject` WHERE `guid` = 137613;
DELETE FROM `gameobject` WHERE `guid` = 137614; -- Duplicate 136517
DELETE FROM `pool_gameobject` WHERE `guid` = 137614;
DELETE FROM `gameobject` WHERE `guid` = 137611; -- Duplicate 136504
DELETE FROM `pool_gameobject` WHERE `guid` = 137611;
DELETE FROM `gameobject` WHERE `guid` = 137618; -- Duplicate 136514
DELETE FROM `pool_gameobject` WHERE `guid` = 137618;
DELETE FROM `gameobject` WHERE `guid` = 137616; -- Duplicate 136502
DELETE FROM `pool_gameobject` WHERE `guid` = 137616;
DELETE FROM `gameobject` WHERE `guid` = 132681; -- Duplicate 132680
DELETE FROM `pool_gameobject` WHERE `guid` = 132681;
UPDATE `gameobject` SET `position_x` = 7437.04, `position_y` = -1097.8, `position_z` = 39.3206, `orientation` = -0.401425, `rotation2` = -0.199368, `rotation3` = 0.979925 WHERE `guid` = 137653 AND `id` = 1622;
UPDATE `gameobject` SET `position_x` = -2585.17, `position_y` = -2386.27, `position_z` = 80.2662, `orientation` = 5.32326, `rotation2` = -0.461748, `rotation3` = 0.887011 WHERE `guid` = 136105 AND `id` = 1622;
UPDATE `gameobject` SET `position_x` = -869.361, `position_y` = -2011.93, `position_z` = 34.3577, `orientation` = 1.78023	, `rotation2` = 0.777145, `rotation3` = 0.629321 WHERE `guid` = 130397 AND `id` = 1622;
UPDATE `gameobject` SET `position_x` = 461.656, `position_y` = 202.05, `position_z` = 42.4419, `orientation` = 6.21337, `rotation2` = -0.0348988, `rotation3` = 0.999391 WHERE `guid` = 130036 AND `id` = 1622;
UPDATE `gameobject` SET `position_z` = 3.72754 WHERE `guid` = 139153 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` = 135882; -- Duplicate 135903
DELETE FROM `pool_gameobject` WHERE `guid` = 135882;
DELETE FROM `gameobject` WHERE `guid` = 140586; -- Duplicate 140571
DELETE FROM `pool_gameobject` WHERE `guid` = 140586;
DELETE FROM `gameobject` WHERE `guid` = 136112; -- Duplicate 136141
DELETE FROM `pool_gameobject` WHERE `guid` = 136112;
DELETE FROM `gameobject` WHERE `guid` = 130369; -- Indoors
DELETE FROM `pool_gameobject` WHERE `guid` = 130369;
DELETE FROM `gameobject` WHERE `guid` = 130374; -- Duplicate 130370
DELETE FROM `pool_gameobject` WHERE `guid` = 130374;
DELETE FROM `gameobject` WHERE `guid` = 137820; -- Duplicate 137821
DELETE FROM `pool_gameobject` WHERE `guid` = 137820;
DELETE FROM `gameobject` WHERE `guid` = 130053; -- Indoors 130040
DELETE FROM `pool_gameobject` WHERE `guid` = 130053;
UPDATE `gameobject` SET `position_z` = 36.9678 WHERE `guid` = 130397 AND `id` = 1622;
DELETE FROM `gameobject` WHERE `guid` = 140598; -- Duplicate 140575
DELETE FROM `pool_gameobject` WHERE `guid` = 140598;
DELETE FROM `gameobject` WHERE `guid` IN (138612,140560,140555,140604); -- Duplicate 140572
DELETE FROM `pool_gameobject` WHERE `guid` IN (138612,140560,140555,140604);
DELETE FROM `gameobject` WHERE `guid` = 140257; -- Herb inside tower
DELETE FROM `pool_gameobject` WHERE `guid` = 140257;
UPDATE `gameobject` SET `position_z` = 93.67 WHERE `guid` = 140286; -- Bruiseweed
DELETE FROM `gameobject` WHERE `guid` = 131677; -- Herb inside a house
DELETE FROM `pool_gameobject` WHERE `guid` = 131677;
UPDATE `pool_gameobject` SET `description` = 'Hillsbrad Foothills - Bruiseweed' WHERE `guid` = 10459;
UPDATE `pool_gameobject` SET `description` = 'Wetlands - Bruiseweed' WHERE `guid` = 10472;
DELETE FROM `gameobject` WHERE `guid` = 131686; -- Herb inside a house
DELETE FROM `pool_gameobject` WHERE `guid` = 131686;

DELETE FROM `gameobject` WHERE `guid` IN (87470,63347,63348,63358,65062,5511,63357,63355,87242,63346,87244,63365,85466,86284,65056,87246,87471,87243,65068,86292,65067,86291,87248,87245,86288,65066,65071,65070,87247,86281,86282,86280,87250,86279,87651,87649,86289,86295,87249,63343,63344,86286,87650,86287,63342,63366,87251,87257,86294,63345,87253,63349,63359,87255,63341,87254,86278,65065,86277,87252,65064,86297,6040,3182,2960,2988,3581,2917,2929,2966,2970,2972,3059) AND `id` = 1622;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5511, 1622, 0, 1, -11073.5, -233.118, 18.9209, 2.30383, 0, 0, 0.913545, 0.406738, 45, 90, 100, 1),
(63341, 1622, 1, 1, 1530.68, 1085.39, 163.236, 2.82743, 0, 0, 0.987688, 0.156436, 45, 90, 100, 1),
(63342, 1622, 1, 1, 244.87, 358.562, 69.6436, 3.07177, 0, 0, 0.999391, 0.0349043, 45, 90, 100, 1),
(63343, 1622, 1, 1, -7.82878, -371.534, 1.38996, -3.01941, 0, 0, -0.998134, 0.0610534, 45, 90, 100, 1),
(63344, 1622, 1, 1, -926.696, 1757.49, 65.2846, 1.16937, 0, 0, 0.551937, 0.833886, 45, 90, 100, 1),
(63345, 1622, 1, 1, 759.559, 1359.03, 0.63534, 1.27409, 0, 0, 0.594823, 0.803857, 45, 90, 100, 1),
(63346, 1622, 0, 1, -10189.1, -218.919, 48.528, 1.27409, 0, 0, 0.594823, 0.803857, 45, 90, 100, 1),
(63347, 1622, 0, 1, -11307.3, 1425.89, 94.0528, -1.5708, 0, 0, -0.707108, 0.707106, 45, 90, 100, 1),
(63348, 1622, 0, 1, -11209, 1943.46, 35.8023, -2.35619, 0, 0, -0.923879, 0.382686, 45, 90, 100, 1),
(63349, 1622, 0, 1, -10958.3, -47.7831, 13.9609, -1.91986, 0, 0, -0.819151, 0.573577, 45, 90, 100, 1),
(63355, 1622, 0, 1, -10933.3, -126.225, 30.1699, 2.75761, 0, 0, 0.981626, 0.190814, 45, 90, 100, 1),
(63357, 1622, 0, 1, -11022.4, -1357.99, 51.8596, -0.349065, 0, 0, -0.173648, 0.984808, 45, 90, 100, 1),
(63358, 1622, 0, 1, -11095.6, -944.019, 64.8161, -0.872664, 0, 0, -0.422618, 0.906308, 45, 90, 100, 1),
(63359, 1622, 0, 1, -10776.6, -1383.1, 39.0658, -0.261798, 0, 0, -0.130525, 0.991445, 45, 90, 100, 1),
(63365, 1622, 0, 1, -9175.99, -2392.31, 99.8053, -0.296705, 0, 0, -0.147809, 0.989016, 45, 90, 100, 1),
(63366, 1622, 1, 1, 2688.04, -3632.16, 99.4288, -1.74533, 0, 0, -0.766045, 0.642787, 45, 90, 100, 1),
(65056, 1622, 0, 1, -5476.34, -3939.22, 354.36, 2.33874, 0, 0, 0.920505, 0.390732, 45, 90, 100, 1),
(65062, 1622, 0, 1, -11090.1, -103.738, 16.2993, 2.00713, 0, 0, 0.843392, 0.537299, 45, 90, 100, 1),
(65064, 1622, 530, 1, 6600.1, -7320.83, 54.8369, 2.54818, 0, 0, 0.956305, 0.292372, 45, 90, 100, 1),
(65065, 1622, 1, 1, 2231.59, -1551.59, 93.0479, 0.645772, 0, 0, 0.317305, 0.948324, 45, 90, 100, 1),
(65066, 1622, 0, 1, -1084.49, -1062.97, 53.508, 1.3439, 0, 0, 0.622513, 0.782609, 45, 90, 100, 1),
(65067, 1622, 0, 1, -3280.57, -1743.55, 16.7819, -3.07177, 0, 0, -0.999391, 0.0349043, 45, 90, 100, 1),
(65068, 1622, 0, 1, -3737.84, -931.895, 7.16821, -0.837757, 0, 0, -0.406736, 0.913546, 45, 90, 100, 1),
(65070, 1622, 0, 1, -1032.7, -258.555, 24.9987, -2.00713, 0, 0, -0.843392, 0.537299, 45, 90, 100, 1),
(65071, 1622, 0, 1, -1075.52, -2794.77, 42.197, -2.61799, 0, 0, -0.965925, 0.258821, 45, 90, 100, 1),
(85466, 1622, 0, 1, -9174.59, -3245.7, 102.285, 3.05433, 0, 0, 0.999048, 0.0436174, 45, 90, 100, 1),
(86277, 1622, 1, 1, 2267.7, 1446.69, 288.195, -1.81514, 0, 0, -0.78801, 0.615662, 45, 90, 100, 1),
(86278, 1622, 1, 1, 2207.85, 1457.16, 298.49, -3.00195, 0, 0, -0.997563, 0.0697646, 45, 90, 100, 1),
(86279, 1622, 0, 1, -326.226, -354.014, 80.6472, 2.67035, 0, 0, 0.972369, 0.233447, 45, 90, 100, 1),
(86280, 1622, 0, 1, -465.653, -1409.62, 89.7087, -0.558504, 0, 0, -0.275637, 0.961262, 45, 90, 100, 1),
(86281, 1622, 1, 1, -772.777, -2009.33, 77.1303, 2.21656, 0, 0, 0.894933, 0.446202, 45, 90, 100, 1),
(86282, 1622, 1, 1, -735.582, -2128.8, 66.6035, -2.82743, 0, 0, -0.987688, 0.156436, 45, 90, 100, 1),
(86284, 1622, 1, 1, -6059.98, -3502.83, -51.4185, -2.14675, 0, 0, -0.878816, 0.477161, 45, 90, 100, 1),
(86286, 1622, 0, 1, 87.021, -1039.61, 87.1876, 0.767944, 0, 0, 0.374606, 0.927184, 45, 90, 100, 1),
(86287, 1622, 0, 1, 227.415, 1478.35, 142.382, 2.72271, 0, 0, 0.978147, 0.207914, 45, 90, 100, 1),
(86288, 1622, 1, 1, -1406.87, 2479.42, 89.5196, 1.58825, 0, 0, 0.713251, 0.700909, 45, 90, 100, 1),
(86289, 1622, 0, 1, -212.187, 961.788, 72.1722, -2.18166, 0, 0, -0.88701, 0.461749, 45, 90, 100, 1),
(86291, 1622, 0, 1, -2842.83, -2212.49, 30.8977, 1.8675, 0, 0, 0.803857, 0.594823, 45, 90, 100, 1),
(86292, 1622, 0, 1, -3390.06, -1649.96, 24.1359, -0.977383, 0, 0, -0.469471, 0.882948, 45, 90, 100, 1),
(86294, 1622, 1, 1, 748.818, 1542.47, -16.4499, -1.23918, 0, 0, -0.580701, 0.814117, 45, 90, 100, 1),
(86295, 1622, 1, 1, -150.817, -588.083, 0.593653, -1.02974, 0, 0, -0.492422, 0.870357, 45, 90, 100, 1),
(86297, 1622, 1, 1, 7371.6, -964.426, 32.2543, -0.645772, 0, 0, -0.317305, 0.948324, 45, 90, 100, 1),
(87242, 1622, 0, 1, -10508.1, 1579, 47.3024, 0.750491, 0, 0, 0.366501, 0.930418, 45, 90, 100, 1),
(87243, 1622, 0, 1, -4212.26, -2354.89, 204.552, -1.95477, 0, 0, -0.829038, 0.559192, 45, 90, 100, 1),
(87244, 1622, 0, 1, -10140.3, 1215.31, 36.7652, -2.93214, 0, 0, -0.994521, 0.104535, 45, 90, 100, 1),
(87245, 1622, 0, 1, -1723.8, -1832.74, 81.1296, -2.33874, 0, 0, -0.920505, 0.390732, 45, 90, 100, 1),
(87246, 1622, 0, 1, -5021.06, -3924.3, 324.104, -0.383971, 0, 0, -0.190808, 0.981627, 45, 90, 100, 1),
(87247, 1622, 0, 1, -796.592, -1170.49, 68.9588, -0.785397, 0, 0, -0.382683, 0.92388, 45, 90, 100, 1),
(87248, 1622, 0, 1, -2788.31, -2227.67, 50.4004, -1.41372, 0, 0, -0.649449, 0.760405, 45, 90, 100, 1),
(87249, 1622, 0, 1, -56.5404, 293.34, 53.3134, 1.09956, 0, 0, 0.5225, 0.852639, 45, 90, 100, 1),
(87250, 1622, 1, 1, -391.862, 1841.03, 126.799, 2.70526, 0, 0, 0.976296, 0.21644, 45, 90, 100, 1),
(87251, 1622, 1, 1, 574.627, 1869.33, 0.097795, -2.18166, 0, 0, -0.88701, 0.461749, 45, 90, 100, 1),
(87252, 1622, 1, 1, 3458.32, -129.015, 6.99813, 0.733038, 0, 0, 0.358368, 0.93358, 45, 90, 100, 1),
(87253, 1622, 1, 1, 859.194, 149.806, 36.5573, 0.575957, 0, 0, 0.284015, 0.95882, 45, 90, 100, 1),
(87254, 1622, 1, 1, 1757.32, 846.001, 148.717, 2.25147, 0, 0, 0.902584, 0.430513, 45, 90, 100, 1),
(87255, 1622, 1, 1, 1332.29, 52.235, 13.952, 2.96704, 0, 0, 0.996194, 0.0871655, 45, 90, 100, 1),
(87257, 1622, 1, 1, 681.608, 1882.77, -1.26325, -1.48353, 0, 0, -0.67559, 0.737277, 45, 90, 100, 1),
(87470, 1622, 0, 1, -11415.7, 1939.45, 11.272, -1.67551, 0, 0, -0.743143, 0.669133, 45, 90, 100, 1),
(87471, 1622, 1, 1, -4652.41, -942.781, -45.128, -1.6057, 0, 0, -0.719339, 0.694659, 45, 90, 100, 1),
(87649, 1622, 0, 1, -214.537, -1207.99, 119.931, 1.88495, 0, 0, 0.809015, 0.587788, 45, 90, 100, 1),
(87650, 1622, 0, 1, 166.842, 230.477, 41.6207, -1.09956, 0, 0, -0.5225, 0.852639, 45, 90, 100, 1),
(87651, 1622, 0, 1, -253.461, 1531.9, 79.4661, 0.802851, 0, 0, 0.390731, 0.920505, 45, 90, 100, 1),

(6040, 1622, 1, 1, 1559.65, -2812.19, 181.536, 0, 0, 0, 0.588741, 0.808322, 45, 90, 100, 1),
(3182, 1622, 0, 1, -9109.17, -2640.52, 120.736, 0.0523589, 0, 0, 0.0261765, 0.999657, 45, 90, 100, 1),
(2960, 1622, 0, 1, -4246.6, -2604.91, 84.7081, 2.51327, 0, 0, 0.951056, 0.309017, 45, 90, 100, 1),
(2988, 1622, 1, 1, -4755.94, -1052.56, -55.8106, 2.56563, 0, 0, 0.958819, 0.284016, 45, 90, 100, 1),
(3581, 1622, 0, 1, -3872.2, -2602.69, 52.5481, 2.14675, 0, 0, 0.878817, 0.47716, 45, 90, 100, 1),
(2917, 1622, 0, 1, -98.9951, 244.966, 53.2755, 4.67748, 0, 0, -0.719339, 0.694659, 45, 90, 100, 1),
(2929, 1622, 0, 1, 49.357, 437.539, 41.9076, 5.49779, 0, 0, -0.382683, 0.92388, 45, 90, 100, 1),
(2966, 1622, 0, 1, -495.436, 128.488, 56.6126, 4.92183, 0, 0, -0.62932, 0.777146, 45, 90, 100, 1),
(2970, 1622, 0, 1, -195.068, 955.452, 65.7338, 3.76991, 0, 0, -0.951056, 0.309017, 45, 90, 100, 1),
(2972, 1622, 1, 1, -185.075, -496.055, 9.14996, 3.57793, 0, 0, -0.976295, 0.216442, 45, 90, 100, 1),
(3059, 1622, 0, 1, -3574.38, -2477.01, 72.7115, 1.76278, 0, 0, 0.771625, 0.636078, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (87470,63347,63348,63358,65062,5511,63357,63355,87242,63346,87244,63365,85466,86284,65056,87246,87471,87243,65068,86292,65067,86291,87248,87245,86288,65066,65071,65070,87247,86281,86282,86280,87250,86279,87651,87649,86289,86295,87249,63343,63344,86286,87650,86287,63342,63366,87251,87257,86294,63345,87253,63349,63359,87255,63341,87254,86278,65065,86277,87252,65064,86297,6040,3182,2960,2988,3581,2917,2929,2966,2970,2972,3059);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(86281, 13030, 0, 'Durotar - Bruiseweed'), -- Durotar
(86282, 13030, 0, 'Durotar - Bruiseweed'),

(63344, 13029, 0, 'Desolace - Bruiseweed'), -- Desolace
(86288, 13029, 0, 'Desolace - Bruiseweed'),
(87250, 13029, 0, 'Desolace - Bruiseweed'),

(87249, 13000, 0, 'Alterac Mountains - Bruiseweed'), -- Alterac Mountains
(87650, 13000, 0, 'Alterac Mountains - Bruiseweed'),
(2917, 13000, 0, 'Alterac Mountains - Bruiseweed'),
(2929, 13000, 0, 'Alterac Mountains - Bruiseweed'),

(87254, 13036, 0, 'Bruiseweed zone 406, node 286'), -- Stonetalon Mountains
(86277, 13036, 0, 'Bruiseweed zone 406, node 263'),
(87251, 13036, 0, 'Bruiseweed zone 406, node 284'),
(87253, 13036, 0, 'Bruiseweed zone 406, node 285'),
(86295, 13036, 0, 'Bruiseweed zone 406, node 267'),
(87255, 13036, 0, 'Bruiseweed zone 406, node 287'),
(86278, 13036, 0, 'Bruiseweed zone 406, node 264'),
(86294, 13036, 0, 'Bruiseweed zone 406, node 266'),
(63345, 13036, 0, 'Bruiseweed zone 406, node 255'),
(63343, 13036, 0, 'Bruiseweed zone 406, node 254'),
(63342, 13036, 0, 'Bruiseweed zone 406, node 253'),
(63341, 13036, 0, 'Bruiseweed zone 406, node 252'),
(87257, 13036, 0, 'Bruiseweed zone 406, node 288'),
(2972, 13036, 0, 'Stonetalon Mountains - Bruiseweed'),

(63365, 13014, 0, 'Bruiseweed zone 44, node 186'), -- Redridge Mountains
(85466, 13014, 0, 'Bruiseweed zone 44, node 215'),
(3182, 13014, 0, 'Redridge Mountains - Bruiseweed'),

(87244, 13022, 0, 'Bruiseweed zone 40, node 309'), -- Westfall
(87470, 13022, 0, 'Bruiseweed zone 40, node 313'),
(63348, 13022, 0, 'Bruiseweed zone 40, node 300'),
(63347, 13022, 0, 'Bruiseweed zone 40, node 299'),
(87242, 13022, 0, 'Bruiseweed zone 40, node 308'),

(65056, 13013, 0, 'Bruiseweed zone 38, node 209'), -- Loch Modan
(87246, 13013, 0, 'Bruiseweed zone 38, node 220'),

(86287, 13016, 0, 'Bruiseweed zone 130, node 215'), -- Silverpine Forest
(86289, 13016, 0, 'Bruiseweed zone 130, node 216'),
(87651, 13016, 0, 'Silverpine Forest - Bruiseweed'),
(2970, 13016, 0, 'Silverpine Forest - Bruiseweed'),

(65066, 13011, 0, 'Bruiseweed zone 267, node 240'), -- Hillsbrad Foothills
(86280, 13011, 0, 'Bruiseweed zone 267, node 255'),
(86279, 13011, 0, 'Bruiseweed zone 267, node 254'),
(87247, 13011, 0, 'Bruiseweed zone 267, node 266'),
(65070, 13011, 0, 'Bruiseweed zone 267, node 241'),
(86286, 13011, 0, 'Bruiseweed zone 267, node 256'),
(87649, 13011, 0, 'Hillsbrad Foothills - Bruiseweed'),
(2966, 13011, 0, 'Hillsbrad Foothills - Bruiseweed'),

(65071, 13001, 0, 'Bruiseweed zone 45, node 470'), -- Arathi Highlands
(87245, 13001, 0, 'Bruiseweed zone 45, node 522'),

(63366, 13024, 0, 'Bruiseweed zone 331, node 416'), -- Ashenvale
(65065, 13024, 0, 'Bruiseweed zone 331, node 422'),
(87252, 13024, 0, 'Bruiseweed zone 331, node 440'),
(6040, 13024, 0, 'Ashenvale - Bruiseweed'),

(86297, 13028, 0, 'Bruiseweed zone 148, node 366'), -- Darkshore

(86284, 13040, 0, 'Bruiseweed zone 400, node 112'), -- Thousand Needles
(87471, 13040, 0, 'Bruiseweed zone 400, node 124'),
(2988, 13040, 0, 'Thousand Needles - Bruiseweed'),

(65064, 13010, 0, 'Bruiseweed zone 3433, node 116'), -- Ghostlands

(87248, 13023, 0, 'Bruiseweed zone 11, node 398'), -- Wetlands
(65067, 13023, 0, 'Bruiseweed zone 11, node 343'),
(87243, 13023, 0, 'Bruiseweed zone 11, node 397'),
(65068, 13023, 0, 'Bruiseweed zone 11, node 344'),
(86292, 13023, 0, 'Bruiseweed zone 11, node 383'),
(86291, 13023, 0, 'Bruiseweed zone 11, node 382'),
(2960, 13023, 0, 'Wetlands - Bruiseweed'),
(3581, 13023, 0, 'Wetlands - Bruiseweed'),
(3059, 13023, 0, 'Wetlands - Bruiseweed'),

(63359, 13006, 0, 'Bruiseweed zone 10, node 271'), -- Duskwood
(5511, 13006, 0, 'Bruiseweed zone 10, node 315'),
(63349, 13006, 0, 'Bruiseweed zone 10, node 266'),
(63355, 13006, 0, 'Bruiseweed zone 10, node 267'),
(63357, 13006, 0, 'Bruiseweed zone 10, node 269'),
(65062, 13006, 0, 'Bruiseweed zone 10, node 298'),
(63358, 13006, 0, 'Bruiseweed zone 10, node 270'),
(63346, 13006, 0, 'Bruiseweed zone 10, node 265');

-- Wild Steelbloom 1623
-- https://tbc.wowhead.com/object=1623/wild-steelbloom
DELETE FROM `gameobject` WHERE `guid` IN (140644,138615,138616); -- Duplicate 140620
DELETE FROM `pool_gameobject` WHERE `guid` IN (140644,138615,138616);
DELETE FROM `gameobject` WHERE `guid` = 133860; -- Duplicate 133823
DELETE FROM `pool_gameobject` WHERE `guid` = 133860;
UPDATE `gameobject` SET `position_x` = -14044.4, `position_y` = 78.7977, `position_z` = 22.9999, `orientation` = 2.16421, `rotation2` = 0.882948, `rotation3` = 0.469471 WHERE `guid` = 133816 AND `id` = 1623;
UPDATE `gameobject` SET `position_x` = -13878.5, `position_y` = 557.025, `position_z` = 68.003, `orientation` = -2.91469, `rotation2` = -0.993571, `rotation3` = 0.113208 WHERE `guid` = 133866 AND `id` = 1623;
UPDATE `gameobject` SET `position_x` = -13787.4, `position_y` = 422.404, `position_z` = 89.6641, `orientation` = 1.71042, `rotation2` = 0.754709, `rotation3` = 0.65606 WHERE `guid` = 133859 AND `id` = 1623;
DELETE FROM `gameobject` WHERE `guid` = 133826; -- Duplicate 133819
DELETE FROM `pool_gameobject` WHERE `guid` = 133826;
DELETE FROM `gameobject` WHERE `guid` = 133857; -- Duplicate 133847
DELETE FROM `pool_gameobject` WHERE `guid` = 133857;
DELETE FROM `gameobject` WHERE `guid` = 133856; -- Duplicate 133840
DELETE FROM `pool_gameobject` WHERE `guid` = 133856;
DELETE FROM `gameobject` WHERE `guid` = 133855; -- Duplicate 133849
DELETE FROM `pool_gameobject` WHERE `guid` = 133855;
UPDATE `gameobject` SET `position_x` = -11924.1, `position_y` = 433.183, `position_z` = 49.4204, `orientation` = 2.26892, `rotation2` = 0.906306, `rotation3` = 0.422622 WHERE `guid` = 133854 AND `id` = 1623;
UPDATE `gameobject` SET `position_x` = -11879.8, `position_y` = 49.1928, `position_z` = 22.817, `orientation` = 1.46608, `rotation2` = 0.669132, `rotation3` = 0.743144 WHERE `guid` = 133843 AND `id` = 1623;
DELETE FROM `gameobject` WHERE `guid` IN (133828,133853); -- Duplicate 133815
DELETE FROM `pool_gameobject` WHERE `guid` IN (133828,133853);
DELETE FROM `gameobject` WHERE `guid` IN (133851,133825); -- Duplicate 133834
DELETE FROM `pool_gameobject` WHERE `guid` IN (133851,133825);
UPDATE `gameobject` SET `position_x` = -11467.9, `position_y` = 334.566, `position_z` = 56.6438, `orientation` = -0.314158, `rotation2` = -0.156434, `rotation3` = 0.987688 WHERE `guid` = 133817 AND `id` = 1623;
DELETE FROM `gameobject` WHERE `guid` = 131773; -- Duplicate 131766
DELETE FROM `pool_gameobject` WHERE `guid` = 131773;
DELETE FROM `gameobject` WHERE `guid` = 131774; -- Duplicate 131764
DELETE FROM `pool_gameobject` WHERE `guid` = 131774;
UPDATE `gameobject` SET `position_x` = -10693.7, `position_y` = -601.31, `position_z` = 80.3573, `orientation` = -2.77507, `rotation2` = -0.983255, `rotation3` = 0.182237 WHERE `guid` = 131765 AND `id` = 1623;
DELETE FROM `gameobject` WHERE `guid` = 131777; -- Duplicate 131770
DELETE FROM `pool_gameobject` WHERE `guid` = 131777;
DELETE FROM `gameobject` WHERE `guid` = 131223; -- Duplicate 130945
DELETE FROM `pool_gameobject` WHERE `guid` = 131223;
DELETE FROM `gameobject` WHERE `guid` = 131224; -- Duplicate 130956
DELETE FROM `pool_gameobject` WHERE `guid` = 131224;
DELETE FROM `gameobject` WHERE `guid` = 133487; -- Duplicate 130942
DELETE FROM `pool_gameobject` WHERE `guid` = 133487;
DELETE FROM `gameobject` WHERE `guid` = 133486; -- Duplicate 130954
DELETE FROM `pool_gameobject` WHERE `guid` = 133486;
DELETE FROM `gameobject` WHERE `guid` = 133485; -- Duplicate 130946
DELETE FROM `pool_gameobject` WHERE `guid` = 133485;
UPDATE `gameobject` SET `position_x` = -6568.56, `position_y` = -2539.25, `position_z` = 297.132, `orientation` = -2.79252, `rotation2` = -0.984807, `rotation3` = 0.173652 WHERE `guid` = 130939 AND `id` = 1623;
DELETE FROM `gameobject` WHERE `guid` = 140623; -- Duplicate 140627
DELETE FROM `pool_gameobject` WHERE `guid` = 140623;
DELETE FROM `gameobject` WHERE `guid` = 140643; -- Duplicate 140625
DELETE FROM `pool_gameobject` WHERE `guid` = 140643;
DELETE FROM `gameobject` WHERE `guid` = 140617; -- Duplicate 140624
DELETE FROM `pool_gameobject` WHERE `guid` = 140617;
DELETE FROM `gameobject` WHERE `guid` = 140621; -- Duplicate 140638
DELETE FROM `pool_gameobject` WHERE `guid` = 140621;
DELETE FROM `gameobject` WHERE `guid` = 140408; -- Duplicate 140616
DELETE FROM `pool_gameobject` WHERE `guid` = 140408;
DELETE FROM `gameobject` WHERE `guid` = 140381; -- Duplicate 140633
DELETE FROM `pool_gameobject` WHERE `guid` = 140381;
DELETE FROM `gameobject` WHERE `guid` = 140404; -- Duplicate 140619
DELETE FROM `pool_gameobject` WHERE `guid` = 140404;
DELETE FROM `gameobject` WHERE `guid` = 140395; -- Duplicate 140639
DELETE FROM `pool_gameobject` WHERE `guid` = 140395;
DELETE FROM `gameobject` WHERE `guid` = 140391; -- Duplicate 140402
DELETE FROM `pool_gameobject` WHERE `guid` = 140391;
DELETE FROM `gameobject` WHERE `guid` = 136191; -- Duplicate 136175
DELETE FROM `pool_gameobject` WHERE `guid` = 136191;
DELETE FROM `gameobject` WHERE `guid` = 136187; -- Duplicate 136157
DELETE FROM `pool_gameobject` WHERE `guid` = 136187;
DELETE FROM `gameobject` WHERE `guid` = 136156; -- Duplicate 136162
DELETE FROM `pool_gameobject` WHERE `guid` = 136156;
UPDATE `gameobject` SET `position_x` = -3376.96, `position_y` = -1746.96, `position_z` = 66.1039, `orientation` = -2.79252, `rotation2` = -0.984807, `rotation3` = 0.173652 WHERE `guid` = 136179 AND `id` = 1623;
UPDATE `gameobject` SET `position_x` = -3314.23, `position_y` = -2294.88, `position_z` = 125.741, `orientation` = 1.09956, `rotation2` = 0.5225, `rotation3` = 0.852639 WHERE `guid` = 140396 AND `id` = 1623;
DELETE FROM `gameobject` WHERE `guid` = 140375; -- Duplicate 140385
DELETE FROM `pool_gameobject` WHERE `guid` = 140375;
DELETE FROM `gameobject` WHERE `guid` = 138617; -- Duplicate 137855
DELETE FROM `pool_gameobject` WHERE `guid` = 138617;
DELETE FROM `gameobject` WHERE `guid` = 130429; -- Duplicate 130447
DELETE FROM `pool_gameobject` WHERE `guid` = 130429;
DELETE FROM `gameobject` WHERE `guid` = 130501; -- Duplicate 130458
DELETE FROM `pool_gameobject` WHERE `guid` = 130501;
DELETE FROM `gameobject` WHERE `guid` = 130508; -- Duplicate 130529
DELETE FROM `pool_gameobject` WHERE `guid` = 130508;
UPDATE `gameobject` SET `position_x` = -1815.8, `position_y` = -1959.13, `position_z` = 71.8475, `orientation` = 1.0821, `rotation2` = 0.515036, `rotation3` = 0.857168 WHERE `guid` = 130479 AND `id` = 1623;
DELETE FROM `gameobject` WHERE `guid` = 130428; -- Duplicate 132878
DELETE FROM `pool_gameobject` WHERE `guid` = 130428;
DELETE FROM `gameobject` WHERE `guid` = 130513; -- Duplicate 130473
DELETE FROM `pool_gameobject` WHERE `guid` = 130513;
DELETE FROM `gameobject` WHERE `guid` = 130512; -- Duplicate 130435
DELETE FROM `pool_gameobject` WHERE `guid` = 130512;
DELETE FROM `gameobject` WHERE `guid` = 130511; -- Duplicate 130439
DELETE FROM `pool_gameobject` WHERE `guid` = 130511;
DELETE FROM `gameobject` WHERE `guid` = 140374; -- wrong map
DELETE FROM `pool_gameobject` WHERE `guid` = 140374;
DELETE FROM `gameobject` WHERE `guid` = 132882; -- Duplicate 132872
DELETE FROM `pool_gameobject` WHERE `guid` = 132882;
UPDATE `gameobject` SET `position_x` = -335.789, `position_y` = -1695.81, `position_z` = 107.266, `orientation` = -0.506145, `rotation2` = -0.25038, `rotation3` = 0.968148 WHERE `guid` = 132876 AND `id` = 1623;
DELETE FROM `gameobject` WHERE `guid` = 140366; -- wrong map
DELETE FROM `pool_gameobject` WHERE `guid` = 140366;
DELETE FROM `gameobject` WHERE `guid` = 130070; -- Duplicate 132868
DELETE FROM `pool_gameobject` WHERE `guid` = 130070;
DELETE FROM `gameobject` WHERE `guid` IN (132871,134884,134886); -- Duplicate 132870
DELETE FROM `pool_gameobject` WHERE `guid` IN (132871,134884,134886);
DELETE FROM `gameobject` WHERE `guid` = 130059; -- Duplicate 132877
DELETE FROM `pool_gameobject` WHERE `guid` = 130059;
DELETE FROM `gameobject` WHERE `guid` = 140398; -- Duplicate 139224
DELETE FROM `pool_gameobject` WHERE `guid` = 140398;
DELETE FROM `gameobject` WHERE `guid` = 137845; -- Duplicate 139212
DELETE FROM `pool_gameobject` WHERE `guid` = 137845;
DELETE FROM `gameobject` WHERE `guid` = 134887; -- Duplicate 132873
DELETE FROM `pool_gameobject` WHERE `guid` = 134887;
DELETE FROM `gameobject` WHERE `guid` = 132874; -- Duplicate 130054
DELETE FROM `pool_gameobject` WHERE `guid` = 132874;
DELETE FROM `gameobject` WHERE `guid` = 140400; -- Duplicate 139191
DELETE FROM `pool_gameobject` WHERE `guid` = 140400;
DELETE FROM `gameobject` WHERE `guid` = 140372; -- Duplicate 139209
DELETE FROM `pool_gameobject` WHERE `guid` = 140372;
DELETE FROM `gameobject` WHERE `guid` = 139213; -- Duplicate 137843
DELETE FROM `pool_gameobject` WHERE `guid` = 139213;
DELETE FROM `gameobject` WHERE `guid` = 140390; -- Duplicate 139231
DELETE FROM `pool_gameobject` WHERE `guid` = 140390;
DELETE FROM `gameobject` WHERE `guid` = 140407; -- Duplicate 139187
DELETE FROM `pool_gameobject` WHERE `guid` = 140407;
DELETE FROM `gameobject` WHERE `guid` = 140373; -- Duplicate 139210
DELETE FROM `pool_gameobject` WHERE `guid` = 140373;
DELETE FROM `gameobject` WHERE `guid` = 140387; -- Duplicate 139185
DELETE FROM `pool_gameobject` WHERE `guid` = 140387;
DELETE FROM `gameobject` WHERE `guid` = 137847; -- Duplicate 139244
DELETE FROM `pool_gameobject` WHERE `guid` = 137847;
DELETE FROM `gameobject` WHERE `guid` = 137850; -- Duplicate 139232
DELETE FROM `pool_gameobject` WHERE `guid` = 137850;
UPDATE `gameobject` SET `position_x` = 1291.34, `position_y` = 1352.82, `position_z` = 153.687, `orientation` = 2.53072, `rotation2` = 0.953716, `rotation3` = 0.300709 WHERE `guid` = 139238 AND `id` = 1623;
UPDATE `gameobject` SET `position_x` = 1303.41, `position_y` = 1028.89, `position_z` = 191.713, `orientation` = 1.23918, `rotation2` = 0.580701, `rotation3` = 0.814117 WHERE `guid` = 139220 AND `id` = 1623;
DELETE FROM `gameobject` WHERE `guid` = 140365; -- Duplicate 136591
DELETE FROM `pool_gameobject` WHERE `guid` = 140365;
DELETE FROM `gameobject` WHERE `guid` = 139186; -- Duplicate 136607
DELETE FROM `pool_gameobject` WHERE `guid` = 139186;
DELETE FROM `gameobject` WHERE `guid` = 139252; -- Duplicate 136600
DELETE FROM `pool_gameobject` WHERE `guid` = 139252;
DELETE FROM `gameobject` WHERE `guid` = 138357; -- Duplicate 136596
DELETE FROM `pool_gameobject` WHERE `guid` = 138357;
DELETE FROM `gameobject` WHERE `guid` = 138358; -- Duplicate 136599
DELETE FROM `pool_gameobject` WHERE `guid` = 138358;
DELETE FROM `gameobject` WHERE `guid` = 138356; -- Duplicate 136603
DELETE FROM `pool_gameobject` WHERE `guid` = 138356;
UPDATE `gameobject` SET `position_x` = -13565.8, `position_y` = 14.526, `position_z` = 67.5056, `orientation` = -1.69297, `rotation2` = -0.748956, `rotation3` = 0.66262 WHERE `guid` = 133819 AND `id` = 1623;

DELETE FROM `gameobject` WHERE `guid` IN (86300,63378,63372,86306,87473,86307,87258,63371,63382,63380,63374,63375,63381,63373,65085,86299,87263,86312,86301,65073,65078,65086,65084,65091,63383,65083,65072,65079,65087,65090,87259,65080,87475,87261,87260,63369,86304,63370,87262,86305,86311,86310,86303,6041) AND `id` = 1623;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(63369, 1623, 1, 1, 726.615, 1363.71, 6.86047, 0.925024, 0, 0, 0.446198, 0.894934, 45, 90, 100, 1),
(63370, 1623, 1, 1, 1171.33, 589.286, 164.457, -0.767944, 0, 0, -0.374606, 0.927184, 45, 90, 100, 1),
(63371, 1623, 0, 1, -11467.9, 888.589, 65.7861, 1.23918, 0, 0, 0.580701, 0.814117, 45, 90, 100, 1),
(63372, 1623, 0, 1, -13423.1, -305.521, 33.3337, -2.65289, 0, 0, -0.970294, 0.241927, 45, 90, 100, 1),
(63373, 1623, 0, 1, -6550.07, -3412.83, 283.882, 2.35619, 0, 0, 0.923879, 0.382686, 45, 90, 100, 1),
(63374, 1623, 0, 1, -10588.8, -702.674, 82.2466, 2.14675, 0, 0, 0.878816, 0.477161, 45, 90, 100, 1),
(63375, 1623, 0, 1, -10537.2, -1533.53, 124.838, -2.79252, 0, 0, -0.984807, 0.173652, 45, 90, 100, 1),
(63378, 1623, 0, 1, -13661.5, -56.7511, 46.4593, 0.733038, 0, 0, 0.358368, 0.93358, 45, 90, 100, 1),
(63380, 1623, 0, 1, -11116.7, -1294.3, 69.709, -0.366518, 0, 0, -0.182235, 0.983255, 45, 90, 100, 1),
(63381, 1623, 0, 1, -10264, -692.957, 58.8501, -2.77507, 0, 0, -0.983255, 0.182237, 45, 90, 100, 1),
(63382, 1623, 0, 1, -11458.9, 382.251, 76.9837, 0.453785, 0, 0, 0.224951, 0.97437, 45, 90, 100, 1),
(63383, 1623, 0, 1, -1431.21, -1182.22, 66.7875, 2.37364, 0, 0, 0.927182, 0.37461, 45, 90, 100, 1),
(65072, 1623, 1, 1, -918.797, 839.595, 136.834, 0.820303, 0, 0, 0.398748, 0.91706, 45, 90, 100, 1),
(65073, 1623, 0, 1, -3571.57, -2417.75, 75.7175, 1.25664, 0, 0, 0.587786, 0.809016, 45, 90, 100, 1),
(65078, 1623, 0, 1, -3272.46, -1950.03, 64.9973, 1.29154, 0, 0, 0.601814, 0.798637, 45, 90, 100, 1),
(65079, 1623, 0, 1, -918.291, -2640.81, 91.7362, 0.890117, 0, 0, 0.430511, 0.902586, 45, 90, 100, 1),
(65080, 1623, 0, 1, -649.711, -2131.39, 79.6602, -2.67035, 0, 0, -0.972369, 0.233447, 45, 90, 100, 1),
(65083, 1623, 0, 1, -1131.15, -1300.78, 82.1511, 0.418879, 0, 0, 0.207912, 0.978148, 45, 90, 100, 1),
(65084, 1623, 0, 1, -1956.44, -3362.97, 110.945, 2.23402, 0, 0, 0.898794, 0.438372, 45, 90, 100, 1),
(65085, 1623, 0, 1, -6456.49, -2473.7, 324.2, 2.00713, 0, 0, 0.843392, 0.537299, 45, 90, 100, 1),
(65086, 1623, 0, 1, -3205.36, -3143.97, 70.3773, -1.09956, 0, 0, -0.5225, 0.852639, 45, 90, 100, 1),
(65087, 1623, 0, 1, -880.179, -2722.09, 70.7413, -1.64061, 0, 0, -0.731354, 0.681998, 45, 90, 100, 1),
(65090, 1623, 0, 1, -755.853, -2290.78, 62.4308, 0, 0, 0, 0, 1, 45, 90, 100, 1),
(65091, 1623, 0, 1, -1946.28, -2989.11, 72.2344, -0.506145, 0, 0, -0.25038, 0.968148, 45, 90, 100, 1),
(86299, 1623, 1, 1, -5395.51, -1994.2, -44.7428, -0.471238, 0, 0, -0.233445, 0.97237, 45, 90, 100, 1),
(86300, 1623, 0, 1, -13744.2, 514.59, 62.0928, 1.95477, 0, 0, 0.829038, 0.559192, 45, 90, 100, 1),
(86301, 1623, 1, 1, -4638.27, -1335.26, -29.6609, -1.93732, 0, 0, -0.824127, 0.566404, 45, 90, 100, 1),
(86303, 1623, 1, 1, 3556.59, -1425.08, 192.132, -2.80997, 0, 0, -0.986285, 0.165053, 45, 90, 100, 1),
(86304, 1623, 1, 1, 1055.79, 1644.41, 17.822, -1.88495, 0, 0, -0.809015, 0.587788, 45, 90, 100, 1),
(86305, 1623, 1, 1, 2198.55, 1377.93, 285.3, 1.22173, 0, 0, 0.573576, 0.819152, 45, 90, 100, 1),
(86306, 1623, 0, 1, -13398.4, 551.578, 43.4367, -0.610864, 0, 0, -0.300705, 0.953717, 45, 90, 100, 1),
(86307, 1623, 0, 1, -11842.5, -717.021, 42.0561, -0.314158, 0, 0, -0.156434, 0.987688, 45, 90, 100, 1),
(86310, 1623, 1, 1, 2622.2, 1778.37, 337.445, 1.98967, 0, 0, 0.838669, 0.544641, 45, 90, 100, 1),
(86311, 1623, 1, 1, 2236.75, 1352.26, 313.724, -2.19912, 0, 0, -0.891008, 0.453988, 45, 90, 100, 1),
(86312, 1623, 1, 1, -5111.26, -1633.1, -27.9921, 2.53072, 0, 0, 0.953716, 0.300709, 45, 90, 100, 1),
(87258, 1623, 0, 1, -11513.2, 507.041, 82.1076, 1.27409, 0, 0, 0.594823, 0.803857, 45, 90, 100, 1),
(87259, 1623, 0, 1, -749.624, -980.945, 54.2288, -0.575957, 0, 0, -0.284015, 0.95882, 45, 90, 100, 1),
(87260, 1623, 1, 1, 471.506, 1698.63, 32.7717, 0.750491, 0, 0, 0.366501, 0.930418, 45, 90, 100, 1),
(87261, 1623, 1, 1, 98.1569, -686.456, 22.3247, -2.32129, 0, 0, -0.91706, 0.398748, 45, 90, 100, 1),
(87262, 1623, 1, 1, 1588.58, 1417.84, 197.676, 2.44346, 0, 0, 0.939692, 0.342021, 45, 90, 100, 1),
(87263, 1623, 1, 1, -5156.76, -1226.03, 49.1134, 1.58825, 0, 0, 0.713251, 0.700909, 45, 90, 100, 1),
(87473, 1623, 0, 1, -13391.8, 294.645, 52.2135, -0.104719, 0, 0, -0.0523356, 0.99863, 45, 90, 100, 1),
(87475, 1623, 0, 1, 87.1907, -1252.31, 82.3047, 0.698132, 0, 0, 0.34202, 0.939693, 45, 90, 100, 1),
(6041, 1623, 1, 1, 1599.65, -3088.06, 89.474, 0, 0, 0, 0.588741, 0.808322, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (86300,63378,63372,86306,87473,86307,87258,63371,63382,63380,63374,63375,63381,63373,65085,86299,87263,86312,86301,65073,65078,65086,65084,65091,63383,65083,65072,65079,65087,65090,87259,65080,87475,87261,87260,63369,86304,63370,87262,86305,86311,86310,86303,6041);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(63369, 13036, 0, 'Wild Steelbloom zone 406, node 256'), -- Stonetalon Mountains
(86304, 13036, 0, 'Wild Steelbloom zone 406, node 268'),
(86310, 13036, 0, 'Wild Steelbloom zone 406, node 270'),
(86311, 13036, 0, 'Wild Steelbloom zone 406, node 271'),
(86305, 13036, 0, 'Wild Steelbloom zone 406, node 269'),
(87260, 13036, 0, 'Wild Steelbloom zone 406, node 289'),
(87261, 13036, 0, 'Wild Steelbloom zone 406, node 290'),
(87262, 13036, 0, 'Wild Steelbloom zone 406, node 291'),
(63370, 13036, 0, 'Wild Steelbloom zone 406, node 257'),

(63383, 13011, 0, 'Wild Steelbloom zone 267, node 236'), -- Hillsbrad Foothills
(87475, 13011, 0, 'Wild Steelbloom zone 267, node 271'),
(87259, 13011, 0, 'Wild Steelbloom zone 267, node 267'),
(65083, 13011, 0, 'Wild Steelbloom zone 267, node 242'),

(65091, 13001, 0, 'Wild Steelbloom zone 45, node 483'), -- Arathi Highlands
(65090, 13001, 0, 'Wild Steelbloom zone 45, node 482'),
(65087, 13001, 0, 'Wild Steelbloom zone 45, node 479'),
(65084, 13001, 0, 'Wild Steelbloom zone 45, node 478'),
(65080, 13001, 0, 'Wild Steelbloom zone 45, node 475'),
(65079, 13001, 0, 'Wild Steelbloom zone 45, node 474'),

(86303, 13024, 0, 'Wild Steelbloom zone 331, node 430'), -- Ashenvale
(6041, 13024, 0, 'Ashenvale - Wild Steelbloom'),

(86312, 13040, 0, 'Wild Steelbloom zone 400, node 117'), -- Thousand Needles
(86301, 13040, 0, 'Wild Steelbloom zone 400, node 116'),
(86299, 13040, 0, 'Wild Steelbloom zone 400, node 115'),
(87263, 13040, 0, 'Wild Steelbloom zone 400, node 122'),

(63382, 13017, 0, 'Wild Steelbloom zone 33, node 617'), -- Stranglethorn Vale
(87258, 13017, 0, 'Wild Steelbloom zone 33, node 705'),
(63372, 13017, 0, 'Wild Steelbloom zone 33, node 614'),
(63371, 13017, 0, 'Wild Steelbloom zone 33, node 613'),
(63378, 13017, 0, 'Wild Steelbloom zone 33, node 615'),
(86306, 13017, 0, 'Wild Steelbloom zone 33, node 665'),
(86307, 13017, 0, 'Wild Steelbloom zone 33, node 666'),
(86300, 13017, 0, 'Wild Steelbloom zone 33, node 663'),
(87473, 13017, 0, 'Stranglethorn Vale - Wild Steelbloom'),

(65086, 13023, 0, 'Wild Steelbloom zone 11, node 348'), -- Wetlands
(65078, 13023, 0, 'Wild Steelbloom zone 11, node 347'),
(65073, 13023, 0, 'Wild Steelbloom zone 11, node 346'),

(63374, 13006, 0, 'Wild Steelbloom zone 10, node 274'), -- Duskwood
(63375, 13006, 0, 'Wild Steelbloom zone 10, node 275'),
(63381, 13006, 0, 'Wild Steelbloom zone 10, node 279'),
(63380, 13006, 0, 'Wild Steelbloom zone 10, node 278'),

(63373, 13002, 0, 'Wild Steelbloom zone 3, node 162'), -- Badlands
(65085, 13002, 0, 'Wild Steelbloom zone 3, node 165'),

(65072, 13029, 0, 'Desolace - Wild Steelbloom'); -- Desolace

-- Kingsblood 1624
-- https://tbc.wowhead.com/object=1624/kingsblood
DELETE FROM `gameobject` WHERE `guid` = 140675; -- Duplicate 140667
DELETE FROM `pool_gameobject` WHERE `guid` = 140675;
DELETE FROM `gameobject` WHERE `guid` IN (138619,138618,140676); -- Duplicate 140664
DELETE FROM `pool_gameobject` WHERE `guid` IN (138619,138618,140676);
UPDATE `gameobject` SET `position_x` = -14251.7, `position_y` = 167.011, `position_z` = 8.42443, `orientation` = -0.523598, `rotation2` = -0.258819, `rotation3` = 0.965926 WHERE `guid` = 133887 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 133867; -- Duplicate 133897
DELETE FROM `pool_gameobject` WHERE `guid` = 133867;
DELETE FROM `gameobject` WHERE `guid` = 133935; -- Duplicate 133902
DELETE FROM `pool_gameobject` WHERE `guid` = 133935;
UPDATE `gameobject` SET `position_x` = -13677.6, `position_y` = 160.625, `position_z` = 19.4787, `orientation` = 2.37364, `rotation2` = 0.927182, `rotation3` = 0.37461 WHERE `guid` = 133936 AND `id` = 1624;
UPDATE `gameobject` SET `position_x` = -13621.2, `position_y` = -66.93, `position_z` = 35.9177, `orientation` = 2.60053, `rotation2` = 0.963629, `rotation3` = 0.267244 WHERE `guid` = 133925 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 133875; -- Duplicate 133911
DELETE FROM `pool_gameobject` WHERE `guid` = 133875;
UPDATE `gameobject` SET `position_x` = -12831.6, `position_y` = -396.684, `position_z` = 12.988, `orientation` = 0.418879, `rotation2` = 0.207912, `rotation3` = 0.978148 WHERE `guid` = 133933 AND `id` = 1624;
UPDATE `gameobject` SET `position_x` = -12784.7, `position_y` = -836.069, `position_z` = 73.1916, `orientation` = -0.715585, `rotation2` = -0.350207, `rotation3` = 0.936672 WHERE `guid` = 133927 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 133907; -- Duplicate 133913
DELETE FROM `pool_gameobject` WHERE `guid` = 133907;
UPDATE `gameobject` SET `position_x` = -12647.3, `position_y` = -690.193, `position_z` = 44.1882, `orientation` = -0.401425, `rotation2` = -0.199368, `rotation3` = 0.979925 WHERE `guid` = 133878 AND `id` = 1624;
UPDATE `gameobject` SET `position_x` = -12520.6, `position_y` = -684.107, `position_z` = 39.6179, `orientation` = -2.28638, `rotation2` = -0.909961, `rotation3` = 0.414694 WHERE `guid` = 133937 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 133892; -- Duplicate 133937
DELETE FROM `pool_gameobject` WHERE `guid` = 133892;
DELETE FROM `gameobject` WHERE `guid` = 133909; -- Duplicate 133914
DELETE FROM `pool_gameobject` WHERE `guid` = 133909;
UPDATE `gameobject` SET `position_x` = -12278.7, `position_y` = 42.6145, `position_z` = 17.8215, `orientation` = 1.06465, `rotation2` = 0.507538, `rotation3` = 0.861629 WHERE `guid` = 133929 AND `id` = 1624;
UPDATE `gameobject` SET `position_x` = -12267.8, `position_y` = -422.817, `position_z` = 17.3265, `orientation` = -2.23402, `rotation2` = -0.898794, `rotation3` = 0.438372 WHERE `guid` = 133876 AND `id` = 1624;
UPDATE `gameobject` SET `position_x` = -12135.6, `position_y` = -598.053, `position_z` = 14.6153, `orientation` = 1.81514, `rotation2` = 0.78801, `rotation3` = 0.615662 WHERE `guid` = 133871 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 133915; -- Duplicate 133880
DELETE FROM `pool_gameobject` WHERE `guid` = 133915;
DELETE FROM `gameobject` WHERE `guid` = 133917; -- Duplicate 133879
DELETE FROM `pool_gameobject` WHERE `guid` = 133917;
UPDATE `gameobject` SET `position_x` = -11865, `position_y` = 232.543, `position_z` = 16.3644, `orientation` = -2.23402, `rotation2` = -0.898794, `rotation3` = 0.438372 WHERE `guid` = 133932 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 133873; -- Duplicate 133920
DELETE FROM `pool_gameobject` WHERE `guid` = 133873;
DELETE FROM `gameobject` WHERE `guid` = 133930; -- Duplicate 133885
DELETE FROM `pool_gameobject` WHERE `guid` = 133930;
UPDATE `gameobject` SET `position_x` = -11053.7, `position_y` = -822.482, `position_z` = 58.9241, `orientation` = 1.0821, `rotation2` = 0.515036, `rotation3` = 0.857168 WHERE `guid` = 131778 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 131793; -- Duplicate 131780
DELETE FROM `pool_gameobject` WHERE `guid` = 131793;
UPDATE `gameobject` SET `position_x` = -11011.1, `position_y` = -949.232, `position_z` = 65.1183, `orientation` = -2.1293, `rotation2` = -0.874619, `rotation3` = 0.48481 WHERE `guid` = 131791 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` IN (131796,131792); -- Duplicate 131789
DELETE FROM `pool_gameobject` WHERE `guid` IN (131796,131792);
UPDATE `gameobject` SET `position_x` = -10582.2, `position_y` = 72.5619, `position_z` = 40.2747, `orientation` = -0.366518, `rotation2` = -0.182235, `rotation3` = 0.983255 WHERE `guid` = 131785 AND `id` = 1624;
UPDATE `gameobject` SET `position_x` = -10248.4, `position_y` = -885.075, `position_z` = 36.1875, `orientation` = -0.820303, `rotation2` = -0.398748, `rotation3` = 0.91706 WHERE `guid` = 131788 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 131790; -- Duplicate 131799
DELETE FROM `pool_gameobject` WHERE `guid` = 131790;
UPDATE `gameobject` SET `position_x` = -10226.6, `position_y` = -3333.69, `position_z` = 22.4027, `orientation` = 2.87979, `rotation2` = 0.991445, `rotation3` = 0.130528 WHERE `guid` = 134540 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 130967; -- Duplicate 130975
DELETE FROM `pool_gameobject` WHERE `guid` = 130967;
UPDATE `gameobject` SET `position_x` = -6788.19, `position_y` = -3120.44, `position_z` = 240.652, `orientation` = 1.90241, `rotation2` = 0.814116, `rotation3` = 0.580702 WHERE `guid` = 130963 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 140662; -- Duplicate 140658
DELETE FROM `pool_gameobject` WHERE `guid` = 140662;
DELETE FROM `gameobject` WHERE `guid` = 140659; -- Duplicate 140669
DELETE FROM `pool_gameobject` WHERE `guid` = 140659;
DELETE FROM `gameobject` WHERE `guid` = 130973; -- Duplicate 130959
DELETE FROM `pool_gameobject` WHERE `guid` = 130973;
UPDATE `gameobject` SET `position_x` = -6085.17, `position_y` = -3316.07, `position_z` = 256.427, `orientation` = -2.70526, `rotation2` = -0.976296, `rotation3` = 0.21644 WHERE `guid` = 130964 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 133269; -- Duplicate 130964
DELETE FROM `pool_gameobject` WHERE `guid` = 133269;
UPDATE `gameobject` SET `position_x` = -6023.53, `position_y` = -3794.54, `position_z` = -58.75, `orientation` = -0.645772, `rotation2` = -0.317305, `rotation3` = 0.948324 WHERE `guid` = 140668 AND `id` = 1624;
UPDATE `gameobject` SET `position_x` = -5518.8, `position_y` = -2254.82, `position_z` = -59.8433, `orientation` = 0.349065, `rotation2` = 0.173648, `rotation3` = 0.984808 WHERE `guid` = 140660 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 140665; -- Duplicate 140660
DELETE FROM `pool_gameobject` WHERE `guid` = 140665;
DELETE FROM `gameobject` WHERE `guid` = 140423; -- Duplicate 140670
DELETE FROM `pool_gameobject` WHERE `guid` = 140423;
UPDATE `gameobject` SET `position_x` = -4111.47, `position_y` = -1954.08, `position_z` = 91.9037, `orientation` = -0.95993, `rotation2` = -0.461748, `rotation3` = 0.887011 WHERE `guid` = 140454 AND `id` = 1624;
UPDATE `gameobject` SET `position_x` = -3985.61, `position_y` = -2900.04, `position_z` = 12.3601, `orientation` = -1.06465, `rotation2` = -0.507538, `rotation3` = 0.861629 WHERE `guid` = 136208 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 140421; -- Duplicate 140453
DELETE FROM `pool_gameobject` WHERE `guid` = 140421;
UPDATE `gameobject` SET `position_x` = -3718.66, `position_y` = -2255.68, `position_z` = 92.7322, `orientation` = -2.07694, `rotation2` = -0.861629, `rotation3` = 0.507539 WHERE `guid` = 140437 AND `id` = 1624;
UPDATE `gameobject` SET `map` = 0 WHERE `guid` = 138255 AND `id` = 1624;
UPDATE `pool_gameobject` SET `pool_entry` = 13023, `description` = 'Wetlands - Kingsblood' WHERE `guid` = 138255;
DELETE FROM `gameobject` WHERE `guid` = 140419; -- Duplicate 140431
DELETE FROM `pool_gameobject` WHERE `guid` = 140419;
UPDATE `gameobject` SET `position_x` = -3443.87, `position_y` = -2107.17, `position_z` = 93.4592, `orientation` = -1.88495, `rotation2` = -0.809015, `rotation3` = 0.587788 WHERE `guid` = 140425 AND `id` = 1624;
UPDATE `gameobject` SET `position_x` = -3277.74, `position_y` = -2155.41, `position_z` = 93.6227, `orientation` = 2.40855, `rotation2` = 0.93358, `rotation3` = 0.35837 WHERE `guid` = 140435 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 136193; -- Duplicate 136219
DELETE FROM `pool_gameobject` WHERE `guid` = 136193;
UPDATE `gameobject` SET `position_x` = -3135, `position_y` = -2235.9, `position_z` = 91.9488, `orientation` = 0.523598, `rotation2` = 0.258819, `rotation3` = 0.965926 WHERE `guid` = 140452 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 136220; -- Duplicate 136213
DELETE FROM `pool_gameobject` WHERE `guid` = 136220;
DELETE FROM `gameobject` WHERE `guid` = 136222; -- Duplicate 136206
DELETE FROM `pool_gameobject` WHERE `guid` = 136222;
UPDATE `gameobject` SET `position_x` = -3054.71, `position_y` = -2842.83, `position_z` = 25.5066, `orientation` = -2.49582, `rotation2` = -0.948324, `rotation3` = 0.317305 WHERE `guid` = 136207 AND `id` = 1624;
UPDATE `gameobject` SET `position_x` = -3053.71, `position_y` = -1153.92, `position_z` = 9.15203, `orientation` = 3.03684, `rotation2` = 0.998629, `rotation3` = 0.0523524 WHERE `guid` = 136203 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 140433; -- Duplicate 140416
DELETE FROM `pool_gameobject` WHERE `guid` = 140433;
UPDATE `gameobject` SET `position_x` = -2098.81, `position_y` = -1931.56, `position_z` = 96.9205, `orientation` = -1.13446, `rotation2` = -0.537298, `rotation3` = 0.843393 WHERE `guid` = 140426 AND `id` = 1624;
UPDATE `gameobject` SET `position_x` = -1753.49, `position_y` = -3076.76, `position_z` = 27.4752, `orientation` = -2.35619, `rotation2` = -0.923879, `rotation3` = 0.382686 WHERE `guid` = 130555 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 140446; -- Duplicate 130550 (map)
DELETE FROM `pool_gameobject` WHERE `guid` = 140446;
UPDATE `gameobject` SET `position_x` = -1453.69, `position_y` = -2851.24, `position_z` = 40.1021, `orientation` = -1.0472, `rotation2` = -0.500001, `rotation3` = 0.866025 WHERE `guid` = 130556 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 140424; -- Duplicate 130568 (map)
DELETE FROM `pool_gameobject` WHERE `guid` = 140424;
DELETE FROM `gameobject` WHERE `guid` = 130561; -- Duplicate 130563
DELETE FROM `pool_gameobject` WHERE `guid` = 130561;
DELETE FROM `gameobject` WHERE `guid` IN (130548,130570); -- Duplicate 130554
DELETE FROM `pool_gameobject` WHERE `guid` IN (130548,130570);
DELETE FROM `gameobject` WHERE `guid` = 130547; -- Duplicate 130553
DELETE FROM `pool_gameobject` WHERE `guid` = 130547;
UPDATE `gameobject` SET `position_x` = -1264.63, `position_y` = -2279.34, `position_z` = 57.1287, `orientation` = -1.11701, `rotation2` = -0.529919, `rotation3` = 0.848048 WHERE `guid` = 130540 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 130546; -- Duplicate 130545
DELETE FROM `pool_gameobject` WHERE `guid` = 130546;
UPDATE `gameobject` SET `position_x` = -1090.85, `position_y` = -2608.37, `position_z` = 48.9337, `orientation` = 0.331611, `rotation2` = 0.165047, `rotation3` = 0.986286 WHERE `guid` = 130572 AND `id` = 1624;
UPDATE `gameobject` SET `position_x` = -1053.47, `position_y` = -1913.41, `position_z` = 62.1433, `orientation` = -1.309, `rotation2` = -0.608763, `rotation3` = 0.793352 WHERE `guid` = 130549 AND `id` = 1624;
UPDATE `gameobject` SET `position_x` = -982.269, `position_y` = 1717.79, `position_z` = 61.5822, `orientation` = 1.36136, `rotation2` = 0.629322, `rotation3` = 0.777145 WHERE `guid` = 137858 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 130564; -- Duplicate 130559
DELETE FROM `pool_gameobject` WHERE `guid` = 130564;
UPDATE `gameobject` SET `position_x` = -799.672, `position_y` = -387.842, `position_z` = 17.5608, `orientation` = 1.39626, `rotation2` = 0.642786, `rotation3` = 0.766046 WHERE `guid` = 132908 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 132903; -- Duplicate 132918
DELETE FROM `pool_gameobject` WHERE `guid` = 132903;
DELETE FROM `gameobject` WHERE `guid` = 130557; -- Duplicate 132907
DELETE FROM `pool_gameobject` WHERE `guid` = 130557;
DELETE FROM `gameobject` WHERE `guid` = 132915; -- Duplicate 132924
DELETE FROM `pool_gameobject` WHERE `guid` = 132915;
UPDATE `gameobject` SET `position_x` = -689.932, `position_y` = -1151.69, `position_z` = 58.9228, `orientation` = -0.95993, `rotation2` = -0.461748, `rotation3` = 0.887011 WHERE `guid` = 132906 AND `id` = 1624;
UPDATE `gameobject` SET `position_x` = -551.877, `position_y` = 213.812, `position_z` = 69.3841, `orientation` = 3.10665, `rotation2` = 0.999847, `rotation3` = 0.0174704 WHERE `guid` = 132888 AND `id` = 1624;
UPDATE `gameobject` SET `position_x` = -548.032, `position_y` = -2306.91, `position_z` = 34.6002, `orientation` = 2.63544, `rotation2` = 0.968147, `rotation3` = 0.250383 WHERE `guid` = 140439 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 132886; -- Duplicate 132890
DELETE FROM `pool_gameobject` WHERE `guid` = 132886;
DELETE FROM `gameobject` WHERE `guid` = 130078; -- Duplicate 132889
DELETE FROM `pool_gameobject` WHERE `guid` = 130078;
DELETE FROM `gameobject` WHERE `guid` = 130082; -- Duplicate 132894
DELETE FROM `pool_gameobject` WHERE `guid` = 130082;
DELETE FROM `gameobject` WHERE `guid` = 140449; -- Duplicate 132905 (map)
DELETE FROM `pool_gameobject` WHERE `guid` = 140449;
UPDATE `gameobject` SET `position_x` = -242.454, `position_y` = 82.7269, `position_z` = 64.4676, `orientation` = -2.3911, `rotation2` = -0.930417, `rotation3` = 0.366502 WHERE `guid` = 132891 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` IN (130080,130086); -- Duplicate 132891
DELETE FROM `pool_gameobject` WHERE `guid` IN (130080,130086);
DELETE FROM `gameobject` WHERE `guid` IN (132885,130087,130084); -- Duplicate 132899
DELETE FROM `pool_gameobject` WHERE `guid` IN (132885,130087,130084);
DELETE FROM `gameobject` WHERE `guid` = 132912; -- Duplicate 130076
DELETE FROM `pool_gameobject` WHERE `guid` = 132912;
UPDATE `gameobject` SET `position_x` = -128.47, `position_y` = -603.544, `position_z` = 161.321, `orientation` = -2.77507, `rotation2` = -0.983255, `rotation3` = 0.182237 WHERE `guid` = 130081 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 132892; -- Duplicate 130081
DELETE FROM `pool_gameobject` WHERE `guid` = 132892;
DELETE FROM `gameobject` WHERE `guid` = 132921; -- Duplicate 130088
DELETE FROM `pool_gameobject` WHERE `guid` = 132921;
UPDATE `gameobject` SET `position_x` = -47.9175, `position_y` = 116.629, `position_z` = 58.5075, `orientation` = -2.96704, `rotation2` = -0.996194, `rotation3` = 0.0871655 WHERE `guid` = 130077 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 132901; -- Duplicate 130077
DELETE FROM `pool_gameobject` WHERE `guid` = 132901;
UPDATE `gameobject` SET `position_x` = -28.7197, `position_y` = -721.868, `position_z` = -7.72236, `orientation` = -0.069812, `rotation2` = -0.0348989, `rotation3` = 0.999391 WHERE `guid` = 139291 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 140440; -- Duplicate 139291
DELETE FROM `pool_gameobject` WHERE `guid` = 140440;
DELETE FROM `gameobject` WHERE `guid` = 132922; -- Duplicate 130089
DELETE FROM `pool_gameobject` WHERE `guid` = 132922;
DELETE FROM `gameobject` WHERE `guid` = 132920; -- Duplicate 130075
DELETE FROM `pool_gameobject` WHERE `guid` = 132920;
DELETE FROM `gameobject` WHERE `guid` = 132904; -- Duplicate 130083
DELETE FROM `pool_gameobject` WHERE `guid` = 132904;
DELETE FROM `gameobject` WHERE `guid` = 132923; -- Duplicate 130074
DELETE FROM `pool_gameobject` WHERE `guid` = 132923;
UPDATE `gameobject` SET `position_x` = 682.086, `position_y` = 1628, `position_z` = -22.2291, `orientation` = 1.0472, `rotation2` = 0.500001, `rotation3` = 0.866025 WHERE `guid` = 139290 AND `id` = 1624;
UPDATE `gameobject` SET `position_x` = 733.958, `position_y` = 1687.51, `position_z` = -30.4287, `orientation` = 2.91469, `rotation2` = 0.993571, `rotation3` = 0.113208 WHERE `guid` = 139287 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 139288; -- Duplicate 139294
DELETE FROM `pool_gameobject` WHERE `guid` = 139288;
UPDATE `gameobject` SET `position_x` = 2408.39, `position_y` = 1116.03, `position_z` = 311.155, `orientation` = 2.14675, `rotation2` = 0.878816, `rotation3` = 0.477161 WHERE `guid` = 139295 AND `id` = 1624;
UPDATE `gameobject` SET `position_x` = 2918.35, `position_y` = -3461.84, `position_z` = 120.189, `orientation` = -1.37881, `rotation2` = -0.636078, `rotation3` = 0.771625 WHERE `guid` = 136619 AND `id` = 1624;
DELETE FROM `gameobject` WHERE `guid` = 138359; -- Duplicate 136622
DELETE FROM `pool_gameobject` WHERE `guid` = 138359;
UPDATE `gameobject` SET `position_x` = 3492.29, `position_y` = 34.0095, `position_z` = 2.15879, `orientation` = -0.506145, `rotation2` = -0.25038, `rotation3` = 0.968148 WHERE `guid` = 136626 AND `id` = 1624;
UPDATE `pool_gameobject` SET `description` = 'Hillsbrad Foothills - Kingsblood' WHERE `guid` = 10457;

DELETE FROM `gameobject` WHERE `guid` IN (86328,63402,63396,86338,65112,87479,86330,86331,63391,87264,63404,63390,86327,63401,65102,65103,87652,63394,65113,63395,63398,63389,63388,87271,86315,87280,86313,63403,86342,86316,86332,87480,86324,87268,63406,87270,87281,65093,87269,86322,86341,86317,65111,87272,86343,63386,65107,87655,87653,86344,63408,86326,87274,86326,87274,65114,87654,65095,86336,86323,86318,86319,87275,87276,87481,63385,63407,86345,65110,65115,86325,87478,87273,87477,87279,87277,86347,65101,86334,87278,65099) AND `id` = 1624;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(63385, 1624, 1, 1, 932.678, 1562.38, -14.8017, 1.85005, 0, 0, 0.798636, 0.601815, 45, 90, 100, 1),
(63386, 1624, 1, 1, -1155.72, 2345.41, 91.3485, -1.22173, 0, 0, -0.573576, 0.819152, 45, 90, 100, 1),
(63388, 1624, 0, 1, -6943.05, -3411.7, 242.2, 2.58308, 0, 0, 0.961261, 0.275641, 45, 90, 100, 1),
(63389, 1624, 0, 1, -6948.58, -2952.54, 241.874, -2.96704, 0, 0, -0.996194, 0.0871655, 45, 90, 100, 1),
(63390, 1624, 0, 1, -10628, -49.8506, 33.4616, 2.37364, 0, 0, 0.927182, 0.37461, 45, 90, 100, 1),
(63391, 1624, 0, 1, -11093.2, -866.02, 61.4684, 1.09956, 0, 0, 0.5225, 0.852639, 45, 90, 100, 1),
(63394, 1624, 0, 1, -10257.9, -801.824, 44.3731, -2.96704, 0, 0, -0.996194, 0.0871655, 45, 90, 100, 1),
(63395, 1624, 0, 1, -10098.9, -3126.8, 23.5246, 0.541051, 0, 0, 0.267238, 0.963631, 45, 90, 100, 1),
(63396, 1624, 0, 1, -13038.2, 338.762, 20.095, -1.8675, 0, 0, -0.803856, 0.594824, 45, 90, 100, 1),
(63398, 1624, 0, 1, -9809.94, -3791.36, 23.7875, -2.86233, 0, 0, -0.990267, 0.139178, 45, 90, 100, 1),
(63401, 1624, 0, 1, -10570.3, -3629.32, 23.0765, -0.488691, 0, 0, -0.241921, 0.970296, 45, 90, 100, 1),
(63402, 1624, 0, 1, -13428.5, 669.158, 9.00704, -1.74533, 0, 0, -0.766045, 0.642787, 45, 90, 100, 1),
(63403, 1624, 1, 1, -4961.62, -3774.7, 43.3541, -0.139624, 0, 0, -0.0697553, 0.997564, 45, 90, 100, 1),
(63404, 1624, 0, 1, -10710.7, 442.859, 41.0738, -2.87979, 0, 0, -0.991445, 0.130528, 45, 90, 100, 1),
(63406, 1624, 1, 1, -3445.04, -3119.92, 39.4034, 0.296705, 0, 0, 0.147809, 0.989016, 45, 90, 100, 1),
(63407, 1624, 0, 1, 1029.87, -311.97, 54.6971, -2.46091, 0, 0, -0.942641, 0.333809, 45, 90, 100, 1),
(63408, 1624, 0, 1, -437.022, -322.164, 53.886, 0.925024, 0, 0, 0.446198, 0.894934, 45, 90, 100, 1),
(65093, 1624, 0, 1, -3175.66, -952.048, 9.59336, 0.383971, 0, 0, 0.190808, 0.981627, 45, 90, 100, 1),
(65095, 1624, 0, 1, 55.5641, -50.3888, 99.1906, -1.23918, 0, 0, -0.580701, 0.814117, 45, 90, 100, 1),
(65099, 1624, 1, 1, 3914.34, 705.673, 7.32464, -0.296705, 0, 0, -0.147809, 0.989016, 45, 90, 100, 1),
(65101, 1624, 1, 1, 3160.27, 468.336, 2.55126, 0.296705, 0, 0, 0.147809, 0.989016, 45, 90, 100, 1),
(65102, 1624, 0, 1, -10522.5, -27.1364, 44.637, 2.1293, 0, 0, 0.874619, 0.48481, 45, 90, 100, 1),
(65103, 1624, 0, 1, -10340.4, -28.8124, 45.1232, 0.296705, 0, 0, 0.147809, 0.989016, 45, 90, 100, 1),
(65107, 1624, 0, 1, -1009.44, -1058.56, 43.1947, 0.575957, 0, 0, 0.284015, 0.95882, 45, 90, 100, 1),
(65110, 1624, 1, 1, 2289.08, -1279.43, 77.6134, 2.51327, 0, 0, 0.951056, 0.309019, 45, 90, 100, 1),
(65111, 1624, 0, 1, -1546.05, -2410.19, 76.3865, -1.16937, 0, 0, -0.551937, 0.833886, 45, 90, 100, 1),
(65112, 1624, 0, 1, -12200.6, 139.857, 18.0954, 3.01941, 0, 0, 0.998134, 0.0610534, 45, 90, 100, 1),
(65113, 1624, 0, 1, -10229.6, -33.3671, 32.1215, -0.331611, 0, 0, -0.165047, 0.986286, 45, 90, 100, 1),
(65114, 1624, 1, 1, -196.438, 1116.59, 87.2241, 2.05949, 0, 0, 0.857168, 0.515037, 45, 90, 100, 1),
(65115, 1624, 1, 1, 2343.85, -1231.43, 86.3554, 2.96704, 0, 0, 0.996194, 0.0871655, 45, 90, 100, 1),
(86313, 1624, 1, 1, -5022.25, -2211.85, -54.0231, 2.80997, 0, 0, 0.986285, 0.165053, 45, 90, 100, 1),
(86315, 1624, 1, 1, -5361.9, -3237.28, -43.1254, -0.174532, 0, 0, -0.0871553, 0.996195, 45, 90, 100, 1),
(86316, 1624, 1, 1, -3783.09, -2183.34, 93.6768, 1.48353, 0, 0, 0.67559, 0.737277, 45, 90, 100, 1),
(86317, 1624, 1, 1, -1646.38, 2346.47, 88.3708, 0.418879, 0, 0, 0.207912, 0.978148, 45, 90, 100, 1),
(86318, 1624, 1, 1, 718.89, 1533.58, -22.989, 0.925024, 0, 0, 0.446198, 0.894934, 45, 90, 100, 1),
(86319, 1624, 0, 1, -1081.28, -3111.25, 48.0621, -1.22173, 0, 0, -0.573576, 0.819152, 45, 90, 100, 1),
(86322, 1624, 1, 1, -2381.14, -2293.68, 91.6667, 2.25147, 0, 0, 0.902584, 0.430513, 45, 90, 100, 1),
(86323, 1624, 0, 1, 311.558, -826.1, 136.664, 0.750491, 0, 0, 0.366501, 0.930418, 45, 90, 100, 1),
(86324, 1624, 1, 1, -3564.58, -3356.95, 39.8302, -1.65806, 0, 0, -0.737276, 0.675591, 45, 90, 100, 1),
(86325, 1624, 1, 1, 2370.62, 1459.79, 277.939, 1.0472, 0, 0, 0.500001, 0.866025, 45, 90, 100, 1),
(86326, 1624, 1, 1, -366.88, 1950.63, 111.301, 0.174532, 0, 0, 0.0871553, 0.996195, 45, 90, 100, 1),
(86327, 1624, 0, 1, -10598.5, -952.971, 53.2791, -2.11185, 0, 0, -0.870356, 0.492423, 45, 90, 100, 1),
(86328, 1624, 0, 1, -14667.3, -362.328, 8.27847, 0.820303, 0, 0, 0.398748, 0.91706, 45, 90, 100, 1),
(86330, 1624, 0, 1, -11893.3, -679.452, 16.3839, -2.21656, 0, 0, -0.894933, 0.446202, 45, 90, 100, 1),
(86331, 1624, 0, 1, -11865, -549.116, 14.4704, 2.75761, 0, 0, 0.981626, 0.190814, 45, 90, 100, 1),
(86332, 1624, 1, 1, -3661.01, -3444, 37.2395, -1.98967, 0, 0, -0.838669, 0.544641, 45, 90, 100, 1),
(86334, 1624, 1, 1, 3219.43, 479.263, -1.44214, -1.36136, 0, 0, -0.629322, 0.777145, 45, 90, 100, 1),
(86336, 1624, 0, 1, 192.174, -601.28, 126.948, 2.9845, 0, 0, 0.996917, 0.0784656, 45, 90, 100, 1),
(86338, 1624, 0, 1, -12735.8, -793.108, 61.9712, -2.75761, 0, 0, -0.981626, 0.190814, 45, 90, 100, 1),
(86341, 1624, 0, 1, -1686.45, -2779.43, 46.748, 2.72271, 0, 0, 0.978147, 0.207914, 45, 90, 100, 1),
(86342, 1624, 1, 1, -4628.61, -3736.39, 40.7212, -0.383971, 0, 0, -0.190808, 0.981627, 45, 90, 100, 1),
(86343, 1624, 0, 1, -1193.48, -3173.99, 42.3659, 0.401425, 0, 0, 0.199368, 0.979925, 45, 90, 100, 1),
(86344, 1624, 0, 1, -823.311, -1380.93, 66.2461, -2.77507, 0, 0, -0.983255, 0.182237, 45, 90, 100, 1),
(86345, 1624, 1, 1, 1364.02, 880.856, 155.208, 2.96704, 0, 0, 0.996194, 0.0871655, 45, 90, 100, 1),
(86347, 1624, 1, 1, 3152.67, -1811.98, 175.534, -0.069812, 0, 0, -0.0348989, 0.999391, 45, 90, 100, 1),
(87264, 1624, 0, 1, -10799.6, -666.59, 40.8933, 0.174532, 0, 0, 0.0871553, 0.996195, 45, 90, 100, 1),
(87268, 1624, 0, 1, -3484.03, -2444.53, 47.452, 1.02974, 0, 0, 0.492422, 0.870357, 45, 90, 100, 1),
(87269, 1624, 0, 1, -2824.47, -1857.98, 10.5835, -2.75761, 0, 0, -0.981626, 0.190814, 45, 90, 100, 1),
(87270, 1624, 0, 1, -3357.61, -2803.33, 17.5986, 2.67035, 0, 0, 0.972369, 0.233447, 45, 90, 100, 1),
(87271, 1624, 0, 1, -6718.24, -3248.64, 240.744, 1.41372, 0, 0, 0.649449, 0.760405, 45, 90, 100, 1),
(87272, 1624, 1, 1, -1228.87, 2200.36, 91.8946, -1.16937, 0, 0, -0.551937, 0.833886, 45, 90, 100, 1),
(87273, 1624, 1, 1, 2583.93, -1248.1, 145.21, -2.05949, 0, 0, -0.857168, 0.515037, 45, 90, 100, 1),
(87274, 1624, 1, 1, -333.244, 2384.28, 37.4758, -1.69297, 0, 0, -0.748956, 0.66262, 45, 90, 100, 1),
(87275, 1624, 1, 1, 732.953, 1809.55, -13.8562, -0.383971, 0, 0, -0.190808, 0.981627, 45, 90, 100, 1),
(87276, 1624, 1, 1, 795.638, 1849.68, -4.61363, 1.8675, 0, 0, 0.803856, 0.594824, 45, 90, 100, 1),
(87277, 1624, 1, 1, 3151.14, -545.542, 147.4, -2.67035, 0, 0, -0.972369, 0.233447, 45, 90, 100, 1),
(87278, 1624, 1, 1, 3548.91, -144.068, 0.071218, -2.426, 0, 0, -0.936671, 0.350211, 45, 90, 100, 1),
(87279, 1624, 1, 1, 2852.96, -785.46, 156.364, -1.46608, 0, 0, -0.669132, 0.743144, 45, 90, 100, 1),
(87280, 1624, 1, 1, -5052.68, -1181.93, -56.282, -0.645772, 0, 0, -0.317305, 0.948324, 45, 90, 100, 1),
(87281, 1624, 1, 1, -3254.12, -1900.28, 96.5674, 1.41372, 0, 0, 0.649449, 0.760405, 45, 90, 100, 1),
(87477, 1624, 1, 1, 2720.5, -2319.67, 202.394, -0.855211, 0, 0, -0.414693, 0.909961, 45, 90, 100, 1),
(87478, 1624, 1, 1, 2552.5, -1973.38, 143.599, 2.33874, 0, 0, 0.920505, 0.390732, 45, 90, 100, 1),
(87479, 1624, 0, 1, -12081.5, -745.165, 12.3231, 2.54818, 0, 0, 0.956305, 0.292372, 45, 90, 100, 1),
(87480, 1624, 1, 1, -3619.13, -2838.4, 36.2724, 2.74016, 0, 0, 0.979924, 0.199371, 45, 90, 100, 1),
(87481, 1624, 1, 1, 853.732, 1600.79, -24.0878, 2.9845, 0, 0, 0.996917, 0.0784656, 45, 90, 100, 1),
(87652, 1624, 0, 1, -10327.3, -3494.82, 22.9893, 2.68781, 0, 0, 0.97437, 0.22495, 45, 90, 100, 1),
(87653, 1624, 0, 1, -894.02, -85.7392, 23.4342, 3.00195, 0, 0, 0.997563, 0.0697646, 45, 90, 100, 1),
(87654, 1624, 0, 1, -60.0194, -194.283, 131.666, -0.383971, 0, 0, -0.190808, 0.981627, 45, 90, 100, 1),
(87655, 1624, 0, 1, -957.093, -11.6541, 29.5612, -1.51844, 0, 0, -0.688356, 0.725373, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (86328,63402,63396,86338,65112,87479,86330,86331,63391,87264,63404,63390,86327,63401,65102,65103,87652,63394,65113,63395,63398,63389,63388,87271,86315,87280,86313,63403,86342,86316,86332,87480,86324,87268,63406,87270,87281,65093,87269,86322,86341,86317,65111,87272,86343,63386,65107,87655,87653,86344,63408,86326,87274,86326,87274,65114,87654,65095,86336,86323,86318,86319,87275,87276,87481,63385,63407,86345,65110,65115,86325,87478,87273,87477,87279,87277,86347,65101,86334,87278,65099);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(63385, 13036, 0, 'Kingsblood zone 406, node 258'), -- Stonetalon Mountains
(86318, 13036, 0, 'Kingsblood zone 406, node 272'),
(87276, 13036, 0, 'Kingsblood zone 406, node 293'),
(86325, 13036, 0, 'Kingsblood zone 406, node 273'),
(86345, 13036, 0, 'Kingsblood zone 406, node 275'),
(87481, 13036, 0, 'Kingsblood zone 406, node 294'),
(87275, 13036, 0, 'Kingsblood zone 406, node 292'),

(86344, 13011, 0, 'Kingsblood zone 267, node 258'), -- Hillsbrad Foothills
(63408, 13011, 0, 'Kingsblood zone 267, node 237'),
(65107, 13011, 0, 'Kingsblood zone 267, node 243'),
(87653, 13011, 0, 'Hillsbrad Foothills - Kingsblood'),
(87655, 13011, 0, 'Hillsbrad Foothills - Kingsblood'),

(65111, 13001, 0, 'Kingsblood zone 45, node 490'), -- Arathi Highlands
(86319, 13001, 0, 'Kingsblood zone 45, node 512'),
(86343, 13001, 0, 'Kingsblood zone 45, node 515'),
(86341, 13001, 0, 'Kingsblood zone 45, node 514'),

(65115, 13024, 0, 'Kingsblood zone 331, node 426'), -- Ashenvale
(86347, 13024, 0, 'Kingsblood zone 331, node 433'),
(65110, 13024, 0, 'Kingsblood zone 331, node 425'),
(87277, 13024, 0, 'Kingsblood zone 331, node 442'),
(87273, 13024, 0, 'Kingsblood zone 331, node 441'),
(86334, 13024, 0, 'Kingsblood zone 331, node 431'),
(65101, 13024, 0, 'Kingsblood zone 331, node 424'),
(87478, 13024, 0, 'Kingsblood zone 331, node 454'),
(87477, 13024, 0, 'Kingsblood zone 331, node 453'),
(87279, 13024, 0, 'Kingsblood zone 331, node 444'),
(87278, 13024, 0, 'Kingsblood zone 331, node 443'),
(65099, 13024, 0, 'Kingsblood zone 331, node 423'),

(87280, 13040, 0, 'Kingsblood zone 400, node 123'), -- Thousand Needles
(86313, 13040, 0, 'Kingsblood zone 400, node 118'),
(86315, 13040, 0, 'Kingsblood zone 400, node 120'),

(86338, 13017, 0, 'Kingsblood zone 33, node 673'), -- Stranglethorn Vale
(86331, 13017, 0, 'Kingsblood zone 33, node 672'),
(86330, 13017, 0, 'Kingsblood zone 33, node 671'),
(86328, 13017, 0, 'Kingsblood zone 33, node 669'),
(63402, 13017, 0, 'Kingsblood zone 33, node 620'),
(65112, 13017, 0, 'Kingsblood zone 33, node 655'),
(63396, 13017, 0, 'Kingsblood zone 33, node 618'),
(87479, 13017, 0, 'Stranglethorn Vale - Kingsblood'),

(86342, 13031, 0, 'Kingsblood zone 15, node 60'), -- Dustwallow Marsh
(63403, 13031, 0, 'Kingsblood zone 15, node 46'),
(86332, 13031, 0, 'Kingsblood zone 15, node 59'),
(86324, 13031, 0, 'Kingsblood zone 15, node 58'),
(63406, 13031, 0, 'Kingsblood zone 15, node 47'),
(87480, 13031, 0, 'Dustwallow Marsh - Kingsblood'),

(87269, 13023, 0, 'Kingsblood zone 11, node 401'), -- Wetlands
(65093, 13023, 0, 'Kingsblood zone 11, node 350'),
(87268, 13023, 0, 'Kingsblood zone 11, node 400'),
(87270, 13023, 0, 'Kingsblood zone 11, node 402'),

(63404, 13006, 0, 'Kingsblood zone 10, node 285'), -- Duskwood
(65102, 13006, 0, 'Kingsblood zone 10, node 300'),
(65103, 13006, 0, 'Kingsblood zone 10, node 301'),
(87264, 13006, 0, 'Kingsblood zone 10, node 313'),
(63394, 13006, 0, 'Kingsblood zone 10, node 284'),
(65113, 13006, 0, 'Kingsblood zone 10, node 302'),
(63391, 13006, 0, 'Kingsblood zone 10, node 281'),
(63390, 13006, 0, 'Kingsblood zone 10, node 280'),
(86327, 13006, 0, 'Kingsblood zone 10, node 309'),

(63398, 13018, 0, 'Kingsblood zone 8, node 365'), -- Swamp of Sorrows
(63395, 13018, 0, 'Kingsblood zone 8, node 364'),
(63401, 13018, 0, 'Kingsblood zone 8, node 366'),
(87652, 13018, 0, 'Swamp of Sorrows - Kingsblood'),

(63389, 13002, 0, 'Kingsblood zone 3, node 164'), -- Badlands
(63388, 13002, 0, 'Kingsblood zone 3, node 163'),
(87271, 13002, 0, 'Kingsblood zone 3, node 166'),

(63386, 13029, 0, 'Desolace - Kingsblood'), -- Desolace
(65114, 13029, 0, 'Desolace - Kingsblood'),
(86317, 13029, 0, 'Desolace - Kingsblood'),
(86326, 13029, 0, 'Desolace - Kingsblood'),
(87272, 13029, 0, 'Desolace - Kingsblood'),
(87274, 13029, 0, 'Desolace - Kingsblood'),

(63407, 13000, 0, 'Alterac Mountains - Kingsblood'), -- Alterac Mountains
(65095, 13000, 0, 'Alterac Mountains - Kingsblood'),
(86323, 13000, 0, 'Alterac Mountains - Kingsblood'),
(86336, 13000, 0, 'Alterac Mountains - Kingsblood'),
(87654, 13000, 0, 'Alterac Mountains - Kingsblood'),

(86316, 13039, 0, 'The Barrens - Kingsblood'), -- The Barrens
(86322, 13039, 0, 'The Barrens - Kingsblood'),
(87281, 13039, 0, 'The Barrens - Kingsblood');

-- Grave Moss 1628
-- https://tbc.wowhead.com/object=1628/grave-moss
UPDATE `gameobject` SET `position_x` = -11038.5, `position_y` = -1320, `position_z` = 53.6162, `orientation` = 0.680677, `rotation2` = 0.333806, `rotation3` = 0.942642 WHERE `guid` = 131843 AND `id` = 1628;
UPDATE `gameobject` SET `position_x` = -4010.3, `position_y` = -1761.14, `position_z` = 96.7407, `orientation` = 0.785397, `rotation2` = 0.382683, `rotation3` = 0.92388 WHERE `guid` = 140458 AND `id` = 1628;
UPDATE `gameobject` SET `position_x` = -2887.61, `position_y` = -2191.98, `position_z` = 25.5817, `orientation` = -2.84488, `rotation2` = -0.989016, `rotation3` = 0.147811 WHERE `guid` = 136241 AND `id` = 1628;
UPDATE `gameobject` SET `position_x` = -2874.28, `position_y` = -2189.41, `position_z` = 24.3568, `orientation` = 1.309, `rotation2` = 0.608763, `rotation3` = 0.793352 WHERE `guid` = 136242 AND `id` = 1628;
UPDATE `gameobject` SET `position_x` = -2863.84, `position_y` = -2169.54, `position_z` = 23.2902, `orientation` = -2.28638, `rotation2` = -0.909961, `rotation3` = 0.414694 WHERE `guid` = 136240 AND `id` = 1628;
UPDATE `gameobject` SET `position_x` = -1243.92, `position_y` = 1856.61, `position_z` = 50.1459, `orientation` = -0.331611, `rotation2` = -0.165047, `rotation3` = 0.986286 WHERE `guid` = 137884 AND `id` = 1628;
DELETE FROM `gameobject` WHERE `guid` = 131827; -- Duplicate 131810
DELETE FROM `pool_gameobject` WHERE `guid` = 131827;
DELETE FROM `gameobject` WHERE `guid` = 131832; -- Duplicate 131808
DELETE FROM `pool_gameobject` WHERE `guid` = 131832;
DELETE FROM `gameobject` WHERE `guid` = 131830; -- Duplicate 131811
DELETE FROM `pool_gameobject` WHERE `guid` = 131830;
DELETE FROM `gameobject` WHERE `guid` = 131809; -- Duplicate 131829
DELETE FROM `pool_gameobject` WHERE `guid` = 131809;
DELETE FROM `gameobject` WHERE `guid` = 136231; -- Duplicate 136241
DELETE FROM `pool_gameobject` WHERE `guid` = 136231;
DELETE FROM `gameobject` WHERE `guid` = 136229; -- Duplicate 136240
DELETE FROM `pool_gameobject` WHERE `guid` = 136229;
DELETE FROM `gameobject` WHERE `guid` = 136238; -- Duplicate 136239
DELETE FROM `pool_gameobject` WHERE `guid` = 136238;

DELETE FROM `gameobject` WHERE `guid` IN (63412,63415,87044,87482,65116,86348,87282,87483,86350,63410,63419) AND `id` = 1628;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(63410, 1628, 1, 1, -1158.39, 2254.16, 92.2791, 2.56563, 0, 0, 0.958819, 0.284017, 45, 90, 100, 1),
(63412, 1628, 0, 1, -10971.9, -1321.31, 52.3461, 2.51327, 0, 0, 0.951056, 0.309019, 45, 90, 100, 1),
(63415, 1628, 0, 1, -10539.9, 442.972, 38.0475, 1.22173, 0, 0, 0.573576, 0.819152, 45, 90, 100, 1),
(63419, 1628, 0, 1, 1602.21, -3239.35, 66.8794, -1.81514, 0, 0, -0.78801, 0.615662, 45, 90, 100, 1),
(65116, 1628, 0, 1, -2815.28, -2228.88, -0.927708, 2.9845, 0, 0, 0.996917, 0.0784656, 45, 90, 100, 1),
(86348, 1628, 1, 1, -1825.41, 2496.97, 63.0604, 2.16421, 0, 0, 0.882948, 0.469471, 45, 90, 100, 1),
(86350, 1628, 1, 1, -1251.02, 1900.7, 50.1459, -1.5708, 0, 0, -0.707108, 0.707106, 45, 90, 100, 1),
(87044, 1628, 0, 1, -10344.9, 227.065, 32.6557, -2.1293, 0, 0, -0.874619, 0.48481, 45, 90, 100, 1),
(87282, 1628, 1, 1, -1599.25, 1376.42, 61.2987, 2.19912, 0, 0, 0.891008, 0.453988, 45, 90, 100, 1),
(87482, 1628, 0, 1, -2851.66, -2234.82, 16.3133, -0.418879, 0, 0, -0.207911, 0.978148, 45, 90, 100, 1),
(87483, 1628, 1, 1, -1402.27, 1831.51, 50.1442, -2.09439, 0, 0, -0.866024, 0.500002, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (63412,63415,87044,87482,65116,86348,87282,87483,86350,63410,63419);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(63419, 13007, 0, 'Grave Moss zone 139, node 354'),	-- Eastern Plaguelands

(65116, 13023, 0, 'Grave Moss zone 11, node 352'), -- Wetlands
(87482, 13023, 0, 'Wetlands - Grave Moss'),

(63412, 13006, 0, 'Grave Moss zone 10, node 287'), -- Duskwood
(63415, 13006, 0, 'Grave Moss zone 10, node 288'),
(87044, 13006, 0, 'Grave Moss zone 10, node 312'),

(63410, 13029, 0, 'Desolace - Grave Moss'), -- Desolace
(86348, 13029, 0, 'Desolace - Grave Moss'),
(86350, 13029, 0, 'Desolace - Grave Moss'),
(87282, 13029, 0, 'Desolace - Grave Moss'),
(87483, 13029, 0, 'Desolace - Grave Moss');

-- Liferoot 2041
-- https://tbc.wowhead.com/object=2041/liferoot
DELETE FROM `gameobject` WHERE `guid` = 133978; -- Duplicate 134000
DELETE FROM `pool_gameobject` WHERE `guid` = 133978;
UPDATE `gameobject` SET `position_x` = -14082.3, `position_y` = 324.559, `position_z` = 23.9637, `orientation` = -0.785397, `rotation2` = -0.382683, `rotation3` = 0.92388 WHERE `guid` = 133940 AND `id` = 2041;
DELETE FROM `gameobject` WHERE `guid` = 133952; -- Duplicate 133968
DELETE FROM `pool_gameobject` WHERE `guid` = 133952;
DELETE FROM `gameobject` WHERE `guid` = 133949; -- Duplicate 133997
DELETE FROM `pool_gameobject` WHERE `guid` = 133949;
DELETE FROM `gameobject` WHERE `guid` = 133956; -- Duplicate 133960
DELETE FROM `pool_gameobject` WHERE `guid` = 133956;
UPDATE `gameobject` SET `position_x` = -13096.3, `position_y` = 476.264, `position_z` = 13.8901, `orientation` = 0.383971, `rotation2` = 0.190808, `rotation3` = 0.981627 WHERE `guid` = 133945 AND `id` = 2041;
UPDATE `gameobject` SET `position_x` = -12709.6, `position_y` = 130.92, `position_z` = 9.78783, `orientation` = 2.61799, `rotation2` = 0.965925, `rotation3` = 0.258821 WHERE `guid` = 133947 AND `id` = 2041;
DELETE FROM `gameobject` WHERE `guid` = 133979; -- Duplicate 133995
DELETE FROM `pool_gameobject` WHERE `guid` = 133979;
DELETE FROM `gameobject` WHERE `guid` = 133958; -- Duplicate 133994
DELETE FROM `pool_gameobject` WHERE `guid` = 133958;
UPDATE `gameobject` SET `position_x` = -12506.1, `position_y` = -291.3, `position_z` = 16.6848, `orientation` = -0.349066, `rotation2` = -0.173648, `rotation3` = 0.984808 WHERE `guid` = 133961 AND `id` = 2041;
DELETE FROM `gameobject` WHERE `guid` = 133974; -- Duplicate 133961
DELETE FROM `pool_gameobject` WHERE `guid` = 133974;
DELETE FROM `gameobject` WHERE `guid` = 133953; -- Duplicate 133986
DELETE FROM `pool_gameobject` WHERE `guid` = 133953;
UPDATE `gameobject` SET `position_x` = -12331.2, `position_y` = -259.94, `position_z` = 15.5823, `orientation` = -0.261798, `rotation2` = -0.130525, `rotation3` = 0.991445 WHERE `guid` = 133967 AND `id` = 2041;
DELETE FROM `gameobject` WHERE `guid` = 134003; -- Duplicate 133983
DELETE FROM `pool_gameobject` WHERE `guid` = 134003;
DELETE FROM `gameobject` WHERE `guid` = 133989; -- Duplicate 133962
DELETE FROM `pool_gameobject` WHERE `guid` = 133989;
DELETE FROM `gameobject` WHERE `guid` = 134005; -- Duplicate 133988
DELETE FROM `pool_gameobject` WHERE `guid` = 134005;
DELETE FROM `gameobject` WHERE `guid` = 133991; -- Duplicate 133987
DELETE FROM `pool_gameobject` WHERE `guid` = 133991;
UPDATE `gameobject` SET `position_x` = -12001.2, `position_y` = -349.352, `position_z` = 11.4441, `orientation` = -0.872664, `rotation2` = -0.422618, `rotation3` = 0.906308 WHERE `guid` = 133957 AND `id` = 2041;
DELETE FROM `gameobject` WHERE `guid` = 133976; -- Duplicate 134004
DELETE FROM `pool_gameobject` WHERE `guid` = 133976;
UPDATE `gameobject` SET `position_x` = -11686.5, `position_y` = -336.717, `position_z` = 10.0955, `orientation` = -2.23402, `rotation2` = -0.898794, `rotation3` = 0.438372 WHERE `guid` = 133943 AND `id` = 2041;
DELETE FROM `gameobject` WHERE `guid` = 134006; -- Duplicate 133980
DELETE FROM `pool_gameobject` WHERE `guid` = 134006;
UPDATE `gameobject` SET `position_x` = -11569.2, `position_y` = 56.2796, `position_z` = 14.1259, `orientation` = 1.8675, `rotation2` = 0.803856, `rotation3` = 0.594824 WHERE `guid` = 133948 AND `id` = 2041;
UPDATE `gameobject` SET `position_x` = -11508.6, `position_y` = 192.419, `position_z` = 13.1684, `orientation` = 0.418879, `rotation2` = 0.207912, `rotation3` = 0.978148 WHERE `guid` = 133946 AND `id` = 2041;
UPDATE `gameobject` SET `position_x` = -11466.1, `position_y` = 258.309, `position_z` = 14.5832, `orientation` = 1.41372, `rotation2` = 0.649449, `rotation3` = 0.760405 WHERE `guid` = 133941 AND `id` = 2041;
UPDATE `gameobject` SET `position_x` = -4510.99, `position_y` = 2089.55, `position_z` = 1.78086, `orientation` = -1.91986, `rotation2` = -0.819151, `rotation3` = 0.573577 WHERE `guid` = 138631 AND `id` = 2041;
UPDATE `gameobject` SET `position_x` = -3421.35, `position_y` = -2679.81, `position_z` = 7.33954, `orientation` = -1.69297, `rotation2` = -0.748956, `rotation3` = 0.66262 WHERE `guid` = 136298 AND `id` = 2041;
UPDATE `gameobject` SET `map` = 0 WHERE `guid` = 138259 AND `id` = 2041;
UPDATE `pool_gameobject` SET `pool_entry` = 13023, `description` = 'Wetlands - Liferoot' WHERE `guid` = 138259;
DELETE FROM `gameobject` WHERE `guid` = 140460; -- Duplicate 138259
DELETE FROM `pool_gameobject` WHERE `guid` = 140460;
DELETE FROM `gameobject` WHERE `guid` = 136258; -- Duplicate 136261
DELETE FROM `pool_gameobject` WHERE `guid` = 136258;
UPDATE `gameobject` SET `position_x` = -3102.63, `position_y` = -1299.36, `position_z` = 7.84485, `orientation` = -2.61799, `rotation2` = -0.965925, `rotation3` = 0.258821 WHERE `guid` = 10464 AND `id` = 2041;
UPDATE `pool_gameobject` SET `description` = 'Wetlands - Liferoot' WHERE `guid` = 10464;
UPDATE `gameobject` SET `position_x` = -3054.84, `position_y` = -2058.81, `position_z` = 6.85599, `orientation` = 1.51844, `rotation2` = 0.688356, `rotation3` = 0.725373 WHERE `guid` = 136266 AND `id` = 2041;
UPDATE `gameobject` SET `position_x` = -3007.08, `position_y` = -1028.28, `position_z` = 7.5412, `orientation` = 2.94959, `rotation2` = 0.995395, `rotation3` = 0.0958539 WHERE `guid` = 136243 AND `id` = 2041;
UPDATE `gameobject` SET `position_x` = -2085.59, `position_y` = -2513.78, `position_z` = 73.9728, `orientation` = -1.97222, `rotation2` = -0.833885, `rotation3` = 0.551938 WHERE `guid` = 130593 AND `id` = 2041;
DELETE FROM `gameobject` WHERE `guid` = 140461; -- Duplicate 130631 (map)
DELETE FROM `pool_gameobject` WHERE `guid` = 140461;
DELETE FROM `gameobject` WHERE `guid` = 130632; -- Duplicate 130627
DELETE FROM `pool_gameobject` WHERE `guid` = 130632;
DELETE FROM `gameobject` WHERE `guid` = 130608; -- Duplicate 130601
DELETE FROM `pool_gameobject` WHERE `guid` = 130608;
DELETE FROM `gameobject` WHERE `guid` = 130630; -- Duplicate 130612
DELETE FROM `pool_gameobject` WHERE `guid` = 130630;
UPDATE `gameobject` SET `position_x` = -1648.98, `position_y` = 1002.89, `position_z` = 88.4992, `orientation` = -2.1293, `rotation2` = -0.874619, `rotation3` = 0.48481 WHERE `guid` = 137890 AND `id` = 2041;
UPDATE `gameobject` SET `position_x` = -1400.24, `position_y` = -1704.12, `position_z` = 48.3906, `orientation` = 1.78023, `rotation2` = 0.777144, `rotation3` = 0.629323 WHERE `guid` = 130634 AND `id` = 2041;
DELETE FROM `gameobject` WHERE `guid` = 130624; -- Duplicate 130633
DELETE FROM `pool_gameobject` WHERE `guid` = 130624;
UPDATE `gameobject` SET `position_x` = -619.827, `position_y` = -746.11, `position_z` = 7.60275, `orientation` = -0.610864, `rotation2` = -0.300705, `rotation3` = 0.953717 WHERE `guid` = 132926 AND `id` = 2041;
UPDATE `gameobject` SET `position_x` = -541.978, `position_y` = -906.142, `position_z` = 31.5448, `orientation` = -2.93214, `rotation2` = -0.994521, `rotation3` = 0.104535 WHERE `guid` = 132945 AND `id` = 2041;
DELETE FROM `gameobject` WHERE `guid` = 132947; -- Duplicate 132941
DELETE FROM `pool_gameobject` WHERE `guid` = 132947;
DELETE FROM `gameobject` WHERE `guid` = 132930; -- Duplicate 132933
DELETE FROM `pool_gameobject` WHERE `guid` = 132930;
DELETE FROM `gameobject` WHERE `guid` = 132927; -- Duplicate 130149
DELETE FROM `pool_gameobject` WHERE `guid` = 132927;
DELETE FROM `gameobject` WHERE `guid` IN (130151,132928,130112); -- Duplicate 132936
DELETE FROM `pool_gameobject` WHERE `guid` IN (130151,132928,130112);
UPDATE `gameobject` SET `position_x` = -226.602, `position_y` = -1092.11, `position_z` = 38.0874, `orientation` = -3.07177, `rotation2` = -0.999391, `rotation3` = 0.0349043 WHERE `guid` = 132943 AND `id` = 2041;
DELETE FROM `gameobject` WHERE `guid` IN (130146,130141); -- Duplicate 132943
DELETE FROM `pool_gameobject` WHERE `guid` IN (130146,130141);
DELETE FROM `gameobject` WHERE `guid` = 130120; -- Duplicate 132950
DELETE FROM `pool_gameobject` WHERE `guid` = 130120;
DELETE FROM `gameobject` WHERE `guid` = 134891; -- Duplicate 134892
DELETE FROM `pool_gameobject` WHERE `guid` = 134891;
DELETE FROM `gameobject` WHERE `guid` IN (132948,130124,130157); -- Duplicate 132931
DELETE FROM `pool_gameobject` WHERE `guid` IN (132948,130124,130157);
DELETE FROM `gameobject` WHERE `guid` = 130121; -- Duplicate 132942
DELETE FROM `pool_gameobject` WHERE `guid` = 130121;
DELETE FROM `gameobject` WHERE `guid` = 130119; -- Duplicate 132946
DELETE FROM `pool_gameobject` WHERE `guid` = 130119;
DELETE FROM `gameobject` WHERE `guid` IN (132937,130159,132940); -- Duplicate 130127
DELETE FROM `pool_gameobject` WHERE `guid` IN (132937,130159,132940);
DELETE FROM `gameobject` WHERE `guid` = 132932; -- Duplicate 130158
DELETE FROM `pool_gameobject` WHERE `guid` = 132932;
UPDATE `gameobject` SET `position_x` = 297.799, `position_y` = -1378.66, `position_z` = 38.981, `orientation` = -1.18682, `rotation2` = -0.559191, `rotation3` = 0.829039 WHERE `guid` = 130132 AND `id` = 2041;
DELETE FROM `gameobject` WHERE `guid` = 132925; -- Duplicate 130132
DELETE FROM `pool_gameobject` WHERE `guid` = 132925;
UPDATE `gameobject` SET `position_x` = 335.301, `position_y` = -1352.17, `position_z` = 40.368, `orientation` = -1.29154, `rotation2` = -0.601814, `rotation3` = 0.798637 WHERE `guid` = 130142 AND `id` = 2041;
DELETE FROM `gameobject` WHERE `guid` IN (132944,130129); -- Duplicate 130143
DELETE FROM `pool_gameobject` WHERE `guid` IN (132944,130129);
DELETE FROM `gameobject` WHERE `guid` = 130117; -- Duplicate 130156
DELETE FROM `pool_gameobject` WHERE `guid` = 130117;
UPDATE `gameobject` SET `position_x` = 447.687, `position_y` = -4007.4, `position_z` = 103.455, `orientation` = 2.40855, `rotation2` = 0.93358, `rotation3` = 0.35837 WHERE `guid` = 134893 AND `id` = 2041;
DELETE FROM `gameobject` WHERE `guid` = 133782; -- Duplicate 130152
DELETE FROM `pool_gameobject` WHERE `guid` = 133782;
DELETE FROM `gameobject` WHERE `guid` = 133781; -- Duplicate 130113
DELETE FROM `pool_gameobject` WHERE `guid` = 133781;
UPDATE `gameobject` SET `position_x` = 534.668, `position_y` = -1541.55, `position_z` = 40.6436, `orientation` = 1.93731, `rotation2` = 0.824125, `rotation3` = 0.566409 WHERE `guid` = 130128 AND `id` = 2041;
DELETE FROM `gameobject` WHERE `guid` IN (135459,135458); -- Duplicate 130128
DELETE FROM `pool_gameobject` WHERE `guid` IN (135459,135458);
DELETE FROM `gameobject` WHERE `guid` = 136634; -- Duplicate 136638
DELETE FROM `pool_gameobject` WHERE `guid` = 136634;
UPDATE `pool_gameobject` SET `description` = 'Hillsbrad Foothills - Liferoot' WHERE `guid` = 10458;

DELETE FROM `gameobject` WHERE `guid` IN (86814,64003,86819,86813,87339,64006,64004,86825,86826,64002,64008,87336,87687,86816,64011,64010,86815,86817,64012,64007,86812,64015,86811,86821,86809,86829,86824,86830,86810,86833,86805,86808,86823,86818,86834,86831,86803,86822,86804,87342,86828,87341,87548,65308,86799,87340,87345,65311,86800,86827,86835,65320,87337,65318,65313,65309,86820,5557,87343,136634,135459,135458,133781,133782,130117,6648,6687,7396,19442,19444,21386,21443,56007,56031) AND `id` = 2041;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5557, 2041, 1, 1, 1623.1, -1760.67, 94.6082, -1.6057, 0, 0, -0.719339, 0.694659, 45, 90, 100, 1),
(64002, 2041, 0, 1, -11539.7, 656.182, 60.625, 2.04204, 0, 0, 0.852641, 0.522496, 45, 90, 100, 1),
(64003, 2041, 0, 1, -13985.5, 368.891, 29.6164, -0.244346, 0, 0, -0.121869, 0.992546, 45, 90, 100, 1),
(64004, 2041, 0, 1, -12059.6, -513.804, 11.483, 1.18682, 0, 0, 0.559191, 0.829039, 45, 90, 100, 1),
(64006, 2041, 0, 1, -12179.3, 61.1013, 0.958485, 0.994837, 0, 0, 0.477158, 0.878817, 45, 90, 100, 1),
(64007, 2041, 0, 1, -9924.61, -3873.61, 19.4348, -2.68781, 0, 0, -0.97437, 0.22495, 45, 90, 100, 1),
(64008, 2041, 0, 1, -10894, -3971.03, 20.2261, 0.733038, 0, 0, 0.358368, 0.93358, 45, 90, 100, 1),
(64010, 2041, 0, 1, -10170.4, -2818.89, 19.9475, 0.680677, 0, 0, 0.333806, 0.942642, 45, 90, 100, 1),
(64011, 2041, 0, 1, -10188.3, -3340.09, 19.943, -0.750491, 0, 0, -0.366501, 0.930418, 45, 90, 100, 1),
(64012, 2041, 0, 1, -10097, -3010.47, 19.1777, -2.28638, 0, 0, -0.909961, 0.414694, 45, 90, 100, 1),
(64015, 2041, 1, 1, -4806.29, -3440.59, 30.4135, -1.32645, 0, 0, -0.615661, 0.788011, 45, 90, 100, 1),
(65308, 2041, 0, 1, -2896.75, -1689.91, 7.51803, -1.309, 0, 0, -0.608763, 0.793352, 45, 90, 100, 1),
(65309, 2041, 0, 1, 17.8396, -3752.17, 146.476, 1.39626, 0, 0, 0.642786, 0.766046, 45, 90, 100, 1),
(65311, 2041, 0, 1, -2739.23, -1328.33, 7.56998, -0.087266, 0, 0, -0.0436192, 0.999048, 45, 90, 100, 1),
(65313, 2041, 0, 1, -433.665, -986.09, 34.3007, -2.87979, 0, 0, -0.991445, 0.130528, 45, 90, 100, 1),
(65318, 2041, 0, 1, -1455.35, -1925.88, 50.5102, -0.139624, 0, 0, -0.0697553, 0.997564, 45, 90, 100, 1),
(65320, 2041, 0, 1, -1853.69, -2548.98, 54.381, -1.51844, 0, 0, -0.688356, 0.725373, 45, 90, 100, 1),
(86799, 2041, 1, 1, -2876.87, 1688.79, 28.9256, -0.663223, 0, 0, -0.325567, 0.945519, 45, 90, 100, 1),
(86800, 2041, 1, 1, -2596.53, 2040.23, 28.3366, -2.89724, 0, 0, -0.992546, 0.121873, 45, 90, 100, 1),
(86803, 2041, 1, 1, -3557.42, -3318.69, 30.4225, 2.72271, 0, 0, 0.978147, 0.207914, 45, 90, 100, 1),
(86804, 2041, 1, 1, -3092.95, 1749.66, 28.2648, -2.96704, 0, 0, -0.996194, 0.0871655, 45, 90, 100, 1),
(86805, 2041, 1, 1, -3871.89, -3656.06, 31.251, 0, 0, 0, 0, 1, 45, 90, 100, 1),
(86808, 2041, 0, 1, 352.731, -1452.43, 39.5358, 2.58308, 0, 0, 0.961261, 0.275641, 45, 90, 100, 1),
(86809, 2041, 1, 1, -4662.81, 1144.55, 87.1693, 2.54818, 0, 0, 0.956305, 0.292372, 45, 90, 100, 1),
(86810, 2041, 1, 1, -4237.53, 219.173, 52.6707, 2.04204, 0, 0, 0.852641, 0.522496, 45, 90, 100, 1),
(86811, 2041, 1, 1, -4792.35, 1106.09, 84.0014, 1.18682, 0, 0, 0.559191, 0.829039, 45, 90, 100, 1),
(86812, 2041, 1, 1, -4831.58, 2214.34, 4.00695, -3.10665, 0, 0, -0.999847, 0.0174704, 45, 90, 100, 1),
(86813, 2041, 0, 1, -13349.2, 745.215, 4.4602, 0.90757, 0, 0, 0.438371, 0.898794, 45, 90, 100, 1),
(86814, 2041, 0, 1, -14034.1, 485.111, 5.65399, -0.122173, 0, 0, -0.0610485, 0.998135, 45, 90, 100, 1),
(86815, 2041, 0, 1, -10156.2, -2534.16, 26.2465, -0.314158, 0, 0, -0.156434, 0.987688, 45, 90, 100, 1),
(86816, 2041, 0, 1, -10330.6, -2957.37, 19.5952, -2.87979, 0, 0, -0.991445, 0.130528, 45, 90, 100, 1),
(86817, 2041, 0, 1, -10097.8, -3224.53, 19.3825, 1.0821, 0, 0, 0.515036, 0.857168, 45, 90, 100, 1),
(86818, 2041, 1, 1, -3760, -3381.81, 30.9896, -2.74016, 0, 0, -0.979924, 0.199371, 45, 90, 100, 1),
(86819, 2041, 0, 1, -13674.1, 449.951, 41.3601, 2.37364, 0, 0, 0.927182, 0.37461, 45, 90, 100, 1),
(86820, 2041, 0, 1, 500.766, -3791.9, 102.439, 0.314158, 0, 0, 0.156434, 0.987688, 45, 90, 100, 1),
(86821, 2041, 1, 1, -4716.59, 2077.56, 2.63233, -2.80997, 0, 0, -0.986285, 0.165053, 45, 90, 100, 1),
(86822, 2041, 1, 1, -3520.12, 2025.65, 38.5188, 2.77507, 0, 0, 0.983255, 0.182237, 45, 90, 100, 1),
(86823, 2041, 1, 1, -3775.09, -2953.29, 31.872, -0.837757, 0, 0, -0.406736, 0.913546, 45, 90, 100, 1),
(86824, 2041, 1, 1, -4630.46, -3365.78, 30.9744, -1.67551, 0, 0, -0.743143, 0.669133, 45, 90, 100, 1),
(86825, 2041, 0, 1, -11821.7, 872.976, 6.03503, 0.349065, 0, 0, 0.173648, 0.984808, 45, 90, 100, 1),
(86826, 2041, 0, 1, -11652.8, 1017.66, 2.37706, 2.40855, 0, 0, 0.93358, 0.35837, 45, 90, 100, 1),
(86827, 2041, 1, 1, -2015.13, 2275.88, 53.7174, 2.70526, 0, 0, 0.976296, 0.21644, 45, 90, 100, 1),
(86828, 2041, 1, 1, -3032.17, 2091.52, 28.1324, 0.331611, 0, 0, 0.165047, 0.986286, 45, 90, 100, 1),
(86829, 2041, 1, 1, -4633.45, -66.6649, 91.9696, -0.541051, 0, 0, -0.267238, 0.963631, 45, 90, 100, 1),
(86830, 2041, 1, 1, -4541.49, -3057.2, 30.645, -1.01229, 0, 0, -0.484809, 0.87462, 45, 90, 100, 1),
(86831, 2041, 1, 1, -3623.66, -3275.27, 31.6351, -1.72787, 0, 0, -0.760404, 0.64945, 45, 90, 100, 1),
(86833, 2041, 1, 1, -4212.56, -3291.74, 30.8613, -0.541051, 0, 0, -0.267238, 0.963631, 45, 90, 100, 1),
(86834, 2041, 1, 1, -3676.5, -2814.39, 31.8353, -0.698132, 0, 0, -0.34202, 0.939693, 45, 90, 100, 1),
(86835, 2041, 1, 1, -1999.58, 2393.52, 53.7464, 2.40855, 0, 0, 0.93358, 0.35837, 45, 90, 100, 1),
(87336, 2041, 0, 1, -10423.9, -2979.65, 18.9497, -2.89724, 0, 0, -0.992546, 0.121873, 45, 90, 100, 1),
(87337, 2041, 0, 1, -1667.67, -3433.21, 44.3018, 2.53072, 0, 0, 0.953716, 0.300709, 45, 90, 100, 1),
(87339, 2041, 0, 1, -12423.7, -335.87, 15.0724, -1.43117, 0, 0, -0.656059, 0.75471, 45, 90, 100, 1),
(87340, 2041, 0, 1, -2837.91, -1775.33, 7.82989, 0.331611, 0, 0, 0.165047, 0.986286, 45, 90, 100, 1),
(87341, 2041, 0, 1, -3013.65, -2502.55, 8.11191, -2.40855, 0, 0, -0.93358, 0.35837, 45, 90, 100, 1),
(87342, 2041, 0, 1, -3077.74, -1994.21, 7.12134, -1.48353, 0, 0, -0.67559, 0.737277, 45, 90, 100, 1),
(87343, 2041, 1, 1, 2203.34, -3562.25, 39.4123, -1.64061, 0, 0, -0.731354, 0.681998, 45, 90, 100, 1),
(87345, 2041, 1, 1, -2792.61, -3489.66, 31.1472, 0.226892, 0, 0, 0.113203, 0.993572, 45, 90, 100, 1),
(87548, 2041, 0, 1, -2923.68, -1244.04, 7.05653, 2.80997, 0, 0, 0.986285, 0.165053, 45, 90, 100, 1),
(87687, 2041, 0, 1, -10361.3, -3570.38, 20.4923, 0.383971, 0, 0, 0.190808, 0.981627, 45, 90, 100, 1),

(6648, 2041, 0, 1, -10607.5, -4078.95, 19.2055, 4.34587, 0, 0, -0.824126, 0.566406, 45, 90, 100, 1),
(6687, 2041, 0, 1, -10761.8, -4158.78, 19.8357, 0.523598, 0, 0, 0.258819, 0.965926, 45, 90, 100, 1),
(7396, 2041, 0, 1, 1115.69, -254.806, 32.94, 2.30383, 0, 0, 0.913545, 0.406738, 45, 90, 100, 1),
(136634, 2041, 0, 1, -10195.8, -4084.3, 19.2791, 5.96903, 0, 0, -0.156434, 0.987688, 45, 90, 100, 1), -- 6773
(135459, 2041, 0, 1, -3009.18, -2612.51, 7.93079, 0.104719, 0, 0, 0.0523357, 0.99863, 45, 90, 100, 1), -- 6779
(135458, 2041, 0, 1, -3197.96, -2636.1, 7.63684, 2.26892, 0, 0, 0.906307, 0.422619, 45, 90, 100, 1), -- 10234
(19442, 2041, 1, 1, -2791.54, -3519.12, 29.3699, 0.209439, 0, 0, 0.104528, 0.994522, 45, 90, 100, 1),
(19444, 2041, 1, 1, -2786.07, -3127.25, 30.1961, 2.93214, 0, 0, 0.994521, 0.104535, 45, 90, 100, 1),
(130117, 2041, 1, 1, -3563.34, -2881.77, 29.8927, 2.74016, 0, 0, 0.979924, 0.19937, 45, 90, 100, 1), -- 21120
(21386, 2041, 1, 1, -1659.96, 1469.15, 59.5975, 2.54818, 0, 0, 0.956305, 0.292372, 45, 90, 100, 1),
(21443, 2041, 1, 1, -3042.13, 1967.54, 28.5348, 4.85202, 0, 0, -0.656058, 0.75471, 45, 90, 100, 1),
(133781, 2041, 1, 1, -2601.64, -2914.52, 29.3757, 3.89209, 0, 0, -0.930417, 0.366502, 45, 90, 100, 1), -- 55953
(133782, 2041, 1, 1, -2569.71, -3088.42, 30.9634, 0.139625, 0, 0, 0.0697555, 0.997564, 45, 90, 100, 1), -- 55956
(56007, 2041, 1, 1, -4023.87, -3263.74, 32.544, 1.72787, 0, 0, 0.760405, 0.649449, 45, 90, 100, 1),
(56031, 2041, 1, 1, -4802.6, -3565.6, 30.2318, 3.97936, 0, 0, -0.913545, 0.406738, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (86814,64003,86819,86813,87339,64006,64004,86825,86826,64002,64008,87336,87687,86816,64011,64010,86815,86817,64012,64007,86812,64015,86811,86821,86809,86829,86824,86830,86810,86833,86805,86808,86823,86818,86834,86831,86803,86822,86804,87342,86828,87341,87548,65308,86799,87340,87345,65311,86800,86827,86835,65320,87337,65318,65313,65309,86820,5557,87343,136634,135459,135458,133781,133782,130117,6648,6687,7396,19442,19444,21386,21443,56007,56031);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(65313, 13011, 0, 'Liferoot zone 267, node 244'), -- Hillsbrad Foothills

(65318, 13001, 0, 'Liferoot zone 45, node 493'), -- Arathi Highlands
(87337, 13001, 0, 'Liferoot zone 45, node 524'),
(65320, 13001, 0, 'Liferoot zone 45, node 494'),

(5557, 13024, 0, 'Liferoot zone 331, node 458'), -- Ashenvale
(87343, 13024, 0, 'Liferoot zone 331, node 445'),

(86799, 13033, 0, 'Liferoot zone 357, node 187'), -- Feralas
(86804, 13033, 0, 'Liferoot zone 357, node 189'),
(86809, 13033, 0, 'Liferoot zone 357, node 190'),
(86810, 13033, 0, 'Liferoot zone 357, node 191'),
(86811, 13033, 0, 'Liferoot zone 357, node 192'),
(86812, 13033, 0, 'Liferoot zone 357, node 193'),
(86829, 13033, 0, 'Liferoot zone 357, node 197'),
(86821, 13033, 0, 'Liferoot zone 357, node 194'),
(86822, 13033, 0, 'Liferoot zone 357, node 195'),
(86828, 13033, 0, 'Liferoot zone 357, node 196'),
(86800, 13033, 0, 'Liferoot zone 357, node 188'),
(21443, 13033, 0, 'Feralas - Liferoot'),

(86820, 13019, 0, 'Liferoot zone 47, node 321'), -- The Hinterlands
(65309, 13019, 0, 'Liferoot zone 47, node 306'),

(64006, 13017, 0, 'Liferoot zone 33, node 626'), -- Stranglethorn Vale
(64004, 13017, 0, 'Liferoot zone 33, node 624'),
(64003, 13017, 0, 'Liferoot zone 33, node 623'),
(86825, 13017, 0, 'Liferoot zone 33, node 679'),
(86813, 13017, 0, 'Liferoot zone 33, node 676'),
(86819, 13017, 0, 'Liferoot zone 33, node 678'),
(86814, 13017, 0, 'Liferoot zone 33, node 677'),
(87339, 13017, 0, 'Liferoot zone 33, node 707'),
(64002, 13017, 0, 'Liferoot zone 33, node 622'),
(86826, 13017, 0, 'Liferoot zone 33, node 680'),

(86824, 13031, 0, 'Liferoot zone 15, node 67'), -- Dustwallow Marsh
(86823, 13031, 0, 'Liferoot zone 15, node 66'),
(86830, 13031, 0, 'Liferoot zone 15, node 68'),
(86831, 13031, 0, 'Liferoot zone 15, node 69'),
(86833, 13031, 0, 'Liferoot zone 15, node 71'),
(86834, 13031, 0, 'Liferoot zone 15, node 72'),
(86803, 13031, 0, 'Liferoot zone 15, node 62'),
(87345, 13031, 0, 'Liferoot zone 15, node 90'),
(64015, 13031, 0, 'Liferoot zone 15, node 48'),
(86818, 13031, 0, 'Liferoot zone 15, node 65'),
(86805, 13031, 0, 'Liferoot zone 15, node 63'),
(133781, 13031, 0, 'Dustwallow Marsh - Liferoot'),
(133782, 13031, 0, 'Dustwallow Marsh - Liferoot'),
(130117, 13031, 0, 'Dustwallow Marsh - Liferoot'),
(19442, 13031, 0, 'Dustwallow Marsh - Liferoot'),
(19444, 13031, 0, 'Dustwallow Marsh - Liferoot'),
(56007, 13031, 0, 'Dustwallow Marsh - Liferoot'),
(56031, 13031, 0, 'Dustwallow Marsh - Liferoot'),

(65311, 13023, 0, 'Liferoot zone 11, node 355'), -- Wetlands
(87342, 13023, 0, 'Liferoot zone 11, node 405'),
(87341, 13023, 0, 'Liferoot zone 11, node 404'),
(87340, 13023, 0, 'Liferoot zone 11, node 403'),
(65308, 13023, 0, 'Liferoot zone 11, node 354'),
(87548, 13023, 0, 'Wetlands - Liferoot'),
(135459, 13023, 0, 'Wetlands - Liferoot'),
(135458, 13023, 0, 'Wetlands - Liferoot'),

(86817, 13018, 0, 'Liferoot zone 8, node 391'), -- Swamp of Sorrows
(64008, 13018, 0, 'Liferoot zone 8, node 368'),
(87336, 13018, 0, 'Liferoot zone 8, node 398'),
(64012, 13018, 0, 'Liferoot zone 8, node 371'),
(64011, 13018, 0, 'Liferoot zone 8, node 370'),
(64010, 13018, 0, 'Liferoot zone 8, node 369'),
(86815, 13018, 0, 'Liferoot zone 8, node 389'),
(86816, 13018, 0, 'Liferoot zone 8, node 390'),
(64007, 13018, 0, 'Liferoot zone 8, node 367'),
(87687, 13018, 0, 'Swamp of Sorrows - Liferoot'),
(136634, 13018, 0, 'Swamp of Sorrows - Liferoot'),
(6648, 13018, 0, 'Swamp of Sorrows - Liferoot'),
(6687, 13018, 0, 'Swamp of Sorrows - Liferoot'),

(86808, 13000, 0, 'Alterac Mountains - Liferoot'), -- Alterac Mountains
(7396, 13000, 0, 'Alterac Mountains - Liferoot'),

(86827, 13029, 0, 'Desolace - Liferoot'), -- Desolace
(86835, 13029, 0, 'Desolace - Liferoot'),
(21386, 13029, 0, 'Desolace - Liferoot');

-- Fadeleaf 2042
-- https://tbc.wowhead.com/object=2042/fadeleaf
DELETE FROM `gameobject` WHERE `guid` = 134029; -- Duplicate 134018
DELETE FROM `pool_gameobject` WHERE `guid` = 134029;
UPDATE `gameobject` SET `position_x` = -12153.8, `position_y` = -133.861, `position_z` = 25.7315, `orientation` = 2.40855, `rotation2` = 0.93358, `rotation3` = 0.35837 WHERE `guid` = 134044 AND `id` = 2042;
DELETE FROM `gameobject` WHERE `guid` = 134016; -- Duplicate 134040
DELETE FROM `pool_gameobject` WHERE `guid` = 134016;
UPDATE `gameobject` SET `position_x` = -11847.3, `position_y` = -219.508, `position_z` = 16.5659, `orientation` = 0.645772, `rotation2` = 0.317305, `rotation3` = 0.948324 WHERE `guid` = 134028 AND `id` = 2042;
DELETE FROM `gameobject` WHERE `guid` = 134015; -- Duplicate 134036
DELETE FROM `pool_gameobject` WHERE `guid` = 134015;
UPDATE `gameobject` SET `position_x` = -10519.8, `position_y` = -2715.92, `position_z` = 27.669, `orientation` = -0.523598, `rotation2` = -0.258819, `rotation3` = 0.965926 WHERE `guid` = 134602 AND `id` = 2042;
DELETE FROM `gameobject` WHERE `guid` = 134603; -- Duplicate 134602
DELETE FROM `pool_gameobject` WHERE `guid` = 134603;
UPDATE `gameobject` SET `position_x` = -10518.9, `position_y` = -2573.61, `position_z` = 21.8643, `orientation` = -0.872664, `rotation2` = -0.422618, `rotation3` = 0.906308 WHERE `guid` = 134590 AND `id` = 2042;
DELETE FROM `gameobject` WHERE `guid` = 134581; -- Duplicate 134593
DELETE FROM `pool_gameobject` WHERE `guid` = 134581;
UPDATE `gameobject` SET `position_x` = -10388.1, `position_y` = -2976.57, `position_z` = 22.862, `orientation` = 1.81514, `rotation2` = 0.78801, `rotation3` = 0.615662 WHERE `guid` = 134577 AND `id` = 2042;
UPDATE `gameobject` SET `position_x` = -10226.4, `position_y` = -2623.05, `position_z` = 27.6343, `orientation` = 2.84488, `rotation2` = 0.989015, `rotation3` = 0.147813 WHERE `guid` = 134584 AND `id` = 2042;
UPDATE `gameobject` SET `position_x` = -10195.3, `position_y` = -3118.81, `position_z` = 21.7411, `orientation` = 0.104719, `rotation2` = 0.0523356, `rotation3` = 0.99863 WHERE `guid` = 134578 AND `id` = 2042;
UPDATE `gameobject` SET `position_x` = -10164, `position_y` = -3209.01, `position_z` = 24.4014, `orientation` = -2.35619, `rotation2` = -0.923879, `rotation3` = 0.382686 WHERE `guid` = 134566 AND `id` = 2042;
UPDATE `gameobject` SET `position_x` = -10146.7, `position_y` = -3321.11, `position_z` = 22.7876, `orientation` = 1.65806, `rotation2` = 0.737276, `rotation3` = 0.675591 WHERE `guid` = 134556 AND `id` = 2042;
DELETE FROM `gameobject` WHERE `guid` = 131000; -- Duplicate 130989
DELETE FROM `pool_gameobject` WHERE `guid` = 131000;
DELETE FROM `gameobject` WHERE `guid` = 130999; -- Duplicate 130992
DELETE FROM `pool_gameobject` WHERE `guid` = 130999;
UPDATE `gameobject` SET `position_x` = -6731.13, `position_y` = -2966.87, `position_z` = 242.798, `orientation` = -2.28638, `rotation2` = -0.909961, `rotation3` = 0.414694 WHERE `guid` = 130985 AND `id` = 2042;
UPDATE `gameobject` SET `position_x` = -6528.05, `position_y` = -2963.68, `position_z` = 268.539, `orientation` = -1.39626, `rotation2` = -0.642786, `rotation3` = 0.766046 WHERE `guid` = 130982 AND `id` = 2042;
DELETE FROM `gameobject` WHERE `guid` = 140462; -- Duplicate 138298
DELETE FROM `pool_gameobject` WHERE `guid` = 140462;
DELETE FROM `gameobject` WHERE `guid` = 130690; -- Duplicate 130697
DELETE FROM `pool_gameobject` WHERE `guid` = 130690;
DELETE FROM `gameobject` WHERE `guid` = 130691; -- Duplicate 130659
DELETE FROM `pool_gameobject` WHERE `guid` = 130691;
DELETE FROM `gameobject` WHERE `guid` = 130692; -- Duplicate 130650
DELETE FROM `pool_gameobject` WHERE `guid` = 130692;
DELETE FROM `gameobject` WHERE `guid` IN (130667,130668); -- Duplicate 130665
DELETE FROM `pool_gameobject` WHERE `guid` IN (130667,130668);
UPDATE `gameobject` SET `position_x` = -1133.5, `position_y` = -1909.23, `position_z` = 78.3627, `orientation` = 1.69297, `rotation2` = 0.748956, `rotation3` = 0.66262 WHERE `guid` = 130661 AND `id` = 2042;
UPDATE `gameobject` SET `position_x` = -962.771, `position_y` = -3266.38, `position_z` = 66.1804, `orientation` = -0.575957, `rotation2` = -0.284015, `rotation3` = 0.95882 WHERE `guid` = 130666 AND `id` = 2042;
DELETE FROM `gameobject` WHERE `guid` = 130647; -- Duplicate 130649
DELETE FROM `pool_gameobject` WHERE `guid` = 130647;
DELETE FROM `gameobject` WHERE `guid` IN (134926,134915); -- Duplicate 134902
DELETE FROM `pool_gameobject` WHERE `guid` IN (134926,134915);
DELETE FROM `gameobject` WHERE `guid` = 132957; -- Duplicate 130175
DELETE FROM `pool_gameobject` WHERE `guid` = 132957;
DELETE FROM `gameobject` WHERE `guid` = 132959; -- Duplicate 130200
DELETE FROM `pool_gameobject` WHERE `guid` = 132959;
DELETE FROM `gameobject` WHERE `guid` = 132951; -- Duplicate 130199
DELETE FROM `pool_gameobject` WHERE `guid` = 132951;
DELETE FROM `gameobject` WHERE `guid` = 134917; -- Duplicate 134912
DELETE FROM `pool_gameobject` WHERE `guid` = 134917;
DELETE FROM `gameobject` WHERE `guid` IN (132952,130168,132953); -- Duplicate 130185
DELETE FROM `pool_gameobject` WHERE `guid` IN (132952,130168,132953);
DELETE FROM `gameobject` WHERE `guid` = 132954; -- Duplicate 130201
DELETE FROM `pool_gameobject` WHERE `guid` = 132954;
DELETE FROM `gameobject` WHERE `guid` = 132956; -- Duplicate 130178
DELETE FROM `pool_gameobject` WHERE `guid` = 132956;
DELETE FROM `gameobject` WHERE `guid` = 132958; -- Duplicate 130160
DELETE FROM `pool_gameobject` WHERE `guid` = 132958;
DELETE FROM `gameobject` WHERE `guid` = 132955; -- Duplicate 130169
DELETE FROM `pool_gameobject` WHERE `guid` = 132955;
DELETE FROM `gameobject` WHERE `guid` = 130161; -- Duplicate 130186
DELETE FROM `pool_gameobject` WHERE `guid` = 130161;
DELETE FROM `gameobject` WHERE `guid` = 135463; -- Duplicate 130204
DELETE FROM `pool_gameobject` WHERE `guid` = 135463;
DELETE FROM `gameobject` WHERE `guid` = 135461; -- Duplicate 130203
DELETE FROM `pool_gameobject` WHERE `guid` = 135461;
DELETE FROM `gameobject` WHERE `guid` = 135465; -- Duplicate 130165
DELETE FROM `pool_gameobject` WHERE `guid` = 135465;
UPDATE `gameobject` SET `position_x` = 692.225, `position_y` = -1384.84, `position_z` = 99.6657, `orientation` = 1.09956, `rotation2` = 0.5225, `rotation3` = 0.852639 WHERE `guid` = 130189 AND `id` = 2042;
DELETE FROM `gameobject` WHERE `guid` = 135462; -- Duplicate 130189
DELETE FROM `pool_gameobject` WHERE `guid` = 135462;
DELETE FROM `gameobject` WHERE `guid` = 135460; -- Duplicate 130184
DELETE FROM `pool_gameobject` WHERE `guid` = 135460;
DELETE FROM `gameobject` WHERE `guid` = 135466; -- Duplicate 130194
DELETE FROM `pool_gameobject` WHERE `guid` = 135466;
DELETE FROM `gameobject` WHERE `guid` = 135464; -- Duplicate 130173
DELETE FROM `pool_gameobject` WHERE `guid` = 135464;

DELETE FROM `gameobject` WHERE `guid` IN (87552,86838,64023,5558,64022,64021,65323,64026,87349,87553,65326,87346,86836,87347,86840,86837,87348,86841,6817,6820,135464,56012,135466) AND `id` = 2042;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5558, 2042, 0, 1, -11678.6, 644.356, 49.927, -1.81514, 0, 0, -0.788011, 0.615662, 45, 90, 100, 1),
(64021, 2042, 1, 1, -4555.18, -2725.36, 40.8813, -0.994837, 0, 0, -0.477158, 0.878817, 45, 90, 100, 1),
(64022, 2042, 0, 1, -11669.9, 776.653, 50.7218, 0.95993, 0, 0, 0.461748, 0.887011, 45, 90, 100, 1),
(64023, 2042, 0, 1, -11759.6, -784.273, 33.6672, -0.855211, 0, 0, -0.414693, 0.909961, 45, 90, 100, 1),
(64026, 2042, 1, 1, -3109.08, -3700.12, 39.3471, -2.72271, 0, 0, -0.978147, 0.207914, 45, 90, 100, 1),
(65323, 2042, 1, 1, -3240.05, -4140.46, 23.6236, -0.977383, 0, 0, -0.469471, 0.882948, 45, 90, 100, 1),
(65326, 2042, 0, 1, -1820.37, -2332.3, 34.2472, -1.39626, 0, 0, -0.642786, 0.766046, 45, 90, 100, 1),
(86836, 2042, 0, 1, 11.9988, 179.588, 45.3398, -2.89724, 0, 0, -0.992546, 0.121873, 45, 90, 100, 1),
(86837, 2042, 0, 1, 73.3306, -2575.64, 110.622, 3.10665, 0, 0, 0.999847, 0.0174704, 45, 90, 100, 1),
(86838, 2042, 0, 1, -13597.7, -111.13, 42.1737, -2.18166, 0, 0, -0.88701, 0.461749, 45, 90, 100, 1),
(86840, 2042, 0, 1, 62.7072, -4282.95, 116.939, 1.15192, 0, 0, 0.54464, 0.83867, 45, 90, 100, 1),
(86841, 2042, 0, 1, 130.193, -3739.45, 125.82, -0.523598, 0, 0, -0.258819, 0.965926, 45, 90, 100, 1),
(87346, 2042, 0, 1, -1740.71, -2982.65, 34.2299, -0.541051, 0, 0, -0.267238, 0.963631, 45, 90, 100, 1),
(87347, 2042, 0, 1, 29.2546, -3312.49, 116.929, 0.715585, 0, 0, 0.350207, 0.936672, 45, 90, 100, 1),
(87348, 2042, 0, 1, 121.778, -3088.08, 129.892, 2.70526, 0, 0, 0.976296, 0.21644, 45, 90, 100, 1),
(87349, 2042, 1, 1, -2987.04, -3287.98, 37.2054, 0.750491, 0, 0, 0.366501, 0.930418, 45, 90, 100, 1),
(87552, 2042, 0, 1, -13602, -30.4481, 40.0262, 0.383971, 0, 0, 0.190808, 0.981627, 45, 90, 100, 1),
(87553, 2042, 1, 1, -2949.28, -3553.61, 41.7896, 1.97222, 0, 0, 0.833885, 0.551938, 45, 90, 100, 1),

(6817, 2042, 0, 1, -16.0845, 377.3, 48.6796, 1.6057, 0, 0, 0.719339, 0.694659, 45, 90, 100, 1),
(6820, 2042, 1, 1, -2683.35, -2891.58, 35.377, 5.91667, 0, 0, -0.182235, 0.983255, 45, 90, 100, 1),
(135464, 2042, 1, 1, -2695.31, -3196.42, 32.9254, 1.58825, 0, 0, 0.71325, 0.70091, 45, 90, 100, 1), -- 6824
(56012, 2042, 1, 1, -3857.15, -3771.82, 40.9882, 4.43314, 0, 0, -0.798635, 0.601815, 45, 90, 100, 1),
(135466, 2042, 1, 1, -3498.02, -3224.97, 37.1408, 5.5676, 0, 0, -0.350207, 0.936672, 45, 90, 100, 1); -- 56017

DELETE FROM `pool_gameobject` WHERE `guid` IN (87552,86838,64023,5558,64022,64021,65323,64026,87349,87553,65326,87346,86836,87347,86840,86837,87348,86841,6817,6820,135464,56012,135466);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(87346, 13001, 0, 'Fadeleaf zone 45, node 525'), -- Arathi Highlands
(65326, 13001, 0, 'Fadeleaf zone 45, node 498'),

(86837, 13019, 0, 'Fadeleaf zone 47, node 322'), -- The Hinterlands
(87348, 13019, 0, 'Fadeleaf zone 47, node 331'),
(87347, 13019, 0, 'Fadeleaf zone 47, node 330'),
(86841, 13019, 0, 'Fadeleaf zone 47, node 324'),
(86840, 13019, 0, 'Fadeleaf zone 47, node 323'),

(86838, 13017, 0, 'Fadeleaf zone 33, node 681'), -- Stranglethorn Vale
(5558, 13017, 0, 'Fadeleaf zone 33, node 716'),
(64023, 13017, 0, 'Fadeleaf zone 33, node 628'),
(64022, 13017, 0, 'Fadeleaf zone 33, node 627'),
(87552, 13017, 0, 'Stranglethorn Vale - Fadeleaf'),

(65323, 13031, 0, 'Fadeleaf zone 15, node 57'), -- Dustwallow Marsh
(64026, 13031, 0, 'Fadeleaf zone 15, node 51'),
(64021, 13031, 0, 'Fadeleaf zone 15, node 50'),
(87349, 13031, 0, 'Fadeleaf zone 15, node 91'),
(87553, 13031, 0, 'Dustwallow Marsh - Fadeleaf'),
(6820, 13031, 0, 'Dustwallow Marsh - Fadeleaf'),
(135464, 13031, 0, 'Dustwallow Marsh - Fadeleaf'),
(56012, 13031, 0, 'Dustwallow Marsh - Fadeleaf'),
(135466, 13031, 0, 'Dustwallow Marsh - Fadeleaf'),

(86836, 13000, 0, 'Alterac Mountains - Fadeleaf'), -- Alterac Mountains
(6817, 13000, 0, 'Alterac Mountains - Fadeleaf');

-- Khadgar's Whisker 2043
-- https://tbc.wowhead.com/object=2043/khadgars-whisker
DELETE FROM `gameobject` WHERE `guid` = 138229; -- Duplicate 134947 (map)
DELETE FROM `pool_gameobject` WHERE `guid` = 138229;
DELETE FROM `gameobject` WHERE `guid` = 140465; -- Duplicate 130763 (map)
DELETE FROM `pool_gameobject` WHERE `guid` = 140465;
DELETE FROM `gameobject` WHERE `guid` = 134185; -- Duplicate 134148
DELETE FROM `pool_gameobject` WHERE `guid` = 134185;
UPDATE `gameobject` SET `position_x` = -13871.3, `position_y` = 661.595, `position_z` = 15.0183, `orientation` = 0.733038, `rotation2` = 0.358368, `rotation3` = 0.93358 WHERE `guid` = 134152 AND `id` = 2043;
DELETE FROM `gameobject` WHERE `guid` = 134154; -- Duplicate 134209
DELETE FROM `pool_gameobject` WHERE `guid` = 134154;
UPDATE `gameobject` SET `position_x` = -13259.3, `position_y` = 496.703, `position_z` = 5.97683, `orientation` = -3.07177, `rotation2` = -0.999391, `rotation3` = 0.0349043 WHERE `guid` = 134128 AND `id` = 2043;
DELETE FROM `gameobject` WHERE `guid` = 134234; -- Duplicate 134210
DELETE FROM `pool_gameobject` WHERE `guid` = 134234;
DELETE FROM `gameobject` WHERE `guid` = 134199; -- Duplicate 134180
DELETE FROM `pool_gameobject` WHERE `guid` = 134199;
UPDATE `gameobject` SET `position_x` = -12874.8, `position_y` = -24.5285, `position_z` = 16.543, `orientation` = -1.23918, `rotation2` = -0.580701, `rotation3` = 0.814117 WHERE `guid` = 134200 AND `id` = 2043;
UPDATE `gameobject` SET `position_x` = -12810.7, `position_y` = 185.967, `position_z` = 17.3171, `orientation` = 2.40855, `rotation2` = 0.93358, `rotation3` = 0.35837 WHERE `guid` = 134160 AND `id` = 2043;
DELETE FROM `gameobject` WHERE `guid` = 134134; -- Duplicate 134205
DELETE FROM `pool_gameobject` WHERE `guid` = 134134;
UPDATE `gameobject` SET `position_x` = -12732.6, `position_y` = -594.734, `position_z` = 42.1949, `orientation` = -0.750491, `rotation2` = -0.366501, `rotation3` = 0.930418 WHERE `guid` = 134164 AND `id` = 2043;
DELETE FROM `gameobject` WHERE `guid` = 134202; -- Duplicate 134246
DELETE FROM `pool_gameobject` WHERE `guid` = 134202;
UPDATE `gameobject` SET `position_x` = -12535.2, `position_y` = -34.5063, `position_z` = 22.1414, `orientation` = 0.139624, `rotation2` = 0.0697553, `rotation3` = 0.997564 WHERE `guid` = 134203 AND `id` = 2043;
DELETE FROM `gameobject` WHERE `guid` = 134183; -- Duplicate 134203
DELETE FROM `pool_gameobject` WHERE `guid` = 134183;
DELETE FROM `gameobject` WHERE `guid` = 134204; -- Duplicate 134046
DELETE FROM `pool_gameobject` WHERE `guid` = 134204;
UPDATE `gameobject` SET `position_x` = -12438, `position_y` = -742.859, `position_z` = 37.5079, `orientation` = -0.663223, `rotation2` = -0.325567, `rotation3` = 0.945519 WHERE `guid` = 134239 AND `id` = 2043;
UPDATE `gameobject` SET `position_x` = -12189.7, `position_y` = -829.898, `position_z` = 38.3669, `orientation` = 2.28638, `rotation2` = 0.909961, `rotation3` = 0.414694 WHERE `guid` = 134118 AND `id` = 2043;
UPDATE `gameobject` SET `position_x` = -12076.2, `position_y` = -277.955, `position_z` = 17.7318, `orientation` = 1.3439, `rotation2` = 0.622513, `rotation3` = 0.782609 WHERE `guid` = 134222 AND `id` = 2043;
DELETE FROM `gameobject` WHERE `guid` = 134176; -- Duplicate 134187
DELETE FROM `pool_gameobject` WHERE `guid` = 134176;
DELETE FROM `gameobject` WHERE `guid` = 134188; -- Duplicate 134051
DELETE FROM `pool_gameobject` WHERE `guid` = 134188;
UPDATE `gameobject` SET `position_x` = -11828.9, `position_y` = -547.797, `position_z` = 15.4699, `orientation` = 0.104719, `rotation2` = 0.0523356, `rotation3` = 0.99863 WHERE `guid` = 134084 AND `id` = 2043;
DELETE FROM `gameobject` WHERE `guid` = 134221; -- Duplicate 134189
DELETE FROM `pool_gameobject` WHERE `guid` = 134221;
UPDATE `gameobject` SET `position_x` = -11810, `position_y` = -260, `position_z` = 19.152, `orientation` = 4.32, `rotation2` = 0, `rotation3` = 0 WHERE `guid` = 134008 AND `id` = 2042;
UPDATE `gameobject` SET `position_x` = -11807.2, `position_y` = -259.54, `position_z` = 17.5633, `orientation` = -1.32645, `rotation2` = -0.615661, `rotation3` = 0.788011 WHERE `guid` = 134220 AND `id` = 2043;
DELETE FROM `gameobject` WHERE `guid` = 134235; -- Duplicate 134191
DELETE FROM `pool_gameobject` WHERE `guid` = 134235;
UPDATE `gameobject` SET `position_x` = -11748.8, `position_y` = 639.877, `position_z` = 50.7172, `orientation` = 1.22173, `rotation2` = 0.573576, `rotation3` = 0.819152 WHERE `guid` = 134237 AND `id` = 2043;
UPDATE `gameobject` SET `position_x` = -11736.5, `position_y` = -268.625, `position_z` = 26.3078, `orientation` = -2.87979, `rotation2` = -0.991445, `rotation3` = 0.130528 WHERE `guid` = 134131 AND `id` = 2043;
DELETE FROM `gameobject` WHERE `guid` = 134193; -- Duplicate 134232
DELETE FROM `pool_gameobject` WHERE `guid` = 134193;
UPDATE `gameobject` SET `position_x` = -11670.1, `position_y` = -465.304, `position_z` = 22.9578, `orientation` = -2.09439, `rotation2` = -0.866024, `rotation3` = 0.500002 WHERE `guid` = 134048 AND `id` = 2043;
UPDATE `gameobject` SET `position_x` = -11607.1, `position_y` = -475.899, `position_z` = 24.474, `orientation` = 1.8675, `rotation2` = 0.803856, `rotation3` = 0.594824 WHERE `guid` = 134181 AND `id` = 2043;
UPDATE `gameobject` SET `position_x` = -11571.1, `position_y` = 311.907, `position_z` = 45.0555, `orientation` = 2.07694, `rotation2` = 0.861629, `rotation3` = 0.507539 WHERE `guid` = 134122 AND `id` = 2043;
UPDATE `gameobject` SET `position_x` = -10319.2, `position_y` = -2683.88, `position_z` = 23.6573, `orientation` = -2.51327, `rotation2` = -0.951056, `rotation3` = 0.309019 WHERE `guid` = 134620 AND `id` = 2043;
UPDATE `gameobject` SET `position_x` = -10139.4, `position_y` = -2979.23, `position_z` = 22.9316, `orientation` = 1.81514, `rotation2` = 0.78801, `rotation3` = 0.615662 WHERE `guid` = 134632 AND `id` = 2043;
DELETE FROM `gameobject` WHERE `guid` = 131023; -- Duplicate 131029
DELETE FROM `pool_gameobject` WHERE `guid` = 131023;
UPDATE `gameobject` SET `position_x` = -6902.13, `position_y` = -2357.62, `position_z` = 240.485, `orientation` = 0.366518, `rotation2` = 0.182235, `rotation3` = 0.983255 WHERE `guid` = 131012 AND `id` = 2043;
DELETE FROM `gameobject` WHERE `guid` = 138649; -- Duplicate 138655
DELETE FROM `pool_gameobject` WHERE `guid` = 138649;
DELETE FROM `gameobject` WHERE `guid` = 138653; -- Duplicate 138645
DELETE FROM `pool_gameobject` WHERE `guid` = 138653;
DELETE FROM `gameobject` WHERE `guid` = 140464; -- Duplicate 138312
DELETE FROM `pool_gameobject` WHERE `guid` = 140464;
DELETE FROM `gameobject` WHERE `guid` = 140463; -- Duplicate 138309
DELETE FROM `pool_gameobject` WHERE `guid` = 140463;
UPDATE `gameobject` SET `position_x` = -1640.56, `position_y` = -3274.57, `position_z` = 24.9171, `orientation` = -1.50098, `rotation2` = -0.681997, `rotation3` = 0.731355 WHERE `guid` = 130719 AND `id` = 2043;
DELETE FROM `gameobject` WHERE `guid` = 130761; -- Duplicate 130736/130712/130743
DELETE FROM `pool_gameobject` WHERE `guid` = 130761;
DELETE FROM `gameobject` WHERE `guid` = 132965; -- Duplicate 130715
DELETE FROM `pool_gameobject` WHERE `guid` = 132965;
DELETE FROM `gameobject` WHERE `guid` = 130729; -- Duplicate 130777
DELETE FROM `pool_gameobject` WHERE `guid` = 130729;
DELETE FROM `gameobject` WHERE `guid` = 130764; -- Duplicate 130728
DELETE FROM `pool_gameobject` WHERE `guid` = 130764;
UPDATE `gameobject` SET `position_x` = -943.772, `position_y` = -2879.49, `position_z` = 66.9773, `orientation` = -1.44862, `rotation2` = -0.662619, `rotation3` = 0.748957 WHERE `guid` = 130766 AND `id` = 2043;
DELETE FROM `gameobject` WHERE `guid` = 130750; -- Duplicate 130766
DELETE FROM `pool_gameobject` WHERE `guid` = 130750;
DELETE FROM `gameobject` WHERE `guid` = 132967; -- Duplicate 130222
DELETE FROM `pool_gameobject` WHERE `guid` = 132967;
DELETE FROM `gameobject` WHERE `guid` = 132966; -- Duplicate 130213
DELETE FROM `pool_gameobject` WHERE `guid` = 132966;
DELETE FROM `gameobject` WHERE `guid` = 132971; -- Duplicate 130230
DELETE FROM `pool_gameobject` WHERE `guid` = 132971;
DELETE FROM `gameobject` WHERE `guid` = 130206; -- Duplicate 132969
DELETE FROM `pool_gameobject` WHERE `guid` = 130206;
DELETE FROM `gameobject` WHERE `guid` = 130241; -- Duplicate 132961
DELETE FROM `pool_gameobject` WHERE `guid` = 130241;
DELETE FROM `gameobject` WHERE `guid` = 132970; -- Duplicate 130226
DELETE FROM `pool_gameobject` WHERE `guid` = 132970;
UPDATE `gameobject` SET `position_x` = -116.969, `position_y` = -118.776, `position_z` = 137.862, `orientation` = 2.93214, `rotation2` = 0.994521, `rotation3` = 0.104535 WHERE `guid` = 130214 AND `id` = 2043;
DELETE FROM `gameobject` WHERE `guid` = 132968; -- Duplicate 130214
DELETE FROM `pool_gameobject` WHERE `guid` = 132968;
DELETE FROM `gameobject` WHERE `guid` = 132960; -- Duplicate 130221
DELETE FROM `pool_gameobject` WHERE `guid` = 132960;
DELETE FROM `gameobject` WHERE `guid` = 134935; -- Duplicate 134938
DELETE FROM `pool_gameobject` WHERE `guid` = 134935;
DELETE FROM `gameobject` WHERE `guid` = 132964; -- Duplicate 130219
DELETE FROM `pool_gameobject` WHERE `guid` = 132964;
DELETE FROM `gameobject` WHERE `guid` = 134954; -- Duplicate 134947
DELETE FROM `pool_gameobject` WHERE `guid` = 134954;
DELETE FROM `gameobject` WHERE `guid` = 132962; -- Duplicate 130220
DELETE FROM `pool_gameobject` WHERE `guid` = 132962;
DELETE FROM `gameobject` WHERE `guid` = 132963; -- Duplicate 130239
DELETE FROM `pool_gameobject` WHERE `guid` = 132963;
DELETE FROM `gameobject` WHERE `guid` IN (134948,134945,134936); -- Duplicate 134939
DELETE FROM `pool_gameobject` WHERE `guid` IN (134948,134945,134936);
DELETE FROM `gameobject` WHERE `guid` = 135468; -- Duplicate 130227
DELETE FROM `pool_gameobject` WHERE `guid` = 135468;
DELETE FROM `gameobject` WHERE `guid` = 135467; -- Duplicate 130240
DELETE FROM `pool_gameobject` WHERE `guid` = 135467;
DELETE FROM `gameobject` WHERE `guid` = 135469; -- Duplicate 130212
DELETE FROM `pool_gameobject` WHERE `guid` = 135469;
DELETE FROM `gameobject` WHERE `guid` = 135470; -- Duplicate 130218
DELETE FROM `pool_gameobject` WHERE `guid` = 135470;
DELETE FROM `gameobject` WHERE `guid` = 135471; -- Duplicate 130225
DELETE FROM `pool_gameobject` WHERE `guid` = 135471;

DELETE FROM `gameobject` WHERE `guid` IN (64034,64037,87554,87556,64036,87555,86850,87352,87354,87350,87690,64033,87351,86851,64029,86860,86861,86863,86849,87356,86845,87355,86855,86844,87560,86853,87559,86857,86846,86843,86842,64045,64043,65334,86854,65330,65332,87557,87688,64041,64027,86852,86864,7346,7205,56029,7244,56008,56014,7283,7333,7226,7185,7065,135470,135471) AND `id` = 2043;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(64027, 2043, 1, 1, 2967.38, -4074.46, 103.338, 1.79769, 0, 0, 0.782608, 0.622514, 45, 90, 100, 1),
(64029, 2043, 0, 1, -9919.22, -4132.79, 22.7334, 0.244346, 0, 0, 0.121869, 0.992546, 45, 90, 100, 1),
(64033, 2043, 0, 1, -10220.8, -3086.67, 22.225, 0.750491, 0, 0, 0.366501, 0.930418, 45, 90, 100, 1),
(64034, 2043, 0, 1, -13625.3, 316.356, 44.1129, 1.06465, 0, 0, 0.507538, 0.861629, 45, 90, 100, 1),
(64036, 2043, 0, 1, -12841.2, 97.749, 19.3022, -0.820303, 0, 0, -0.398748, 0.91706, 45, 90, 100, 1),
(64037, 2043, 0, 1, -13468.4, 345.16, 36.1291, 0.558504, 0, 0, 0.275637, 0.961262, 45, 90, 100, 1),
(64041, 2043, 1, 1, 2304.78, -6388.19, 117.193, -3.08918, 0, 0, -0.999657, 0.0262033, 45, 90, 100, 1),
(64043, 2043, 1, 1, -3384.03, -3199.55, 36.5296, -2.86233, 0, 0, -0.990267, 0.139178, 45, 90, 100, 1),
(64045, 2043, 1, 1, -3531.54, -3056.35, 36.5391, 0.453785, 0, 0, 0.224951, 0.97437, 45, 90, 100, 1),
(65330, 2043, 0, 1, -1005.75, -2761.2, 49.9008, 2.74016, 0, 0, 0.979924, 0.199371, 45, 90, 100, 1),
(65332, 2043, 0, 1, -873.379, -2402.82, 57.2111, -2.63544, 0, 0, -0.968147, 0.250383, 45, 90, 100, 1),
(65334, 2043, 0, 1, -1712.81, -3476.88, 53.6383, 1.44862, 0, 0, 0.662619, 0.748957, 45, 90, 100, 1),
(86842, 2043, 1, 1, -3644.71, -2894.66, 36.3016, -2.18166, 0, 0, -0.88701, 0.461749, 45, 90, 100, 1),
(86843, 2043, 1, 1, -3794.42, 1760.53, 159.905, 0.820303, 0, 0, 0.398748, 0.91706, 45, 90, 100, 1),
(86844, 2043, 1, 1, -4442.9, 648.624, 66.5648, 1.93731, 0, 0, 0.824125, 0.566409, 45, 90, 100, 1),
(86845, 2043, 1, 1, -4651.69, 1035.05, 108.29, -0.855211, 0, 0, -0.414693, 0.909961, 45, 90, 100, 1),
(86846, 2043, 1, 1, -3886.59, -3546.01, 37.314, 2.35619, 0, 0, 0.923879, 0.382686, 45, 90, 100, 1),
(86849, 2043, 1, 1, -4963.32, 334.988, 23.8516, -2.44346, 0, 0, -0.939692, 0.342021, 45, 90, 100, 1),
(86850, 2043, 0, 1, -12194.6, -895.55, 40.0078, 0.383971, 0, 0, 0.190808, 0.981627, 45, 90, 100, 1),
(86851, 2043, 0, 1, -10054.7, -3291.11, 23.8859, -2.72271, 0, 0, -0.978147, 0.207914, 45, 90, 100, 1),
(86852, 2043, 1, 1, 3213.58, -5146.55, 140.037, 0.942477, 0, 0, 0.45399, 0.891007, 45, 90, 100, 1),
(86853, 2043, 1, 1, -4151.86, 181.619, 60.0951, -0.698132, 0, 0, -0.34202, 0.939693, 45, 90, 100, 1),
(86854, 2043, 0, 1, -1025.81, -2997.91, 54.5303, -0.383971, 0, 0, -0.190808, 0.981627, 45, 90, 100, 1),
(86855, 2043, 1, 1, -4451.57, -3576.23, 44.9064, -1.01229, 0, 0, -0.484809, 0.87462, 45, 90, 100, 1),
(86857, 2043, 1, 1, -3940.15, -3543.23, 41.0601, -0.401425, 0, 0, -0.199368, 0.979925, 45, 90, 100, 1),
(86860, 2043, 1, 1, -5331.3, 418.459, 59.2886, 1.83259, 0, 0, 0.793352, 0.608764, 45, 90, 100, 1),
(86861, 2043, 1, 1, -5071.13, 1282.02, 41.5515, -0.279252, 0, 0, -0.139173, 0.990268, 45, 90, 100, 1),
(86863, 2043, 1, 1, -5024.87, 1576.07, 59.1374, 3.10665, 0, 0, 0.999847, 0.0174704, 45, 90, 100, 1),
(86864, 2043, 1, 1, 3482.29, -4117.89, 101.778, -0.942477, 0, 0, -0.45399, 0.891007, 45, 90, 100, 1),
(87350, 2043, 0, 1, -11548.4, 843.898, 23.3085, 2.47837, 0, 0, 0.945519, 0.325567, 45, 90, 100, 1),
(87351, 2043, 0, 1, -10201.5, -3447.1, 22.3132, -0.488691, 0, 0, -0.241921, 0.970296, 45, 90, 100, 1),
(87352, 2043, 0, 1, -11956.2, 158.976, 17.6716, 3.03684, 0, 0, 0.998629, 0.0523524, 45, 90, 100, 1),
(87354, 2043, 1, 1, -4211.01, 617.553, 66.1571, 2.96704, 0, 0, 0.996194, 0.0871655, 45, 90, 100, 1),
(87355, 2043, 1, 1, -4478.4, -317.536, 49.9968, 1.65806, 0, 0, 0.737276, 0.675591, 45, 90, 100, 1),
(87356, 2043, 1, 1, -4879.28, 694.649, 47.5938, 1.50098, 0, 0, 0.681997, 0.731355, 45, 90, 100, 1),
(87554, 2043, 0, 1, -13419.6, 250.341, 22.6322, -1.15192, 0, 0, -0.54464, 0.83867, 45, 90, 100, 1),
(87555, 2043, 0, 1, -12472.2, -656.677, 38.4287, 1.01229, 0, 0, 0.484809, 0.87462, 45, 90, 100, 1),
(87556, 2043, 0, 1, -12909.8, -309.647, 14.1951, -3.12412, 0, 0, -0.999962, 0.00873622, 45, 90, 100, 1),
(87557, 2043, 0, 1, 281.061, -4074.91, 125.109, -2.11185, 0, 0, -0.870356, 0.492423, 45, 90, 100, 1),
(87559, 2043, 1, 1, -4001.19, -3699.22, 45.9126, 1.18682, 0, 0, 0.559191, 0.829039, 45, 90, 100, 1),
(87560, 2043, 1, 1, -4422.45, -75.8642, 56.9736, 1.309, 0, 0, 0.608763, 0.793352, 45, 90, 100, 1),
(87688, 2043, 0, 1, 472.906, -3579.43, 119.614, -0.698131, 0, 0, -0.34202, 0.939693, 45, 90, 100, 1),
(87690, 2043, 0, 1, -10222.3, -3910.89, 22.8978, 2.70526, 0, 0, 0.976296, 0.21644, 45, 90, 100, 1),

(7346, 2043, 1, 1, -5341.18, 1113.72, 65.19, 4.7473, 0, 0, -0.694658, 0.71934, 45, 90, 100, 1),
(7065, 2043, 0, 1, -1111.34, -3313.98, 50.7871, 1.88495, 0, 0, 0.809016, 0.587786, 45, 90, 100, 1),
(7185, 2043, 0, 1, -1803.52, -3141.65, 41.2629, 3.45576, 0, 0, -0.987688, 0.156436, 45, 90, 100, 1),
(7205, 2043, 1, 1, -4975.66, -3709.25, 42.2869, 5.88176, 0, 0, -0.199367, 0.979925, 45, 90, 100, 1),
(7226, 2043, 1, 1, -2673.08, -3158.31, 44.6691, 0.174532, 0, 0, 0.0871553, 0.996195, 45, 90, 100, 1),
(7244, 2043, 1, 1, -4431.83, -3681.06, 38.826, 3.26377, 0, 0, -0.998135, 0.0610518, 45, 90, 100, 1),
(7283, 2043, 1, 1, -3680.71, -2954.99, 34.8736, 1.46608, 0, 0, 0.66913, 0.743145, 45, 90, 100, 1),
(7333, 2043, 1, 1, -3498.04, 1972.02, 44.8768, 3.89209, 0, 0, -0.930417, 0.366502, 45, 90, 100, 1),
(135471, 2043, 1, 1, 3820.44, -4898.04, 148.32, 0.244346, 0, 0, 0.121869, 0.992546, 45, 90, 100, 1), -- 7347
(135470, 2043, 1, 1, -2770.72, -3873.4, 37.4555, 5.2709, 0, 0, -0.484809, 0.87462, 45, 90, 100, 1), -- 55934
(56008, 2043, 1, 1, -4090.3, -3162.94, 40.5341, 3.89209, 0, 0, -0.930417, 0.366502, 45, 90, 100, 1),
(56014, 2043, 1, 1, -3772.92, -3562.16, 38.3371, 5.93412, 0, 0, -0.173648, 0.984808, 45, 90, 100, 1),
(56029, 2043, 1, 1, -4567.23, -2790.01, 39.6747, 4.38078, 0, 0, -0.814116, 0.580703, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (64034,64037,87554,87556,64036,87555,86850,87352,87354,87350,87690,64033,87351,86851,64029,86860,86861,86863,86849,87356,86845,87355,86855,86844,87560,86853,87559,86857,86846,86843,86842,64045,64043,65334,86854,65330,65332,87557,87688,64041,64027,86852,86864,7346,7205,56029,7244,56008,56014,7283,7333,7226,7185,7065,135470,135471);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(65330, 13001, 0, 'Khadgar\'s Whisker zone 45, node 501'), -- Arathi Highlands
(86854, 13001, 0, 'Khadgar\'s Whisker zone 45, node 516'),
(65334, 13001, 0, 'Khadgar\'s Whisker zone 45, node 505'),
(65332, 13001, 0, 'Khadgar\'s Whisker zone 45, node 503'),
(7065, 13001, 0, 'Arathi Highlands - Khadgar\'s Whisker'),
(7185, 13001, 0, 'Arathi Highlands - Khadgar\'s Whisker'),

(86853, 13033, 0, 'Khadgar\'s Whisker zone 357, node 204'), -- Feralas
(86845, 13033, 0, 'Khadgar\'s Whisker zone 357, node 200'),
(86844, 13033, 0, 'Khadgar\'s Whisker zone 357, node 199'),
(86843, 13033, 0, 'Khadgar\'s Whisker zone 357, node 198'),
(87354, 13033, 0, 'Khadgar\'s Whisker zone 357, node 246'),
(87560, 13033, 0, 'Khadgar\'s Whisker zone 357, node 254'),
(86860, 13033, 0, 'Khadgar\'s Whisker zone 357, node 205'),
(86861, 13033, 0, 'Khadgar\'s Whisker zone 357, node 206'),
(86863, 13033, 0, 'Khadgar\'s Whisker zone 357, node 207'),
(87355, 13033, 0, 'Khadgar\'s Whisker zone 357, node 247'),
(87356, 13033, 0, 'Khadgar\'s Whisker zone 357, node 248'),
(86849, 13033, 0, 'Khadgar\'s Whisker zone 357, node 203'),
(7346, 13033, 0, 'Feralas - Khadgar\'s Whisker'),
(7333, 13033, 0, 'Feralas - Khadgar\'s Whisker'),

(87557, 13019, 0, 'Khadgar\'s Whisker zone 47, node 350'), -- The Hinterlands
(87688, 13019, 0, 'The Hinterlands - Khadgar\'s Whisker'),

(87350, 13017, 0, 'Khadgar\'s Whisker zone 33, node 708'), -- Stranglethorn Vale
(87352, 13017, 0, 'Khadgar\'s Whisker zone 33, node 709'),
(86850, 13017, 0, 'Khadgar\'s Whisker zone 33, node 683'),
(64034, 13017, 0, 'Khadgar\'s Whisker zone 33, node 632'),
(64036, 13017, 0, 'Khadgar\'s Whisker zone 33, node 633'),
(64037, 13017, 0, 'Khadgar\'s Whisker zone 33, node 634'),
(87554, 13017, 0, 'Stranglethorn Vale - Khadgar\'s Whisker'),
(87555, 13017, 0, 'Stranglethorn Vale - Khadgar\'s Whisker'),
(87556, 13017, 0, 'Stranglethorn Vale - Khadgar\'s Whisker'),

(64027, 13025, 0, 'Khadgar\'s Whisker zone 16, node 502'), -- Azshara
(86864, 13025, 0, 'Khadgar\'s Whisker zone 16, node 517'),
(64041, 13025, 0, 'Khadgar\'s Whisker zone 16, node 503'),
(86852, 13025, 0, 'Khadgar\'s Whisker zone 16, node 516'),
(135471, 13025, 0, 'Azshara - Khadgar\'s Whisker'),

(64045, 13031, 0, 'Khadgar\'s Whisker zone 15, node 55'), -- Dustwallow Marsh
(64043, 13031, 0, 'Khadgar\'s Whisker zone 15, node 53'),
(86857, 13031, 0, 'Khadgar\'s Whisker zone 15, node 77'),
(86855, 13031, 0, 'Khadgar\'s Whisker zone 15, node 75'),
(86842, 13031, 0, 'Khadgar\'s Whisker zone 15, node 73'),
(86846, 13031, 0, 'Khadgar\'s Whisker zone 15, node 74'),
(87559, 13031, 0, 'Dustwallow Marsh - Khadgar\'s Whisker'),
(7205, 13031, 0, 'Dustwallow Marsh - Khadgar\'s Whisker'),
(7226, 13031, 0, 'Dustwallow Marsh - Khadgar\'s Whisker'),
(7244, 13031, 0, 'Dustwallow Marsh - Khadgar\'s Whisker'),
(7283, 13031, 0, 'Dustwallow Marsh - Khadgar\'s Whisker'),
(135470, 13031, 0, 'Dustwallow Marsh - Khadgar\'s Whisker'),
(56008, 13031, 0, 'Dustwallow Marsh - Khadgar\'s Whisker'),
(56014, 13031, 0, 'Dustwallow Marsh - Khadgar\'s Whisker'),
(56029, 13031, 0, 'Dustwallow Marsh - Khadgar\'s Whisker'),

(64029, 13018, 0, 'Khadgar\'s Whisker zone 8, node 373'), -- Swamp of Sorrows
(64033, 13018, 0, 'Khadgar\'s Whisker zone 8, node 374'),
(87351, 13018, 0, 'Khadgar\'s Whisker zone 8, node 399'),
(86851, 13018, 0, 'Khadgar\'s Whisker zone 8, node 392'),
(87690, 13018, 0, 'Swamp of Sorrows - Khadgar\'s Whisker');

-- Wintersbite 2044
-- https://tbc.wowhead.com/object=2044/wintersbite
DELETE FROM `gameobject` WHERE `guid` = 132975; -- Duplicate 130263
DELETE FROM `pool_gameobject` WHERE `guid` = 132975;
DELETE FROM `gameobject` WHERE `guid` = 132976; -- Duplicate 130270
DELETE FROM `pool_gameobject` WHERE `guid` = 132976;
DELETE FROM `gameobject` WHERE `guid` = 132977; -- Duplicate 130247
DELETE FROM `pool_gameobject` WHERE `guid` = 132977;
DELETE FROM `gameobject` WHERE `guid` = 132980; -- Duplicate 130273
DELETE FROM `pool_gameobject` WHERE `guid` = 132980;
DELETE FROM `gameobject` WHERE `guid` = 132978; -- Duplicate 130271
DELETE FROM `pool_gameobject` WHERE `guid` = 132978;
DELETE FROM `gameobject` WHERE `guid` = 132983; -- Duplicate 130255
DELETE FROM `pool_gameobject` WHERE `guid` = 132983;
DELETE FROM `gameobject` WHERE `guid` = 132984; -- Duplicate 130264
DELETE FROM `pool_gameobject` WHERE `guid` = 132984;
DELETE FROM `gameobject` WHERE `guid` = 132987; -- Duplicate 130265
DELETE FROM `pool_gameobject` WHERE `guid` = 132987;
DELETE FROM `gameobject` WHERE `guid` = 132981; -- Duplicate 130275
DELETE FROM `pool_gameobject` WHERE `guid` = 132981;
DELETE FROM `gameobject` WHERE `guid` = 132985; -- Duplicate 130267
DELETE FROM `pool_gameobject` WHERE `guid` = 132985;
DELETE FROM `gameobject` WHERE `guid` = 132973; -- Duplicate 130250
DELETE FROM `pool_gameobject` WHERE `guid` = 132973;
DELETE FROM `gameobject` WHERE `guid` = 132974; -- Duplicate 130244
DELETE FROM `pool_gameobject` WHERE `guid` = 132974;
DELETE FROM `gameobject` WHERE `guid` = 132972; -- Duplicate 130260
DELETE FROM `pool_gameobject` WHERE `guid` = 132972;
DELETE FROM `gameobject` WHERE `guid` = 132986; -- Duplicate 130266
DELETE FROM `pool_gameobject` WHERE `guid` = 132986;
DELETE FROM `gameobject` WHERE `guid` = 132988; -- Duplicate 130259
DELETE FROM `pool_gameobject` WHERE `guid` = 132988;
DELETE FROM `gameobject` WHERE `guid` = 132982; -- Duplicate 130276
DELETE FROM `pool_gameobject` WHERE `guid` = 132982;
DELETE FROM `gameobject` WHERE `guid` = 132979; -- Duplicate 130262
DELETE FROM `pool_gameobject` WHERE `guid` = 132979;

-- Stranglekelp 2045
-- https://tbc.wowhead.com/object=2045/stranglekelp
DELETE FROM `gameobject` WHERE `guid` = 134296; -- Duplicate 134249
DELETE FROM `pool_gameobject` WHERE `guid` = 134296;
UPDATE `gameobject` SET `position_x` = -14021.3, `position_y` = 678.831, `position_z` = -36.2025, `orientation` = -1.18682, `rotation2` = -0.559191, `rotation3` = 0.829039 WHERE `guid` = 134259 AND `id` = 2045;
DELETE FROM `gameobject` WHERE `guid` = 134269; -- Duplicate 134259
DELETE FROM `pool_gameobject` WHERE `guid` = 134269;
UPDATE `gameobject` SET `position_x` = -13691.3, `position_y` = 767.772, `position_z` = -12.2924, `orientation` = 2.33874, `rotation2` = 0.920505, `rotation3` = 0.390732 WHERE `guid` = 134265 AND `id` = 2045;
DELETE FROM `gameobject` WHERE `guid` = 134276; -- Duplicate 134299
DELETE FROM `pool_gameobject` WHERE `guid` = 134276;
DELETE FROM `gameobject` WHERE `guid` = 134300; -- Duplicate 134248
DELETE FROM `pool_gameobject` WHERE `guid` = 134300;
UPDATE `gameobject` SET `position_x` = -3281.69, `position_y` = -889.824, `position_z` = -11.5435, `orientation` = 0.349065, `rotation2` = 0.173648, `rotation3` = 0.984808 WHERE `guid` = 136317 AND `id` = 2045;
UPDATE `gameobject` SET `position_x` = -3084.31, `position_y` = -886.973, `position_z` = -12.8226, `orientation` = 0.436332, `rotation2` = 0.216439, `rotation3` = 0.976296 WHERE `guid` = 136354 AND `id` = 2045;
UPDATE `gameobject` SET `position_x` = -2523.04, `position_y` = -1413.89, `position_z` = -34.7353, `orientation` = -1.50098, `rotation2` = -0.681997, `rotation3` = 0.731355 WHERE `guid` = 136341 AND `id` = 2045;
DELETE FROM `gameobject` WHERE `guid` = 130785; -- Duplicate 136306
DELETE FROM `pool_gameobject` WHERE `guid` = 130785;
DELETE FROM `gameobject` WHERE `guid` = 140527; -- Duplicate 138330
DELETE FROM `pool_gameobject` WHERE `guid` = 140527;
DELETE FROM `gameobject` WHERE `guid` = 133013; -- Duplicate 133008
DELETE FROM `pool_gameobject` WHERE `guid` = 133013;
DELETE FROM `gameobject` WHERE `guid` = 130788; -- Duplicate 133018
DELETE FROM `pool_gameobject` WHERE `guid` = 130788;
DELETE FROM `gameobject` WHERE `guid` = 130792; -- Duplicate 132991
DELETE FROM `pool_gameobject` WHERE `guid` = 130792;
DELETE FROM `gameobject` WHERE `guid` = 133014; -- Duplicate 132995
DELETE FROM `pool_gameobject` WHERE `guid` = 133014;
DELETE FROM `gameobject` WHERE `guid` = 130790; -- Duplicate 133004
DELETE FROM `pool_gameobject` WHERE `guid` = 130790;
DELETE FROM `gameobject` WHERE `guid` = 130786; -- Duplicate 133025
DELETE FROM `pool_gameobject` WHERE `guid` = 130786;
UPDATE `gameobject` SET `position_x` = -1197.13, `position_y` = -3962.99, `position_z` = -13.6481, `orientation` = -0.244346, `rotation2` = -0.121869, `rotation3` = 0.992546 WHERE `guid` = 140478 AND `id` = 2045;
DELETE FROM `gameobject` WHERE `guid` = 140488; -- Duplicate 138233
DELETE FROM `pool_gameobject` WHERE `guid` = 140488;
UPDATE `gameobject` SET `position_x` = -1107.98, `position_y` = -4256.02, `position_z` = -9.86849, `orientation` = 5.88176, `rotation2` = -0.199367, `rotation3` = 0.979925 WHERE `guid` = 140537 AND `id` = 2045; -- Duplicate 138231
DELETE FROM `gameobject` WHERE `guid` = 138238; -- Duplicate 140470
DELETE FROM `pool_gameobject` WHERE `guid` = 138238;
DELETE FROM `gameobject` WHERE `guid` = 138235; -- Duplicate 140502
DELETE FROM `pool_gameobject` WHERE `guid` = 138235;
DELETE FROM `gameobject` WHERE `guid` = 138230; -- Duplicate 140541
DELETE FROM `pool_gameobject` WHERE `guid` = 138230;
DELETE FROM `gameobject` WHERE `guid` = 138239; -- Duplicate 140516
DELETE FROM `pool_gameobject` WHERE `guid` = 138239;
DELETE FROM `gameobject` WHERE `guid` = 138236; -- Duplicate 140500
DELETE FROM `pool_gameobject` WHERE `guid` = 138236;
UPDATE `gameobject` SET `position_x` = -868.215, `position_y` = -3953.02, `position_z` = -30.572, `orientation` = -2.61799, `rotation2` = -0.965925, `rotation3` = 0.258821 WHERE `guid` = 140474 AND `id` = 2045;
DELETE FROM `gameobject` WHERE `guid` = 138234; -- Duplicate 140484
DELETE FROM `pool_gameobject` WHERE `guid` = 138234;
DELETE FROM `gameobject` WHERE `guid` = 138232; -- Duplicate 140536
DELETE FROM `pool_gameobject` WHERE `guid` = 138232;
DELETE FROM `gameobject` WHERE `guid` = 138237; -- Duplicate 140499
DELETE FROM `pool_gameobject` WHERE `guid` = 138237;
DELETE FROM `gameobject` WHERE `guid` = 133797; -- Duplicate 130278
DELETE FROM `pool_gameobject` WHERE `guid` = 133797;
DELETE FROM `gameobject` WHERE `guid` = 133795; -- Duplicate 130277
DELETE FROM `pool_gameobject` WHERE `guid` = 133795;
DELETE FROM `gameobject` WHERE `guid` = 136662; -- Duplicate 136647
DELETE FROM `pool_gameobject` WHERE `guid` = 136662;
DELETE FROM `gameobject` WHERE `guid` = 136658; -- Duplicate 136653
DELETE FROM `pool_gameobject` WHERE `guid` = 136658;
DELETE FROM `gameobject` WHERE `guid` IN (137669,137717,136669); -- Duplicate 136649
DELETE FROM `pool_gameobject` WHERE `guid` IN (137669,137717,136669);
DELETE FROM `gameobject` WHERE `guid` = 137769; -- Duplicate 136751
DELETE FROM `pool_gameobject` WHERE `guid` = 137769;
DELETE FROM `gameobject` WHERE `guid` = 137754; -- Duplicate 136701
DELETE FROM `pool_gameobject` WHERE `guid` = 137754;
DELETE FROM `gameobject` WHERE `guid` = 137660; -- Duplicate 136645
DELETE FROM `pool_gameobject` WHERE `guid` = 137660;
DELETE FROM `gameobject` WHERE `guid` = 137768; -- Duplicate 136752
DELETE FROM `pool_gameobject` WHERE `guid` = 137768;
DELETE FROM `gameobject` WHERE `guid` = 137770; -- Duplicate 136750
DELETE FROM `pool_gameobject` WHERE `guid` = 137770;
DELETE FROM `gameobject` WHERE `guid` = 137772; -- Duplicate 136749
DELETE FROM `pool_gameobject` WHERE `guid` = 137772;
DELETE FROM `gameobject` WHERE `guid` = 137700; -- Duplicate 136666
DELETE FROM `pool_gameobject` WHERE `guid` = 137700;
DELETE FROM `gameobject` WHERE `guid` = 137764; -- Duplicate 136747
DELETE FROM `pool_gameobject` WHERE `guid` = 137764;
DELETE FROM `gameobject` WHERE `guid` = 137699; -- Duplicate 136667
DELETE FROM `pool_gameobject` WHERE `guid` = 137699;
DELETE FROM `gameobject` WHERE `guid` = 137676; -- Duplicate 136646
DELETE FROM `pool_gameobject` WHERE `guid` = 137676;
DELETE FROM `gameobject` WHERE `guid` = 137689; -- Duplicate 136723
DELETE FROM `pool_gameobject` WHERE `guid` = 137689;
DELETE FROM `gameobject` WHERE `guid` = 137749; -- Duplicate 136740
DELETE FROM `pool_gameobject` WHERE `guid` = 137749;
DELETE FROM `gameobject` WHERE `guid` = 137690; -- Duplicate 136651
DELETE FROM `pool_gameobject` WHERE `guid` = 137690;
DELETE FROM `gameobject` WHERE `guid` = 137688; -- Duplicate 136703
DELETE FROM `pool_gameobject` WHERE `guid` = 137688;
DELETE FROM `gameobject` WHERE `guid` = 137672; -- Duplicate 136650
DELETE FROM `pool_gameobject` WHERE `guid` = 137672;
DELETE FROM `gameobject` WHERE `guid` = 137691; -- Duplicate 136660
DELETE FROM `pool_gameobject` WHERE `guid` = 137691;
DELETE FROM `gameobject` WHERE `guid` = 137687; -- Duplicate 137680
DELETE FROM `pool_gameobject` WHERE `guid` = 137687;
DELETE FROM `gameobject` WHERE `guid` = 137681; -- Duplicate 137752
DELETE FROM `pool_gameobject` WHERE `guid` = 137681;
UPDATE `pool_gameobject` SET `pool_entry` = 13011, `description` = 'Hillsbrad Foothills - Stranglekelp' WHERE `guid` = 130787;
UPDATE `pool_gameobject` SET `description` = 'Wetlands - Stranglekelp' WHERE `guid` = 10470;
UPDATE `pool_gameobject` SET `description` = 'Wetlands - Stranglekelp' WHERE `guid` = 10447;

DELETE FROM `gameobject` WHERE `guid` IN (86929,86930,64054,86913,86928,86925,86924,64060,64065,64058,86915,64057,87568,64061,64051,87361,65341,64062,86900,86926,87564,65364,87562,87563,86877,86937,65365,86869,86870,86871,86878,86875,86890,86889,86882,86879,86887,86899,86904,65349,86888,86914,65339,86919,65337,86901,65346,65357,65350,86897,64063,65342,64053,86873,65358,86933,86895,65344,65355,65352,65360,87570,87565,65347,86935,87062,86950,86949,86946,65343,86927,87006,86943,65354,65361,86892,87566,65353,86948,86893,86894,87063,87359,87572,86947,87357,87692,87691,64067,64071,87364,87561,87567,86939,86891,87362,87358,64050,64069,86938,86872,5562,86917,86923,86934,86920,86876,64049,86874,87061,86880,86883,86936,86941,86885,64067,86927,86943,86946,86947,86948,86949,86950,87006,87063,87564,87565,87568,87570,87572,87691,87692,7402,7410,7411,7432,7439,7441,137681,7459,7462,7486,7492,7504,7528,7556,55964) AND `id` = 2045;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5562, 2045, 1, 1, 4147.58, 1212.44, -15.3628, -2.9845, 0, 0, -0.996917, 0.0784664, 45, 90, 100, 1),
(64049, 2045, 1, 1, 5763.34, 683.376, -34.9023, 0.349065, 0, 0, 0.173648, 0.984808, 45, 90, 100, 1),
(64050, 2045, 1, 1, 3610.39, 897.874, -2.06501, 3.00195, 0, 0, 0.997563, 0.0697646, 45, 90, 100, 1),
(64051, 2045, 0, 1, -12549.2, 534.619, -47.1639, -0.855211, 0, 0, -0.414693, 0.909961, 45, 90, 100, 1),
(64053, 2045, 0, 1, -3514.47, -597.227, -17.3902, 0.610864, 0, 0, 0.300705, 0.953717, 45, 90, 100, 1),
(64054, 2045, 0, 1, -14738.2, 426.837, -23.7297, -2.18166, 0, 0, -0.88701, 0.461749, 45, 90, 100, 1),
(64057, 2045, 0, 1, -13603.6, 419.877, -33.2804, 2.04204, 0, 0, 0.852641, 0.522496, 45, 90, 100, 1),
(64058, 2045, 0, 1, -13887.7, -229.539, -7.185, -1.18682, 0, 0, -0.559191, 0.829039, 45, 90, 100, 1),
(64060, 2045, 0, 1, -14065.4, 473.215, -14.4825, 0.244346, 0, 0, 0.121869, 0.992546, 45, 90, 100, 1),
(64061, 2045, 0, 1, -12617.1, 459.617, -57.7316, 1.39626, 0, 0, 0.642786, 0.766046, 45, 90, 100, 1),
(64062, 2045, 0, 1, -12476.1, 573.471, -68.107, 0.95993, 0, 0, 0.461748, 0.887011, 45, 90, 100, 1),
(64063, 2045, 0, 1, -3612.66, -620.549, -13.8344, 0.471238, 0, 0, 0.233445, 0.97237, 45, 90, 100, 1),
(64065, 2045, 0, 1, -13897.6, 765.022, -21.7174, -1.93731, 0, 0, -0.824125, 0.566409, 45, 90, 100, 1),
(64067, 2045, 0, 1, 1287.22, 124.78, -11.3707, -0.034906, 0, 0, -0.0174521, 0.999848, 45, 90, 100, 1),
(64069, 2045, 1, 1, 4008.57, 969.902, -4.52686, 1.13446, 0, 0, 0.537298, 0.843393, 45, 90, 100, 1),
(64071, 2045, 1, 1, 2159.04, -3167.43, 88.0487, -0.488691, 0, 0, -0.241921, 0.970296, 45, 90, 100, 1),
(65337, 2045, 0, 1, -4006.72, -785.52, -15.6079, 1.36136, 0, 0, 0.629322, 0.777145, 45, 90, 100, 1),
(65339, 2045, 0, 1, -4040.65, -783.567, -13.2906, 0.122173, 0, 0, 0.0610485, 0.998135, 45, 90, 100, 1),
(65341, 2045, 0, 1, -12476.5, 425.215, -21.1171, -1.74533, 0, 0, -0.766045, 0.642787, 45, 90, 100, 1),
(65342, 2045, 0, 1, -3585.93, -1118.09, -13.8144, -0.506145, 0, 0, -0.25038, 0.968148, 45, 90, 100, 1),
(65343, 2045, 0, 1, -1677.83, -1121.21, -3.60723, -1.11701, 0, 0, -0.529919, 0.848048, 45, 90, 100, 1),
(65344, 2045, 0, 1, -2980.53, -857.71, -10.4009, -2.19912, 0, 0, -0.891008, 0.453988, 45, 90, 100, 1),
(65346, 2045, 0, 1, -3946.65, -878.974, -13.3966, 2.44346, 0, 0, 0.939692, 0.342021, 45, 90, 100, 1),
(65347, 2045, 0, 1, -2553.31, -1336.61, -42.1703, -1.29154, 0, 0, -0.601814, 0.798637, 45, 90, 100, 1),
(65349, 2045, 0, 1, -4108.78, -749.394, -13.1341, 0.663223, 0, 0, 0.325567, 0.945519, 45, 90, 100, 1),
(65350, 2045, 0, 1, -3683.3, -1085.2, -45.1089, -1.78023, 0, 0, -0.777144, 0.629323, 45, 90, 100, 1),
(65352, 2045, 0, 1, -2743.68, -927.421, -13.5739, 0.366518, 0, 0, 0.182235, 0.983255, 45, 90, 100, 1),
(65353, 2045, 0, 1, -1153.73, -439.879, -41.0976, -0.942477, 0, 0, -0.45399, 0.891007, 45, 90, 100, 1),
(65354, 2045, 0, 1, -1272.66, -446.993, -90.7419, 0.925024, 0, 0, 0.446198, 0.894934, 45, 90, 100, 1),
(65355, 2045, 0, 1, -2824.33, -910.341, -12.6657, 1.81514, 0, 0, 0.78801, 0.615662, 45, 90, 100, 1),
(65357, 2045, 0, 1, -3877.74, -960.628, -14.7171, -1.11701, 0, 0, -0.529919, 0.848048, 45, 90, 100, 1),
(65358, 2045, 0, 1, -3441.99, -784.958, -9.7096, -0.593412, 0, 0, -0.292372, 0.956305, 45, 90, 100, 1),
(65360, 2045, 0, 1, -2716.56, -1138.35, -6.98731, -0.715585, 0, 0, -0.350207, 0.936672, 45, 90, 100, 1),
(65361, 2045, 0, 1, -1229.21, -48.2863, -39.3614, -0.349065, 0, 0, -0.173648, 0.984808, 45, 90, 100, 1),
(65364, 2045, 0, 1, -12066.3, 726.439, -17.8329, 3.10665, 0, 0, 0.999847, 0.0174704, 45, 90, 100, 1),
(65365, 2045, 1, 1, -7678.88, -4930.34, -7.2694, 1.15192, 0, 0, 0.54464, 0.83867, 45, 90, 100, 1),
(86869, 2045, 1, 1, -7289.61, -4952.4, -20.1355, 0.733038, 0, 0, 0.358368, 0.93358, 45, 90, 100, 1),
(86870, 2045, 1, 1, -5357.67, 2407.81, -40.4736, -1.64061, 0, 0, -0.731354, 0.681998, 45, 90, 100, 1),
(86871, 2045, 1, 1, -5234.63, 2232.68, -5.89968, 1.58825, 0, 0, 0.713251, 0.700909, 45, 90, 100, 1),
(86872, 2045, 1, 1, 4132.87, 1466.82, -24.9285, 0.383971, 0, 0, 0.190808, 0.981627, 45, 90, 100, 1),
(86873, 2045, 1, 1, -3512.89, -3544.94, -5.14054, 1.69297, 0, 0, 0.748956, 0.66262, 45, 90, 100, 1),
(86874, 2045, 1, 1, 6813.39, 729.232, -34.9023, 3.00195, 0, 0, 0.997563, 0.0697646, 45, 90, 100, 1),
(86875, 2045, 1, 1, -5051.09, 3747.41, -13.16, 1.29154, 0, 0, 0.601814, 0.798637, 45, 90, 100, 1),
(86876, 2045, 1, 1, 5553.85, 743.396, -14.222, 2.94959, 0, 0, 0.995395, 0.0958539, 45, 90, 100, 1),
(86877, 2045, 1, 1, -8904.25, -4764.42, -56.8974, -0.698132, 0, 0, -0.34202, 0.939693, 45, 90, 100, 1),
(86878, 2045, 1, 1, -5208.81, 3613.68, -33.2727, -2.77507, 0, 0, -0.983255, 0.182237, 45, 90, 100, 1),
(86879, 2045, 1, 1, -4651.65, 2486.65, -39.4714, -2.89724, 0, 0, -0.992546, 0.121873, 45, 90, 100, 1),
(86880, 2045, 1, 1, 7161.17, 332.907, -42.5429, 1.58825, 0, 0, 0.713251, 0.700909, 45, 90, 100, 1),
(86882, 2045, 1, 1, -4854.1, 2430.44, -38.6081, -3.07177, 0, 0, -0.999391, 0.0349043, 45, 90, 100, 1),
(86883, 2045, 1, 1, 7161.86, 618.004, -15.1351, -0.680679, 0, 0, -0.333807, 0.942641, 45, 90, 100, 1),
(86885, 2045, 1, 1, 7649.13, -442.55, -25.3444, -1.0821, 0, 0, -0.515036, 0.857168, 45, 90, 100, 1),
(86887, 2045, 1, 1, -4548.84, 2390.94, -7.69914, 1.65806, 0, 0, 0.737276, 0.675591, 45, 90, 100, 1),
(86888, 2045, 1, 1, -4107.81, 2753.19, -35.5572, -1.3439, 0, 0, -0.622513, 0.782609, 45, 90, 100, 1),
(86889, 2045, 1, 1, -5028.92, 3222.56, -3.39981, 0.226892, 0, 0, 0.113203, 0.993572, 45, 90, 100, 1),
(86890, 2045, 1, 1, -5044.58, 3049.64, -36.145, -1.06465, 0, 0, -0.507538, 0.861629, 45, 90, 100, 1),
(86891, 2045, 1, 1, 3051.1, 512.591, -5.92066, -0.750491, 0, 0, -0.366501, 0.930418, 45, 90, 100, 1),
(86892, 2045, 0, 1, -1217.24, -532.671, -90.8633, -2.1293, 0, 0, -0.874619, 0.48481, 45, 90, 100, 1),
(86893, 2045, 0, 1, -1141.71, -545.092, -41.2592, -2.72271, 0, 0, -0.978147, 0.207914, 45, 90, 100, 1),
(86894, 2045, 0, 1, -1109.09, -484.259, -42.2045, 2.07694, 0, 0, 0.861629, 0.507539, 45, 90, 100, 1),
(86895, 2045, 0, 1, -3317.57, -688.273, -11.7266, -0.418879, 0, 0, -0.207912, 0.978148, 45, 90, 100, 1),
(86897, 2045, 1, 1, -3620.14, -4055.11, -3.78779, 0.523598, 0, 0, 0.258819, 0.965926, 45, 90, 100, 1),
(86899, 2045, 1, 1, -4381.42, 2387.58, -14.8299, -3.12412, 0, 0, -0.999962, 0.00873622, 45, 90, 100, 1),
(86900, 2045, 0, 1, -12320.9, 438.169, -30.6961, 0.069812, 0, 0, 0.0348989, 0.999391, 45, 90, 100, 1),
(86901, 2045, 0, 1, -3988.16, -702.845, -11.7058, -0.645772, 0, 0, -0.317305, 0.948324, 45, 90, 100, 1),
(86904, 2045, 1, 1, -4133.59, -4133.38, -3.81712, 0.226892, 0, 0, 0.113203, 0.993572, 45, 90, 100, 1),
(86913, 2045, 0, 1, -14685.5, 201.541, -18.1998, -2.25147, 0, 0, -0.902584, 0.430513, 45, 90, 100, 1),
(86914, 2045, 0, 1, -4089.89, -634.874, -12.8446, -0.191985, 0, 0, -0.0958451, 0.995396, 45, 90, 100, 1),
(86915, 2045, 0, 1, -13824.5, 756.112, -20.9001, 1.36136, 0, 0, 0.629322, 0.777145, 45, 90, 100, 1),
(86917, 2045, 1, 1, 4719.94, 734.034, -4.43692, -0.977383, 0, 0, -0.469471, 0.882948, 45, 90, 100, 1),
(86919, 2045, 1, 1, -4028.73, 3024.21, -2.06751, 0.541051, 0, 0, 0.267238, 0.963631, 45, 90, 100, 1),
(86920, 2045, 1, 1, 5223.18, 701.084, -17.0087, -0.471238, 0, 0, -0.233445, 0.97237, 45, 90, 100, 1),
(86923, 2045, 1, 1, 4812.9, 833.845, -7.73045, -2.67035, 0, 0, -0.972369, 0.233447, 45, 90, 100, 1),
(86924, 2045, 0, 1, -14156.2, -116.809, -10.5092, -0.523598, 0, 0, -0.258819, 0.965926, 45, 90, 100, 1),
(86925, 2045, 0, 1, -14248.8, -67.0717, -8.99623, -2.94959, 0, 0, -0.995395, 0.0958539, 45, 90, 100, 1),
(86926, 2045, 0, 1, -12234.2, 875.091, -15.3099, 1.02974, 0, 0, 0.492422, 0.870357, 45, 90, 100, 1),
(86927, 2045, 1, 1, -1583.17, -3992.43, -4.22765, -3.07177, 0, 0, -0.999391, 0.0349043, 45, 90, 100, 1),
(86928, 2045, 0, 1, -14457.9, -42.2473, -14.1078, -1.62316, 0, 0, -0.725376, 0.688353, 45, 90, 100, 1),
(86929, 2045, 0, 1, -14866.2, 48.6583, -9.68805, 0.436332, 0, 0, 0.216439, 0.976296, 45, 90, 100, 1),
(86930, 2045, 0, 1, -14745.1, 181.902, -20.5436, -1.0472, 0, 0, -0.500001, 0.866025, 45, 90, 100, 1),
(86933, 2045, 0, 1, -3425.11, -768.991, -10.2332, -1.29154, 0, 0, -0.601814, 0.798637, 45, 90, 100, 1),
(86934, 2045, 1, 1, 5096.73, 635.616, -14.2902, -2.79252, 0, 0, -0.984807, 0.173652, 45, 90, 100, 1),
(86935, 2045, 1, 1, -2499.76, -4033.33, -8.77919, -3.08918, 0, 0, -0.999657, 0.0262033, 45, 90, 100, 1),
(86936, 2045, 1, 1, 7412.52, 232.225, -11.4238, -0.628317, 0, 0, -0.309016, 0.951057, 45, 90, 100, 1),
(86937, 2045, 1, 1, -7770.63, -5169.9, -8.89128, 2.9845, 0, 0, 0.996917, 0.0784656, 45, 90, 100, 1),
(86938, 2045, 1, 1, 4075.7, 941.426, -1.48411, 1.6057, 0, 0, 0.719339, 0.694659, 45, 90, 100, 1),
(86939, 2045, 1, 1, 3007.8, 529.126, -5.22786, -0.698132, 0, 0, -0.34202, 0.939693, 45, 90, 100, 1),
(86941, 2045, 1, 1, 7549.06, -76.5579, -19.7629, 2.05949, 0, 0, 0.857168, 0.515037, 45, 90, 100, 1),
(86943, 2045, 1, 1, -1283.71, -3921.82, -9.34849, -2.19912, 0, 0, -0.891008, 0.453988, 45, 90, 100, 1),
(86946, 2045, 1, 1, -1793.49, -3918.55, -6.77385, 0.994837, 0, 0, 0.477158, 0.878817, 45, 90, 100, 1),
(86947, 2045, 1, 1, -1016.73, -4092.58, -38.4459, 2.30383, 0, 0, 0.913544, 0.406739, 45, 90, 100, 1),
(86948, 2045, 1, 1, -1153.03, -4052.26, -79.2146, -0.401425, 0, 0, -0.199368, 0.979925, 45, 90, 100, 1),
(86949, 2045, 1, 1, -1831.07, -3862.04, -8.43423, -1.01229, 0, 0, -0.484809, 0.87462, 45, 90, 100, 1),
(86950, 2045, 1, 1, -1873.83, -3822.75, -8.72529, -2.05949, 0, 0, -0.857168, 0.515037, 45, 90, 100, 1),
(87006, 2045, 1, 1, -1456.03, -3980.45, -5.35221, 2.30383, 0, 0, 0.913544, 0.406739, 45, 90, 100, 1),
(87061, 2045, 1, 1, 7110.75, 426.176, -43.0759, -0.314158, 0, 0, -0.156434, 0.987688, 45, 90, 100, 1),
(87062, 2045, 1, 1, -2344.36, -4349.2, -10.3857, -0.994837, 0, 0, -0.477158, 0.878817, 45, 90, 100, 1),
(87063, 2045, 1, 1, -1094.5, -4025.29, -84.8971, -0.715585, 0, 0, -0.350207, 0.936672, 45, 90, 100, 1),
(87357, 2045, 0, 1, -777.527, -4570.92, -23.8076, -0.593412, 0, 0, -0.292372, 0.956305, 45, 90, 100, 1),
(87358, 2045, 1, 1, 3395.54, 1185.15, -37.8039, 2.00713, 0, 0, 0.843392, 0.537299, 45, 90, 100, 1),
(87359, 2045, 0, 1, -1051.87, -408.556, -4.19282, -2.89724, 0, 0, -0.992546, 0.121873, 45, 90, 100, 1),
(87361, 2045, 0, 1, -12503.6, 231.236, -16.9338, 0.645772, 0, 0, 0.317305, 0.948324, 45, 90, 100, 1),
(87362, 2045, 1, 1, 3331.54, 1187.5, -15.7325, -2.32129, 0, 0, -0.91706, 0.398748, 45, 90, 100, 1),
(87364, 2045, 1, 1, 2159.15, -2863.49, 105.558, 0.715585, 0, 0, 0.350207, 0.936672, 45, 90, 100, 1),
(87561, 2045, 1, 1, 2443.87, -2849.66, 137.224, -2.84488, 0, 0, -0.989015, 0.147813, 45, 90, 100, 1),
(87562, 2045, 0, 1, -11453.1, 1813.91, -4.72884, -0.837757, 0, 0, -0.406736, 0.913546, 45, 90, 100, 1),
(87563, 2045, 0, 1, -11421.5, 2014.61, -22.1962, 2.28638, 0, 0, 0.909961, 0.414694, 45, 90, 100, 1),
(87564, 2045, 0, 1, -12221.4, 589.087, -54.8489, -1.95477, 0, 0, -0.829038, 0.559192, 45, 90, 100, 1),
(87565, 2045, 0, 1, -2641.34, -1442.62, -12.4426, 0.244346, 0, 0, 0.121869, 0.992546, 45, 90, 100, 1),
(87566, 2045, 0, 1, -1174.06, -777.817, -5.35076, -3.12412, 0, 0, -0.999962, 0.00873622, 45, 90, 100, 1),
(87567, 2045, 1, 1, 2715.93, -2572.03, 176.359, -2.16421, 0, 0, -0.882948, 0.469471, 45, 90, 100, 1),
(87568, 2045, 0, 1, -13599.8, 498.125, -35.318, 1.71042, 0, 0, 0.754709, 0.65606, 45, 90, 100, 1),
(87570, 2045, 1, 1, -2666.74, -4205.86, -0.785061, -1.44862, 0, 0, -0.662619, 0.748957, 45, 90, 100, 1),
(87572, 2045, 1, 1, -1024.96, -4009.38, -70.7427, -0.610864, 0, 0, -0.300705, 0.953717, 45, 90, 100, 1),
(87691, 2045, 0, 1, 19.2655, -4890.57, -19.0195, -0.663223, 0, 0, -0.325567, 0.945519, 45, 90, 100, 1),
(87692, 2045, 0, 1, 12.7143, -4829.58, -17.039, 3.03684, 0, 0, 0.998629, 0.0523524, 45, 90, 100, 1),

(7402, 2045, 0, 1, -1742.04, -1111.16, -50.7961, 5.28835, 0, 0, -0.477158, 0.878817, 45, 90, 100, 1),
(7410, 2045, 0, 1, -1698.15, -1045.93, -42.8583, 0.977383, 0, 0, 0.469471, 0.882948, 45, 90, 100, 1),
(7411, 2045, 0, 1, -1116.11, -189.95, -3.40162, 3.3685, 0, 0, -0.993571, 0.113208, 45, 90, 100, 1),
(7432, 2045, 0, 1, -785.381, -4656.31, -24.7362, 5.044, 0, 0, -0.580703, 0.814116, 45, 90, 100, 1),
(7439, 2045, 0, 1, -291.338, -4744.9, -25.2299, 4.25861, 0, 0, -0.848047, 0.529921, 45, 90, 100, 1),
(7441, 2045, 0, 1, -199.985, -4725.92, -28.7294, 1.85005, 0, 0, 0.798635, 0.601815, 45, 90, 100, 1),
(137681, 2045, 0, 1, -485.871, -4719.62, -29.8458, 2.74016, 0, 0, 0.979924, 0.19937, 45, 90, 100, 1), -- 7456
(7459, 2045, 0, 1, 628.255, 736.648, 19.9124, 4.41568, 0, 0, -0.803857, 0.594823, 45, 90, 100, 1),
(7462, 2045, 0, 1, -1181.64, 45.6704, -7.18421, 3.24635, 0, 0, -0.998629, 0.0523532, 45, 90, 100, 1),
(7486, 2045, 0, 1, -1212.53, -211.741, -42.0522, 5.53269, 0, 0, -0.366501, 0.930418, 45, 90, 100, 1),
(7492, 2045, 0, 1, -1169.77, -249.171, -33.6806, 5.74214, 0, 0, -0.267238, 0.963631, 45, 90, 100, 1),
(7504, 2045, 0, 1, -13113.1, 803.91, -38.3111, 1.5708, 0, 0, 0.707107, 0.707107, 45, 90, 100, 1),
(7528, 2045, 0, 1, -1352.52, -948.247, -6.47859, 5.93412, 0, 0, -0.173648, 0.984808, 45, 90, 100, 1),
(7556, 2045, 1, 1, -1915.85, -3779.82, -4.68931, 6.00393, 0, 0, -0.139173, 0.990268, 45, 90, 100, 1),
(55964, 2045, 1, 1, -2629.75, -4240.07, -2.59265, 5.06146, 0, 0, -0.573576, 0.819152, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (86929,86930,64054,86913,86928,86925,86924,64060,64065,64058,86915,64057,87568,64061,64051,87361,65341,64062,86900,86926,87564,65364,87562,87563,86877,86937,65365,86869,86870,86871,86878,86875,86890,86889,86882,86879,86887,86899,86904,65349,86888,86914,65339,86919,65337,86901,65346,65357,65350,86897,64063,65342,64053,86873,65358,86933,86895,65344,65355,65352,65360,87570,87565,65347,86935,87062,86950,86949,86946,65343,86927,87006,86943,65354,65361,86892,87566,65353,86948,86893,86894,87063,87359,87572,86947,87357,87692,87691,64067,64071,87364,87561,87567,86939,86891,87362,87358,64050,64069,86938,86872,5562,86917,86923,86934,86920,86876,64049,86874,87061,86880,86883,86936,86941,86885,64067,86927,86943,86946,86947,86948,86949,86950,87006,87063,87564,87565,87568,87570,87572,87691,87692,7402,7410,7411,7432,7439,7441,137681,7459,7462,7486,7492,7504,7528,7556,55964);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(87563, 13022, 0, 'Stranglekelp zone 40, node 315'), -- Westfall
(87562, 13022, 0, 'Stranglekelp zone 40, node 314'),

(86894, 13011, 0, 'Stranglekelp zone 267, node 262'), -- Hillsbrad Foothills
(86893, 13011, 0, 'Stranglekelp zone 267, node 261'),
(65343, 13011, 0, 'Stranglekelp zone 267, node 245'),
(87359, 13011, 0, 'Stranglekelp zone 267, node 269'),
(65361, 13011, 0, 'Stranglekelp zone 267, node 248'),
(86892, 13011, 0, 'Stranglekelp zone 267, node 260'),
(87566, 13011, 0, 'Stranglekelp zone 267, node 272'),
(65353, 13011, 0, 'Stranglekelp zone 267, node 246'),
(65354, 13011, 0, 'Stranglekelp zone 267, node 247'),
(7402, 13011, 0, 'Hillsbrad Foothills - Stranglekelp'),
(7410, 13011, 0, 'Hillsbrad Foothills - Stranglekelp'),
(7411, 13011, 0, 'Hillsbrad Foothills - Stranglekelp'),
(7462, 13011, 0, 'Hillsbrad Foothills - Stranglekelp'),
(7486, 13011, 0, 'Hillsbrad Foothills - Stranglekelp'),
(7492, 13011, 0, 'Hillsbrad Foothills - Stranglekelp'),
(7528, 13011, 0, 'Hillsbrad Foothills - Stranglekelp'),

(86891, 13024, 0, 'Stranglekelp zone 331, node 435'), -- Ashenvale
(87567, 13024, 0, 'Stranglekelp zone 331, node 456'),
(86872, 13024, 0, 'Stranglekelp zone 331, node 434'),
(86938, 13024, 0, 'Stranglekelp zone 331, node 436'),
(86939, 13024, 0, 'Stranglekelp zone 331, node 437'),
(64071, 13024, 0, 'Stranglekelp zone 331, node 419'),
(64050, 13024, 0, 'Stranglekelp zone 331, node 417'),
(87561, 13024, 0, 'Stranglekelp zone 331, node 455'),
(87364, 13024, 0, 'Stranglekelp zone 331, node 448'),
(87362, 13024, 0, 'Stranglekelp zone 331, node 447'),
(5562, 13024, 0, 'Stranglekelp zone 331, node 459'),
(87358, 13024, 0, 'Stranglekelp zone 331, node 446'),
(64069, 13024, 0, 'Stranglekelp zone 331, node 418'),

(86885, 13028, 0, 'Stranglekelp zone 148, node 372'), -- Darkshore
(86876, 13028, 0, 'Stranglekelp zone 148, node 368'),
(86874, 13028, 0, 'Stranglekelp zone 148, node 367'),
(86880, 13028, 0, 'Stranglekelp zone 148, node 369'),
(86883, 13028, 0, 'Stranglekelp zone 148, node 370'),
(86941, 13028, 0, 'Stranglekelp zone 148, node 381'),
(64049, 13028, 0, 'Stranglekelp zone 148, node 352'),
(86917, 13028, 0, 'Stranglekelp zone 148, node 376'),
(86936, 13028, 0, 'Stranglekelp zone 148, node 380'),
(86920, 13028, 0, 'Stranglekelp zone 148, node 377'),
(86934, 13028, 0, 'Stranglekelp zone 148, node 379'),
(86923, 13028, 0, 'Stranglekelp zone 148, node 378'),
(87061, 13028, 0, 'Stranglekelp zone 148, node 382'),

(86869, 13037, 0, 'Stranglekelp zone 440, node 117'), -- Tanaris
(86877, 13037, 0, 'Stranglekelp zone 440, node 118'),
(86937, 13037, 0, 'Stranglekelp zone 440, node 119'),
(65365, 13037, 0, 'Stranglekelp zone 440, node 102'),

(86887, 13033, 0, 'Stranglekelp zone 357, node 215'), -- Feralas
(86871, 13033, 0, 'Stranglekelp zone 357, node 209'),
(86889, 13033, 0, 'Stranglekelp zone 357, node 217'),
(86899, 13033, 0, 'Stranglekelp zone 357, node 219'),
(86890, 13033, 0, 'Stranglekelp zone 357, node 218'),
(86919, 13033, 0, 'Stranglekelp zone 357, node 221'),
(86888, 13033, 0, 'Stranglekelp zone 357, node 216'),
(86882, 13033, 0, 'Stranglekelp zone 357, node 213'),
(86879, 13033, 0, 'Stranglekelp zone 357, node 212'),
(86878, 13033, 0, 'Stranglekelp zone 357, node 211'),
(86875, 13033, 0, 'Stranglekelp zone 357, node 210'),
(86870, 13033, 0, 'Stranglekelp zone 357, node 208'),

(87357, 13019, 0, 'Stranglekelp zone 47, node 332'), -- The Hinterlands
(87691, 13019, 0, 'The Hinterlands - Stranglekelp'),
(87692, 13019, 0, 'The Hinterlands - Stranglekelp'),
(7432, 13019, 0, 'The Hinterlands - Stranglekelp'),
(7439, 13019, 0, 'The Hinterlands - Stranglekelp'),
(7441, 13019, 0, 'The Hinterlands - Stranglekelp'),
(137681, 13019, 0, 'The Hinterlands - Stranglekelp'),

(86925, 13017, 0, 'Stranglekelp zone 33, node 691'), -- Stranglethorn Vale
(86928, 13017, 0, 'Stranglekelp zone 33, node 693'),
(86929, 13017, 0, 'Stranglekelp zone 33, node 694'),
(86930, 13017, 0, 'Stranglekelp zone 33, node 695'),
(65341, 13017, 0, 'Stranglekelp zone 33, node 657'),
(64065, 13017, 0, 'Stranglekelp zone 33, node 644'),
(64060, 13017, 0, 'Stranglekelp zone 33, node 640'),
(64062, 13017, 0, 'Stranglekelp zone 33, node 642'),
(64061, 13017, 0, 'Stranglekelp zone 33, node 641'),
(87361, 13017, 0, 'Stranglekelp zone 33, node 711'),
(64058, 13017, 0, 'Stranglekelp zone 33, node 639'),
(64057, 13017, 0, 'Stranglekelp zone 33, node 638'),
(64054, 13017, 0, 'Stranglekelp zone 33, node 637'),
(64051, 13017, 0, 'Stranglekelp zone 33, node 636'),
(86926, 13017, 0, 'Stranglekelp zone 33, node 692'),
(86924, 13017, 0, 'Stranglekelp zone 33, node 690'),
(65364, 13017, 0, 'Stranglekelp zone 33, node 658'),
(86900, 13017, 0, 'Stranglekelp zone 33, node 686'),
(86915, 13017, 0, 'Stranglekelp zone 33, node 689'),
(86913, 13017, 0, 'Stranglekelp zone 33, node 688'),
(87564, 13017, 0, 'Stranglethorn Vale - Stranglekelp'),
(87568, 13017, 0, 'Stranglethorn Vale - Stranglekelp'),
(7504, 13017, 0, 'Stranglethorn Vale - Stranglekelp'),

(86873, 13031, 0, 'Stranglekelp zone 15, node 79'), -- Dustwallow Marsh
(86897, 13031, 0, 'Stranglekelp zone 15, node 80'),
(86904, 13031, 0, 'Stranglekelp zone 15, node 81'),
(87062, 13031, 0, 'Stranglekelp zone 15, node 88'),
(86935, 13031, 0, 'Stranglekelp zone 15, node 82'),
(87570, 13031, 0, 'Dustwallow Marsh - Stranglekelp'),
(55964, 13031, 0, 'Dustwallow Marsh - Stranglekelp'),

(65358, 13023, 0, 'Stranglekelp zone 11, node 374'), -- Wetlands
(65346, 13023, 0, 'Stranglekelp zone 11, node 366'),
(86895, 13023, 0, 'Stranglekelp zone 11, node 385'),
(65360, 13023, 0, 'Stranglekelp zone 11, node 376'),
(65355, 13023, 0, 'Stranglekelp zone 11, node 372'),
(64053, 13023, 0, 'Stranglekelp zone 11, node 324'),
(65357, 13023, 0, 'Stranglekelp zone 11, node 373'),
(86901, 13023, 0, 'Stranglekelp zone 11, node 387'),
(65349, 13023, 0, 'Stranglekelp zone 11, node 368'),
(65350, 13023, 0, 'Stranglekelp zone 11, node 369'),
(86914, 13023, 0, 'Stranglekelp zone 11, node 389'),
(86933, 13023, 0, 'Stranglekelp zone 11, node 391'),
(65344, 13023, 0, 'Stranglekelp zone 11, node 365'),
(65352, 13023, 0, 'Stranglekelp zone 11, node 371'),
(65342, 13023, 0, 'Stranglekelp zone 11, node 364'),
(65339, 13023, 0, 'Stranglekelp zone 11, node 362'),
(65337, 13023, 0, 'Stranglekelp zone 11, node 360'),
(64063, 13023, 0, 'Stranglekelp zone 11, node 328'),
(65347, 13023, 0, 'Stranglekelp zone 11, node 367'),
(87565, 13023, 0, 'Wetlands - Stranglekelp'),

(64067, 13000, 0, 'Alterac Mountains - Stranglekelp'), -- Alterac Mountains

(86927, 13039, 0, 'The Barrens - Stranglekelp'), -- The Barrens
(86943, 13039, 0, 'The Barrens - Stranglekelp'),
(86946, 13039, 0, 'The Barrens - Stranglekelp'),
(86947, 13039, 0, 'The Barrens - Stranglekelp'),
(86948, 13039, 0, 'The Barrens - Stranglekelp'),
(86949, 13039, 0, 'The Barrens - Stranglekelp'),
(86950, 13039, 0, 'The Barrens - Stranglekelp'),
(87006, 13039, 0, 'The Barrens - Stranglekelp'),
(87063, 13039, 0, 'The Barrens - Stranglekelp'),
(87572, 13039, 0, 'The Barrens - Stranglekelp'),
(7556, 13039, 0, 'The Barrens - Stranglekelp'),

(7459, 13016, 0, 'Silverpine Forest - Stranglekelp'); -- Silverpine Forest

-- Goldthorn 2046
-- https://tbc.wowhead.com/object=2046/goldthorn
UPDATE `gameobject` SET `position_z` = 32.1939 WHERE `guid` = 134445 AND `id` = 2046; -- else Duplicate 134461
DELETE FROM `gameobject` WHERE `guid` = 134402; -- Duplicate 134485
DELETE FROM `pool_gameobject` WHERE `guid` = 134402;
DELETE FROM `gameobject` WHERE `guid` = 134463; -- Duplicate 134441
DELETE FROM `pool_gameobject` WHERE `guid` = 134463;
UPDATE `gameobject` SET `position_x` = -13427.6, `position_y` = 603.917, `position_z` = 42.9791, `orientation` = -2.70526, `rotation2` = -0.976296, `rotation3` = 0.21644 WHERE `guid` = 134374 AND `id` = 2046;
DELETE FROM `gameobject` WHERE `guid` = 134377; -- Duplicate 134465
DELETE FROM `pool_gameobject` WHERE `guid` = 134377;
DELETE FROM `gameobject` WHERE `guid` = 134467; -- Duplicate 134432
DELETE FROM `pool_gameobject` WHERE `guid` = 134467;
DELETE FROM `gameobject` WHERE `guid` = 134495; -- Duplicate 134457
DELETE FROM `pool_gameobject` WHERE `guid` = 134495;
DELETE FROM `gameobject` WHERE `guid` = 134499; -- Duplicate 134456
DELETE FROM `pool_gameobject` WHERE `guid` = 134499;
UPDATE `gameobject` SET `position_x` = -12976.9, `position_y` = -792.139, `position_z` = 68.66, `orientation` = 2.40855, `rotation2` = 0.93358, `rotation3` = 0.35837 WHERE `guid` = 134409 AND `id` = 2046;
UPDATE `gameobject` SET `position_x` = -12974.7, `position_y` = -292.99, `position_z` = 12.7081, `orientation` = 2.70526, `rotation2` = 0.976296, `rotation3` = 0.21644 WHERE `guid` = 134389 AND `id` = 2046;
UPDATE `gameobject` SET `position_x` = -12946.4, `position_y` = 386.505, `position_z` = 32.6579, `orientation` = -2.63544, `rotation2` = -0.968147, `rotation3` = 0.250383 WHERE `guid` = 134357 AND `id` = 2046;
UPDATE `gameobject` SET `position_x` = -12880.7, `position_y` = -487.855, `position_z` = 49.0174, `orientation` = 2.37364, `rotation2` = 0.927182, `rotation3` = 0.37461 WHERE `guid` = 134446 AND `id` = 2046;
UPDATE `gameobject` SET `position_x` = -12801.3, `position_y` = -242.125, `position_z` = 22.9495, `orientation` = -0.122173, `rotation2` = -0.0610485, `rotation3` = 0.998135 WHERE `guid` = 134407 AND `id` = 2046;
DELETE FROM `gameobject` WHERE `guid` = 134492; -- Duplicate 134490
DELETE FROM `pool_gameobject` WHERE `guid` = 134492;
UPDATE `gameobject` SET `position_x` = -12657.1, `position_y` = -45.3199, `position_z` = 23.7914, `orientation` = -1.02974, `rotation2` = -0.492422, `rotation3` = 0.870357 WHERE `guid` = 134421 AND `id` = 2046;
DELETE FROM `gameobject` WHERE `guid` = 134448; -- Duplicate 134366
DELETE FROM `pool_gameobject` WHERE `guid` = 134448;
UPDATE `gameobject` SET `position_x` = -12488.5, `position_y` = -135.226, `position_z` = 14.1769, `orientation` = -0.680679, `rotation2` = -0.333807, `rotation3` = 0.942641 WHERE `guid` = 134410 AND `id` = 2046;
UPDATE `gameobject` SET `position_x` = -12422.6, `position_y` = -697.771, `position_z` = 33.9253, `orientation` = 1.41372, `rotation2` = 0.649449, `rotation3` = 0.760405 WHERE `guid` = 134515 AND `id` = 2046;
UPDATE `gameobject` SET `position_x` = -12348.3, `position_y` = -559.049, `position_z` = 28.1487, `orientation` = -2.58308, `rotation2` = -0.961261, `rotation3` = 0.275641 WHERE `guid` = 134478 AND `id` = 2046;
UPDATE `gameobject` SET `position_x` = -12232, `position_y` = -828.062, `position_z` = 37.6373, `orientation` = 1.20428, `rotation2` = 0.566407, `rotation3` = 0.824125 WHERE `guid` = 134429 AND `id` = 2046;
UPDATE `gameobject` SET `position_x` = -12200.4, `position_y` = -102.249, `position_z` = 29.2303, `orientation` = -2.51327, `rotation2` = -0.951056, `rotation3` = 0.309019 WHERE `guid` = 134403 AND `id` = 2046;
UPDATE `gameobject` SET `position_x` = -11989.2, `position_y` = -302.561, `position_z` = 35.3932, `orientation` = 2.9845, `rotation2` = 0.996917, `rotation3` = 0.0784656 WHERE `guid` = 134517 AND `id` = 2046;
DELETE FROM `gameobject` WHERE `guid` = 134454; -- Duplicate 134386
DELETE FROM `pool_gameobject` WHERE `guid` = 134454;
DELETE FROM `gameobject` WHERE `guid` = 134338; -- Duplicate 134455
DELETE FROM `pool_gameobject` WHERE `guid` = 134338;
UPDATE `gameobject` SET `position_x` = -10591.3, `position_y` = -2884.23, `position_z` = 35.5221, `orientation` = -3.08918, `rotation2` = -0.999657, `rotation3` = 0.0262033 WHERE `guid` = 134734 AND `id` = 2046;
UPDATE `gameobject` SET `position_x` = -10588, `position_y` = -2737.17, `position_z` = 34.8652, `orientation` = 2.26892, `rotation2` = 0.906306, `rotation3` = 0.422622 WHERE `guid` = 134668 AND `id` = 2046;
UPDATE `gameobject` SET `position_x` = -10479.7, `position_y` = -2497.4, `position_z` = 33.4731, `orientation` = 3.14159, `rotation2` = 1, `rotation3` = 1.26759E-6 WHERE `guid` = 134712 AND `id` = 2046;
DELETE FROM `gameobject` WHERE `guid` = 131058; -- Duplicate 131038
DELETE FROM `pool_gameobject` WHERE `guid` = 131058;
DELETE FROM `gameobject` WHERE `guid` = 131042; -- Duplicate 131065
DELETE FROM `pool_gameobject` WHERE `guid` = 131042;
UPDATE `gameobject` SET `position_x` = -6641.55, `position_y` = -2623.45, `position_z` = 256.692, `orientation` = -2.14675, `rotation2` = -0.878816, `rotation3` = 0.477161 WHERE `guid` = 131066 AND `id` = 2046;
UPDATE `gameobject` SET `position_x` = -6627.56, `position_y` = -2827.04, `position_z` = 255.113, `orientation` = -3.08918, `rotation2` = -0.999657, `rotation3` = 0.0262033 WHERE `guid` = 131073 AND `id` = 2046;
UPDATE `gameobject` SET `position_x` = -6447.5, `position_y` = -3366.45, `position_z` = 244.277, `orientation` = -2.19912, `rotation2` = -0.891008, `rotation3` = 0.453988 WHERE `guid` = 131046 AND `id` = 2046;
DELETE FROM `gameobject` WHERE `guid` = 138716; -- Duplicate 138705
DELETE FROM `pool_gameobject` WHERE `guid` = 138716;
UPDATE `gameobject` SET `position_x` = -4692.77, `position_y` = 1519.28, `position_z` = 115.723, `orientation` = -2.80997, `rotation2` = -0.986285, `rotation3` = 0.165053 WHERE `guid` = 138700 AND `id` = 2046;
DELETE FROM `gameobject` WHERE `guid` = 138721; -- Duplicate 138712
DELETE FROM `pool_gameobject` WHERE `guid` = 138721;
DELETE FROM `gameobject` WHERE `guid` = 138713; -- Duplicate 138706
DELETE FROM `pool_gameobject` WHERE `guid` = 138713;
UPDATE `gameobject` SET `map` = 0 WHERE `guid` = 140545 AND `id` = 2046;
UPDATE `pool_gameobject` SET `pool_entry` = 13001, `description` = 'Arathi Highlands - Goldthorn' WHERE `guid` = 140545;
UPDATE `gameobject` SET `position_x` = -1938.13, `position_y` = -2390.06, `position_z` = 77.0251, `orientation` = 0.680677, `rotation2` = 0.333806, `rotation3` = 0.942642 WHERE `guid` = 130860 AND `id` = 2046;
UPDATE `gameobject` SET `map` = 0 WHERE `guid` = 140544 AND `id` = 2046;
UPDATE `pool_gameobject` SET `pool_entry` = 13001, `description` = 'Arathi Highlands - Goldthorn' WHERE `guid` = 140544;
DELETE FROM `gameobject` WHERE `guid` = 130796; -- Duplicate 130921
DELETE FROM `pool_gameobject` WHERE `guid` = 130796;
UPDATE `gameobject` SET `position_x` = -1692.98, `position_y` = -2382.04, `position_z` = 37.5889, `orientation` = -0.541051, `rotation2` = -0.267238, `rotation3` = 0.963631 WHERE `guid` = 130799 AND `id` = 2046;
UPDATE `gameobject` SET `position_x` = -1264.6, `position_y` = -2940.26, `position_z` = 43.759, `orientation` = -0.261798, `rotation2` = -0.130525, `rotation3` = 0.991445 WHERE `guid` = 130841 AND `id` = 2046;
DELETE FROM `gameobject` WHERE `guid` = 130818; -- Duplicate 130861
DELETE FROM `pool_gameobject` WHERE `guid` = 130818;
UPDATE `gameobject` SET `position_x` = -1166.56, `position_y` = -2248.82, `position_z` = 55.3638, `orientation` = 3.14159, `rotation2` = 1, `rotation3` = 1.26759E-6 WHERE `guid` = 130849 AND `id` = 2046;
DELETE FROM `gameobject` WHERE `guid` = 130887; -- Duplicate 130858
DELETE FROM `pool_gameobject` WHERE `guid` = 130887;
UPDATE `gameobject` SET `position_x` = -1069.87, `position_y` = -1611.4, `position_z` = 46.1645, `orientation` = -2.93214, `rotation2` = -0.994521, `rotation3` = 0.104535 WHERE `guid` = 130895 AND `id` = 2046;
UPDATE `gameobject` SET `position_x` = -1008.22, `position_y` = -1751.14, `position_z` = 46.6344, `orientation` = -0.453785, `rotation2` = -0.224951, `rotation3` = 0.97437 WHERE `guid` = 130806 AND `id` = 2046;
DELETE FROM `gameobject` WHERE `guid` = 130828; -- Duplicate 130889
DELETE FROM `pool_gameobject` WHERE `guid` = 130828;
UPDATE `gameobject` SET `position_x` = -950.858, `position_y` = -2239.76, `position_z` = 54.3306, `orientation` = -0.401425, `rotation2` = -0.199368, `rotation3` = 0.979925 WHERE `guid` = 130890 AND `id` = 2046;
DELETE FROM `gameobject` WHERE `guid` = 130823; -- Duplicate 130890
DELETE FROM `pool_gameobject` WHERE `guid` = 130823;
UPDATE `gameobject` SET `position_x` = -911.921, `position_y` = -1891.85, `position_z` = 71.4452, `orientation` = -0.942477, `rotation2` = -0.45399, `rotation3` = 0.891007 WHERE `guid` = 130899 AND `id` = 2046;
UPDATE `gameobject` SET `position_x` = -843.388, `position_y` = -1725.92, `position_z` = 58.0707, `orientation` = 2.54818, `rotation2` = 0.956305, `rotation3` = 0.292372 WHERE `guid` = 130893 AND `id` = 2046;
UPDATE `gameobject` SET `position_x` = -806.16, `position_y` = -3584.53, `position_z` = 81.9184, `orientation` = 2.67035, `rotation2` = 0.972369, `rotation3` = 0.233447 WHERE `guid` = 130878 AND `id` = 2046;
DELETE FROM `gameobject` WHERE `guid` = 135030; -- Duplicate 135033
DELETE FROM `pool_gameobject` WHERE `guid` = 135030;
DELETE FROM `gameobject` WHERE `guid` = 134992; -- Duplicate 134997
DELETE FROM `pool_gameobject` WHERE `guid` = 134992;
UPDATE `gameobject` SET `position_x` = -81.7064, `position_y` = -3537.64, `position_z` = 120.173, `orientation` = -0.523598, `rotation2` = -0.258819, `rotation3` = 0.965926 WHERE `guid` = 135016 AND `id` = 2046;
UPDATE `gameobject` SET `position_x` = -57.5888, `position_y` = -4553.34, `position_z` = 16.4739, `orientation` = 1.93731, `rotation2` = 0.824125, `rotation3` = 0.566409 WHERE `guid` = 134988 AND `id` = 2046;
DELETE FROM `gameobject` WHERE `guid` = 140543; -- Duplicate 135026 (map)
DELETE FROM `pool_gameobject` WHERE `guid` = 140543;
UPDATE `gameobject` SET `position_x` = 42.2495, `position_y` = -3664.66, `position_z` = 131.693, `orientation` = -0.279252, `rotation2` = -0.139173, `rotation3` = 0.990268 WHERE `guid` = 135025 AND `id` = 2046;
DELETE FROM `gameobject` WHERE `guid` = 135027; -- Duplicate 134996
DELETE FROM `pool_gameobject` WHERE `guid` = 135027;
DELETE FROM `gameobject` WHERE `guid` = 133029; -- Duplicate 130319
DELETE FROM `pool_gameobject` WHERE `guid` = 133029;
DELETE FROM `gameobject` WHERE `guid` = 133031; -- Duplicate 130328
DELETE FROM `pool_gameobject` WHERE `guid` = 133031;
DELETE FROM `gameobject` WHERE `guid` = 133033; -- Duplicate 130300
DELETE FROM `pool_gameobject` WHERE `guid` = 133033;
DELETE FROM `gameobject` WHERE `guid` = 133032; -- Duplicate 130336
DELETE FROM `pool_gameobject` WHERE `guid` = 133032;
DELETE FROM `gameobject` WHERE `guid` = 133030; -- Duplicate 130326
DELETE FROM `pool_gameobject` WHERE `guid` = 133030;
DELETE FROM `gameobject` WHERE `guid` = 130323; -- Duplicate 130362,130301,130361
DELETE FROM `pool_gameobject` WHERE `guid` = 130323;
DELETE FROM `gameobject` WHERE `guid` = 135472; -- Duplicate 130299
DELETE FROM `pool_gameobject` WHERE `guid` = 135472;
UPDATE `gameobject` SET `position_x` = -13053.3, `position_y` = -293.556, `position_z` = 11.6449, `orientation` = 4.72984, `rotation2` = -0.700909, `rotation3` = 0.713251 WHERE `guid` = 134509 AND `id` = 2046;	
UPDATE `gameobject` SET `position_x` = -4001.88, `position_y` = 1937.13, `position_z` = 115.632, `orientation` = -0.610865, `rotation2` = 0.300706, `rotation3` = -0.953717 WHERE `guid` = 138703 AND `id` = 2046;
UPDATE `gameobject` SET `position_z` = 89.1866 WHERE `guid` = 130825 AND `id` = 2046;
DELETE FROM `gameobject` WHERE `guid` = 140546; -- Duplicate 138352
DELETE FROM `pool_gameobject` WHERE `guid` = 140546;

DELETE FROM `gameobject` WHERE `guid` IN (64074,64075,86973,86971,86960,64085,64084,87369,64086,86979,86981,86980,86982,86972,65371,64077,87366,64076,64090,64081,87370,64082,86965,87375,87373,86956,86969,86987,86966,86959,86986,86988,86984,87365,64089,86978,86963,86954,86952,86975,86955,86968,86958,86970,87573,87578,86957,86953,87374,86983,86974,65372,65370,87577,87576,87574,87575,86985,64094,130823,135030,134992,133030,130323,133029,133031,133033,133032) AND `id` = 2046;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(64074, 2046, 0, 1, -13804.3, -124.067, 25.3866, -0.523598, 0, 0, -0.258819, 0.965926, 45, 90, 100, 1),
(64075, 2046, 0, 1, -13655.9, -263.221, 8.17556, -0.191985, 0, 0, -0.0958451, 0.995396, 45, 90, 100, 1),
(64076, 2046, 0, 1, -11003.9, -3980.39, 40.4577, 1.74533, 0, 0, 0.766045, 0.642787, 45, 90, 100, 1),
(64077, 2046, 0, 1, -11684.7, 920.657, 4.31604, -2.54818, 0, 0, -0.956305, 0.292372, 45, 90, 100, 1),
(64081, 2046, 0, 1, -10315.6, -2560.88, 32.842, -1.62316, 0, 0, -0.725376, 0.688353, 45, 90, 100, 1),
(64082, 2046, 0, 1, -10107.6, -2924.88, 25.2096, -2.56563, 0, 0, -0.958819, 0.284017, 45, 90, 100, 1),
(64084, 2046, 0, 1, -12975.2, -572.484, 63.2591, -2.04204, 0, 0, -0.852641, 0.522496, 45, 90, 100, 1),
(64085, 2046, 0, 1, -12978.1, -737.656, 55.4423, -1.81514, 0, 0, -0.78801, 0.615662, 45, 90, 100, 1),
(64086, 2046, 0, 1, -12913.3, 89.1847, 32.6031, 1.23918, 0, 0, 0.580701, 0.814117, 45, 90, 100, 1),
(64089, 2046, 1, 1, -4297.98, -3019.66, 34.9951, 2.04204, 0, 0, 0.852641, 0.522496, 45, 90, 100, 1),
(64090, 2046, 0, 1, -10613.8, -2827.23, 35.4732, -0.872664, 0, 0, -0.422618, 0.906308, 45, 90, 100, 1),
(64094, 2046, 0, 1, 781.663, -164.077, 129.533, 0.855211, 0, 0, 0.414693, 0.909961, 45, 90, 100, 1),
(65370, 2046, 0, 1, -916.123, -3631.37, 86.0909, 1.74533, 0, 0, 0.766045, 0.642787, 45, 90, 100, 1),
(65371, 2046, 0, 1, -11836.9, 48.4786, 15.7018, -1.39626, 0, 0, -0.642786, 0.766046, 45, 90, 100, 1),
(65372, 2046, 0, 1, -1033.84, -2618.83, 57.3154, 1.27409, 0, 0, 0.594823, 0.803857, 45, 90, 100, 1),
(86952, 2046, 1, 1, -3927.61, -3896.96, 63.9424, -2.21656, 0, 0, -0.894933, 0.446202, 45, 90, 100, 1),
(86953, 2046, 1, 1, -2877.14, 2099.61, 53.0593, -2.49582, 0, 0, -0.948324, 0.317305, 45, 90, 100, 1),
(86954, 2046, 1, 1, -3987.5, 1982.65, 98.1448, 0.820303, 0, 0, 0.398748, 0.91706, 45, 90, 100, 1),
(86955, 2046, 1, 1, -3700.95, -3616.7, 62.1052, -0.244346, 0, 0, -0.121869, 0.992546, 45, 90, 100, 1),
(86956, 2046, 1, 1, -5393.44, 3554.36, 29.7673, -2.68781, 0, 0, -0.97437, 0.22495, 45, 90, 100, 1),
(86957, 2046, 1, 1, -3046.96, -3380.2, 44.9054, 1.65806, 0, 0, 0.737276, 0.675591, 45, 90, 100, 1),
(86958, 2046, 1, 1, -3549.99, 1917.53, 72.6504, -2.60053, 0, 0, -0.963629, 0.267244, 45, 90, 100, 1),
(86959, 2046, 1, 1, -4970.48, 2107.56, 21.2235, 2.89724, 0, 0, 0.992546, 0.121873, 45, 90, 100, 1),
(86960, 2046, 0, 1, -13360.6, -16.135, 22.3618, -0.837757, 0, 0, -0.406736, 0.913546, 45, 90, 100, 1),
(86963, 2046, 1, 1, -3999.66, 219.765, 75.7146, -1.98967, 0, 0, -0.838669, 0.544641, 45, 90, 100, 1),
(86965, 2046, 1, 1, -5590.67, 1535.51, 65.283, -2.86233, 0, 0, -0.990267, 0.139178, 45, 90, 100, 1),
(86966, 2046, 1, 1, -5002.72, 1486.77, 57.9891, 0.663223, 0, 0, 0.325567, 0.945519, 45, 90, 100, 1),
(86968, 2046, 1, 1, -3611.08, 2022.71, 81.4454, 1.58825, 0, 0, 0.713251, 0.700909, 45, 90, 100, 1),
(86969, 2046, 1, 1, -5117.77, 1161.25, 89.4788, -0.087266, 0, 0, -0.0436192, 0.999048, 45, 90, 100, 1),
(86970, 2046, 1, 1, -3519.39, 1858.88, 73.0516, -3.12412, 0, 0, -0.999962, 0.00873622, 45, 90, 100, 1),
(86971, 2046, 0, 1, -13458.5, -137.11, 50.4728, 1.27409, 0, 0, 0.594823, 0.803857, 45, 90, 100, 1),
(86972, 2046, 0, 1, -11898.2, -729.803, 25.1154, 1.72787, 0, 0, 0.760404, 0.64945, 45, 90, 100, 1),
(86973, 2046, 0, 1, -13487.6, 258.03, 32.0391, -0.034906, 0, 0, -0.0174521, 0.999848, 45, 90, 100, 1),
(86974, 2046, 0, 1, -1854.84, -1542.01, 64.4842, 2.80997, 0, 0, 0.986285, 0.165053, 45, 90, 100, 1),
(86975, 2046, 1, 1, -3762.33, -3713.02, 51.6349, 0, 0, 0, 0, 1, 45, 90, 100, 1),
(86978, 2046, 1, 1, -4042.41, -3858.29, 49.0787, 2.53072, 0, 0, 0.953716, 0.300709, 45, 90, 100, 1),
(86979, 2046, 0, 1, -12756.6, -642.138, 67.7099, -3.03684, 0, 0, -0.998629, 0.0523524, 45, 90, 100, 1),
(86980, 2046, 0, 1, -12608.8, -793.786, 56.192, 1.25664, 0, 0, 0.587786, 0.809016, 45, 90, 100, 1),
(86981, 2046, 0, 1, -12684.8, -448.53, 32.1358, -1.06465, 0, 0, -0.507538, 0.861629, 45, 90, 100, 1),
(86982, 2046, 0, 1, -12165.6, -532.823, 31.4166, 2.26892, 0, 0, 0.906306, 0.422622, 45, 90, 100, 1),
(86983, 2046, 0, 1, -1960.76, -2669.37, 85.4559, 1.78023, 0, 0, 0.777144, 0.629323, 45, 90, 100, 1),
(86984, 2046, 1, 1, -4738.59, 823.524, 141.484, -2.86233, 0, 0, -0.990267, 0.139178, 45, 90, 100, 1),
(86985, 2046, 0, 1, 455.576, -3751.14, 130.958, -1.62316, 0, 0, -0.725374, 0.688355, 45, 90, 100, 1),
(86986, 2046, 1, 1, -4951.97, 172.805, 67.5288, -0.95993, 0, 0, -0.461748, 0.887011, 45, 90, 100, 1),
(86987, 2046, 1, 1, -5102.07, 1494.4, 58.2682, 2.94959, 0, 0, 0.995395, 0.0958539, 45, 90, 100, 1),
(86988, 2046, 1, 1, -4782.09, 1235.58, 115.628, 0.349065, 0, 0, 0.173648, 0.984808, 45, 90, 100, 1),
(87365, 2046, 1, 1, -4307.46, 651.262, 80.2853, -1.76278, 0, 0, -0.771624, 0.636079, 45, 90, 100, 1),
(87366, 2046, 0, 1, -11599.7, 724.194, 61.3601, -2.84488, 0, 0, -0.989015, 0.147813, 45, 90, 100, 1),
(87369, 2046, 0, 1, -12974.2, -809.106, 71.4965, -1.51844, 0, 0, -0.688356, 0.725373, 45, 90, 100, 1),
(87370, 2046, 0, 1, -10264.7, -2575.17, 40.6938, -1.83259, 0, 0, -0.793352, 0.608764, 45, 90, 100, 1),
(87373, 2046, 1, 1, -5420.75, 1183.68, 66.5455, -2.05949, 0, 0, -0.857168, 0.515037, 45, 90, 100, 1),
(87374, 2046, 1, 1, -2558.18, -3757.4, 36.4821, 1.46608, 0, 0, 0.669132, 0.743144, 45, 90, 100, 1),
(87375, 2046, 1, 1, -5543.7, 1106.71, 69.3718, 1.53589, 0, 0, 0.694658, 0.71934, 45, 90, 100, 1),
(87573, 2046, 1, 1, -3516.12, -3373.27, 48.2468, -1.64061, 0, 0, -0.731354, 0.681998, 45, 90, 100, 1),
(87574, 2046, 0, 1, 213.36, -3447.47, 152.571, -2.67035, 0, 0, -0.972369, 0.233447, 45, 90, 100, 1),
(87575, 2046, 0, 1, 397.232, -4102.64, 119.983, -0.541051, 0, 0, -0.267238, 0.963631, 45, 90, 100, 1),
(87576, 2046, 0, 1, -155.668, -4041.4, 122.494, 1.58825, 0, 0, 0.713251, 0.700909, 45, 90, 100, 1),
(87577, 2046, 0, 1, -459.057, -2887.48, 104.367, 1.69297, 0, 0, 0.748956, 0.66262, 45, 90, 100, 1),
(87578, 2046, 1, 1, -3475.12, -3394.15, 54.3003, 1.58825, 0, 0, 0.713251, 0.700909, 45, 90, 100, 1),

(130823, 2046, 1, 1, -4974.11, -3864.3, 56.3607, 4.99164, 0, 0, -0.601814, 0.798636, 45, 90, 100, 1),
(135030, 2046, 0, 1, -1181.47, -3084.28, 44.6811, 6.17847, 0, 0, -0.0523357, 0.99863, 45, 90, 100, 1),
(134992, 2046, 0, 1, 349.219, -4016.42, 122.159, 0.872664, 0, 0, 0.422618, 0.906308, 45, 90, 100, 1),
(133030, 2046, 1, 1, -2944.48, -2756.74, 47.5807, 2.56563, 0, 0, 0.958819, 0.284016, 45, 90, 100, 1),
(130323, 2046, 1, 1, -2911.63, -2733.6, 66.2318, 0.680677, 0, 0, 0.333806, 0.942642, 45, 90, 100, 1),
(133029, 2046, 1, 1, -2962.82, -4332.27, 18.0261, 2.47837, 0, 0, 0.945518, 0.325568, 45, 90, 100, 1),
(133031, 2046, 1, 1, -3112.43, -4127.25, 50.5083, 5.93412, 0, 0, -0.173648, 0.984808, 45, 90, 100, 1),
(133033, 2046, 1, 1, -3802.36, -3812.47, 65.6859, 0.174532, 0, 0, 0.0871553, 0.996195, 45, 90, 100, 1),
(133032, 2046, 1, 1, -4349.06, -3367.98, 38.0667, 5.02655, 0, 0, -0.587785, 0.809017, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (64074,64075,86973,86971,86960,64085,64084,87369,64086,86979,86981,86980,86982,86972,65371,64077,87366,64076,64090,64081,87370,64082,86965,87375,87373,86956,86969,86987,86966,86959,86986,86988,86984,87365,64089,86978,86963,86954,86952,86975,86955,86968,86958,86970,87573,87578,86957,86953,87374,86983,86974,65372,65370,87577,87576,87574,87575,86985,64094,130823,135030,134992,133030,130323,133029,133031,133033,133032);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(65372, 13001, 0, 'Goldthorn zone 45, node 508'), -- Arathi Highlands
(65370, 13001, 0, 'Goldthorn zone 45, node 507'),
(86974, 13001, 0, 'Goldthorn zone 45, node 518'),
(86983, 13001, 0, 'Goldthorn zone 45, node 521'),
(135030, 13001, 0, 'Arathi Highlands - Goldthorn'),

(86969, 13033, 0, 'Goldthorn zone 357, node 231'), -- Feralas
(86959, 13033, 0, 'Goldthorn zone 357, node 226'),
(86963, 13033, 0, 'Goldthorn zone 357, node 227'),
(86956, 13033, 0, 'Goldthorn zone 357, node 224'),
(86965, 13033, 0, 'Goldthorn zone 357, node 228'),
(86954, 13033, 0, 'Goldthorn zone 357, node 223'),
(86953, 13033, 0, 'Goldthorn zone 357, node 222'),
(86966, 13033, 0, 'Goldthorn zone 357, node 229'),
(86958, 13033, 0, 'Goldthorn zone 357, node 225'),
(86968, 13033, 0, 'Goldthorn zone 357, node 230'),
(86984, 13033, 0, 'Goldthorn zone 357, node 233'),
(87375, 13033, 0, 'Goldthorn zone 357, node 252'),
(87373, 13033, 0, 'Goldthorn zone 357, node 251'),
(87365, 13033, 0, 'Goldthorn zone 357, node 249'),
(86988, 13033, 0, 'Goldthorn zone 357, node 236'),
(86970, 13033, 0, 'Goldthorn zone 357, node 232'),
(86987, 13033, 0, 'Goldthorn zone 357, node 235'),
(86986, 13033, 0, 'Goldthorn zone 357, node 234'),

(87577, 13019, 0, 'Goldthorn zone 47, node 354'), -- The Hinterlands
(86985, 13019, 0, 'Goldthorn zone 47, node 326'),
(87574, 13019, 0, 'Goldthorn zone 47, node 351'),
(87575, 13019, 0, 'Goldthorn zone 47, node 352'),
(87576, 13019, 0, 'Goldthorn zone 47, node 353'),
(134992, 13019, 0, 'The Hinterlands - Goldthorn'),

(86960, 13017, 0, 'Goldthorn zone 33, node 696'), -- Stranglethorn Vale
(64077, 13017, 0, 'Goldthorn zone 33, node 647'),
(65371, 13017, 0, 'Goldthorn zone 33, node 659'),
(64074, 13017, 0, 'Goldthorn zone 33, node 645'),
(64086, 13017, 0, 'Goldthorn zone 33, node 654'),
(64084, 13017, 0, 'Goldthorn zone 33, node 652'),
(64075, 13017, 0, 'Goldthorn zone 33, node 646'),
(87366, 13017, 0, 'Goldthorn zone 33, node 712'),
(87369, 13017, 0, 'Goldthorn zone 33, node 713'),
(64085, 13017, 0, 'Goldthorn zone 33, node 653'),
(86982, 13017, 0, 'Goldthorn zone 33, node 703'),
(86981, 13017, 0, 'Goldthorn zone 33, node 702'),
(86971, 13017, 0, 'Goldthorn zone 33, node 697'),
(86972, 13017, 0, 'Goldthorn zone 33, node 698'),
(86973, 13017, 0, 'Goldthorn zone 33, node 699'),
(86980, 13017, 0, 'Goldthorn zone 33, node 701'),
(86979, 13017, 0, 'Goldthorn zone 33, node 700'),

(87374, 13031, 0, 'Goldthorn zone 15, node 92'), -- Dustwallow Marsh
(86957, 13031, 0, 'Goldthorn zone 15, node 85'),
(64089, 13031, 0, 'Goldthorn zone 15, node 56'),
(86978, 13031, 0, 'Goldthorn zone 15, node 87'),
(86955, 13031, 0, 'Goldthorn zone 15, node 84'),
(86975, 13031, 0, 'Goldthorn zone 15, node 86'),
(86952, 13031, 0, 'Goldthorn zone 15, node 83'),
(87578, 13031, 0, 'Dustwallow Marsh - Goldthorn'),
(87573, 13031, 0, 'Dustwallow Marsh - Goldthorn'),
(130823, 13031, 0, 'Dustwallow Marsh - Goldthorn'),
(133030, 13031, 0, 'Dustwallow Marsh - Goldthorn'),
(130323, 13031, 0, 'Dustwallow Marsh - Goldthorn'),
(133029, 13031, 0, 'Dustwallow Marsh - Goldthorn'),
(133031, 13031, 0, 'Dustwallow Marsh - Goldthorn'),
(133033, 13031, 0, 'Dustwallow Marsh - Goldthorn'),
(133032, 13031, 0, 'Dustwallow Marsh - Goldthorn'),

(64076, 13018, 0, 'Goldthorn zone 8, node 378'), -- Swamp of Sorrows
(64081, 13018, 0, 'Goldthorn zone 8, node 379'),
(64082, 13018, 0, 'Goldthorn zone 8, node 380'),
(64090, 13018, 0, 'Goldthorn zone 8, node 381'),
(87370, 13018, 0, 'Goldthorn zone 8, node 400'),

(64094, 13000, 0, 'Alterac Mountains - Goldthorn'); -- Alterac Mountains

-- Firebloom 2866
-- https://tbc.wowhead.com/object=2866/firebloom
DELETE FROM `gameobject` WHERE `guid` = 139331; -- Duplicate 139313
DELETE FROM `pool_gameobject` WHERE `guid` = 139331;
DELETE FROM `gameobject` WHERE `guid` = 134518; -- Duplicate 131117
DELETE FROM `pool_gameobject` WHERE `guid` = 134518;
DELETE FROM `gameobject` WHERE `guid` = 131129; -- Duplicate 131135
DELETE FROM `pool_gameobject` WHERE `guid` = 131129;
UPDATE `gameobject` SET `position_x` = -9316.77, `position_y` = -2273.54, `position_z` = 7.87112, `orientation` = -2.3911, `rotation2` = -0.930417, `rotation3` = 0.366502 WHERE `guid` = 139361 AND `id` = 2866;
UPDATE `gameobject` SET `position_x` = -8446.79, `position_y` = -2719.88, `position_z` = 25.594, `orientation` = 0.296705, `rotation2` = 0.147809, `rotation3` = 0.989016 WHERE `guid` = 139336 AND `id` = 2866;
UPDATE `gameobject` SET `position_x` = -8424.62, `position_y` = -2517.3, `position_z` = 49.5497, `orientation` = -0.104719, `rotation2` = -0.0523356, `rotation3` = 0.99863 WHERE `guid` = 139354 AND `id` = 2866;
UPDATE `gameobject` SET `position_x` = -8220.14, `position_y` = -3416.42, `position_z` = 19.0372, `orientation` = -1.81514, `rotation2` = -0.78801, `rotation3` = 0.615662 WHERE `guid` = 139313 AND `id` = 2866;
DELETE FROM `gameobject` WHERE `guid` = 139348; -- Duplicate 139308
DELETE FROM `pool_gameobject` WHERE `guid` = 139348;
DELETE FROM `gameobject` WHERE `guid` = 139365; -- Duplicate 139327
DELETE FROM `pool_gameobject` WHERE `guid` = 139365;
DELETE FROM `gameobject` WHERE `guid` = 139316; -- Duplicate 139305
DELETE FROM `pool_gameobject` WHERE `guid` = 139316;
UPDATE `gameobject` SET `position_x` = -7484.37, `position_y` = -3971.08, `position_z` = 11.7882, `orientation` = 0.314158, `rotation2` = 0.156434, `rotation3` = 0.987688 WHERE `guid` = 139357 AND `id` = 2866;
UPDATE `gameobject` SET `position_x` = -7461.91, `position_y` = -4757.04, `position_z` = 8.90017, `orientation` = 2.67035, `rotation2` = 0.972369, `rotation3` = 0.233447 WHERE `guid` = 139355 AND `id` = 2866;
DELETE FROM `gameobject` WHERE `guid` = 139338; -- Duplicate 139307
DELETE FROM `pool_gameobject` WHERE `guid` = 139338;
DELETE FROM `gameobject` WHERE `guid` = 133499; -- Duplicate 133537
DELETE FROM `pool_gameobject` WHERE `guid` = 133499;
DELETE FROM `gameobject` WHERE `guid` = 133517; -- Duplicate 131075
DELETE FROM `pool_gameobject` WHERE `guid` = 133517;
UPDATE `gameobject` SET `position_x` = -7216.36, `position_y` = -4746.08, `position_z` = 10.7685, `orientation` = 0.872664, `rotation2` = 0.422618, `rotation3` = 0.906308 WHERE `guid` = 139372 AND `id` = 2866;
DELETE FROM `gameobject` WHERE `guid` = 139342; -- Duplicate 139323
DELETE FROM `pool_gameobject` WHERE `guid` = 139342;
DELETE FROM `gameobject` WHERE `guid` = 133516; -- Duplicate 133492
DELETE FROM `pool_gameobject` WHERE `guid` = 133516;
DELETE FROM `gameobject` WHERE `guid` = 133545; -- Duplicate 133535
DELETE FROM `pool_gameobject` WHERE `guid` = 133545;
UPDATE `gameobject` SET `position_x` = -7078.64, `position_y` = -3081.89, `position_z` = 10.804, `orientation` = -1.15192, `rotation2` = -0.54464, `rotation3` = 0.83867 WHERE `guid` = 139353 AND `id` = 2866;	
DELETE FROM `gameobject` WHERE `guid` = 133541; -- Duplicate 133553
DELETE FROM `pool_gameobject` WHERE `guid` = 133541;
DELETE FROM `gameobject` WHERE `guid` = 140677; -- Duplicate 133541 (map)
DELETE FROM `pool_gameobject` WHERE `guid` = 140677;
DELETE FROM `gameobject` WHERE `guid` = 133550; -- Duplicate 133543
DELETE FROM `pool_gameobject` WHERE `guid` = 133550;
UPDATE `gameobject` SET `position_x` = -7016.36, `position_y` = -2879.98, `position_z` = 9.01529, `orientation` = 1.44862, `rotation2` = 0.66262, `rotation3` = 0.748956 WHERE `guid` = 139337 AND `id` = 2866;
DELETE FROM `gameobject` WHERE `guid` = 133549; -- Duplicate 133534
DELETE FROM `pool_gameobject` WHERE `guid` = 133549;
DELETE FROM `gameobject` WHERE `guid` = 133509; -- Duplicate 133489
DELETE FROM `pool_gameobject` WHERE `guid` = 133509;
UPDATE `gameobject` SET `position_x` = -6981.83, `position_y` = -4478.49, `position_z` = 11.1205, `orientation` = 1.93731, `rotation2` = 0.824125, `rotation3` = 0.566409 WHERE `guid` = 139322 AND `id` = 2866;
DELETE FROM `gameobject` WHERE `guid` = 139362; -- Duplicate 139322
DELETE FROM `pool_gameobject` WHERE `guid` = 139362;
DELETE FROM `gameobject` WHERE `guid` = 133551; -- Duplicate 133533
DELETE FROM `pool_gameobject` WHERE `guid` = 133551;
UPDATE `gameobject` SET `position_x` = -6886.74, `position_y` = -1017.65, `position_z` = 244.263, `orientation` = 0.122173, `rotation2` = 0.0610485, `rotation3` = 0.998135 WHERE `guid` = 133532 AND `id` = 2866;	
DELETE FROM `gameobject` WHERE `guid` = 133512; -- Duplicate 133532
DELETE FROM `pool_gameobject` WHERE `guid` = 133512;
DELETE FROM `gameobject` WHERE `guid` = 133546; -- Duplicate 133532
DELETE FROM `pool_gameobject` WHERE `guid` = 133546;
DELETE FROM `gameobject` WHERE `guid` = 133531; -- Duplicate 133497
DELETE FROM `pool_gameobject` WHERE `guid` = 133531;
DELETE FROM `gameobject` WHERE `guid` = 131082; -- Duplicate 131077
DELETE FROM `pool_gameobject` WHERE `guid` = 131082;
DELETE FROM `gameobject` WHERE `guid` = 133525; -- Duplicate 133500
DELETE FROM `pool_gameobject` WHERE `guid` = 133525;
DELETE FROM `gameobject` WHERE `guid` = 139349; -- Duplicate 139321
DELETE FROM `pool_gameobject` WHERE `guid` = 139349;
DELETE FROM `gameobject` WHERE `guid` = 133530; -- Duplicate 133515
DELETE FROM `pool_gameobject` WHERE `guid` = 133530;
DELETE FROM `gameobject` WHERE `guid` = 133548; -- Duplicate 133518
DELETE FROM `pool_gameobject` WHERE `guid` = 133548;
DELETE FROM `gameobject` WHERE `guid` = 139310; -- Duplicate 131092 (map)
DELETE FROM `pool_gameobject` WHERE `guid` = 139310;
DELETE FROM `gameobject` WHERE `guid` = 133538; -- Duplicate 133501
DELETE FROM `pool_gameobject` WHERE `guid` = 133538;
DELETE FROM `gameobject` WHERE `guid` = 133528; -- Duplicate 133539
DELETE FROM `pool_gameobject` WHERE `guid` = 133528;
DELETE FROM `gameobject` WHERE `guid` = 133526; -- Duplicate 133496
DELETE FROM `pool_gameobject` WHERE `guid` = 133526;

DELETE FROM `gameobject` WHERE `guid` IN (61450,61452,86047,87000,64862,86043,86051,87442,86053,86048,86052,87163,86046,61451,86045,86044,87162,9980,31322) AND `id` = 2866;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(61450, 2866, 0, 1, -11508.7, -3285.16, 7.97583, -1.37881, 0, 0, -0.636078, 0.771625, 45, 90, 100, 1),
(61451, 2866, 0, 1, -7095.3, -1517.7, 242.911, -2.9845, 0, 0, -0.996917, 0.0784656, 45, 90, 100, 1),
(61452, 2866, 0, 1, -11317.1, -3146.82, 5.7421, 1.93731, 0, 0, 0.824125, 0.566409, 45, 90, 100, 1),
(64862, 2866, 1, 1, -8655.95, -4414.97, 11.8215, -0.994837, 0, 0, -0.477158, 0.878817, 45, 90, 100, 1),
(86043, 2866, 1, 1, -8551.42, -4275.46, 12.493, -1.18682, 0, 0, -0.559191, 0.829039, 45, 90, 100, 1),
(86044, 2866, 0, 1, -6846.84, -1140.55, 240.004, -2.80997, 0, 0, -0.986285, 0.165053, 45, 90, 100, 1),
(86045, 2866, 0, 1, -7091.08, -1143.13, 270.494, -2.93214, 0, 0, -0.994521, 0.104535, 45, 90, 100, 1),
(86046, 2866, 0, 1, -7319.13, -934.882, 244.218, -3.08918, 0, 0, -0.999657, 0.0262033, 45, 90, 100, 1),
(86047, 2866, 1, 1, -10016.3, -3712.83, 5.8713, -2.47837, 0, 0, -0.945519, 0.325567, 45, 90, 100, 1),
(86048, 2866, 1, 1, -7615.36, -3785.46, 12.4705, 2.93214, 0, 0, 0.994521, 0.104535, 45, 90, 100, 1),
(86051, 2866, 1, 1, -7953.55, -5186.19, 3.77604, 1.97222, 0, 0, 0.833885, 0.551938, 45, 90, 100, 1),
(86052, 2866, 1, 1, -7578.92, -4414.79, 11.0501, -0.750491, 0, 0, -0.366501, 0.930418, 45, 90, 100, 1),
(86053, 2866, 1, 1, -7713.99, -4318.98, 11.0923, -1.309, 0, 0, -0.608763, 0.793352, 45, 90, 100, 1),
(87000, 2866, 1, 1, -9381.58, -3555.23, 12.5591, -3.03684, 0, 0, -0.998629, 0.0523524, 45, 90, 100, 1),
(87162, 2866, 0, 1, -6814.45, -1554.32, 193.158, -0.261798, 0, 0, -0.130525, 0.991445, 45, 90, 100, 1),
(87163, 2866, 1, 1, -7540.94, -3116.9, 17.5761, 0.314158, 0, 0, 0.156434, 0.987688, 45, 90, 100, 1),
(87442, 2866, 1, 1, -7741.32, -3611.67, 44.6915, -0.541051, 0, 0, -0.267238, 0.963631, 45, 90, 100, 1),

(9980, 2866, 0, 1, -6872.54, -1692.59, 247.038, 4.43314, 0, 0, -0.798635, 0.601815, 45, 90, 100, 1),
(31322, 2866, 0, 1, -7221.24, -1565.34, 254.58, 3.00195, 0, 0, 0.997563, 0.0697661, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (61450,61452,86047,87000,64862,86043,86051,87442,86053,86048,86052,87163,86046,61451,86045,86044,87162,9980,31322);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(86044, 13015, 0, 'Firebloom zone 51, node 56'), -- Searing Gorge
(61451, 13015, 0, 'Firebloom zone 51, node 54'),
(87162, 13015, 0, 'Firebloom zone 51, node 59'),
(86046, 13015, 0, 'Firebloom zone 51, node 58'),
(86045, 13015, 0, 'Firebloom zone 51, node 57'),
(9980, 13015, 0, 'Searing Gorge - Firebloom'),
(31322, 13015, 0, 'Searing Gorge - Firebloom'),

(86053, 13037, 0, 'Firebloom zone 440, node 110'), -- Tanaris
(87442, 13037, 0, 'Firebloom zone 440, node 125'),
(87000, 13037, 0, 'Firebloom zone 440, node 120'),
(87163, 13037, 0, 'Firebloom zone 440, node 124'),
(86052, 13037, 0, 'Firebloom zone 440, node 109'),
(86051, 13037, 0, 'Firebloom zone 440, node 108'),
(86048, 13037, 0, 'Firebloom zone 440, node 105'),
(86047, 13037, 0, 'Firebloom zone 440, node 104'),
(86043, 13037, 0, 'Firebloom zone 440, node 103'),
(64862, 13037, 0, 'Firebloom zone 440, node 97'),

(61452, 13003, 0, 'Firebloom zone 4, node 107'), -- Blasted Lands
(61450, 13003, 0, 'Firebloom zone 4, node 106');

-- Purple Lotus 142140
UPDATE `gameobject` SET `position_x` = -13873.7, `position_y` = 419.135, `position_z` = 93.5225, `orientation` = 2.9845, `rotation2` = 0.996917, `rotation3` = 0.0784656 WHERE `guid` = 134523 AND `id` = 142140;
UPDATE `gameobject` SET `position_x` = -13007.8, `position_y` = -717.884, `position_z` = 55.3487, `orientation` = -0.977383, `rotation2` = -0.469471, `rotation3` = 0.882948 WHERE `guid` = 134520 AND `id` = 142140;
DELETE FROM `gameobject` WHERE `guid` = 134530; -- Duplicate 134537
DELETE FROM `pool_gameobject` WHERE `guid` = 134530;
DELETE FROM `gameobject` WHERE `guid` = 134533; -- Duplicate 134522
DELETE FROM `pool_gameobject` WHERE `guid` = 134533;
UPDATE `gameobject` SET `position_x` = -12520.5, `position_y` = -719.582, `position_z` = 40.9531, `orientation` = 0.820303, `rotation2` = 0.398748, `rotation3` = 0.91706 WHERE `guid` = 134527 AND `id` = 142140;
UPDATE `gameobject` SET `position_x` = -11561.6, `position_y` = 547.996, `position_z` = 50.6297, `orientation` = 0, `rotation2` = 0, `rotation3` = 1 WHERE `guid` = 134535 AND `id` = 142140;
UPDATE `gameobject` SET `position_x` = -8274.79, `position_y` = -4711.89, `position_z` = 0.241838, `orientation` = 0, `rotation2` = 0, `rotation3` = 1 WHERE `guid` = 139374 AND `id` = 142140;
DELETE FROM `gameobject` WHERE `guid` = 139378; -- Duplicate 139380
DELETE FROM `pool_gameobject` WHERE `guid` = 139378;
UPDATE `gameobject` SET `position_x` = -6527.28, `position_y` = -3183.1, `position_z` = 259.257, `orientation` = -0.820303, `rotation2` = -0.398748, `rotation3` = 0.91706 WHERE `guid` = 131103 AND `id` = 142140;
UPDATE `gameobject` SET `position_x` = -6451.54, `position_y` = -3418.86, `position_z` = 229.71, `orientation` = 2.00713, `rotation2` = 0.843392, `rotation3` = 0.537299 WHERE `guid` = 131100 AND `id` = 142140;
DELETE FROM `gameobject` WHERE `guid` = 133270; -- Duplicate 131097
DELETE FROM `pool_gameobject` WHERE `guid` = 133270;
DELETE FROM `gameobject` WHERE `guid` = 133271; -- Duplicate 131099
DELETE FROM `pool_gameobject` WHERE `guid` = 133271;
DELETE FROM `gameobject` WHERE `guid` = 138743; -- Duplicate 138742
DELETE FROM `pool_gameobject` WHERE `guid` = 138743;
DELETE FROM `gameobject` WHERE `guid` = 130929; -- Duplicate 135077
DELETE FROM `pool_gameobject` WHERE `guid` = 130929;
DELETE FROM `gameobject` WHERE `guid` = 130930; -- Duplicate 135048
DELETE FROM `pool_gameobject` WHERE `guid` = 130930;
DELETE FROM `gameobject` WHERE `guid` = 135075; -- Duplicate 135049
DELETE FROM `pool_gameobject` WHERE `guid` = 135075;
DELETE FROM `gameobject` WHERE `guid` = 135074; -- Duplicate 135060
DELETE FROM `pool_gameobject` WHERE `guid` = 135074;
UPDATE `gameobject` SET `position_x` = -21.1782, `position_y` = -2837.13, `position_z` = 126.25, `orientation` = 1.93731, `rotation2` = 0.824125, `rotation3` = 0.566409 WHERE `guid` = 135054 AND `id` = 142140;
UPDATE `gameobject` SET `position_x` = 3435.67, `position_y` = -4595.98, `position_z` = 104.198, `orientation` = 1.64061, `rotation2` = 0.731354, `rotation3` = 0.681998 WHERE `guid` = 136844 AND `id` = 142140;
DELETE FROM `gameobject` WHERE `guid` = 137774; -- Duplicate 136769
DELETE FROM `pool_gameobject` WHERE `guid` = 137774;
DELETE FROM `gameobject` WHERE `guid` IN (137775,137773,136762); -- Duplicate 136774
DELETE FROM `pool_gameobject` WHERE `guid` IN (137775,137773,136762);

DELETE FROM `gameobject` WHERE `guid` IN (61973,61971,61970,86069,61972,5490,87164,64889,87001,86058,86057,86070,86060,64891,86077,87003,64892,86076,86059,86072,86063,87171,87166,87173,86062,87064,86061,86055,86054,86066,86064,86065,87445,87448,87444,87168,64888,87169,87167,87446,87447,87620,87443,61975,87170,86075,61976,87172,86073,17308,15869,15796,15885) AND `id` = 142140;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5490, 142140, 0, 1, -11563.1, 782.105, 42.5379, 2.54818, 0, 0, 0.956305, 0.292372, 45, 90, 100, 1),
(61970, 142140, 0, 1, -12904.2, -875.625, 68.7345, 0.925024, 0, 0, 0.446198, 0.894934, 45, 90, 100, 1),
(61971, 142140, 0, 1, -12978.9, -610.158, 53.2944, 3.08918, 0, 0, 0.999657, 0.0262033, 45, 90, 100, 1),
(61972, 142140, 0, 1, -12469, -182.317, 14.5772, -0.715585, 0, 0, -0.350207, 0.936672, 45, 90, 100, 1),
(61973, 142140, 0, 1, -13627.4, -333.377, 9.63133, 0.436332, 0, 0, 0.216439, 0.976296, 45, 90, 100, 1),
(61975, 142140, 1, 1, 2995.56, -4113.16, 99.9418, 0.715585, 0, 0, 0.350207, 0.936672, 45, 90, 100, 1),
(61976, 142140, 1, 1, 3580.77, -5089.3, 85.0643, -2.86233, 0, 0, -0.990267, 0.139178, 45, 90, 100, 1),
(64888, 142140, 0, 1, -330.517, -3413.43, 158.924, -1.53589, 0, 0, -0.694658, 0.71934, 45, 90, 100, 1),
(64889, 142140, 1, 1, -9632.66, -2808.55, 11.3467, 2.42601, 0, 0, 0.936673, 0.350206, 45, 90, 100, 1),
(64891, 142140, 1, 1, -6986.9, -4349.21, 9.60038, -2.89724, 0, 0, -0.992546, 0.121873, 45, 90, 100, 1),
(64892, 142140, 1, 1, -6835.3, -2926.15, 8.88333, 2.32129, 0, 0, 0.91706, 0.398748, 45, 90, 100, 1),
(86054, 142140, 1, 1, -3100.92, 1824.06, 42.6913, 2.14675, 0, 0, 0.878816, 0.477161, 45, 90, 100, 1),
(86055, 142140, 1, 1, -3153.04, 1919.11, 45.3751, 2.11185, 0, 0, 0.870356, 0.492423, 45, 90, 100, 1),
(86057, 142140, 1, 1, -8839.33, -3354.38, 9.368, -1.37881, 0, 0, -0.636078, 0.771625, 45, 90, 100, 1),
(86058, 142140, 1, 1, -8962.61, -3482.48, 20.1249, 2.14675, 0, 0, 0.878816, 0.477161, 45, 90, 100, 1),
(86059, 142140, 1, 1, -5614.67, 1307.63, 35.5387, 0.296705, 0, 0, 0.147809, 0.989016, 45, 90, 100, 1),
(86060, 142140, 1, 1, -7936.81, -3902.71, 9.61212, -1.76278, 0, 0, -0.771624, 0.636079, 45, 90, 100, 1),
(86061, 142140, 1, 1, -3158.66, 1872.15, 45.1368, 1.64061, 0, 0, 0.731354, 0.681998, 45, 90, 100, 1),
(86062, 142140, 1, 1, -4865.61, 3626.88, 14.1378, -1.67551, 0, 0, -0.743143, 0.669133, 45, 90, 100, 1),
(86063, 142140, 1, 1, -5474.59, 3656.6, -2.29504, 2.00713, 0, 0, 0.843392, 0.537299, 45, 90, 100, 1),
(86064, 142140, 1, 1, -2938.85, 2588.07, 52.3408, -0.122173, 0, 0, -0.0610485, 0.998135, 45, 90, 100, 1),
(86065, 142140, 1, 1, -2803.22, 2565.98, 58.5688, -0.331611, 0, 0, -0.165047, 0.986286, 45, 90, 100, 1),
(86066, 142140, 1, 1, -3081.53, 2785.44, 72.6654, -0.279252, 0, 0, -0.139173, 0.990268, 45, 90, 100, 1),
(86069, 142140, 0, 1, -12704.1, -490.987, 30.4305, 1.64061, 0, 0, 0.731354, 0.681998, 45, 90, 100, 1),
(86070, 142140, 1, 1, -8306.15, -4601.28, 8.87698, -1.41372, 0, 0, -0.649447, 0.760406, 45, 90, 100, 1),
(86072, 142140, 1, 1, -5478.73, 1138.19, 48.0808, -0.052359, 0, 0, -0.0261765, 0.999657, 45, 90, 100, 1),
(86073, 142140, 1, 1, 3797.78, -5155.82, 142.267, 0.191985, 0, 0, 0.0958451, 0.995396, 45, 90, 100, 1),
(86075, 142140, 1, 1, 3566.69, -5040.05, 84.6414, -1.65806, 0, 0, -0.737276, 0.675591, 45, 90, 100, 1),
(86076, 142140, 1, 1, -5741.64, 1168.35, 64.9306, 2.21656, 0, 0, 0.894933, 0.446202, 45, 90, 100, 1),
(86077, 142140, 1, 1, -6964.21, -4412.08, 10.5654, 0.017452, 0, 0, 0.00872589, 0.999962, 45, 90, 100, 1),
(87001, 142140, 1, 1, -9225.46, -2990.06, 17.4505, 2.02458, 0, 0, 0.848048, 0.52992, 45, 90, 100, 1),
(87003, 142140, 1, 1, -6948.93, -4308.28, 9.77953, -2.96704, 0, 0, -0.996194, 0.0871655, 45, 90, 100, 1),
(87064, 142140, 1, 1, -3624.59, 958.019, 147.893, -0.523598, 0, 0, -0.258819, 0.965926, 45, 90, 100, 1),
(87164, 142140, 0, 1, -11553.6, 736.776, 60.7313, 0.90757, 0, 0, 0.438371, 0.898794, 45, 90, 100, 1),
(87166, 142140, 1, 1, -5358.88, 1241.68, 22.1054, 0.610864, 0, 0, 0.300705, 0.953717, 45, 90, 100, 1),
(87167, 142140, 0, 1, -316.936, -4234.65, 138.125, 0.628317, 0, 0, 0.309016, 0.951057, 45, 90, 100, 1),
(87168, 142140, 0, 1, -371.908, -4127, 173.995, 1.79769, 0, 0, 0.782608, 0.622514, 45, 90, 100, 1),
(87169, 142140, 0, 1, -329.511, -4207.55, 152.009, 1.53589, 0, 0, 0.694658, 0.71934, 45, 90, 100, 1),
(87170, 142140, 1, 1, 3548.76, -4767.67, 111.289, -2.44346, 0, 0, -0.939692, 0.342021, 45, 90, 100, 1),
(87171, 142140, 1, 1, -5449.09, 1327.84, 20.0258, 2.44346, 0, 0, 0.939692, 0.342021, 45, 90, 100, 1),
(87172, 142140, 1, 1, 3596.8, -4589.69, 104.494, -2.67035, 0, 0, -0.972369, 0.233447, 45, 90, 100, 1),
(87173, 142140, 1, 1, -5002.79, 1201.35, 54.0045, -0.226892, 0, 0, -0.113203, 0.993572, 45, 90, 100, 1),
(87443, 142140, 0, 1, 126.473, -3501.29, 107.241, 1.25664, 0, 0, 0.587786, 0.809016, 45, 90, 100, 1),
(87444, 142140, 0, 1, -376.088, -4090.41, 174.874, -2.86233, 0, 0, -0.990267, 0.139178, 45, 90, 100, 1),
(87445, 142140, 0, 1, -437.401, -4189.53, 195.066, -2.47837, 0, 0, -0.945519, 0.325567, 45, 90, 100, 1),
(87446, 142140, 0, 1, -281.208, -4107.5, 138.673, -2.04204, 0, 0, -0.852641, 0.522496, 45, 90, 100, 1),
(87447, 142140, 0, 1, -195.593, -4092.25, 152.112, 0.610864, 0, 0, 0.300705, 0.953717, 45, 90, 100, 1),
(87448, 142140, 0, 1, -418.711, -2793.62, 80.5266, -1.15192, 0, 0, -0.54464, 0.83867, 45, 90, 100, 1),
(87620, 142140, 0, 1, -33.9568, -2777.36, 122.507, -0.802851, 0, 0, -0.390731, 0.920505, 45, 90, 100, 1),

(15796, 142140, 0, 1, -170.906, -3785.24, 238.499, 0.837758, 0, 0, 0.406736, 0.913545, 45, 90, 100, 1),
(15869, 142140, 1, 1, -3093.81, 1941.48, 29.1315, 4.64258, 0, 0, -0.731354, 0.681998, 45, 90, 100, 1),
(15885, 142140, 1, 1, 3655.02, -5225.06, 84.9615, 6.05629, 0, 0, -0.113203, 0.993572, 45, 90, 100, 1),
(17308, 142140, 1, 1, -6930.42, -4351.05, 11.3895, 5.75959, 0, 0, -0.258819, 0.965926, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (61973,61971,61970,86069,61972,5490,87164,64889,87001,86058,86057,86070,86060,64891,86077,87003,64892,86076,86059,86072,86063,87171,87166,87173,86062,87064,86061,86055,86054,86066,86064,86065,87445,87448,87444,87168,64888,87169,87167,87446,87447,87620,87443,61975,87170,86075,61976,87172,86073,17308,15869,15796,15885);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(86060, 13037, 0, 'Purple Lotus zone 440, node 113'), -- Tanaris
(86058, 13037, 0, 'Purple Lotus zone 440, node 112'),
(86057, 13037, 0, 'Purple Lotus zone 440, node 111'),
(64892, 13037, 0, 'Purple Lotus zone 440, node 101'),
(64891, 13037, 0, 'Purple Lotus zone 440, node 100'),
(64889, 13037, 0, 'Purple Lotus zone 440, node 98'),
(86070, 13037, 0, 'Purple Lotus zone 440, node 114'),
(87001, 13037, 0, 'Purple Lotus zone 440, node 121'),
(86077, 13037, 0, 'Purple Lotus zone 440, node 116'),
(87003, 13037, 0, 'Purple Lotus zone 440, node 123'),
(17308, 13037, 0, 'Tanaris - Purple Lotus'),

(86063, 13033, 0, 'Purple Lotus zone 357, node 155'), -- Feralas
(86064, 13033, 0, 'Purple Lotus zone 357, node 156'),
(86065, 13033, 0, 'Purple Lotus zone 357, node 157'),
(86062, 13033, 0, 'Purple Lotus zone 357, node 154'),
(86066, 13033, 0, 'Purple Lotus zone 357, node 158'),
(86072, 13033, 0, 'Purple Lotus zone 357, node 159'),
(86076, 13033, 0, 'Purple Lotus zone 357, node 160'),
(87166, 13033, 0, 'Purple Lotus zone 357, node 239'),
(87173, 13033, 0, 'Purple Lotus zone 357, node 241'),
(86061, 13033, 0, 'Purple Lotus zone 357, node 153'),
(87064, 13033, 0, 'Purple Lotus zone 357, node 237'),
(86054, 13033, 0, 'Purple Lotus zone 357, node 150'),
(87171, 13033, 0, 'Purple Lotus zone 357, node 240'),
(86059, 13033, 0, 'Purple Lotus zone 357, node 152'),
(86055, 13033, 0, 'Purple Lotus zone 357, node 151'),
(15869, 13033, 0, 'Feralas - Purple Lotus'),

(87169, 13019, 0, 'Purple Lotus zone 47, node 329'), -- The Hinterlands
(87448, 13019, 0, 'Purple Lotus zone 47, node 338'),
(87447, 13019, 0, 'Purple Lotus zone 47, node 337'),
(87446, 13019, 0, 'Purple Lotus zone 47, node 336'),
(87445, 13019, 0, 'Purple Lotus zone 47, node 335'),
(87444, 13019, 0, 'Purple Lotus zone 47, node 334'),
(87168, 13019, 0, 'Purple Lotus zone 47, node 328'),
(87443, 13019, 0, 'Purple Lotus zone 47, node 333'),
(87167, 13019, 0, 'Purple Lotus zone 47, node 327'),
(64888, 13019, 0, 'Purple Lotus zone 47, node 301'),
(87620, 13019, 0, 'The Hinterlands - Purple Lotus'),
(15796, 13019, 0, 'The Hinterlands - Purple Lotus'),

(87164, 13017, 0, 'Purple Lotus zone 33, node 704'), -- Stranglethorn Vale
(61971, 13017, 0, 'Purple Lotus zone 33, node 610'),
(61972, 13017, 0, 'Purple Lotus zone 33, node 611'),
(61973, 13017, 0, 'Purple Lotus zone 33, node 612'),
(5490, 13017, 0, 'Purple Lotus zone 33, node 715'),
(61970, 13017, 0, 'Purple Lotus zone 33, node 609'),
(86069, 13017, 0, 'Purple Lotus zone 33, node 662'),

(61976, 13025, 0, 'Purple Lotus zone 16, node 493'), -- Azshara
(87170, 13025, 0, 'Purple Lotus zone 16, node 518'),
(61975, 13025, 0, 'Purple Lotus zone 16, node 492'),
(86073, 13025, 0, 'Purple Lotus zone 16, node 504'),
(86075, 13025, 0, 'Purple Lotus zone 16, node 505'),
(87172, 13025, 0, 'Purple Lotus zone 16, node 519'),
(15885, 13025, 0, 'Azshara - Purple Lotus');

-- Arthas' Tears 142141
-- https://tbc.wowhead.com/object=142141/arthas-tears
DELETE FROM `gameobject` WHERE `guid` = 135512; -- Duplicate 135474
DELETE FROM `pool_gameobject` WHERE `guid` = 135512;
UPDATE `gameobject` SET `position_x` = 1382.68, `position_y` = -1814.81, `position_z` = 61.294, `orientation` = 0.296705, `rotation2` = 0.147809, `rotation3` = 0.989016 WHERE `guid` = 135521 AND `id` = 142141;
UPDATE `gameobject` SET `position_x` = 1558.22, `position_y` = -995.456, `position_z` = 67.24, `orientation` = -1.69297, `rotation2` = -0.748956, `rotation3` = 0.66262 WHERE `guid` = 135484 AND `id` = 142141;
DELETE FROM `gameobject` WHERE `guid` = 135438; -- Duplicate 135520
DELETE FROM `pool_gameobject` WHERE `guid` = 135438;
DELETE FROM `gameobject` WHERE `guid` = 135491; -- Duplicate 135514
DELETE FROM `pool_gameobject` WHERE `guid` = 135491;
DELETE FROM `gameobject` WHERE `guid` = 135439; -- Duplicate 135496
DELETE FROM `pool_gameobject` WHERE `guid` = 135439;
UPDATE `gameobject` SET `position_x` = 1842.55, `position_y` = -2206.58, `position_z` = 62.1356, `orientation` = -2.51327, `rotation2` = -0.951056, `rotation3` = 0.309019 WHERE `guid` = 135507 AND `id` = 142141;
UPDATE `gameobject` SET `position_x` = 2159.69, `position_y` = -1574.27, `position_z` = 68.0867, `orientation` = -1.51844, `rotation2` = -0.688356, `rotation3` = 0.725373 WHERE `guid` = 135495 AND `id` = 142141;
UPDATE `gameobject` SET `position_x` = 2861.6, `position_y` = -4063.8, `position_z` = 99.4177, `orientation` = 0.052359, `rotation2` = 0.0261765, `rotation3` = 0.999657 WHERE `guid` = 131869 AND `id` = 142141;
DELETE FROM `gameobject` WHERE `guid` = 131864; -- Duplicate 131849
DELETE FROM `pool_gameobject` WHERE `guid` = 131864;
DELETE FROM `gameobject` WHERE `guid` = 136777; -- Duplicate 138371
DELETE FROM `pool_gameobject` WHERE `guid` = 136777;

DELETE FROM `gameobject` WHERE `guid` IN (61988,62202,62178,61994,61989,62277,62003,61982,86088,87175,62289,62177,64895,61979,86085,61984,86087,86082,62002,62210,62032,64893,62028,87174,86080) AND `id` = 142141;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(61979, 142141, 0, 1, 2097.43, -1873.44, 63.6307, 0.209439, 0, 0, 0.104528, 0.994522, 45, 90, 100, 1),
(61982, 142141, 0, 1, 1742.24, -3982.27, 129.338, -0.052359, 0, 0, -0.0261765, 0.999657, 45, 90, 100, 1),
(61984, 142141, 0, 1, 2422.45, -1717.29, 107.66, -0.837757, 0, 0, -0.406736, 0.913546, 45, 90, 100, 1),
(61988, 142141, 0, 1, 1270.88, -1507.6, 58.8005, 2.1293, 0, 0, 0.874619, 0.48481, 45, 90, 100, 1),
(61989, 142141, 0, 1, 1552.86, -1768.98, 61.8234, -1.95477, 0, 0, -0.829038, 0.559192, 45, 90, 100, 1),
(61994, 142141, 0, 1, 1543.4, -1647.88, 69.2486, -1.27409, 0, 0, -0.594823, 0.803857, 45, 90, 100, 1),
(62002, 142141, 0, 1, 2701.97, -1895.5, 68.079, 0.715585, 0, 0, 0.350207, 0.936672, 45, 90, 100, 1),
(62003, 142141, 0, 1, 1607.96, -2178.57, 55.0344, 1.0821, 0, 0, 0.515036, 0.857168, 45, 90, 100, 1),
(62028, 142141, 0, 1, 2929.91, -4735.68, 91.4919, -1.81514, 0, 0, -0.78801, 0.615662, 45, 90, 100, 1),
(62032, 142141, 0, 1, 2878.18, -1533.28, 145.203, -1.71042, 0, 0, -0.754709, 0.65606, 45, 90, 100, 1),
(62177, 142141, 0, 1, 2009.31, -1584.37, 59.8575, -2.68781, 0, 0, -0.97437, 0.22495, 45, 90, 100, 1),
(62178, 142141, 0, 1, 1499.3, -3183.54, 111.201, 0.453785, 0, 0, 0.224951, 0.97437, 45, 90, 100, 1),
(62202, 142141, 0, 1, 1455.01, -1599.38, 67.2372, -2.35619, 0, 0, -0.923879, 0.382686, 45, 90, 100, 1),
(62210, 142141, 0, 1, 2703.26, -4790.44, 79.8637, 1.13446, 0, 0, 0.537298, 0.843393, 45, 90, 100, 1),
(62277, 142141, 0, 1, 1570.34, -1310.87, 63.0546, 2.42601, 0, 0, 0.936672, 0.350207, 45, 90, 100, 1),
(62289, 142141, 0, 1, 1922.05, -1480.68, 61.1334, -2.37364, 0, 0, -0.927182, 0.37461, 45, 90, 100, 1),
(64893, 142141, 0, 1, 2913.5, -4492.8, 91.647, 2.56563, 0, 0, 0.958819, 0.284017, 45, 90, 100, 1),
(64895, 142141, 0, 1, 2059.79, -5247.57, 86.0375, -1.02974, 0, 0, -0.492422, 0.870357, 45, 90, 100, 1),
(86080, 142141, 0, 1, 3305.3, -3724.89, 156.091, 2.21656, 0, 0, 0.894933, 0.446202, 45, 90, 100, 1),
(86082, 142141, 0, 1, 2648.07, -4149.05, 82.2208, 2.47837, 0, 0, 0.945519, 0.325567, 45, 90, 100, 1),
(86085, 142141, 0, 1, 2205.75, -4157.82, 85.6112, -1.64061, 0, 0, -0.731354, 0.681998, 45, 90, 100, 1),
(86087, 142141, 0, 1, 2468.48, -4835.2, 73.8452, -0.314158, 0, 0, -0.156434, 0.987688, 45, 90, 100, 1),
(86088, 142141, 0, 1, 1748.99, -909.477, 66.7775, -2.426, 0, 0, -0.936671, 0.350211, 45, 90, 100, 1),
(87174, 142141, 0, 1, 2999.7, -1564.12, 147.003, -1.37881, 0, 0, -0.636078, 0.771625, 45, 90, 100, 1),
(87175, 142141, 0, 1, 1821.96, -2044.74, 75.4277, 0.715585, 0, 0, 0.350207, 0.936672, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (61988,62202,62178,61994,61989,62277,62003,61982,86088,87175,62289,62177,64895,61979,86085,61984,86087,86082,62002,62210,62032,64893,62028,87174,86080);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(61979, 13021, 0, 'Arthas\' Tears zone 28, node 168'), -- Western Plaguelands
(87174, 13021, 0, 'Arthas\' Tears zone 28, node 224'),
(86088, 13021, 0, 'Arthas\' Tears zone 28, node 216'),
(62289, 13021, 0, 'Arthas\' Tears zone 28, node 180'),
(62277, 13021, 0, 'Arthas\' Tears zone 28, node 179'),
(62202, 13021, 0, 'Arthas\' Tears zone 28, node 178'),
(62177, 13021, 0, 'Arthas\' Tears zone 28, node 177'),
(62032, 13021, 0, 'Arthas\' Tears zone 28, node 176'),
(87175, 13021, 0, 'Arthas\' Tears zone 28, node 225'),
(61988, 13021, 0, 'Arthas\' Tears zone 28, node 171'),
(61989, 13021, 0, 'Arthas\' Tears zone 28, node 172'),
(61984, 13021, 0, 'Arthas\' Tears zone 28, node 169'),
(61994, 13021, 0, 'Arthas\' Tears zone 28, node 173'),
(62002, 13021, 0, 'Arthas\' Tears zone 28, node 174'),
(62003, 13021, 0, 'Arthas\' Tears zone 28, node 175'),

(61982, 13007, 0, 'Arthas\' Tears zone 139, node 343'), -- Eastern Plaguelands
(86087, 13007, 0, 'Arthas\' Tears zone 139, node 415'),
(86085, 13007, 0, 'Arthas\' Tears zone 139, node 413'),
(86082, 13007, 0, 'Arthas\' Tears zone 139, node 411'),
(86080, 13007, 0, 'Arthas\' Tears zone 139, node 410'),
(64895, 13007, 0, 'Arthas\' Tears zone 139, node 402'),
(64893, 13007, 0, 'Arthas\' Tears zone 139, node 401'),
(62210, 13007, 0, 'Arthas\' Tears zone 139, node 346'),
(62178, 13007, 0, 'Arthas\' Tears zone 139, node 345'),
(62028, 13007, 0, 'Arthas\' Tears zone 139, node 344');

-- Sungrass 142142
-- https://tbc.wowhead.com/object=142142/sungrass
UPDATE `gameobject` SET `position_x` = -7750.89, `position_y` = 950.673, `position_z` = -0.100626, `orientation` = 2.46091, `rotation2` = 0.942641, `rotation3` = 0.333809 WHERE `guid` = 138968 AND `id` = 142142;
DELETE FROM `gameobject` WHERE `guid` = 131173; -- Duplicate 131158
DELETE FROM `pool_gameobject` WHERE `guid` = 131173;
UPDATE `gameobject` SET `position_x` = -11620.4, `position_y` = -3179.27, `position_z` = 11.3477, `orientation` = -2.11185, `rotation2` = -0.870356, `rotation3` = 0.492423 WHERE `guid` = 131153 AND `id` = 142142;
UPDATE `gameobject` SET `position_x` = -11356, `position_y` = -2755.73, `position_z` = 7.42946, `orientation` = 2.65289, `rotation2` = 0.970294, `rotation3` = 0.241927 WHERE `guid` = 131161 AND `id` = 142142;
UPDATE `gameobject` SET `position_x` = -11255.7, `position_y` = -3121.49, `position_z` = 2.52145, `orientation` = -2.23402, `rotation2` = -0.898794, `rotation3` = 0.438372 WHERE `guid` = 131160 AND `id` = 142142;
DELETE FROM `gameobject` WHERE `guid` = 131244; -- Duplicate 131232
DELETE FROM `pool_gameobject` WHERE `guid` = 131244;
DELETE FROM `gameobject` WHERE `guid` = 131248; -- Duplicate 131236
DELETE FROM `pool_gameobject` WHERE `guid` = 131248;
DELETE FROM `gameobject` WHERE `guid` = 131247; -- Duplicate 131241
DELETE FROM `pool_gameobject` WHERE `guid` = 131247;
DELETE FROM `gameobject` WHERE `guid` = 131234; -- Duplicate 131230
DELETE FROM `pool_gameobject` WHERE `guid` = 131234;
DELETE FROM `gameobject` WHERE `guid` = 140689; -- Duplicate 140695
DELETE FROM `pool_gameobject` WHERE `guid` = 140689;
UPDATE `gameobject` SET `position_x` = -7815.27, `position_y` = -1183.7, `position_z` = -261.473, `orientation` = 1.16937, `rotation2` = 0.551937, `rotation3` = 0.833886 WHERE `guid` = 140693 AND `id` = 142142;
DELETE FROM `gameobject` WHERE `guid` = 131246; -- Duplicate 131240
DELETE FROM `pool_gameobject` WHERE `guid` = 131246;
DELETE FROM `gameobject` WHERE `guid` = 140678; -- Duplicate 140680
DELETE FROM `pool_gameobject` WHERE `guid` = 140678;
DELETE FROM `gameobject` WHERE `guid` = 138963; -- Duplicate 140688
DELETE FROM `pool_gameobject` WHERE `guid` = 138963;
DELETE FROM `gameobject` WHERE `guid` = 140684; -- Duplicate 138967
DELETE FROM `pool_gameobject` WHERE `guid` = 140684;
DELETE FROM `gameobject` WHERE `guid` = 138966; -- Duplicate 138965
DELETE FROM `pool_gameobject` WHERE `guid` = 138966;
DELETE FROM `gameobject` WHERE `guid` = 140685; -- Duplicate 140696
DELETE FROM `pool_gameobject` WHERE `guid` = 140685;
DELETE FROM `gameobject` WHERE `guid` = 140694; -- Duplicate 140690
DELETE FROM `pool_gameobject` WHERE `guid` = 140694;
DELETE FROM `gameobject` WHERE `guid` = 140679; -- Duplicate 138964
DELETE FROM `pool_gameobject` WHERE `guid` = 140679;
DELETE FROM `gameobject` WHERE `guid` = 138757; -- Duplicate 138746
DELETE FROM `pool_gameobject` WHERE `guid` = 138757;
UPDATE `gameobject` SET `position_x` = -4714.79, `position_y` = 1417.73, `position_z` = 88.0768, `orientation` = -2.91469, `rotation2` = -0.993571, `rotation3` = 0.113208 WHERE `guid` = 138748 AND `id` = 142142;
UPDATE `gameobject` SET `position_x` = -4657.48, `position_y` = 1604.65, `position_z` = 115.776, `orientation` = -2.00713, `rotation2` = -0.843392, `rotation3` = 0.537299 WHERE `guid` = 138752 AND `id` = 142142;
UPDATE `gameobject` SET `position_x` = -4645.59, `position_y` = 1801.94, `position_z` = 93.4592, `orientation` = -0.279252, `rotation2` = -0.139173, `rotation3` = 0.990268 WHERE `guid` = 138744 AND `id` = 142142;
UPDATE `gameobject` SET `position_x` = -243.831, `position_y` = -2650.08, `position_z` = 123.006, `orientation` = 1.41372, `rotation2` = 0.649449, `rotation3` = 0.760405 WHERE `guid` = 135133 AND `id` = 142142;
DELETE FROM `gameobject` WHERE `guid` = 135114; -- Duplicate 135138
DELETE FROM `pool_gameobject` WHERE `guid` = 135114;
UPDATE `gameobject` SET `position_x` = -161.274, `position_y` = -2780.97, `position_z` = 120.945, `orientation` = -2.49582, `rotation2` = -0.948324, `rotation3` = 0.317305 WHERE `guid` = 135124 AND `id` = 142142;
DELETE FROM `gameobject` WHERE `guid` = 135147; -- Duplicate 135106
DELETE FROM `pool_gameobject` WHERE `guid` = 135147;
DELETE FROM `gameobject` WHERE `guid` = 135149; -- Duplicate 135084
DELETE FROM `pool_gameobject` WHERE `guid` = 135149;
DELETE FROM `gameobject` WHERE `guid` = 135157; -- Duplicate 135165
DELETE FROM `pool_gameobject` WHERE `guid` = 135157;
UPDATE `gameobject` SET `position_x` = -10.5097, `position_y` = -3543.58, `position_z` = 119.021, `orientation` = -2.09439, `rotation2` = -0.866024, `rotation3` = 0.500002 WHERE `guid` = 135098 AND `id` = 142142;
DELETE FROM `gameobject` WHERE `guid` = 135158; -- Duplicate 135166
DELETE FROM `pool_gameobject` WHERE `guid` = 135158;
UPDATE `gameobject` SET `position_x` = 26.8899, `position_y` = -2417.52, `position_z` = 126.043, `orientation` = -3.10665, `rotation2` = -0.999847, `rotation3` = 0.0174704 WHERE `guid` = 135134 AND `id` = 142142;
UPDATE `gameobject` SET `position_x` = 66.809, `position_y` = -3028.1, `position_z` = 133.7, `orientation` = 0.279252, `rotation2` = 0.139173, `rotation3` = 0.990268 WHERE `guid` = 135117 AND `id` = 142142;
DELETE FROM `gameobject` WHERE `guid` = 140547; -- Duplicate 135117 (map)
DELETE FROM `pool_gameobject` WHERE `guid` = 140547;
UPDATE `gameobject` SET `position_x` = 82.176, `position_y` = -2672, `position_z` = 110.872, `orientation` = -1.6057, `rotation2` = -0.719339, `rotation3` = 0.694659 WHERE `guid` = 135111 AND `id` = 142142;
DELETE FROM `gameobject` WHERE `guid` = 135079; -- Duplicate 135144
DELETE FROM `pool_gameobject` WHERE `guid` = 135079;
DELETE FROM `gameobject` WHERE `guid` = 135148; -- Duplicate 135091
DELETE FROM `pool_gameobject` WHERE `guid` = 135148;
UPDATE `gameobject` SET `position_x` = 214.263, `position_y` = -3954.11, `position_z` = 126.244, `orientation` = -0.261798, `rotation2` = -0.130525, `rotation3` = 0.991445 WHERE `guid` = 135092 AND `id` = 142142;
UPDATE `gameobject` SET `position_x` = 228.485, `position_y` = -4264.18, `position_z` = 120.824, `orientation` = -1.16937, `rotation2` = -0.551937, `rotation3` = 0.833886 WHERE `guid` = 135083 AND `id` = 142142;
DELETE FROM `gameobject` WHERE `guid` IN (135163,135104); -- Duplicate 135143
DELETE FROM `pool_gameobject` WHERE `guid` IN (135163,135104);
DELETE FROM `gameobject` WHERE `guid` = 135142; -- Duplicate 135137
DELETE FROM `pool_gameobject` WHERE `guid` = 135142;
DELETE FROM `gameobject` WHERE `guid` = 135162; -- Duplicate 135129
DELETE FROM `pool_gameobject` WHERE `guid` = 135162;
UPDATE `gameobject` SET `position_x` = 410.458, `position_y` = -3654.1, `position_z` = 122.935, `orientation` = 1.01229, `rotation2` = 0.484809, `rotation3` = 0.87462 WHERE `guid` = 135088 AND `id` = 142142;
UPDATE `gameobject` SET `position_x` = 1528.97, `position_y` = -1769.58, `position_z` = 59.7553, `orientation` = -1.0472, `rotation2` = -0.500001, `rotation3` = 0.866025 WHERE `guid` = 135529 AND `id` = 142142;
UPDATE `gameobject` SET `position_x` = 1601.56, `position_y` = -1701.4, `position_z` = 61.4415, `orientation` = -3.08918, `rotation2` = -0.999657, `rotation3` = 0.0262033 WHERE `guid` = 135532 AND `id` = 142142;
UPDATE `gameobject` SET `position_x` = 1866.11, `position_y` = -1349.8, `position_z` = 61.0008, `orientation` = -1.78023, `rotation2` = -0.777144, `rotation3` = 0.629323 WHERE `guid` = 135531 AND `id` = 142142;	
UPDATE `gameobject` SET `position_x` = 2232.51, `position_y` = -1598.6, `position_z` = 81.9782, `orientation` = -1.20428, `rotation2` = -0.566407, `rotation3` = 0.824125 WHERE `guid` = 135530 AND `id` = 142142;
UPDATE `gameobject` SET `position_x` = 2952.15, `position_y` = -4158.74, `position_z` = 99.8019, `orientation` = -2.67035, `rotation2` = -0.972369, `rotation3` = 0.233447 WHERE `guid` = 136948 AND `id` = 142142;
UPDATE `gameobject` SET `position_x` = 3291.8, `position_y` = -4433.6, `position_z` = 103.945, `orientation` = -0.95993, `rotation2` = -0.461748, `rotation3` = 0.887011 WHERE `guid` = 136977 AND `id` = 142142;

DELETE FROM `gameobject` WHERE `guid` IN (62357,87177,87180,87459,86107,87458,86091,87179,87183,87184,86122,86120,86121,86100,86093,86092,86118,86115,86117,86099,86102,86119,86111,86101,87181,86113,86125,87182,86124,86096,86114,86116,86104,86123,86103,87454,87451,86098,86095,64897,87622,86094,87452,87449,87450,87621,87455,86089,87457,62460,62345,62347,86112,62297,86105,62295,87456,62459,62372,62367,62293,62298,87178,62294,87176,62292,62351,86126,86090,135162,135142,135148,135079,140547) AND `id` = 142142;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(62292, 142142, 1, 1, 2955.92, -5749.22, 131.122, -3.12412, 0, 0, -0.999962, 0.00873622, 45, 90, 100, 1),
(62293, 142142, 0, 1, 2748.89, -1676.89, 130.522, -0.837757, 0, 0, -0.406736, 0.913546, 45, 90, 100, 1),
(62294, 142142, 0, 1, 2817.25, -4655.78, 88.8269, -1.44862, 0, 0, -0.662619, 0.748957, 45, 90, 100, 1),
(62295, 142142, 0, 1, 2301.46, -1686.57, 100.712, -0.349065, 0, 0, -0.173648, 0.984808, 45, 90, 100, 1),
(62297, 142142, 0, 1, 2077.56, -1851.23, 63.6229, -1.74533, 0, 0, -0.766045, 0.642787, 45, 90, 100, 1),
(62298, 142142, 0, 1, 2753.51, -3487.63, 104.729, 2.65289, 0, 0, 0.970294, 0.241927, 45, 90, 100, 1),
(62345, 142142, 0, 1, 1918.27, -2175.42, 75.8794, -1.0472, 0, 0, -0.500001, 0.866025, 45, 90, 100, 1),
(62347, 142142, 0, 1, 1975.75, -2324.23, 59.4981, 2.94959, 0, 0, 0.995395, 0.0958539, 45, 90, 100, 1),
(62351, 142142, 0, 1, 3052.8, -2893.76, 109.784, 2.3911, 0, 0, 0.930417, 0.366502, 45, 90, 100, 1),
(62367, 142142, 0, 1, 2745.93, -4982.16, 91.3381, 1.16937, 0, 0, 0.551937, 0.833886, 45, 90, 100, 1),
(62372, 142142, 0, 1, 2526.7, -1955.44, 99.2084, -2.75761, 0, 0, -0.981626, 0.190814, 45, 90, 100, 1),
(62459, 142142, 1, 1, 2384.05, -6489.01, 102.738, 1.71042, 0, 0, 0.754709, 0.65606, 45, 90, 100, 1),
(62460, 142142, 0, 1, 1799.01, -1646.22, 60.0723, 1.23918, 0, 0, 0.580701, 0.814117, 45, 90, 100, 1),
(64897, 142142, 0, 1, 134.793, -3656.45, 133.251, -2.87979, 0, 0, -0.991445, 0.130528, 45, 90, 100, 1),
(86089, 142142, 0, 1, 1596, -4032.47, 149.646, 3.08918, 0, 0, 0.999657, 0.0262033, 45, 90, 100, 1),
(86091, 142142, 1, 1, -6682.94, -111.977, 3.70413, 0.418879, 0, 0, 0.207912, 0.978148, 45, 90, 100, 1),
(86092, 142142, 1, 1, -5168.84, 1370.13, 42.1852, -2.74016, 0, 0, -0.979924, 0.199371, 45, 90, 100, 1),
(86093, 142142, 1, 1, -5204.04, 1462.39, 46.935, -0.139624, 0, 0, -0.0697553, 0.997564, 45, 90, 100, 1),
(86094, 142142, 0, 1, 157.583, -3357.76, 116.646, -1.11701, 0, 0, -0.529919, 0.848048, 45, 90, 100, 1),
(86095, 142142, 0, 1, 126.82, -3811.6, 125.848, 1.98967, 0, 0, 0.838669, 0.544641, 45, 90, 100, 1),
(86096, 142142, 1, 1, -4219.56, 468.836, 50.3814, 0.645772, 0, 0, 0.317305, 0.948324, 45, 90, 100, 1),
(86098, 142142, 0, 1, 72.6079, -2282.54, 107.053, 0.994837, 0, 0, 0.477158, 0.878817, 45, 90, 100, 1),
(86099, 142142, 1, 1, -4771.66, 1382.84, 106.601, -1.6057, 0, 0, -0.719339, 0.694659, 45, 90, 100, 1),
(86100, 142142, 1, 1, -5210.45, 531.914, 53.0045, -0.017452, 0, 0, -0.00872589, 0.999962, 45, 90, 100, 1),
(86101, 142142, 1, 1, -4542.05, 551.276, 61.0015, -1.01229, 0, 0, -0.484809, 0.87462, 45, 90, 100, 1),
(86102, 142142, 1, 1, -4721.07, 1237.54, 104.924, 1.39626, 0, 0, 0.642786, 0.766046, 45, 90, 100, 1),
(86103, 142142, 1, 1, -3113.52, 2545.8, 49.0441, -1.8675, 0, 0, -0.803856, 0.594824, 45, 90, 100, 1),
(86104, 142142, 1, 1, -3510.86, 2515.86, 54.4166, 3.08918, 0, 0, 0.999657, 0.0262033, 45, 90, 100, 1),
(86105, 142142, 0, 1, 2191.87, -4578.98, 73.6903, -1.6057, 0, 0, -0.719339, 0.694659, 45, 90, 100, 1),
(86107, 142142, 1, 1, -6856.67, -2181.42, -269.856, -2.426, 0, 0, -0.936671, 0.350211, 45, 90, 100, 1),
(86111, 142142, 1, 1, -4587.29, 724.25, 48.3546, -0.785397, 0, 0, -0.382683, 0.92388, 45, 90, 100, 1),
(86112, 142142, 0, 1, 1982.18, -4091.15, 86.3628, -2.40855, 0, 0, -0.93358, 0.35837, 45, 90, 100, 1),
(86113, 142142, 1, 1, -4378.7, 473.177, 55.3617, 2.82743, 0, 0, 0.987688, 0.156436, 45, 90, 100, 1),
(86114, 142142, 1, 1, -4180.1, -116.857, 59.4741, 0.925024, 0, 0, 0.446198, 0.894934, 45, 90, 100, 1),
(86115, 142142, 1, 1, -4940.68, 1379.55, 51.1686, -2.86233, 0, 0, -0.990267, 0.139178, 45, 90, 100, 1),
(86116, 142142, 1, 1, -3785.27, 1951.63, 66.5355, -0.541051, 0, 0, -0.267238, 0.963631, 45, 90, 100, 1),
(86117, 142142, 1, 1, -4862.91, 222.42, 47.9531, -1.25664, 0, 0, -0.587786, 0.809016, 45, 90, 100, 1),
(86118, 142142, 1, 1, -5089.1, 237.204, 43.834, -1.78023, 0, 0, -0.777144, 0.629323, 45, 90, 100, 1),
(86119, 142142, 1, 1, -4664.02, 1593.6, 116.131, -0.890117, 0, 0, -0.430511, 0.902586, 45, 90, 100, 1),
(86120, 142142, 1, 1, -5394.21, 1486.27, 26.0908, -1.29154, 0, 0, -0.601814, 0.798637, 45, 90, 100, 1),
(86121, 142142, 1, 1, -5380.1, 1480.28, 25.6769, -1.29154, 0, 0, -0.601814, 0.798637, 45, 90, 100, 1),
(86122, 142142, 1, 1, -5468.4, 1682.59, 60.2407, -0.401425, 0, 0, -0.199368, 0.979925, 45, 90, 100, 1),
(86123, 142142, 1, 1, -3488.37, 2192.53, 28.3378, 2.46091, 0, 0, 0.942641, 0.333809, 45, 90, 100, 1),
(86124, 142142, 1, 1, -4220.13, 114.092, 58.0438, 2.25147, 0, 0, 0.902584, 0.430513, 45, 90, 100, 1),
(86125, 142142, 1, 1, -4312.9, 480.826, 54.8414, -2.426, 0, 0, -0.936671, 0.350211, 45, 90, 100, 1),
(86126, 142142, 1, 1, 3513.71, -4175.21, 102.224, 0.523598, 0, 0, 0.258819, 0.965926, 45, 90, 100, 1),
(87176, 142142, 0, 1, 2920.11, -1610.7, 147.766, -0.471238, 0, 0, -0.233445, 0.97237, 45, 90, 100, 1),
(87178, 142142, 0, 1, 2779.7, -4005.54, 99.1068, 0.977383, 0, 0, 0.469471, 0.882948, 45, 90, 100, 1),
(87179, 142142, 1, 1, -6536.36, 409.216, 5.08667, -2.47837, 0, 0, -0.945519, 0.325567, 45, 90, 100, 1),
(87181, 142142, 1, 1, -4421.08, -281.654, 32.5452, -0.017452, 0, 0, -0.00872589, 0.999962, 45, 90, 100, 1),
(87182, 142142, 1, 1, -4292.6, 587.599, 60.3928, -2.47837, 0, 0, -0.945519, 0.325567, 45, 90, 100, 1),
(87183, 142142, 1, 1, -6385.42, 219.859, 3.23839, -2.16421, 0, 0, -0.882948, 0.469471, 45, 90, 100, 1),
(87184, 142142, 1, 1, -5606.37, 1107.94, 63.6876, 1.25664, 0, 0, 0.587786, 0.809016, 45, 90, 100, 1),
(87449, 142142, 0, 1, 182.627, -3593.6, 126.181, -2.07694, 0, 0, -0.861629, 0.507539, 45, 90, 100, 1),
(87450, 142142, 0, 1, 185.703, -3148.8, 121.978, 0.017452, 0, 0, 0.00872589, 0.999962, 45, 90, 100, 1),
(87451, 142142, 0, 1, -42.7587, -2993.42, 122.968, 0.523598, 0, 0, 0.258819, 0.965926, 45, 90, 100, 1),
(87452, 142142, 0, 1, 158.747, -4206.66, 118.182, 0.715585, 0, 0, 0.350207, 0.936672, 45, 90, 100, 1),
(87454, 142142, 0, 1, -110.992, -2903.27, 122.513, -2.58308, 0, 0, -0.961261, 0.275641, 45, 90, 100, 1),
(87455, 142142, 0, 1, 254.182, -3485.79, 161.809, -1.76278, 0, 0, -0.771624, 0.636079, 45, 90, 100, 1),
(87456, 142142, 0, 1, 2317.71, -4236.85, 98.6486, 0.052359, 0, 0, 0.0261765, 0.999657, 45, 90, 100, 1),
(87457, 142142, 0, 1, 1721.82, -1016.11, 71.0081, 0.244346, 0, 0, 0.121869, 0.992546, 45, 90, 100, 1),
(87458, 142142, 1, 1, -6793.38, -908.425, -270.122, 0.767944, 0, 0, 0.374606, 0.927184, 45, 90, 100, 1),
(87621, 142142, 0, 1, 191.367, -4060.45, 119.505, -2.00713, 0, 0, -0.843392, 0.537299, 45, 90, 100, 1),
(87622, 142142, 0, 1, 142.088, -2939.65, 112.581, -0.331611, 0, 0, -0.165047, 0.986286, 45, 90, 100, 1),
(62357, 142142, 0, 1, -11582.6, -3341.9, 8.51584, -0.279252, 0, 0, -0.139173, 0.990268, 45, 90, 100, 1),
(87177, 142142, 0, 1, -7750.7, -2421.27, 140.446, -2.74016, 0, 0, -0.979924, 0.199371, 45, 90, 100, 1),
(87180, 142142, 1, 1, -7749.81, 1486.97, 0.788001, -3.03684, 0, 0, -0.998629, 0.0523524, 45, 90, 100, 1),
(87459, 142142, 1, 1, -7746.36, -680.292, -259.149, -2.35619, 0, 0, -0.923879, 0.382686, 45, 90, 100, 1),
(86090, 142142, 1, 1, -7736.79, -1046.92, -271.153, -1.0472, 0, 0, -0.500001, 0.866025, 45, 90, 100, 1),

(135162, 142142, 0, 1, 3118.34, -4087.81, 98.5636, 1.13446, 0, 0, 0.537299, 0.843392, 45, 90, 100, 1),
(135142, 142142, 0, 1, -13.5662, -4215.74, 121.354, 0.785397, 0, 0, 0.382683, 0.92388, 45, 90, 100, 1),
(135148, 142142, 0, 1, 1631.8, -4090.24, 151.421, 6.14356, 0, 0, -0.0697555, 0.997564, 45, 90, 100, 1),
(135079, 142142, 1, 1, -6965.77, 366.89, 6.02273, 1.41372, 0, 0, 0.649447, 0.760406, 45, 90, 100, 1),
(140547, 142142, 1, 1, 3619.93, -4289.52, 101.905, 1.48353, 0, 0, 0.67559, 0.737278, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (62357,87177,87180,87459,86107,87458,86091,87179,87183,87184,86122,86120,86121,86100,86093,86092,86118,86115,86117,86099,86102,86119,86111,86101,87181,86113,86125,87182,86124,86096,86114,86116,86104,86123,86103,87454,87451,86098,86095,64897,87622,86094,87452,87449,87450,87621,87455,86089,87457,62460,62345,62347,86112,62297,86105,62295,87456,62459,62372,62367,62293,62298,87178,62294,87176,62292,62351,86126,86090,135162,135142,135148,135079,140547);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(87179, 13035, 0, 'Sungrass zone 1377, node 69'), -- Silithus
(87180, 13035, 0, 'Sungrass zone 1377, node 70'),
(86091, 13035, 0, 'Sungrass zone 1377, node 65'),
(87183, 13035, 0, 'Sungrass zone 1377, node 71'),
(135079, 13035, 0, 'Silithus - Sungrass'),

(62460, 13021, 0, 'Sungrass zone 28, node 188'), -- Western Plaguelands
(62372, 13021, 0, 'Sungrass zone 28, node 187'),
(62347, 13021, 0, 'Sungrass zone 28, node 185'),
(62345, 13021, 0, 'Sungrass zone 28, node 184'),
(87176, 13021, 0, 'Sungrass zone 28, node 226'),
(62297, 13021, 0, 'Sungrass zone 28, node 183'),
(62295, 13021, 0, 'Sungrass zone 28, node 182'),
(87457, 13021, 0, 'Sungrass zone 28, node 228'),
(62293, 13021, 0, 'Sungrass zone 28, node 181'),
(135162, 13021, 0, 'Western Plaguelands - Sungrass'),
(135148, 13021, 0, 'Western Plaguelands - Sungrass'),

(86116, 13033, 0, 'Sungrass zone 357, node 175'), -- Feralas
(86115, 13033, 0, 'Sungrass zone 357, node 174'),
(86114, 13033, 0, 'Sungrass zone 357, node 173'),
(86113, 13033, 0, 'Sungrass zone 357, node 172'),
(87182, 13033, 0, 'Sungrass zone 357, node 243'),
(86117, 13033, 0, 'Sungrass zone 357, node 176'),
(86118, 13033, 0, 'Sungrass zone 357, node 177'),
(87181, 13033, 0, 'Sungrass zone 357, node 242'),
(86120, 13033, 0, 'Sungrass zone 357, node 179'),
(86121, 13033, 0, 'Sungrass zone 357, node 180'),
(86122, 13033, 0, 'Sungrass zone 357, node 181'),
(86123, 13033, 0, 'Sungrass zone 357, node 182'),
(86124, 13033, 0, 'Sungrass zone 357, node 183'),
(86125, 13033, 0, 'Sungrass zone 357, node 184'),
(87184, 13033, 0, 'Sungrass zone 357, node 244'),
(86104, 13033, 0, 'Sungrass zone 357, node 169'),
(86103, 13033, 0, 'Sungrass zone 357, node 168'),
(86119, 13033, 0, 'Sungrass zone 357, node 178'),
(86092, 13033, 0, 'Sungrass zone 357, node 161'),
(86093, 13033, 0, 'Sungrass zone 357, node 162'),
(86111, 13033, 0, 'Sungrass zone 357, node 171'),
(86096, 13033, 0, 'Sungrass zone 357, node 163'),
(86099, 13033, 0, 'Sungrass zone 357, node 164'),
(86100, 13033, 0, 'Sungrass zone 357, node 165'),
(86101, 13033, 0, 'Sungrass zone 357, node 166'),
(86102, 13033, 0, 'Sungrass zone 357, node 167'),

(86098, 13019, 0, 'Sungrass zone 47, node 311'), -- The Hinterlands
(87455, 13019, 0, 'Sungrass zone 47, node 345'),
(87454, 13019, 0, 'Sungrass zone 47, node 344'),
(87452, 13019, 0, 'Sungrass zone 47, node 342'),
(87451, 13019, 0, 'Sungrass zone 47, node 341'),
(64897, 13019, 0, 'Sungrass zone 47, node 303'),
(87449, 13019, 0, 'Sungrass zone 47, node 339'),
(86094, 13019, 0, 'Sungrass zone 47, node 309'),
(86095, 13019, 0, 'Sungrass zone 47, node 310'),
(87450, 13019, 0, 'Sungrass zone 47, node 340'),
(87621, 13019, 0, 'The Hinterlands - Sungrass'),
(87622, 13019, 0, 'The Hinterlands - Sungrass'),
(135142, 13019, 0, 'The Hinterlands - Sungrass'),

(87458, 13041, 0, 'Sungrass zone 490, node 292'), -- Un'Goro Crater)
(86107, 13041, 0, 'Sungrass zone 490, node 279'),
(87459, 13041, 0, 'Sungrass zone 490, node 293'),
(86090, 13041, 0, 'Sungrass zone 490, node 277'),

(87178, 13007, 0, 'Sungrass zone 139, node 446'), -- Eastern Plaguelands
(62351, 13007, 0, 'Sungrass zone 139, node 350'),
(62367, 13007, 0, 'Sungrass zone 139, node 353'),
(87456, 13007, 0, 'Sungrass zone 139, node 453'),
(86089, 13007, 0, 'Sungrass zone 139, node 416'),
(62294, 13007, 0, 'Sungrass zone 139, node 348'),
(86105, 13007, 0, 'Sungrass zone 139, node 417'),
(86112, 13007, 0, 'Sungrass zone 139, node 418'),
(62298, 13007, 0, 'Sungrass zone 139, node 349'),

(62459, 13025, 0, 'Sungrass zone 16, node 495'), -- Azshara
(62292, 13025, 0, 'Sungrass zone 16, node 494'),
(86126, 13025, 0, 'Sungrass zone 16, node 507'),
(140547, 13025, 0, 'Azshara - Sungrass'),

(62357, 13003, 0, 'Sungrass zone 4, node 108'), -- Blasted Lands

(87177, 13004, 0, 'Burning Steppes - Sungrass'); -- Burning Steppes

-- Blindweed 142143
-- https://tbc.wowhead.com/object=142143/blindweed
UPDATE `gameobject` SET `position_x` = -10503.5, `position_y` = -2528.76, `position_z` = 20.897, `orientation` = 1.36136, `rotation2` = 0.629322, `rotation3` = 0.777145 WHERE `guid` = 134824 AND `id` = 142143;
UPDATE `gameobject` SET `position_x` = -10408.2, `position_y` = -2826.86, `position_z` = 20.2505, `orientation` = 1.69297, `rotation2` = 0.748956, `rotation3` = 0.66262 WHERE `guid` = 134815 AND `id` = 142143;
UPDATE `gameobject` SET `position_x` = -10404.5, `position_y` = -3001.07, `position_z` = 19.5577, `orientation` = -0.418879, `rotation2` = -0.207912, `rotation3` = 0.978148 WHERE `guid` = 134875 AND `id` = 142143;
DELETE FROM `gameobject` WHERE `guid` = 140722; -- Duplicate 140710
DELETE FROM `pool_gameobject` WHERE `guid` = 140722;
UPDATE `gameobject` SET `position_x` = -6572.63, `position_y` = -1480.4, `position_z` = -273.356, `orientation` = -1.6057, `rotation2` = -0.719339, `rotation3` = 0.694659 WHERE `guid` = 140714 AND `id` = 142143;
DELETE FROM `gameobject` WHERE `guid` = 140720; -- Duplicate 140706
DELETE FROM `pool_gameobject` WHERE `guid` = 140720;
UPDATE `gameobject` SET `position_x` = -6522.41, `position_y` = -1822.72, `position_z` = -272.638, `orientation` = -2.89724, `rotation2` = -0.992546, `rotation3` = 0.121873 WHERE `guid` = 140719 AND `id` = 142143;
UPDATE `gameobject` SET `position_x` = -6442.17, `position_y` = -1417.75, `position_z` = -275.085, `orientation` = 2.60053, `rotation2` = 0.963629, `rotation3` = 0.267244 WHERE `guid` = 140717 AND `id` = 142143;
UPDATE `gameobject` SET `position_x` = -6427.67, `position_y` = -1246.87, `position_z` = -272.547, `orientation` = 2.58308, `rotation2` = 0.961261, `rotation3` = 0.27564 WHERE `guid` = 140715 AND `id` = 142143;
DELETE FROM `gameobject` WHERE `guid` = 140711; -- Duplicate 140707
DELETE FROM `pool_gameobject` WHERE `guid` = 140711;
DELETE FROM `gameobject` WHERE `guid` = 140721; -- Duplicate 140708
DELETE FROM `pool_gameobject` WHERE `guid` = 140721;
DELETE FROM `gameobject` WHERE `guid` = 137014; -- wrong zone
DELETE FROM `pool_gameobject` WHERE `guid` = 137014;
DELETE FROM `gameobject` WHERE `guid` = 137015; -- wrong zone
DELETE FROM `pool_gameobject` WHERE `guid` = 137015;

DELETE FROM `gameobject` WHERE `guid` IN (62646,86128,63110,62926,63111,86131,62648,87189,63051,63064,62626,62923,87185,87623,62905,86133,87187,86130,62975,86132,62978,86134,62606,62904,62647,62973,87624,87186,62649,87188,86129,62757,62645,62599,86127,137015,137014,140721,140711,140720) AND `id` = 142143;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(62599, 142143, 0, 1, -9907.82, -4020.32, 21.1241, -0.471238, 0, 0, -0.233445, 0.97237, 45, 90, 100, 1),
(62606, 142143, 0, 1, -10189.2, -2615.33, 28.1262, -0.820303, 0, 0, -0.398748, 0.91706, 45, 90, 100, 1),
(62626, 142143, 0, 1, -10334.2, -3147.92, 18.8815, -0.314158, 0, 0, -0.156434, 0.987688, 45, 90, 100, 1),
(62645, 142143, 0, 1, -10095.6, -3478.14, 19.7837, -0.296705, 0, 0, -0.147809, 0.989016, 45, 90, 100, 1),
(62646, 142143, 0, 1, -10744.6, -3949.81, 19.419, -1.18682, 0, 0, -0.559191, 0.829039, 45, 90, 100, 1),
(62647, 142143, 0, 1, -10171, -3299.99, 19.4875, -2.60053, 0, 0, -0.963629, 0.267244, 45, 90, 100, 1),
(62648, 142143, 0, 1, -10389.4, -2914.98, 20.7448, 1.55334, 0, 0, 0.700908, 0.713252, 45, 90, 100, 1),
(62649, 142143, 0, 1, -10136.6, -3063.92, 21.7756, 0.802851, 0, 0, 0.390731, 0.920505, 45, 90, 100, 1),
(62757, 142143, 0, 1, -10117.8, -3817.3, 19.4778, 1.16937, 0, 0, 0.551937, 0.833886, 45, 90, 100, 1),
(62904, 142143, 0, 1, -10172.4, -2481.55, 26.186, -1.98967, 0, 0, -0.838669, 0.544641, 45, 90, 100, 1),
(62905, 142143, 0, 1, -10235.4, -2803.57, 20.9111, 1.76278, 0, 0, 0.771624, 0.636079, 45, 90, 100, 1),
(62923, 142143, 0, 1, -10313.8, -3033.26, 19.5618, 0.767944, 0, 0, 0.374606, 0.927184, 45, 90, 100, 1),
(62926, 142143, 0, 1, -10480.5, -3459.36, 20.3456, 1.13446, 0, 0, 0.537298, 0.843393, 45, 90, 100, 1),
(62973, 142143, 0, 1, -10156.6, -3020.3, 19.5942, -0.087266, 0, 0, -0.0436192, 0.999048, 45, 90, 100, 1),
(62975, 142143, 0, 1, -10214.5, -3286.44, 19.6038, -0.628317, 0, 0, -0.309016, 0.951057, 45, 90, 100, 1),
(62978, 142143, 0, 1, -10199.6, -3054.29, 21.0531, 2.40855, 0, 0, 0.93358, 0.35837, 45, 90, 100, 1),
(63051, 142143, 0, 1, -10357.6, -2897.18, 19.517, 1.22173, 0, 0, 0.573576, 0.819152, 45, 90, 100, 1),
(63064, 142143, 0, 1, -10357, -3025.39, 20.6107, 2.77507, 0, 0, 0.983255, 0.182237, 45, 90, 100, 1),
(63110, 142143, 0, 1, -10580.5, -2562.1, 21.5194, 2.21656, 0, 0, 0.894933, 0.446202, 45, 90, 100, 1),
(63111, 142143, 0, 1, -10458.4, -2887.71, 20.1373, -1.51844, 0, 0, -0.688356, 0.725373, 45, 90, 100, 1),
(86127, 142143, 1, 1, -6785.18, -1242.31, -270.824, -0.750491, 0, 0, -0.366501, 0.930418, 45, 90, 100, 1),
(86128, 142143, 0, 1, -10641.8, -2588.92, 22.8873, 0.279252, 0, 0, 0.139173, 0.990268, 45, 90, 100, 1),
(86129, 142143, 0, 1, -10122.4, -3323.38, 20.8346, 0.279252, 0, 0, 0.139173, 0.990268, 45, 90, 100, 1),
(86130, 142143, 0, 1, -10222.1, -2547.43, 28.302, -0.837757, 0, 0, -0.406736, 0.913546, 45, 90, 100, 1),
(86131, 142143, 0, 1, -10441.7, -2949.74, 20.4125, -2.37364, 0, 0, -0.927182, 0.37461, 45, 90, 100, 1),
(86132, 142143, 0, 1, -10208.6, -3183.85, 18.7951, 2.70526, 0, 0, 0.976296, 0.21644, 45, 90, 100, 1),
(86133, 142143, 0, 1, -10232.6, -3237.06, 20.4871, 0.680677, 0, 0, 0.333806, 0.942642, 45, 90, 100, 1),
(86134, 142143, 0, 1, -10191.9, -2867.31, 20.7899, -0.593412, 0, 0, -0.292372, 0.956305, 45, 90, 100, 1),
(87185, 142143, 0, 1, -10288, -2913.33, 19.7969, -1.0821, 0, 0, -0.515036, 0.857168, 45, 90, 100, 1),
(87186, 142143, 0, 1, -10138.9, -3363.5, 20.8903, 0.104719, 0, 0, 0.0523356, 0.99863, 45, 90, 100, 1),
(87187, 142143, 0, 1, -10222.2, -3035.99, 20.7879, 3.10665, 0, 0, 0.999847, 0.0174704, 45, 90, 100, 1),
(87188, 142143, 0, 1, -10124.2, -3547.14, 21.207, -2.93214, 0, 0, -0.994521, 0.104535, 45, 90, 100, 1),
(87189, 142143, 0, 1, -10384.2, -3003.25, 19.8948, -2.33874, 0, 0, -0.920505, 0.390732, 45, 90, 100, 1),
(87623, 142143, 0, 1, -10237.5, -3015.26, 20.3859, 2.47837, 0, 0, 0.945519, 0.325567, 45, 90, 100, 1),
(87624, 142143, 0, 1, -10154.7, -3157.6, 20.0131, 2.80997, 0, 0, 0.986285, 0.165053, 45, 90, 100, 1),

(137015, 142143, 0, 1, -10712.2, -4157.51, 19.7038, 0.383971, 0, 0, 0.190808, 0.981627, 45, 90, 100, 1),
(137014, 142143, 0, 1, -10232.5, -2951.34, 19.3253, 1.6057, 0, 0, 0.719339, 0.694659, 45, 90, 100, 1),
(140721, 142143, 0, 1, -10323.3, -4046.11, 19.3957, 3.73501, 0, 0, -0.956305, 0.292372, 45, 90, 100, 1),
(140711, 142143, 0, 1, -10522.3, -4139.03, 21.5456, 5.18363, 0, 0, -0.522498, 0.852641, 45, 90, 100, 1),
(140720, 142143, 0, 1, -10423.7, -4184.89, 20.2066, 1.91986, 0, 0, 0.819152, 0.573577, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (62646,86128,63110,62926,63111,86131,62648,87189,63051,63064,62626,62923,87185,87623,62905,86133,87187,86130,62975,86132,62978,86134,62606,62904,62647,62973,87624,87186,62649,87188,86129,62757,62645,62599,86127,137015,137014,140721,140711,140720);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(86127, 13041, 0, 'Blindweed zone 490, node 280'), -- Un'Goro Crater

(62599, 13018, 0, 'Blindweed zone 8, node 344'), -- Swamp of Sorrows
(63110, 13018, 0, 'Blindweed zone 8, node 362'),
(63111, 13018, 0, 'Blindweed zone 8, node 363'),
(86128, 13018, 0, 'Blindweed zone 8, node 382'),
(86129, 13018, 0, 'Blindweed zone 8, node 383'),
(86130, 13018, 0, 'Blindweed zone 8, node 384'),
(86131, 13018, 0, 'Blindweed zone 8, node 385'),
(86132, 13018, 0, 'Blindweed zone 8, node 386'),
(86133, 13018, 0, 'Blindweed zone 8, node 387'),
(86134, 13018, 0, 'Blindweed zone 8, node 388'),
(87185, 13018, 0, 'Blindweed zone 8, node 393'),
(87186, 13018, 0, 'Blindweed zone 8, node 394'),
(87187, 13018, 0, 'Blindweed zone 8, node 395'),
(87188, 13018, 0, 'Blindweed zone 8, node 396'),
(63064, 13018, 0, 'Blindweed zone 8, node 361'),
(63051, 13018, 0, 'Blindweed zone 8, node 360'),
(62978, 13018, 0, 'Blindweed zone 8, node 359'),
(62606, 13018, 0, 'Blindweed zone 8, node 345'),
(62626, 13018, 0, 'Blindweed zone 8, node 346'),
(62645, 13018, 0, 'Blindweed zone 8, node 347'),
(62646, 13018, 0, 'Blindweed zone 8, node 348'),
(62647, 13018, 0, 'Blindweed zone 8, node 349'),
(62648, 13018, 0, 'Blindweed zone 8, node 350'),
(62649, 13018, 0, 'Blindweed zone 8, node 351'),
(62757, 13018, 0, 'Blindweed zone 8, node 352'),
(62904, 13018, 0, 'Blindweed zone 8, node 353'),
(62905, 13018, 0, 'Blindweed zone 8, node 354'),
(62923, 13018, 0, 'Blindweed zone 8, node 355'),
(62926, 13018, 0, 'Blindweed zone 8, node 356'),
(62973, 13018, 0, 'Blindweed zone 8, node 357'),
(62975, 13018, 0, 'Blindweed zone 8, node 358'),
(87189, 13018, 0, 'Blindweed zone 8, node 397'),
(87623, 13018, 0, 'Swamp of Sorrows - Blindweed'),
(87624, 13018, 0, 'Swamp of Sorrows - Blindweed'),

(137015, 13018, 0, 'Swamp of Sorrows - Blindweed'),
(137014, 13018, 0, 'Swamp of Sorrows - Blindweed'),
(140721, 13018, 0, 'Swamp of Sorrows - Blindweed'),
(140711, 13018, 0, 'Swamp of Sorrows - Blindweed'),
(140720, 13018, 0, 'Swamp of Sorrows - Blindweed');

-- Ghost Mushroom 142144
-- https://tbc.wowhead.com/object=142144/ghost-mushroom
DELETE FROM `gameobject` WHERE `guid` = 130933; -- Duplicate 135201
DELETE FROM `pool_gameobject` WHERE `guid` = 130933;
DELETE FROM `gameobject` WHERE `guid` = 130932; -- Duplicate 135183
DELETE FROM `pool_gameobject` WHERE `guid` = 130932;
DELETE FROM `gameobject` WHERE `guid` = 130934; -- Duplicate 135202
DELETE FROM `pool_gameobject` WHERE `guid` = 130934;
DELETE FROM `gameobject` WHERE `guid` = 130931; -- Duplicate 135196
DELETE FROM `pool_gameobject` WHERE `guid` = 130931;
DELETE FROM `gameobject` WHERE `guid` = 135197; -- Duplicate 135192
DELETE FROM `pool_gameobject` WHERE `guid` = 135197;
DELETE FROM `gameobject` WHERE `guid` = 135173; -- Duplicate 135193
DELETE FROM `pool_gameobject` WHERE `guid` = 135173;
DELETE FROM `gameobject` WHERE `guid` = 135200; -- Duplicate 135194
DELETE FROM `pool_gameobject` WHERE `guid` = 135200;

DELETE FROM `gameobject` WHERE `guid` IN (63148,63149,86140,87460,86139,64898,64899) AND `id` = 142144;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(63148, 142144, 1, 1, -1255.65, 2933.59, 74.1313, 2.05949, 0, 0, 0.857168, 0.515037, 45, 90, 100, 1),
(63149, 142144, 0, 1, 339.986, -3752.52, 107.354, -1.69297, 0, 0, -0.748956, 0.66262, 45, 90, 100, 1),
(64898, 142144, 0, 1, 405.047, -3807.52, 101.678, -2.426, 0, 0, -0.936671, 0.350211, 45, 90, 100, 1),
(64899, 142144, 0, 1, 414.474, -3879.82, 98.0181, -1.11701, 0, 0, -0.529919, 0.848048, 45, 90, 100, 1),
(86139, 142144, 0, 1, 378.476, -3758.72, 103.351, 2.14675, 0, 0, 0.878816, 0.477161, 45, 90, 100, 1),
(86140, 142144, 0, 1, 357.638, -3789.23, 126.82, 1.41372, 0, 0, 0.649449, 0.760405, 45, 90, 100, 1),
(87460, 142144, 0, 1, 368.381, -3860.87, 106.184, -0.645772, 0, 0, -0.317305, 0.948324, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (63148,63149,86140,87460,86139,64898,64899);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(63148, 13029, 0, 'Desolace - Ghost Mushroom'),
(63149, 13019, 0, 'Ghost Mushroom zone 47, node 299'), -- The Hinterlands
(64898, 13019, 0, 'Ghost Mushroom zone 47, node 304'),
(64899, 13019, 0, 'Ghost Mushroom zone 47, node 305'),
(86139, 13019, 0, 'Ghost Mushroom zone 47, node 316'),
(86140, 13019, 0, 'Ghost Mushroom zone 47, node 317'),
(87460, 13019, 0, 'Ghost Mushroom zone 47, node 346');

-- =======================================================================
-- ========			Remove Ghost Mushroom from Zone Pool	  	  ========
-- =======================================================================

-- Respawn Outland Ghost Mushroom 142144
-- https://www.wowhead.com/object=142144/ghost-mushroom
SET @GUID := 5300504;
DELETE FROM `gameobject` WHERE `map` = 530 AND `id` = 142144;
DELETE FROM `pool_gameobject` WHERE `guid` IN (142003,142004,142005,142244);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
-- Funggor Cavern
(@GUID +  1, 142144, 530, 1, -1178.478759765625, 5866.06591796875, 36.38081741333007812, -0.94247663021087646, 0, 0, -0.45398998260498046, 0.891006767749786376, 45, 90, 255, 1),
(@GUID +  2, 142144, 530, 1, -1365.7310791015625, 5842.001953125, 16.90607643127441406, -2.23401761054992675, 0, 0, -0.89879322052001953, 0.438372820615768432, 45, 90, 255, 1),
(@GUID +  3, 142144, 530, 1, -1247.5777587890625, 5802.572265625, 2.213366031646728515, 0.663223206996917724, 0, 0, 0.325567245483398437, 0.945518851280212402, 45, 90, 255, 1),
(@GUID +  4, 142144, 530, 1, -1186.6121826171875, 5740.9365234375, 52.25855636596679687, 2.687806606292724609, 0, 0, 0.974370002746582031, 0.224951311945915222, 45, 90, 255, 1),
(@GUID +  5, 142144, 530, 1, -1256.578, 5730.49, 40.446453, 2.740162, 0, 0, 0.9799242, 0.19937038, 45, 90, 255, 1),
(@GUID +  6, 142144, 530, 1, -1222.8648681640625, 5856.30517578125, 5.002803802490234375, -2.32128691673278808, 0, 0, -0.91705989837646484, 0.398749500513076782, 45, 90, 255, 1),
(@GUID +  7, 142144, 530, 1, -1324.8123779296875, 5918.38916015625, 12.67362499237060546, -2.93213868141174316, 0, 0, -0.99452114105224609, 0.104535527527332305, 45, 90, 255, 1),
(@GUID +  8, 142144, 530, 1, -1209.8096923828125, 5775.03662109375, 52.52236175537109375, 2.024578809738159179, 0, 0, 0.848047256469726562, 0.529920578002929687, 45, 90, 255, 1),
(@GUID +  9, 142144, 530, 1, -1341.053, 5793.168, 25.49401, -2.129302, 0, 0, -0.874619, 0.48481, 45, 90, 255, 1),
(@GUID + 10, 142144, 530, 1, -1267.91845703125, 5803.8857421875, 49.17050933837890625, 0.541050612926483154, 0, 0, 0.267237663269042968, 0.96363067626953125, 45, 90, 255, 1),
(@GUID + 11, 142144, 530, 1, -1286.5924072265625, 5754.0380859375, 0.920113980770111083, -2.6528940200805664, 0, 0, -0.97029495239257812, 0.241925001144409179, 45, 90, 255, 1),
(@GUID + 12, 142144, 530, 1, -1323.6353759765625, 5832.24658203125, 8.215549468994140625, 3.124123096466064453, 0, 0, 0.99996185302734375, 0.008734640665352344, 45, 90, 255, 1),

-- Ango'rosh Stronghold
(@GUID + 13, 142144, 530, 1, 1710.3592529296875, 8564.8759765625, -45.657012939453125, -2.05948829650878906, 0, 0, -0.85716724395751953, 0.515038192272186279, 45, 90, 255, 1),
(@GUID + 14, 142144, 530, 1, 1652.435302734375, 8463.3837890625, -55.9525299072265625, 2.251473665237426757, 0, 0, 0.902585029602050781, 0.430511653423309326, 45, 90, 255, 1),
(@GUID + 15, 142144, 530, 1, 1699.4908447265625, 8535.4951171875, -47.6245269775390625, 0.052358884364366531, 0, 0, 0.02617645263671875, 0.999657332897186279, 45, 90, 255, 1),
(@GUID + 16, 142144, 530, 1, 1663.242431640625, 8540.9267578125, -50.9228439331054687, 0.471238493919372558, 0, 0, 0.233445167541503906, 0.972369968891143798, 45, 90, 255, 1),
(@GUID + 17, 142144, 530, 1, 1721.1324462890625, 8475.4365234375, -56.0996780395507812, -0.80285090208053588, 0, 0, -0.39073085784912109, 0.920504987239837646, 45, 90, 255, 1),
(@GUID + 18, 142144, 530, 1, 1675.5919, 8577.402, -44.169056, 6.056293, 0, 0, -0.11320305, 0.9935719, 45, 90, 255, 1),
(@GUID + 19, 142144, 530, 1, 1651.727783203125, 8502.7001953125, -53.7130241394042968, -1.27409064769744873, 0, 0, -0.59482288360595703, 0.80385679006576538, 45, 90, 255, 1),
(@GUID + 20, 142144, 530, 1, 1664.4244384765625, 8605.0244140625, -35.4274940490722656, -2.42600250244140625, 0, 0, -0.93667125701904296, 0.350209832191467285, 45, 90, 255, 1);

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) VALUES
(5300505, 13056, 'Zangarmarsh (Funggor Cavern) - Ghost Mushroom'),
(5300506, 13056, 'Zangarmarsh (Funggor Cavern) - Ghost Mushroom'),
(5300507, 13056, 'Zangarmarsh (Funggor Cavern) - Ghost Mushroom'),
(5300508, 13056, 'Zangarmarsh (Funggor Cavern) - Ghost Mushroom'),
(5300509, 13056, 'Zangarmarsh (Funggor Cavern) - Ghost Mushroom'),
(5300510, 13056, 'Zangarmarsh (Funggor Cavern) - Ghost Mushroom'),
(5300511, 13056, 'Zangarmarsh (Funggor Cavern) - Ghost Mushroom'),
(5300512, 13056, 'Zangarmarsh (Funggor Cavern) - Ghost Mushroom'),
(5300513, 13056, 'Zangarmarsh (Funggor Cavern) - Ghost Mushroom'),
(5300514, 13056, 'Zangarmarsh (Funggor Cavern) - Ghost Mushroom'),
(5300515, 13056, 'Zangarmarsh (Funggor Cavern) - Ghost Mushroom'),
(5300516, 13056, 'Zangarmarsh (Funggor Cavern) - Ghost Mushroom'),

(5300517, 13057, 'Zangarmarsh (Ango''rosh Stronghold) - Ghost Mushroom'),
(5300518, 13057, 'Zangarmarsh (Ango''rosh Stronghold) - Ghost Mushroom'),
(5300519, 13057, 'Zangarmarsh (Ango''rosh Stronghold) - Ghost Mushroom'),
(5300520, 13057, 'Zangarmarsh (Ango''rosh Stronghold) - Ghost Mushroom'),
(5300521, 13057, 'Zangarmarsh (Ango''rosh Stronghold) - Ghost Mushroom'),
(5300522, 13057, 'Zangarmarsh (Ango''rosh Stronghold) - Ghost Mushroom'),
(5300523, 13057, 'Zangarmarsh (Ango''rosh Stronghold) - Ghost Mushroom'),
(5300524, 13057, 'Zangarmarsh (Ango''rosh Stronghold) - Ghost Mushroom');

-- Gromsblood 142145
-- https://tbc.wowhead.com/object=142145/gromsblood
DELETE FROM `gameobject` WHERE `guid` = 137381; -- Gromsblood in Azurmyst Isle (Easter Egg?)
DELETE FROM `pool_gameobject` WHERE `guid` = 137381;
UPDATE `gameobject` SET `position_z` = -9.2670 WHERE `guid` = 131199; -- Gromsblood (Air)
UPDATE `gameobject` SET `position_z` = 16.4178 WHERE `guid` = 131196; -- Gromsblood (Air)
UPDATE `gameobject` SET `position_x` = -11515.9, `position_y` = -2783.26, `position_z` = 0.843735, `orientation` = -0.331611, `rotation2` = -0.165047, `rotation3` = 0.986286 WHERE `guid` = 131215 AND `id` = 142145;
UPDATE `gameobject` SET `position_x` = -11214.9, `position_y` = -2946.36, `position_z` = 9.6068, `orientation` = -2.53072, `rotation2` = -0.953716, `rotation3` = 0.300709 WHERE `guid` = 131213 AND `id` = 142145;
UPDATE `gameobject` SET `position_x` = -10915.8, `position_y` = -2889.21, `position_z` = 12.7667, `orientation` = -2.9845, `rotation2` = -0.996917, `rotation3` = 0.0784656 WHERE `guid` = 131192 AND `id` = 142145;
UPDATE `gameobject` SET `position_x` = -2027.25, `position_y` = 2133.57, `position_z` = 52.4994, `orientation` = -0.261798, `rotation2` = -0.130525, `rotation3` = 0.991445 WHERE `guid` = 137948 AND `id` = 142145;
DELETE FROM `gameobject` WHERE `guid` = 140988; -- Duplicate 138408
DELETE FROM `pool_gameobject` WHERE `guid` = 140988;

DELETE FROM `gameobject` WHERE `guid` IN (63202,86143);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(63202, 142145, 0, 1, -11373.2, -3043.34, -4.55977, -0.541051, 0, 0, -0.267238, 0.963631, 45, 90, 100, 1),
(86143, 142145, 1, 1, -1988.43, 1979.86, 63.384, 2.70526, 0, 0, 0.976296, 0.21644, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (63202,86143);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(63202, 13003, 0, 'Gromsblood zone 4, node 109'), -- Blasted Lands
(86143, 13029, 0, 'Desolace - Gromsblood'); -- Desolace

-- Golden Sansam 176583
-- https://tbc.wowhead.com/object=176583/golden-sansam
DELETE FROM `gameobject` WHERE `guid` = 138970; -- Duplicate 138981
DELETE FROM `pool_gameobject` WHERE `guid` = 138970;
DELETE FROM `gameobject` WHERE `guid` = 131266; -- Duplicate 131264
DELETE FROM `pool_gameobject` WHERE `guid` = 131266;
DELETE FROM `gameobject` WHERE `guid` = 131268; -- Duplicate 131252
DELETE FROM `pool_gameobject` WHERE `guid` = 131268;
DELETE FROM `gameobject` WHERE `guid` = 139409; -- Duplicate 131268 (map)
DELETE FROM `pool_gameobject` WHERE `guid` = 139409;
DELETE FROM `gameobject` WHERE `guid` = 131278; -- Duplicate 131275
DELETE FROM `pool_gameobject` WHERE `guid` = 131278;
UPDATE `gameobject` SET `position_x` = -8099.08, `position_y` = -2979.05, `position_z` = 134.856, `orientation` = -3.08918, `rotation2` = -0.999657, `rotation3` = 0.0262033 WHERE `guid` = 131271 AND `id` = 176583;
DELETE FROM `gameobject` WHERE `guid` = 131277; -- Duplicate 131258
DELETE FROM `pool_gameobject` WHERE `guid` = 131277;
DELETE FROM `gameobject` WHERE `guid` = 140801; -- Duplicate 140791
DELETE FROM `pool_gameobject` WHERE `guid` = 140801;
DELETE FROM `gameobject` WHERE `guid` = 140820; -- Duplicate 140792
DELETE FROM `pool_gameobject` WHERE `guid` = 140820;
DELETE FROM `gameobject` WHERE `guid` = 140741; -- Duplicate 140789
DELETE FROM `pool_gameobject` WHERE `guid` = 140741;
DELETE FROM `gameobject` WHERE `guid` = 138993; -- Duplicate 140749
DELETE FROM `pool_gameobject` WHERE `guid` = 138993;
DELETE FROM `gameobject` WHERE `guid` = 138992; -- Duplicate 140734
DELETE FROM `pool_gameobject` WHERE `guid` = 138992;
DELETE FROM `gameobject` WHERE `guid` = 138988; -- Duplicate 140775
DELETE FROM `pool_gameobject` WHERE `guid` = 138988;
DELETE FROM `gameobject` WHERE `guid` = 140811; -- Duplicate 140790
DELETE FROM `pool_gameobject` WHERE `guid` = 140811;
UPDATE `gameobject` SET `position_x` = -6753.93, `position_y` = -556.34, `position_z` = -272.215, `orientation` = 0.558504, `rotation2` = 0.275637, `rotation3` = 0.961262 WHERE `guid` = 140740 AND `id` = 176583;
UPDATE `gameobject` SET `position_x` = -6699.56, `position_y` = -2050.99, `position_z` = -271.633, `orientation` = 2.02458, `rotation2` = 0.848047, `rotation3` = 0.529921 WHERE `guid` = 140802 AND `id` = 176583;
UPDATE `gameobject` SET `position_x` = -6660.58, `position_y` = -725.317, `position_z` = -270.855, `orientation` = -2.84488, `rotation2` = -0.989015, `rotation3` = 0.147813 WHERE `guid` = 140785 AND `id` = 176583;
DELETE FROM `gameobject` WHERE `guid` = 140796; -- Duplicate 140765
DELETE FROM `pool_gameobject` WHERE `guid` = 140796;
DELETE FROM `gameobject` WHERE `guid` = 140751; -- Duplicate 140794
DELETE FROM `pool_gameobject` WHERE `guid` = 140751;
UPDATE `gameobject` SET `position_x` = -6394.04, `position_y` = -1380.74, `position_z` = -271.681, `orientation` = -1.02974, `rotation2` = -0.492422, `rotation3` = 0.870357 WHERE `guid` = 140769 AND `id` = 176583;
DELETE FROM `gameobject` WHERE `guid` = 138786; -- Duplicate 138771
DELETE FROM `pool_gameobject` WHERE `guid` = 138786;
DELETE FROM `gameobject` WHERE `guid` IN (141377,142007,142006); -- Duplicate 141408
DELETE FROM `pool_gameobject` WHERE `guid` IN (141377,142007,142006);
UPDATE `gameobject` SET `position_x` = -987.849, `position_y` = 5660.09, `position_z` = 23.4805, `orientation` = 2.3911, `rotation2` = 0.930417, `rotation3` = 0.366502 WHERE `guid` = 142245 AND `id` = 176583;
DELETE FROM `gameobject` WHERE `guid` = 142247; -- Duplicate 142256
DELETE FROM `pool_gameobject` WHERE `guid` = 142247;
DELETE FROM `gameobject` WHERE `guid` = 141386; -- Duplicate 141411
DELETE FROM `pool_gameobject` WHERE `guid` = 141386;
UPDATE `gameobject` SET `position_x` = -268.422, `position_y` = -2639.7, `position_z` = 120.26, `orientation` = -2.40855, `rotation2` = -0.93358, `rotation3` = 0.35837 WHERE `guid` = 135231 AND `id` = 176583;
DELETE FROM `gameobject` WHERE `guid` = 133799; -- Duplicate 141402 (map)
DELETE FROM `pool_gameobject` WHERE `guid` = 133799;
DELETE FROM `gameobject` WHERE `guid` = 135219; -- Duplicate 135208
DELETE FROM `pool_gameobject` WHERE `guid` = 135219;
DELETE FROM `gameobject` WHERE `guid` = 135227; -- Duplicate 135216
DELETE FROM `pool_gameobject` WHERE `guid` = 135227;
UPDATE `gameobject` SET `position_x` = -55.8846, `position_y` = 6096.82, `position_z` = 23.4048, `orientation` = 0, `rotation2` = 0, `rotation3` = 1 WHERE `guid` = 142248 AND `id` = 176583;
DELETE FROM `gameobject` WHERE `guid` = 142258; -- Duplicate 142254
DELETE FROM `pool_gameobject` WHERE `guid` = 142258;
UPDATE `gameobject` SET `map` = 0 WHERE `guid` = 140548 AND `id` = 176583;
UPDATE `pool_gameobject` SET `pool_entry` = 13019, `description` = 'The Hinterlands - Golden Sansam' WHERE `guid` = 140548;
UPDATE `gameobject` SET `map` = 530, `position_x` = 0.128581, `position_y` = 3178.88, `position_z` = 9.91174, `orientation` = -2.58308, `rotation2` = -0.961261, `rotation3` = 0.275641 WHERE `guid` = 133800 AND `id` = 176583;
UPDATE `pool_gameobject` SET `pool_entry` = 13044, `description` = 'Hellfire Peninsula - Golden Sansam' WHERE `guid` = 133800;
UPDATE `gameobject` SET `map` = 530 WHERE `guid` = 133801 AND `id` = 176583;
UPDATE `pool_gameobject` SET `pool_entry` = 13044, `description` = 'Hellfire Peninsula - Golden Sansam' WHERE `guid` = 133801;
DELETE FROM `gameobject` WHERE `guid` = 135233; -- Duplicate 134885 (Wild Steelbloom)
DELETE FROM `pool_gameobject` WHERE `guid` = 135233;
UPDATE `gameobject` SET `position_z` = 203.5 WHERE `guid` = 141404 AND `id` = 176583; -- 183.997
UPDATE `gameobject` SET `position_x` = 458.517, `position_y` = 5173.65, `position_z` = 21.8931, `orientation` = -1.95477, `rotation2` = -0.829038, `rotation3` = 0.559192 WHERE `guid` = 142249 AND `id` = 176583;
DELETE FROM `gameobject` WHERE `guid` = 142268; -- Duplicate 142264
DELETE FROM `pool_gameobject` WHERE `guid` = 142268;
DELETE FROM `gameobject` WHERE `guid` = 142253; -- Duplicate 142267
DELETE FROM `pool_gameobject` WHERE `guid` = 142253;
DELETE FROM `gameobject` WHERE `guid` = 131957; -- Duplicate 131947/131937
DELETE FROM `pool_gameobject` WHERE `guid` = 131957;
DELETE FROM `gameobject` WHERE `guid` = 131955; -- Duplicate 131928
DELETE FROM `pool_gameobject` WHERE `guid` = 131955;
UPDATE `gameobject` SET `position_x` = 3738.77, `position_y` = -4930.92, `position_z` = 133.989, `orientation` = -2.68781, `rotation2` = -0.97437, `rotation3` = 0.22495 WHERE `guid` = 137052 AND `id` = 176583;
DELETE FROM `gameobject` WHERE `guid` = 137044; -- Duplicate 137054
DELETE FROM `pool_gameobject` WHERE `guid` = 137044;
UPDATE `gameobject` SET `position_x` = 6144.64, `position_y` = -1849.78, `position_z` = 568.804, `orientation` = 1.85005, `rotation2` = 0.798636, `rotation3` = 0.601815 WHERE `guid` = 138472 AND `id` = 176583;
UPDATE `gameobject` SET `position_x` = 6446.44, `position_y` = -1203.86, `position_z` = 395.012, `orientation` = -1.90241, `rotation2` = -0.814116, `rotation3` = 0.580702 WHERE `guid` = 138467 AND `id` = 176583;
UPDATE `gameobject` SET `position_x` = 6882.78, `position_y` = -2028.31, `position_z` = 578.535, `orientation` = 0.034906, `rotation2` = 0.0174521, `rotation3` = 0.999848 WHERE `guid` = 138474 AND `id` = 176583;

DELETE FROM `gameobject` WHERE `guid` IN (87487,19195,87489,86382,87004,86387,86384,87297,86386,63586,87303,87301,63575,65267,86402,63558,87302,63581,63564,63576,86399,63562,86391,86396,87663,86400,65264,63578,63534,63563,86394,63572,65266,65265,63566,87667,63589,63556,63560,63583,65268,63574,63577,87300,63536,86389,87298,86390,86388,63523,86395,63571,86393,86398,87299) AND `id` = 176583;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(63523, 176583, 0, 1, 3395.94, -4870.51, 159.395, 0.296705, 0, 0, 0.147809, 0.989016, 45, 90, 100, 1),
(63534, 176583, 530, 1, 22.8646, 8272.36, 22.9121, 3.14159, 0, 0, 1, 0.00000126759, 45, 90, 100, 1),
(63536, 176583, 0, 1, 1666.86, -5498.62, 99.903, 2.42601, 0, 0, 0.936673, 0.350206, 45, 90, 100, 1),
(63556, 176583, 530, 1, 546.788, 7973.26, 22.3447, -1.02974, 0, 0, -0.492422, 0.870357, 45, 90, 100, 1),
(63558, 176583, 530, 1, -1045.42, 3293.7, 71.7579, -2.72271, 0, 0, -0.978147, 0.207914, 45, 90, 100, 1),
(63560, 176583, 0, 1, 605.156, -4074.16, 113.456, 1.6057, 0, 0, 0.719339, 0.694659, 45, 90, 100, 1),
(63562, 176583, 530, 1, -433.285, 3074.78, -53.7816, 2.67035, 0, 0, 0.972369, 0.233447, 45, 90, 100, 1),
(63563, 176583, 530, 1, 48.3481, 4569.18, 61.6221, -2.32129, 0, 0, -0.91706, 0.398748, 45, 90, 100, 1),
(63564, 176583, 530, 1, -908.304, 3339.05, 66.5519, -0.366518, 0, 0, -0.182235, 0.983255, 45, 90, 100, 1),
(63566, 176583, 530, 1, 345.928, 6610.12, 23.4638, -1.36136, 0, 0, -0.629322, 0.777145, 45, 90, 100, 1),
(63571, 176583, 1, 1, 3525.45, -4839.55, 123.035, 2.16421, 0, 0, 0.882948, 0.469471, 45, 90, 100, 1),
(63572, 176583, 530, 1, 85.6934, 8099.03, 23.3092, 1.83259, 0, 0, 0.793352, 0.608764, 45, 90, 100, 1),
(63574, 176583, 530, 1, 979.957, 8274.08, 24.0578, 1.76278, 0, 0, 0.771624, 0.636079, 45, 90, 100, 1),
(63575, 176583, 530, 1, -1139.14, 5592.84, 56.9752, 0.436332, 0, 0, 0.216439, 0.976296, 45, 90, 100, 1),
(63576, 176583, 530, 1, -736.906, 5502.79, 21.9193, -0.052359, 0, 0, -0.0261765, 0.999657, 45, 90, 100, 1),
(63577, 176583, 530, 1, 1071.37, 7571.69, 22.0917, -2.33874, 0, 0, -0.920505, 0.390732, 45, 90, 100, 1),
(63578, 176583, 530, 1, -111.394, 8001.06, 21.1022, -2.05949, 0, 0, -0.857168, 0.515037, 45, 90, 100, 1),
(63581, 176583, 530, 1, -952.004, 5942.47, 21.2697, -0.314158, 0, 0, -0.156434, 0.987688, 45, 90, 100, 1),
(63583, 176583, 530, 1, 881.344, 7312.09, 22.6463, 2.00713, 0, 0, 0.843392, 0.537299, 45, 90, 100, 1),
(63586, 176583, 530, 1, -1518.88, 3468.94, 27.0686, -0.715585, 0, 0, -0.350207, 0.936672, 45, 90, 100, 1),
(63589, 176583, 530, 1, 489.173, 2812.77, 205.334, -1.18682, 0, 0, -0.559191, 0.829039, 45, 90, 100, 1),
(65264, 176583, 530, 1, -174.423, 4946.23, 57.7398, -3.05433, 0, 0, -0.999048, 0.0436174, 45, 90, 100, 1),
(65265, 176583, 530, 1, 194.592, 6451.13, 22.5768, 2.54818, 0, 0, 0.956305, 0.292372, 45, 90, 100, 1),
(65266, 176583, 530, 1, 99.829, 6329.88, 22.2657, 2.14675, 0, 0, 0.878816, 0.477161, 45, 90, 100, 1),
(65267, 176583, 530, 1, -1090.09, 5651.94, 61.4272, -2.32129, 0, 0, -0.91706, 0.398748, 45, 90, 100, 1),
(65268, 176583, 530, 1, 973.353, 7585.97, 23.5498, -2.65289, 0, 0, -0.970294, 0.241927, 45, 90, 100, 1),
(86382, 176583, 1, 1, -7821.75, -1319.65, -271.669, 0.820303, 0, 0, 0.398748, 0.91706, 45, 90, 100, 1),
(86384, 176583, 1, 1, -5335.2, 1423.61, 27.8609, 2.49582, 0, 0, 0.948324, 0.317305, 45, 90, 100, 1),
(86386, 176583, 1, 1, -3876.53, 1975.75, 72.5063, -2.09439, 0, 0, -0.866024, 0.500002, 45, 90, 100, 1),
(86387, 176583, 1, 1, -6475.13, -1707.52, -275.624, 0.226892, 0, 0, 0.113203, 0.993572, 45, 90, 100, 1),
(86388, 176583, 0, 1, 3321.01, -4947.1, 168.989, -0.314158, 0, 0, -0.156434, 0.987688, 45, 90, 100, 1),
(86389, 176583, 0, 1, 1823.56, -3750.1, 158.251, -2.82743, 0, 0, -0.987688, 0.156436, 45, 90, 100, 1),
(86390, 176583, 0, 1, 2933.23, -4004.29, 104.741, 1.22173, 0, 0, 0.573576, 0.819152, 45, 90, 100, 1),
(86391, 176583, 530, 1, -339.74, 6112.62, 22.9751, -3.03684, 0, 0, -0.998629, 0.0523524, 45, 90, 100, 1),
(86393, 176583, 1, 1, 3744.09, -4797.82, 136.26, 1.67551, 0, 0, 0.743143, 0.669133, 45, 90, 100, 1),
(86394, 176583, 0, 1, 51.3171, -3625.82, 122.411, -0.942477, 0, 0, -0.45399, 0.891007, 45, 90, 100, 1),
(86395, 176583, 1, 1, 3423.77, -4651.64, 102.226, -1.72787, 0, 0, -0.760404, 0.64945, 45, 90, 100, 1),
(86396, 176583, 530, 1, -313.694, 2390.82, 45.5924, 1.36136, 0, 0, 0.629322, 0.777145, 45, 90, 100, 1),
(86398, 176583, 530, 1, 3989.17, 2877.99, 125.22, 0.523598, 0, 0, 0.258819, 0.965926, 45, 90, 100, 1),
(86399, 176583, 530, 1, -646.649, 4024.41, 29.1898, -0.925024, 0, 0, -0.446198, 0.894935, 45, 90, 100, 1),
(86400, 176583, 530, 1, -177.555, 3472.09, 40.9797, -1.58825, 0, 0, -0.713251, 0.700909, 45, 90, 100, 1),
(86402, 176583, 530, 1, -1087.16, 5739.82, 57.4741, -1.88495, 0, 0, -0.809015, 0.587788, 45, 90, 100, 1),
(87004, 176583, 1, 1, -7207.93, -1824.62, -274.809, 1.67551, 0, 0, 0.743143, 0.669133, 45, 90, 100, 1),
(87297, 176583, 1, 1, -4491.8, -568.489, 4.83053, 1.02974, 0, 0, 0.492422, 0.870357, 45, 90, 100, 1),
(87298, 176583, 0, 1, 2764.43, -3797.11, 111.373, 3.12412, 0, 0, 0.999962, 0.00873622, 45, 90, 100, 1),
(87299, 176583, 530, 1, 4075.08, 3166.37, 165.826, 1.46608, 0, 0, 0.669132, 0.743144, 45, 90, 100, 1),
(87300, 176583, 530, 1, 1260.17, 8333.59, 20.1106, -0.296705, 0, 0, -0.147809, 0.989016, 45, 90, 100, 1),
(87301, 176583, 530, 1, -1153.83, 2006.12, 69.487, -0.767944, 0, 0, -0.374606, 0.927184, 45, 90, 100, 1),
(87302, 176583, 530, 1, -1026.5, 5512.22, 22.6564, -1.51844, 0, 0, -0.688356, 0.725373, 45, 90, 100, 1),
(87303, 176583, 530, 1, -1275.31, 2610.97, 18.5796, -0.226892, 0, 0, -0.113203, 0.993572, 45, 90, 100, 1),
(87487, 176583, 1, 1, -8236.15, -1083.52, -204.848, -0.925024, 0, 0, -0.446198, 0.894934, 45, 90, 100, 1),
(87489, 176583, 1, 1, -7947.82, -1716.3, -275.69, 2.3911, 0, 0, 0.930417, 0.366502, 45, 90, 100, 1),
(87663, 176583, 530, 1, -280.138, 3451.86, -23.7781, 1.48353, 0, 0, 0.67559, 0.737277, 45, 90, 100, 1),
(87667, 176583, 530, 1, 383.674, 2512.99, 149.909, 0.837757, 0, 0, 0.406736, 0.913546, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (87487,19195,87489,86382,87004,86387,86384,87297,86386,63586,87303,87301,63575,65267,86402,63558,87302,63581,63564,63576,86399,63562,86391,86396,87663,86400,65264,63578,63534,63563,86394,63572,65266,65265,63566,87667,63589,63556,63560,63583,65268,63574,63577,87300,63536,86389,87298,86390,86388,63523,86395,63571,86393,86398,87299);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(87297, 13033, 0, 'Golden Sansam zone 357, node 245'), -- Feralas
(86384, 13033, 0, 'Golden Sansam zone 357, node 185'),
(86386, 13033, 0, 'Golden Sansam zone 357, node 186'),

(86394, 13019, 0, 'Golden Sansam zone 47, node 320'), -- The Hinterlands
(63560, 13019, 0, 'Golden Sansam zone 47, node 300'),

(86382, 13041, 0, 'Golden Sansam zone 490, node 281'), -- Un'Goro Crater
(86387, 13041, 0, 'Golden Sansam zone 490, node 283'),
(87487, 13041, 0, 'Golden Sansam zone 490, node 294'),
(87489, 13041, 0, 'Golden Sansam zone 490, node 296'),
(87004, 13041, 0, 'Golden Sansam zone 490, node 290'),

(86390, 13007, 0, 'Golden Sansam zone 139, node 421'), -- Eastern Plaguelands
(87298, 13007, 0, 'Golden Sansam zone 139, node 447'),
(86389, 13007, 0, 'Golden Sansam zone 139, node 420'),
(63536, 13007, 0, 'Golden Sansam zone 139, node 357'),
(63523, 13007, 0, 'Golden Sansam zone 139, node 356'),
(86388, 13007, 0, 'Golden Sansam zone 139, node 419'),

(86396, 13044, 0, 'Golden Sansam zone 3483, node 220'), -- Hellfire Peninsula
(86400, 13044, 0, 'Golden Sansam zone 3483, node 223'),
(86399, 13044, 0, 'Golden Sansam zone 3483, node 222'),
(87301, 13044, 0, 'Golden Sansam zone 3483, node 248'),
(87303, 13044, 0, 'Golden Sansam zone 3483, node 249'),
(63586, 13044, 0, 'Golden Sansam zone 3483, node 154'),
(63564, 13044, 0, 'Golden Sansam zone 3483, node 149'),
(63563, 13044, 0, 'Golden Sansam zone 3483, node 148'),
(65264, 13044, 0, 'Golden Sansam zone 3483, node 195'),
(63589, 13044, 0, 'Golden Sansam zone 3483, node 157'),
(63562, 13044, 0, 'Golden Sansam zone 3483, node 147'),
(63558, 13044, 0, 'Golden Sansam zone 3483, node 146'),
(87663, 13044, 0, 'Hellfire Peninsula - Golden Sansam'),
(87667, 13044, 0, 'Hellfire Peninsula - Golden Sansam'),

(87299, 13046, 0, 'Golden Sansam zone 3523, node 148'), -- Netherstorm
(86398, 13046, 0, 'Golden Sansam zone 3523, node 142'),

(87302, 13049, 0, 'Golden Sansam zone 3521, node 374'), -- Zangarmarsh
(63556, 13049, 0, 'Golden Sansam zone 3521, node 268'),
(63534, 13049, 0, 'Golden Sansam zone 3521, node 267'),
(63566, 13049, 0, 'Golden Sansam zone 3521, node 269'),
(86402, 13049, 0, 'Golden Sansam zone 3521, node 354'),
(63572, 13049, 0, 'Golden Sansam zone 3521, node 271'),
(87300, 13049, 0, 'Golden Sansam zone 3521, node 373'),
(63574, 13049, 0, 'Golden Sansam zone 3521, node 272'),
(65265, 13049, 0, 'Golden Sansam zone 3521, node 324'),
(65266, 13049, 0, 'Golden Sansam zone 3521, node 325'),
(65267, 13049, 0, 'Golden Sansam zone 3521, node 326'),
(63583, 13049, 0, 'Golden Sansam zone 3521, node 279'),
(63581, 13049, 0, 'Golden Sansam zone 3521, node 277'),
(63578, 13049, 0, 'Golden Sansam zone 3521, node 276'),
(63577, 13049, 0, 'Golden Sansam zone 3521, node 275'),
(65268, 13049, 0, 'Golden Sansam zone 3521, node 327'),
(63576, 13049, 0, 'Golden Sansam zone 3521, node 274'),
(86391, 13049, 0, 'Golden Sansam zone 3521, node 353'),
(63575, 13049, 0, 'Golden Sansam zone 3521, node 273'),

(86393, 13025, 0, 'Golden Sansam zone 16, node 508'), -- Azshara
(63571, 13025, 0, 'Golden Sansam zone 16, node 497'),
(86395, 13025, 0, 'Golden Sansam zone 16, node 509');

-- Dreamfoil 176584
-- https://tbc.wowhead.com/object=176584/dreamfoil
UPDATE `gameobject` SET `map` = 0 WHERE `guid` = 140864 AND `id` = 176584;
UPDATE `pool_gameobject` SET `pool_entry` = 13004, `description` = 'Burning Steppes - Dreamfoil' WHERE `guid` = 140864;
DELETE FROM `gameobject` WHERE `guid` = 131328; -- Duplicate 131333
DELETE FROM `pool_gameobject` WHERE `guid` = 131328;
DELETE FROM `gameobject` WHERE `guid` = 131335; -- Duplicate 131294
DELETE FROM `pool_gameobject` WHERE `guid` = 131335;
UPDATE `gameobject` SET `position_x` = -8130.73, `position_y` = -753.006, `position_z` = 134.006, `orientation` = 2.77507, `rotation2` = 0.983255, `rotation3` = 0.182237 WHERE `guid` = 131340 AND `id` = 176584;
UPDATE `gameobject` SET `position_x` = -8109.43, `position_y` = -1610.11, `position_z` = 133.374, `orientation` = -1.16937, `rotation2` = -0.551937, `rotation3` = 0.833886 WHERE `guid` = 131303 AND `id` = 176584;
DELETE FROM `gameobject` WHERE `guid` = 131344; -- Duplicate 131321
DELETE FROM `pool_gameobject` WHERE `guid` = 131344;
DELETE FROM `gameobject` WHERE `guid` = 131337; -- Duplicate 131286
DELETE FROM `pool_gameobject` WHERE `guid` = 131337;
DELETE FROM `gameobject` WHERE `guid` = 140888; -- Duplicate 140876
DELETE FROM `pool_gameobject` WHERE `guid` = 140888;
DELETE FROM `gameobject` WHERE `guid` = 140840; -- Duplicate 140882
DELETE FROM `pool_gameobject` WHERE `guid` = 140840;
UPDATE `gameobject` SET `position_x` = -7618.17, `position_y` = -619.163, `position_z` = -255.354, `orientation` = -3.08918, `rotation2` = -0.999657, `rotation3` = 0.0262033 WHERE `guid` = 140830 AND `id` = 176584;
DELETE FROM `gameobject` WHERE `guid` = 139410; -- Duplicate 140846
DELETE FROM `pool_gameobject` WHERE `guid` = 139410;
DELETE FROM `gameobject` WHERE `guid` = 140890; -- Duplicate 140886
DELETE FROM `pool_gameobject` WHERE `guid` = 140890;
DELETE FROM `gameobject` WHERE `guid` = 140897; -- Duplicate 140851
DELETE FROM `pool_gameobject` WHERE `guid` = 140897;
DELETE FROM `gameobject` WHERE `guid` = 140859; -- Duplicate 140850
DELETE FROM `pool_gameobject` WHERE `guid` = 140859;
UPDATE `gameobject` SET `position_x` = -6751.08, `position_y` = -2048.45, `position_z` = -271.963, `orientation` = -1.64061, `rotation2` = -0.731354, `rotation3` = 0.681998 WHERE `guid` = 140880 AND `id` = 176584;
UPDATE `gameobject` SET `position_x` = -6449.84, `position_y` = 1330.59, `position_z` = 1.34675, `orientation` = -1.62316, `rotation2` = -0.725376, `rotation3` = 0.688353 WHERE `guid` = 139004 AND `id` = 176584;
UPDATE `gameobject` SET `position_x` = -6449.25, `position_y` = -1354.78, `position_z` = -270.704, `orientation` = -0.209439, `rotation2` = -0.104528, `rotation3` = 0.994522 WHERE `guid` = 140855 AND `id` = 176584;
UPDATE `gameobject` SET `map` = 530 WHERE `guid` = 133802 AND `id` = 176584;
UPDATE `pool_gameobject` SET `pool_entry` = 13044, `description` = 'Hellfire Peninsula - Dreamfoil' WHERE `guid` = 133802;
DELETE FROM `gameobject` WHERE `guid` = 141422; -- Duplicate 141425
DELETE FROM `pool_gameobject` WHERE `guid` = 141422;
DELETE FROM `gameobject` WHERE `guid` = 133803; -- Duplicate 141428 (map)
DELETE FROM `pool_gameobject` WHERE `guid` = 133803;
DELETE FROM `gameobject` WHERE `guid` = 141417; -- Duplicate 141442
DELETE FROM `pool_gameobject` WHERE `guid` = 141417;
DELETE FROM `gameobject` WHERE `guid` = 133804; -- Duplicate 141417 (map)
DELETE FROM `pool_gameobject` WHERE `guid` = 133804;
UPDATE `gameobject` SET `map` = 530 WHERE `guid` = 133805 AND `id` = 176584;
UPDATE `pool_gameobject` SET `pool_entry` = 13044, `description` = 'Hellfire Peninsula - Dreamfoil' WHERE `guid` = 133805;
DELETE FROM `gameobject` WHERE `guid` = 141433; -- Duplicate 142275
DELETE FROM `pool_gameobject` WHERE `guid` = 141433;
UPDATE `gameobject` SET `map` = 530 WHERE `guid` = 133806 AND `id` = 176584;
UPDATE `pool_gameobject` SET `pool_entry` = 13044, `description` = 'Hellfire Peninsula - Dreamfoil' WHERE `guid` = 133806;
DELETE FROM `gameobject` WHERE `guid` = 142284; -- Duplicate 142291
DELETE FROM `pool_gameobject` WHERE `guid` = 142284;
DELETE FROM `gameobject` WHERE `guid` = 142280; -- Duplicate 142272
DELETE FROM `pool_gameobject` WHERE `guid` = 142280;
DELETE FROM `gameobject` WHERE `guid` = 142279; -- Duplicate 142274
DELETE FROM `pool_gameobject` WHERE `guid` = 142279;
UPDATE `gameobject` SET `position_x` = 755.342, `position_y` = 5309.28, `position_z` = -0.178503, `orientation` = -0.575957, `rotation2` = -0.284015, `rotation3` = 0.95882 WHERE `guid` = 142281 AND `id` = 176584;
UPDATE `gameobject` SET `position_x` = 821.876, `position_y` = 5055.34, `position_z` = 4.66417, `orientation` = 1.29154, `rotation2` = 0.601814, `rotation3` = 0.798637 WHERE `guid` = 142288 AND `id` = 176584;
UPDATE `gameobject` SET `position_x` = 1003.2, `position_y` = 5100.83, `position_z` = -13.3308, `orientation` = 1.46608, `rotation2` = 0.669132, `rotation3` = 0.743144 WHERE `guid` = 142285 AND `id` = 176584;
DELETE FROM `gameobject` WHERE `guid` = 135551; -- Duplicate 135568
DELETE FROM `pool_gameobject` WHERE `guid` = 135551;
DELETE FROM `gameobject` WHERE `guid` IN (135561,135558); -- Duplicate 135576
DELETE FROM `pool_gameobject` WHERE `guid` IN (135561,135558);
UPDATE `gameobject` SET `position_x` = 1652.2, `position_y` = -1479.44, `position_z` = 59.5693, `orientation` = 1.3439, `rotation2` = 0.622513, `rotation3` = 0.782609 WHERE `guid` = 135535 AND `id` = 176584;
DELETE FROM `gameobject` WHERE `guid` = 135543; -- Duplicate 131980
DELETE FROM `pool_gameobject` WHERE `guid` = 135543;
UPDATE `gameobject` SET `position_x` = 1779.88, `position_y` = -1348.05, `position_z` = 60.0857, `orientation` = 1.67551, `rotation2` = 0.743143, `rotation3` = 0.669133 WHERE `guid` = 135544 AND `id` = 176584;
DELETE FROM `gameobject` WHERE `guid` = 135541; -- Duplicate 135562
DELETE FROM `pool_gameobject` WHERE `guid` = 135541;
DELETE FROM `gameobject` WHERE `guid` IN (135567,135564); -- Duplicate 132034
DELETE FROM `pool_gameobject` WHERE `guid` IN (135567,135564);
DELETE FROM `gameobject` WHERE `guid` = 135538; -- Duplicate 131977
DELETE FROM `pool_gameobject` WHERE `guid` = 135538;
DELETE FROM `gameobject` WHERE `guid` = 135539; -- Duplicate 131998
DELETE FROM `pool_gameobject` WHERE `guid` = 135539;
UPDATE `gameobject` SET `position_x` = 2389.99, `position_y` = -1504.44, `position_z` = 101.539, `orientation` = 2.74016, `rotation2` = 0.979924, `rotation3` = 0.199371 WHERE `guid` = 135542 AND `id` = 176584;
UPDATE `gameobject` SET `position_x` = 3084.88, `position_y` = -4714.11, `position_z` = 97.0514, `orientation` = -2.37364, `rotation2` = -0.927182, `rotation3` = 0.37461 WHERE `guid` = 132022 AND `id` = 176584;
DELETE FROM `gameobject` WHERE `guid` = 132038; -- Duplicate 131976
DELETE FROM `pool_gameobject` WHERE `guid` = 132038;
UPDATE `gameobject` SET `position_x` = 3320.06, `position_y` = -4643.19, `position_z` = 97.123, `orientation` = -1.65806, `rotation2` = -0.737276, `rotation3` = 0.675591 WHERE `guid` = 170075 AND `id` = 176584;
UPDATE `gameobject` SET `position_x` = 3870.36, `position_y` = -5051.52, `position_z` = 131.018, `orientation` = 1.74533, `rotation2` = 0.766045, `rotation3` = 0.642787 WHERE `guid` = 137132 AND `id` = 176584;
UPDATE `gameobject` SET `position_x` = 3934.18, `position_y` = -4993.8, `position_z` = 137.714, `orientation` = 2.68781, `rotation2` = 0.97437, `rotation3` = 0.22495 WHERE `guid` = 137106 AND `id` = 176584;
UPDATE `gameobject` SET `position_x` = 4714.74, `position_y` = -816.447, `position_z` = 309.083, `orientation` = 3.12412, `rotation2` = 0.999962, `rotation3` = 0.00873622 WHERE `guid` = 138522 AND `id` = 176584;
UPDATE `gameobject` SET `position_x` = 5483.54, `position_y` = -675.606, `position_z` = 347.061, `orientation` = 1.16937, `rotation2` = 0.551937, `rotation3` = 0.833886 WHERE `guid` = 138511 AND `id` = 176584;
UPDATE `gameobject` SET `position_x` = 6338.19, `position_y` = -1171.82, `position_z` = 375.17, `orientation` = -0.523598, `rotation2` = -0.258819, `rotation3` = 0.965926 WHERE `guid` = 138493 AND `id` = 176584;
UPDATE `gameobject` SET `position_x` = 6528.6, `position_y` = -1323.92, `position_z` = 439.695, `orientation` = 0.855211, `rotation2` = 0.414693, `rotation3` = 0.909961 WHERE `guid` = 138507 AND `id` = 176584;
DELETE FROM `gameobject` WHERE `guid` = 137150; -- Duplicate 137105
DELETE FROM `pool_gameobject` WHERE `guid` = 137150;

DELETE FROM `gameobject` WHERE `id` = 183356; -- use classic-db guid
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(99001, 183356, 1, 1, 3512.29, -6618.08, 0.01, 0, 0, 0, 0, 0, -9000, -9000, 0, 1); -- free 86415

DELETE FROM `gameobject` WHERE `guid` IN (16325,87493,63632,87494,87495,87041,87306,86408,86406,86424,63595,65271,87496,63646,63596,63614,65276,86427,86431,86434,86433,63640,65273,63630,63631,87671,63647,63641,87307,86430,63597,63622,87670,63648,86429,87672,87498,63642,63639,87056,86415,86416,86412,63615,63635,63636,86414,65270,63637,86418,63627,63605,63611,63628,86411,86417,63633,63623,63606,63629,63593,63634,86421,63599,86413,86419,86420,63626,63621,63594,63609,86423,86426,86425) AND `id` = 176584;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(16325, 176584, 1, 1, 3198.23, -4224, 100.6, 3.852, 0, 0, 0.937576, -0.347781, 45, 90, 100, 1),
(63593, 176584, 1, 1, 2610.61, -5536.26, 105.048, -2.74016, 0, 0, -0.979924, 0.199371, 45, 90, 100, 1),
(63594, 176584, 1, 1, 2903.76, -5402.82, 113.29, 2.35619, 0, 0, 0.923879, 0.382686, 45, 90, 100, 1),
(63595, 176584, 530, 1, -1187.96, 2710.75, -4.90954, -1.06465, 0, 0, -0.507538, 0.861629, 45, 90, 100, 1),
(63596, 176584, 530, 1, -1004.35, 2935.19, 3.86591, 2.65289, 0, 0, 0.970294, 0.241927, 45, 90, 100, 1),
(63597, 176584, 530, 1, -88.6867, 1942.2, 79.3959, -0.296705, 0, 0, -0.147809, 0.989016, 45, 90, 100, 1),
(63599, 176584, 0, 1, 2778.62, -1485.28, 145.787, 2.60053, 0, 0, 0.963629, 0.267244, 45, 90, 100, 1),
(63605, 176584, 0, 1, 2007.94, -4948.45, 74.1835, -1.16937, 0, 0, -0.551937, 0.833886, 45, 90, 100, 1),
(63606, 176584, 0, 1, 2377.23, -4186.74, 79.7483, 2.46091, 0, 0, 0.942641, 0.333809, 45, 90, 100, 1),
(63609, 176584, 0, 1, 2920.58, -2988.31, 107.379, -0.244346, 0, 0, -0.121869, 0.992546, 45, 90, 100, 1),
(63611, 176584, 0, 1, 2017.62, -1572.94, 60.9312, -1.51844, 0, 0, -0.688356, 0.725373, 45, 90, 100, 1),
(63614, 176584, 530, 1, -863.165, 4193.71, 47.0236, 0.610864, 0, 0, 0.300705, 0.953717, 45, 90, 100, 1),
(63615, 176584, 0, 1, 1773.09, -4107.52, 99.4197, 1.6057, 0, 0, 0.719339, 0.694659, 45, 90, 100, 1),
(63621, 176584, 0, 1, 2867.57, -4857.59, 99.9184, -1.95477, 0, 0, -0.829038, 0.559192, 45, 90, 100, 1),
(63622, 176584, 530, 1, -61.9544, 2893.19, 33.4421, 3.01941, 0, 0, 0.998135, 0.0610518, 45, 90, 100, 1),
(63623, 176584, 0, 1, 2328.65, -4239.03, 95.0663, -1.90241, 0, 0, -0.814116, 0.580702, 45, 90, 100, 1),
(63626, 176584, 0, 1, 2835.95, -1361.33, 146.251, 2.68781, 0, 0, 0.97437, 0.22495, 45, 90, 100, 1),
(63627, 176584, 0, 1, 1985.93, -1858.12, 69.8165, 3.12412, 0, 0, 0.999962, 0.00873622, 45, 90, 100, 1),
(63628, 176584, 0, 1, 2078, -1642.67, 63.1557, 1.27409, 0, 0, 0.594823, 0.803857, 45, 90, 100, 1),
(63629, 176584, 1, 1, 2402.95, -6139.04, 98.8376, -2.9845, 0, 0, -0.996917, 0.0784656, 45, 90, 100, 1),
(63630, 176584, 530, 1, -372.913, 4640.74, 30.7008, -0.366518, 0, 0, -0.182235, 0.983255, 45, 90, 100, 1),
(63631, 176584, 530, 1, -346.818, 4804.1, 18.6518, -0.523598, 0, 0, -0.258819, 0.965926, 45, 90, 100, 1),
(63632, 176584, 0, 1, -7887.27, -1978.09, 134.917, -2.49582, 0, 0, -0.948324, 0.317305, 45, 90, 100, 1),
(63633, 176584, 0, 1, 2282.73, -4875.34, 101.072, 0.95993, 0, 0, 0.461748, 0.887011, 45, 90, 100, 1),
(63634, 176584, 0, 1, 2697.22, -4771.53, 78.5649, -1.46608, 0, 0, -0.669132, 0.743144, 45, 90, 100, 1),
(63635, 176584, 0, 1, 1792.39, -2944.86, 73.7743, -1.41372, 0, 0, -0.649449, 0.760405, 45, 90, 100, 1),
(63636, 176584, 0, 1, 1850, -4281.62, 86.9686, -2.87979, 0, 0, -0.991445, 0.130528, 45, 90, 100, 1),
(63637, 176584, 0, 1, 1922.32, -4962.93, 76.6725, -2.56563, 0, 0, -0.958819, 0.284017, 45, 90, 100, 1),
(63639, 176584, 530, 1, 645.318, 5300.52, -24.7513, -2.51327, 0, 0, -0.951056, 0.309019, 45, 90, 100, 1),
(63640, 176584, 530, 1, -526.154, 6033.77, 22.0138, 2.05949, 0, 0, 0.857168, 0.515037, 45, 90, 100, 1),
(63641, 176584, 530, 1, -141.051, 7444.92, 23.3255, -1.6057, 0, 0, -0.719339, 0.694659, 45, 90, 100, 1),
(63642, 176584, 530, 1, 364.603, 8138.88, 23.1626, -2.33874, 0, 0, -0.920505, 0.390732, 45, 90, 100, 1),
(63646, 176584, 530, 1, -1090.66, 3040.63, 16.6848, 2.04204, 0, 0, 0.852641, 0.522496, 45, 90, 100, 1),
(63647, 176584, 530, 1, -146.11, 3708.09, 57.396, -1.6057, 0, 0, -0.719339, 0.694659, 45, 90, 100, 1),
(63648, 176584, 530, 1, 196.289, 3946.58, 74.8126, 1.85005, 0, 0, 0.798636, 0.601815, 45, 90, 100, 1),
(65270, 176584, 0, 1, 1878.28, -4879.28, 98.8299, 2.9845, 0, 0, 0.996917, 0.0784656, 45, 90, 100, 1),
(65271, 176584, 530, 1, -1124.82, 2603.13, 27.3606, 1.09956, 0, 0, 0.5225, 0.852639, 45, 90, 100, 1),
(65273, 176584, 530, 1, -447.679, 3820.29, 56.3577, 1.22173, 0, 0, 0.573576, 0.819152, 45, 90, 100, 1),
(65276, 176584, 530, 1, -716.607, 3689.33, 28.2092, -0.785397, 0, 0, -0.382683, 0.92388, 45, 90, 100, 1),
(86406, 176584, 1, 1, -7076.98, -650.943, -269.642, -0.052359, 0, 0, -0.0261765, 0.999657, 45, 90, 100, 1),
(86408, 176584, 1, 1, -7412.39, -1424.75, -271.369, -1.5708, 0, 0, -0.707108, 0.707106, 45, 90, 100, 1),
(86411, 176584, 0, 1, 2114.44, -3315.56, 120.031, 2.30383, 0, 0, 0.913544, 0.406739, 45, 90, 100, 1),
(86412, 176584, 0, 1, 1675.74, -4981.45, 79.0261, -3.00195, 0, 0, -0.997563, 0.0697646, 45, 90, 100, 1),
(86413, 176584, 0, 1, 2789.93, -4104.28, 99.2775, 1.3439, 0, 0, 0.622513, 0.782609, 45, 90, 100, 1),
(86414, 176584, 0, 1, 1857.36, -2116.71, 68.6316, -2.96704, 0, 0, -0.996194, 0.0871655, 45, 90, 100, 1),
(86415, 176584, 0, 1, 1515.73, -1079.51, 74.4867, -2.86233, 0, 0, -0.990267, 0.139178, 45, 90, 100, 1),
(86416, 176584, 0, 1, -8208.66, -932.638, 133.372, 0.488691, 0, 0, 0.241921, 0.970296, 45, 90, 100, 1),
(86417, 176584, 0, 1, 2155.74, -2417.66, 60.7121, -0.90757, 0, 0, -0.438371, 0.898794, 45, 90, 100, 1),
(86418, 176584, 0, 1, 1950.77, -3732.88, 127.524, -1.09956, 0, 0, -0.5225, 0.852639, 45, 90, 100, 1),
(86419, 176584, 0, 1, 2798.28, -3348.45, 96.2219, 1.32645, 0, 0, 0.615661, 0.788011, 45, 90, 100, 1),
(86420, 176584, 0, 1, 1648.37, -3419.78, 133.083, 0.453785, 0, 0, 0.224951, 0.97437, 45, 90, 100, 1),
(86421, 176584, 0, 1, 2768.47, -4124.76, 94.0685, -1.01229, 0, 0, -0.484809, 0.87462, 45, 90, 100, 1),
(86423, 176584, 1, 1, 3373.61, -4798.87, 110.855, 2.02458, 0, 0, 0.848048, 0.52992, 45, 90, 100, 1),
(86424, 176584, 1, 1, -6840.39, 1052.12, 2.4004, -3.12412, 0, 0, -0.999962, 0.00873622, 45, 90, 100, 1),
(86425, 176584, 1, 1, 3797.72, -4948.68, 145.915, -2.30383, 0, 0, -0.913544, 0.406739, 45, 90, 100, 1),
(86426, 176584, 1, 1, 3525.2, -4661.24, 101.48, -2.87979, 0, 0, -0.991445, 0.130528, 45, 90, 100, 1),
(86427, 176584, 530, 1, -619.672, 3916.96, 28.9951, 0.244346, 0, 0, 0.121869, 0.992546, 45, 90, 100, 1),
(86429, 176584, 530, 1, 205.129, 3022.03, -1.2225, 0.314158, 0, 0, 0.156434, 0.987688, 45, 90, 100, 1),
(86430, 176584, 530, 1, -99.1356, 4858.78, 52.0323, 1.44862, 0, 0, 0.662619, 0.748957, 45, 90, 100, 1),
(86431, 176584, 530, 1, -616.57, 3484.79, 66.5308, -0.017452, 0, 0, -0.00872589, 0.999962, 45, 90, 100, 1),
(86433, 176584, 530, 1, -538.766, 3107.73, 0.122882, 2.19912, 0, 0, 0.891008, 0.453988, 45, 90, 100, 1),
(86434, 176584, 530, 1, -604.181, 2123.58, 68.4872, -2.25147, 0, 0, -0.902584, 0.430513, 45, 90, 100, 1),
(87041, 176584, 1, 1, -7526.1, 940.236, 4.11149, -2.93214, 0, 0, -0.994521, 0.104535, 45, 90, 100, 1),
(87056, 176584, 530, 1, 948.127, 5525.61, -6.57213, -1.65806, 0, 0, -0.737277, 0.675591, 45, 90, 100, 1),
(87306, 176584, 1, 1, -7418.48, 719.633, -6.51437, -2.74016, 0, 0, -0.979924, 0.199371, 45, 90, 100, 1),
(87307, 176584, 530, 1, -114.65, 3297.32, 17.5288, -1.62316, 0, 0, -0.725376, 0.688353, 45, 90, 100, 1),
(87493, 176584, 1, 1, -7901.05, -1131.63, -272.205, -1.74533, 0, 0, -0.766045, 0.642787, 45, 90, 100, 1),
(87494, 176584, 1, 1, -7794.81, -1975.55, -270.681, 2.87979, 0, 0, 0.991445, 0.130528, 45, 90, 100, 1),
(87495, 176584, 1, 1, -7581.58, -511.841, -267.643, 1.53589, 0, 0, 0.694658, 0.71934, 45, 90, 100, 1),
(87496, 176584, 530, 1, -1099.89, 2378.75, 22.9108, -1.51844, 0, 0, -0.688356, 0.725373, 45, 90, 100, 1),
(87498, 176584, 530, 1, 336.033, 2594.7, 133.243, 0.052359, 0, 0, 0.0261765, 0.999657, 45, 90, 100, 1),
(87670, 176584, 530, 1, 50.4052, 1785.74, 51.9473, -0.174532, 0, 0, -0.0871553, 0.996195, 45, 90, 100, 1),
(87671, 176584, 530, 1, -212.216, 3222.17, -73.271, -0.872664, 0, 0, -0.422618, 0.906308, 45, 90, 100, 1),
(87672, 176584, 530, 1, 265.641, 2338.33, 60.7581, 1.50098, 0, 0, 0.681997, 0.731355, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (16325,87493,63632,87494,87495,87041,87306,86408,86406,86424,63595,65271,87496,63646,63596,63614,65276,86427,86431,86434,86433,63640,65273,63630,63631,87671,63647,63641,87307,86430,63597,63622,87670,63648,86429,87672,87498,63642,63639,87056,86415,86416,86412,63615,63635,63636,86414,65270,63637,86418,63627,63605,63611,63628,86411,86417,63633,63623,63606,63629,63593,63634,86421,63599,86413,86419,86420,63626,63621,63594,63609,86423,86426,86425);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(87306, 13035, 0, 'Dreamfoil zone 1377, node 72'), -- Silithus
(87041, 13035, 0, 'Dreamfoil zone 1377, node 68'),
(86424, 13035, 0, 'Dreamfoil zone 1377, node 67'),

(63627, 13021, 0, 'Dreamfoil zone 28, node 193'), -- Western Plaguelands
(63628, 13021, 0, 'Dreamfoil zone 28, node 194'),
(63626, 13021, 0, 'Dreamfoil zone 28, node 192'),
(86414, 13021, 0, 'Dreamfoil zone 28, node 217'),
(86415, 13021, 0, 'Dreamfoil zone 28, node 218'),
(86417, 13021, 0, 'Dreamfoil zone 28, node 219'),
(63611, 13021, 0, 'Dreamfoil zone 28, node 191'),
(63599, 13021, 0, 'Dreamfoil zone 28, node 189'),

(87495, 13041, 0, 'Dreamfoil zone 490, node 299'), -- Un'Goro Crater
(86406, 13041, 0, 'Dreamfoil zone 490, node 285'),
(87493, 13041, 0, 'Dreamfoil zone 490, node 297'),
(87494, 13041, 0, 'Dreamfoil zone 490, node 298'),
(86408, 13041, 0, 'Dreamfoil zone 490, node 286'),

(65270, 13007, 0, 'Dreamfoil zone 139, node 403'), -- Eastern Plaguelands
(86411, 13007, 0, 'Dreamfoil zone 139, node 423'),
(86412, 13007, 0, 'Dreamfoil zone 139, node 424'),
(86419, 13007, 0, 'Dreamfoil zone 139, node 427'),
(86420, 13007, 0, 'Dreamfoil zone 139, node 428'),
(86413, 13007, 0, 'Dreamfoil zone 139, node 425'),
(86421, 13007, 0, 'Dreamfoil zone 139, node 429'),
(86418, 13007, 0, 'Dreamfoil zone 139, node 426'),
(63637, 13007, 0, 'Dreamfoil zone 139, node 373'),
(63636, 13007, 0, 'Dreamfoil zone 139, node 372'),
(63635, 13007, 0, 'Dreamfoil zone 139, node 371'),
(63621, 13007, 0, 'Dreamfoil zone 139, node 366'),
(63623, 13007, 0, 'Dreamfoil zone 139, node 367'),
(63609, 13007, 0, 'Dreamfoil zone 139, node 361'),
(63606, 13007, 0, 'Dreamfoil zone 139, node 360'),
(63605, 13007, 0, 'Dreamfoil zone 139, node 359'),
(63633, 13007, 0, 'Dreamfoil zone 139, node 369'),
(63615, 13007, 0, 'Dreamfoil zone 139, node 362'),
(63634, 13007, 0, 'Dreamfoil zone 139, node 370'),

(86431, 13044, 0, 'Dreamfoil zone 3483, node 229'), -- Hellfire Peninsula
(87496, 13044, 0, 'Dreamfoil zone 3483, node 271'),
(87307, 13044, 0, 'Dreamfoil zone 3483, node 251'),
(63595, 13044, 0, 'Dreamfoil zone 3483, node 161'),
(63596, 13044, 0, 'Dreamfoil zone 3483, node 162'),
(63597, 13044, 0, 'Dreamfoil zone 3483, node 163'),
(87498, 13044, 0, 'Dreamfoil zone 3483, node 273'),
(86427, 13044, 0, 'Dreamfoil zone 3483, node 226'),
(86434, 13044, 0, 'Dreamfoil zone 3483, node 232'),
(86429, 13044, 0, 'Dreamfoil zone 3483, node 227'),
(86433, 13044, 0, 'Dreamfoil zone 3483, node 231'),
(86430, 13044, 0, 'Dreamfoil zone 3483, node 228'),
(63622, 13044, 0, 'Dreamfoil zone 3483, node 167'),
(63646, 13044, 0, 'Dreamfoil zone 3483, node 172'),
(63647, 13044, 0, 'Dreamfoil zone 3483, node 173'),
(63648, 13044, 0, 'Dreamfoil zone 3483, node 174'),
(65271, 13044, 0, 'Dreamfoil zone 3483, node 196'),
(65273, 13044, 0, 'Dreamfoil zone 3483, node 198'),
(65276, 13044, 0, 'Dreamfoil zone 3483, node 200'),
(63631, 13044, 0, 'Dreamfoil zone 3483, node 169'),
(63630, 13044, 0, 'Dreamfoil zone 3483, node 168'),
(63614, 13044, 0, 'Dreamfoil zone 3483, node 166'),
(87670, 13044, 0, 'Hellfire Peninsula - Dreamfoil'),
(87671, 13044, 0, 'Hellfire Peninsula - Dreamfoil'),
(87672, 13044, 0, 'Hellfire Peninsula - Dreamfoil'),

(63639, 13049, 0, 'Dreamfoil zone 3521, node 280'), -- Zangarmarsh
(63640, 13049, 0, 'Dreamfoil zone 3521, node 281'),
(63641, 13049, 0, 'Dreamfoil zone 3521, node 282'),
(63642, 13049, 0, 'Dreamfoil zone 3521, node 283'),
(87056, 13049, 0, 'Dreamfoil zone 3521, node 358'),

(63593, 13025, 0, 'Dreamfoil zone 16, node 498'), -- Azshara
(86423, 13025, 0, 'Dreamfoil zone 16, node 510'),
(63629, 13025, 0, 'Dreamfoil zone 16, node 500'),
(63594, 13025, 0, 'Dreamfoil zone 16, node 499'),
(86426, 13025, 0, 'Dreamfoil zone 16, node 512'),
(86425, 13025, 0, 'Dreamfoil zone 16, node 511'),
(16325, 13025, 0, 'Azshara - Dreamfoil'),

(63632, 13004, 0, 'Burning Steppes - Dreamfoil'), -- Burning Steppes
(86416, 13004, 0, 'Burning Steppes - Dreamfoil');

-- Mountain Silversage 176586
-- https://tbc.wowhead.com/object=176586/mountain-silversage
DELETE FROM `gameobject` WHERE `guid` = 131358; -- Duplicate 131379
DELETE FROM `pool_gameobject` WHERE `guid` = 131358;
DELETE FROM `gameobject` WHERE `guid` = 140958; -- Duplicate 140934
DELETE FROM `pool_gameobject` WHERE `guid` = 140958;
UPDATE `gameobject` SET `position_x` = -7944.49, `position_y` = -1863.99, `position_z` = -250.352, `orientation` = -1.01229, `rotation2` = -0.484809, `rotation3` = 0.87462 WHERE `guid` = 140919 AND `id` = 176586;
DELETE FROM `gameobject` WHERE `guid` = 131347; -- Duplicate 131346
DELETE FROM `pool_gameobject` WHERE `guid` = 131347;
DELETE FROM `gameobject` WHERE `guid` = 139029; -- Duplicate 140969
DELETE FROM `pool_gameobject` WHERE `guid` = 139029;
UPDATE `gameobject` SET `map` = 0 WHERE `guid` = 140933 AND `id` = 176586;
UPDATE `pool_gameobject` SET `pool_entry` = 13004, `description` = 'Burning Steppes - Mountain Silversage' WHERE `guid` = 140933;
DELETE FROM `gameobject` WHERE `guid` = 140984; -- Duplicate 140939
DELETE FROM `pool_gameobject` WHERE `guid` = 140984;
DELETE FROM `gameobject` WHERE `guid` = 139028; -- Duplicate 140968
DELETE FROM `pool_gameobject` WHERE `guid` = 139028;
DELETE FROM `gameobject` WHERE `guid` = 139030; -- Duplicate 140971
DELETE FROM `pool_gameobject` WHERE `guid` = 139030;
DELETE FROM `gameobject` WHERE `guid` IN (133555,131359); -- Duplicate 131367
DELETE FROM `pool_gameobject` WHERE `guid` IN (133555,131359);
DELETE FROM `gameobject` WHERE `guid` = 140945; -- Duplicate 140932
DELETE FROM `pool_gameobject` WHERE `guid` = 140945;
UPDATE `gameobject` SET `position_x` = -7288.34, `position_y` = -1226.62, `position_z` = -241.659, `orientation` = -1.98967, `rotation2` = -0.838669, `rotation3` = 0.544641 WHERE `guid` = 140926 AND `id` = 176586;
UPDATE `gameobject` SET `position_x` = -7110.91, `position_y` = -1494.33, `position_z` = -247.364, `orientation` = 0.558504, `rotation2` = 0.275637, `rotation3` = 0.961262 WHERE `guid` = 140952 AND `id` = 176586;
DELETE FROM `gameobject` WHERE `guid` = 140930; -- Duplicate 140983
DELETE FROM `pool_gameobject` WHERE `guid` = 140930;
UPDATE `gameobject` SET `position_x` = -6785.28, `position_y` = -2261.36, `position_z` = -243.692, `orientation` = -1.58825, `rotation2` = -0.71325, `rotation3` = 0.70091 WHERE `guid` = 140920 AND `id` = 176586;
DELETE FROM `gameobject` WHERE `guid` = 140943; -- Duplicate 140977
DELETE FROM `pool_gameobject` WHERE `guid` = 140943;
UPDATE `gameobject` SET `position_x` = -6327.72, `position_y` = -1763.85, `position_z` = -241.506, `orientation` = 1.20428, `rotation2` = 0.566407, `rotation3` = 0.824125 WHERE `guid` = 140923 AND `id` = 176586;
UPDATE `gameobject` SET `position_x` = -850.489, `position_y` = 3313.62, `position_z` = 75.7251, `orientation` = 1.0821, `rotation2` = 0.515036, `rotation3` = 0.857168 WHERE `guid` = 141448 AND `id` = 176586;
UPDATE `gameobject` SET `position_x` = 525.063, `position_y` = 2435.26, `position_z` = 196.9, `orientation` = -1.309, `rotation2` = -0.608763, `rotation3` = 0.793352 WHERE `guid` = 141457 AND `id` = 176586;
DELETE FROM `gameobject` WHERE `guid` = 135580; -- Duplicate 135578
DELETE FROM `pool_gameobject` WHERE `guid` = 135580;
DELETE FROM `gameobject` WHERE `guid` = 132050; -- Duplicate 132051
DELETE FROM `pool_gameobject` WHERE `guid` = 132050;

DELETE FROM `gameobject` WHERE `guid` IN (86435,86438,86462,63660,86461,86458,63680,63675,63677,65279,63679,86459,63669,65278,63678,5519,86457,63666,86460,63655,87505,86455,63665,63657,63667,63671,63662,86441,86448,63658,87311,63664,87500,86440,63653,86450,86439,87310,87502,87308,86453,87503,86436,86452,86454,86447,86445,86443,86449,87501,87309,132050,135580,140943,140930) AND `id` = 176586;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5519, 176586, 530, 1, 286.719, 3237.98, 85.6214, 2.44346, 0, 0, 0.939692, 0.342021, 45, 90, 100, 1),
(63653, 176586, 1, 1, 3197.91, -5175.12, 138.237, -0.750491, 0, 0, -0.366501, 0.930418, 45, 90, 100, 1),
(63655, 176586, 530, 1, 546.538, 2846.87, 210.402, 2.42601, 0, 0, 0.936673, 0.350206, 45, 90, 100, 1),
(63657, 176586, 0, 1, 1877.12, -5204.1, 112.687, 0.261798, 0, 0, 0.130525, 0.991445, 45, 90, 100, 1),
(63658, 176586, 0, 1, 2320, -2046.68, 175.221, 1.11701, 0, 0, 0.529919, 0.848048, 45, 90, 100, 1),
(63660, 176586, 530, 1, -1149.05, 4075.78, 86.7622, -1.39626, 0, 0, -0.642786, 0.766046, 45, 90, 100, 1),
(63662, 176586, 0, 1, 2223.48, -4782.46, 113.655, -1.15192, 0, 0, -0.54464, 0.83867, 45, 90, 100, 1),
(63664, 176586, 0, 1, 2487.21, -3614.84, 188.068, -1.13446, 0, 0, -0.537298, 0.843393, 45, 90, 100, 1),
(63665, 176586, 0, 1, 1862.28, -1242.78, 73.6229, 1.01229, 0, 0, 0.484809, 0.87462, 45, 90, 100, 1),
(63666, 176586, 530, 1, 416.081, 3600.06, 79.3968, 0.785397, 0, 0, 0.382683, 0.92388, 45, 90, 100, 1),
(63667, 176586, 0, 1, 1980.19, -5361.09, 110.172, -0.558504, 0, 0, -0.275637, 0.961262, 45, 90, 100, 1),
(63669, 176586, 530, 1, 158.511, 3640.36, 89.3116, -1.98967, 0, 0, -0.838669, 0.544641, 45, 90, 100, 1),
(63671, 176586, 0, 1, 2115.36, -5366.65, 125.839, 2.40855, 0, 0, 0.93358, 0.35837, 45, 90, 100, 1),
(63675, 176586, 530, 1, -788.766, 3728.18, 118.6, -0.663223, 0, 0, -0.325567, 0.945519, 45, 90, 100, 1),
(63677, 176586, 530, 1, -690.874, 3979.02, 62.8609, -1.74533, 0, 0, -0.766045, 0.642787, 45, 90, 100, 1),
(63678, 176586, 530, 1, 277.283, 3854.94, 95.9161, 2.53072, 0, 0, 0.953716, 0.300708, 45, 90, 100, 1),
(63679, 176586, 530, 1, -632.876, 4713.35, 81.0672, 3.14159, 0, 0, 1, 0.00000126759, 45, 90, 100, 1),
(63680, 176586, 530, 1, -794.998, 4003.3, 81.0004, 2.09439, 0, 0, 0.866024, 0.500002, 45, 90, 100, 1),
(65278, 176586, 530, 1, 202.783, 4692.7, 99.6541, -2.49582, 0, 0, -0.948324, 0.317305, 45, 90, 100, 1),
(65279, 176586, 530, 1, -681.734, 3885.03, 67.3771, 1.69297, 0, 0, 0.748956, 0.66262, 45, 90, 100, 1),
(86435, 176586, 1, 1, -7147.22, -1173.04, -243.574, -1.81514, 0, 0, -0.788011, 0.615662, 45, 90, 100, 1),
(86436, 176586, 1, 1, 6021.43, -4708.45, 788.153, -0.820303, 0, 0, -0.398748, 0.91706, 45, 90, 100, 1),
(86438, 176586, 1, 1, -6960.87, -2322.74, -224.537, -3.05433, 0, 0, -0.999048, 0.0436174, 45, 90, 100, 1),
(86439, 176586, 1, 1, 4010.14, -5017.9, 149.252, 2.40855, 0, 0, 0.93358, 0.35837, 45, 90, 100, 1),
(86440, 176586, 0, 1, 2871.31, -2871.03, 104.928, 2.04204, 0, 0, 0.85264, 0.522499, 45, 90, 100, 1),
(86441, 176586, 0, 1, 2225.33, -2463.55, 90.5105, -3.01941, 0, 0, -0.998134, 0.0610534, 45, 90, 100, 1),
(86443, 176586, 1, 1, 6983.7, -4332.11, 775.726, 0.174532, 0, 0, 0.0871553, 0.996195, 45, 90, 100, 1),
(86445, 176586, 1, 1, 6852.75, -2989.41, 601.534, -2.72271, 0, 0, -0.978147, 0.207914, 45, 90, 100, 1),
(86447, 176586, 1, 1, 6789.77, -4042.01, 708.498, -1.02974, 0, 0, -0.492422, 0.870357, 45, 90, 100, 1),
(86448, 176586, 0, 1, 2249.72, -4420.42, 132.854, -1.78023, 0, 0, -0.777144, 0.629323, 45, 90, 100, 1),
(86449, 176586, 1, 1, 7010.93, -4831.64, 717.759, -1.72787, 0, 0, -0.760404, 0.64945, 45, 90, 100, 1),
(86450, 176586, 1, 1, 3873.34, -4893.83, 173.628, 1.88495, 0, 0, 0.809015, 0.587788, 45, 90, 100, 1),
(86452, 176586, 1, 1, 6672.38, -5135.28, 784.418, -1.83259, 0, 0, -0.793352, 0.608764, 45, 90, 100, 1),
(86453, 176586, 1, 1, 5355.13, -4446.39, 843.834, 2.28638, 0, 0, 0.909961, 0.414694, 45, 90, 100, 1),
(86454, 176586, 1, 1, 6775.71, -5208.24, 764.705, 2.28638, 0, 0, 0.909961, 0.414694, 45, 90, 100, 1),
(86455, 176586, 530, 1, 631.23, 2778.51, 229.101, 1.23918, 0, 0, 0.580701, 0.814117, 45, 90, 100, 1),
(86457, 176586, 530, 1, 363.741, 2109.55, 118.131, 2.87979, 0, 0, 0.991445, 0.130528, 45, 90, 100, 1),
(86458, 176586, 530, 1, -835.878, 4296.72, 80.479, 1.91986, 0, 0, 0.819151, 0.573577, 45, 90, 100, 1),
(86459, 176586, 530, 1, 81.9968, 3429.71, 88.2421, -2.68781, 0, 0, -0.97437, 0.22495, 45, 90, 100, 1),
(86460, 176586, 530, 1, 499.747, 3346.77, 109.89, -1.76278, 0, 0, -0.771624, 0.636079, 45, 90, 100, 1),
(86461, 176586, 530, 1, -911.488, 3645.63, 114.376, 0.59341, 0, 0, 0.292371, 0.956305, 45, 90, 100, 1),
(86462, 176586, 530, 1, -1312.13, 4102.39, 120.727, -2.9845, 0, 0, -0.996917, 0.0784656, 45, 90, 100, 1),
(87308, 176586, 1, 1, 5232.98, -5020.01, 874.759, -0.279252, 0, 0, -0.139173, 0.990268, 45, 90, 100, 1),
(87309, 176586, 1, 1, 7592.79, -4782.64, 744.513, -0.942477, 0, 0, -0.45399, 0.891007, 45, 90, 100, 1),
(87310, 176586, 1, 1, 4114.49, -5077.12, 147.331, 1.06465, 0, 0, 0.507538, 0.861629, 45, 90, 100, 1),
(87311, 176586, 0, 1, 2421.2, -3861.51, 206.033, -3.05433, 0, 0, -0.999048, 0.0436174, 45, 90, 100, 1),
(87500, 176586, 0, 1, 2670.15, -3283.07, 128.611, -0.506145, 0, 0, -0.25038, 0.968148, 45, 90, 100, 1),
(87501, 176586, 1, 1, 7253.81, -4350.75, 661.104, -2.07694, 0, 0, -0.861629, 0.507539, 45, 90, 100, 1),
(87502, 176586, 1, 1, 4689.2, -5365.06, 119.033, -0.855211, 0, 0, -0.414693, 0.909961, 45, 90, 100, 1),
(87503, 176586, 1, 1, 5658.23, -4443.14, 792.11, 0.890117, 0, 0, 0.430511, 0.902586, 45, 90, 100, 1),
(87505, 176586, 530, 1, 567.093, 2512.02, 216.398, -1.71042, 0, 0, -0.754709, 0.65606, 45, 90, 100, 1),

(132050, 176586, 0, 1, -7972.84, -2678.18, 195.698, 5.75959, 0, 0, -0.258819, 0.965926, 45, 90, 100, 1), -- 16622
(135580, 176586, 1, 1, -6437.51, -623.797, -243.002, 5.63741, 0, 0, -0.317305, 0.948324, 45, 90, 100, 1), -- 16624
(140943, 176586, 1, 1, -8085.21, 1152.72, 30.9524, 2.11185, 0, 0, 0.870356, 0.492424, 45, 90, 100, 1), -- 16626
(140930, 176586, 1, 1, 6679.09, -3216.58, 627.622, 3.54302, 0, 0, -0.979924, 0.19937, 45, 90, 100, 1); -- 16637

DELETE FROM `pool_gameobject` WHERE `guid` IN (86435,86438,86462,63660,86461,86458,63680,63675,63677,65279,63679,86459,63669,65278,63678,5519,86457,63666,86460,63655,87505,86455,63665,63657,63667,63671,63662,86441,86448,63658,87311,63664,87500,86440,63653,86450,86439,87310,87502,87308,86453,87503,86436,86452,86454,86447,86445,86443,86449,87501,87309,132050,135580,140943,140930);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(86441, 13021, 0, 'Mountain Silversage zone 28, node 220'), -- Western Plaguelands
(63665, 13021, 0, 'Mountain Silversage zone 28, node 196'),
(63658, 13021, 0, 'Mountain Silversage zone 28, node 195'),

(86435, 13041, 0, 'Mountain Silversage zone 490, node 288'), -- Un'Goro Crater
(86438, 13041, 0, 'Mountain Silversage zone 490, node 289'),
(135580, 13041, 0, 'Un''Goro Crater - Mountain Silversage'),

(86443, 13042, 0, 'Mountain Silversage zone 618, node 257'), -- Winterspring
(87308, 13042, 0, 'Mountain Silversage zone 618, node 292'),
(87309, 13042, 0, 'Mountain Silversage zone 618, node 293'),
(86436, 13042, 0, 'Mountain Silversage zone 618, node 255'),
(86445, 13042, 0, 'Mountain Silversage zone 618, node 259'),
(86447, 13042, 0, 'Mountain Silversage zone 618, node 260'),
(86449, 13042, 0, 'Mountain Silversage zone 618, node 261'),
(87501, 13042, 0, 'Mountain Silversage zone 618, node 294'),
(86452, 13042, 0, 'Mountain Silversage zone 618, node 263'),
(87503, 13042, 0, 'Mountain Silversage zone 618, node 295'),
(86453, 13042, 0, 'Mountain Silversage zone 618, node 264'),
(86454, 13042, 0, 'Mountain Silversage zone 618, node 265'),
(140930, 13042, 0, 'Winterspring - Mountain Silversage'),

(86448, 13007, 0, 'Mountain Silversage zone 139, node 434'), -- Eastern Plaguelands
(86440, 13007, 0, 'Mountain Silversage zone 139, node 432'),
(63662, 13007, 0, 'Mountain Silversage zone 139, node 375'),
(63657, 13007, 0, 'Mountain Silversage zone 139, node 374'),
(87500, 13007, 0, 'Mountain Silversage zone 139, node 454'),
(63664, 13007, 0, 'Mountain Silversage zone 139, node 376'),
(63667, 13007, 0, 'Mountain Silversage zone 139, node 377'),
(87311, 13007, 0, 'Mountain Silversage zone 139, node 448'),
(63671, 13007, 0, 'Mountain Silversage zone 139, node 379'),

(86457, 13044, 0, 'Mountain Silversage zone 3483, node 235'), -- Hellfire Peninsula
(86458, 13044, 0, 'Mountain Silversage zone 3483, node 236'),
(86462, 13044, 0, 'Mountain Silversage zone 3483, node 240'),
(86461, 13044, 0, 'Mountain Silversage zone 3483, node 239'),
(86455, 13044, 0, 'Mountain Silversage zone 3483, node 233'),
(86460, 13044, 0, 'Mountain Silversage zone 3483, node 238'),
(87505, 13044, 0, 'Mountain Silversage zone 3483, node 275'),
(86459, 13044, 0, 'Mountain Silversage zone 3483, node 237'),
(63677, 13044, 0, 'Mountain Silversage zone 3483, node 190'),
(5519, 13044, 0, 'Mountain Silversage zone 3483, node 280'),
(63675, 13044, 0, 'Mountain Silversage zone 3483, node 188'),
(63660, 13044, 0, 'Mountain Silversage zone 3483, node 181'),
(63678, 13044, 0, 'Mountain Silversage zone 3483, node 191'),
(63679, 13044, 0, 'Mountain Silversage zone 3483, node 192'),
(63680, 13044, 0, 'Mountain Silversage zone 3483, node 193'),
(65278, 13044, 0, 'Mountain Silversage zone 3483, node 201'),
(63655, 13044, 0, 'Mountain Silversage zone 3483, node 179'),
(65279, 13044, 0, 'Mountain Silversage zone 3483, node 202'),
(63669, 13044, 0, 'Mountain Silversage zone 3483, node 184'),
(63666, 13044, 0, 'Mountain Silversage zone 3483, node 183'),

(87310, 13025, 0, 'Mountain Silversage zone 16, node 520'), -- Azshara
(86450, 13025, 0, 'Mountain Silversage zone 16, node 515'),
(86439, 13025, 0, 'Mountain Silversage zone 16, node 514'),
(63653, 13025, 0, 'Mountain Silversage zone 16, node 501'),
(87502, 13025, 0, 'Azshara - Mountain Silversage'),

(132050, 13004, 0, 'Burning Steppes - Mountain Silversage'), -- Burning Steppes

(140943, 13035, 0, 'Silithus - Mountain Silversage'); -- Silithus

-- Plaguebloom 176587
-- https://tbc.wowhead.com/object=176587/plaguebloom
DELETE FROM `gameobject` WHERE `guid` = 135666; -- Duplicate 135662
DELETE FROM `pool_gameobject` WHERE `guid` = 135666;
DELETE FROM `gameobject` WHERE `guid` = 135644; -- Duplicate 132147
DELETE FROM `pool_gameobject` WHERE `guid` = 135644;
UPDATE `gameobject` SET `position_x` = 1701.48, `position_y` = -2219.41, `position_z` = 59.4933, `orientation` = 0.837757, `rotation2` = 0.406736, `rotation3` = 0.913546 WHERE `guid` = 135640 AND `id` = 176587;
DELETE FROM `gameobject` WHERE `guid` = 135650; -- Duplicate 135640
DELETE FROM `pool_gameobject` WHERE `guid` = 135650;
DELETE FROM `gameobject` WHERE `guid` = 135660; -- Duplicate 135639
DELETE FROM `pool_gameobject` WHERE `guid` = 135660;
UPDATE `gameobject` SET `position_x` = 1769.25, `position_y` = -2311.86, `position_z` = 60.0036, `orientation` = -1.41372, `rotation2` = -0.649449, `rotation3` = 0.760405 WHERE `guid` = 135638 AND `id` = 176587;
DELETE FROM `gameobject` WHERE `guid` = 135619; -- Duplicate 132126
DELETE FROM `pool_gameobject` WHERE `guid` = 135619;
UPDATE `gameobject` SET `position_x` = 1782.65, `position_y` = -4221.37, `position_z` = 88.5097, `orientation` = 0.139624, `rotation2` = 0.0697553, `rotation3` = 0.997564 WHERE `guid` = 132072 AND `id` = 176587;
UPDATE `gameobject` SET `position_x` = 1785.91, `position_y` = -2446.28, `position_z` = 61.966, `orientation` = -2.63544, `rotation2` = -0.968147, `rotation3` = 0.250383 WHERE `guid` = 135653 AND `id` = 176587;
UPDATE `gameobject` SET `position_x` = 1810.51, `position_y` = -1249.53, `position_z` = 60.7759, `orientation` = -1.69297, `rotation2` = -0.748956, `rotation3` = 0.66262 WHERE `guid` = 135606 AND `id` = 176587;
UPDATE `gameobject` SET `position_x` = 1928.95, `position_y` = -1570.68, `position_z` = 60.4229, `orientation` = -1.43117, `rotation2` = -0.656059, `rotation3` = 0.75471 WHERE `guid` = 135633 AND `id` = 176587;
DELETE FROM `gameobject` WHERE `guid` = 132150; -- Duplicate 132203
DELETE FROM `pool_gameobject` WHERE `guid` = 132150;
DELETE FROM `gameobject` WHERE `guid` = 135663; -- Duplicate 132205
DELETE FROM `pool_gameobject` WHERE `guid` = 135663;
DELETE FROM `gameobject` WHERE `guid` = 135601; -- Duplicate 132091
DELETE FROM `pool_gameobject` WHERE `guid` = 135601;
DELETE FROM `gameobject` WHERE `guid` = 135629; -- Duplicate 132134
DELETE FROM `pool_gameobject` WHERE `guid` = 135629;
UPDATE `gameobject` SET `position_x` = 2368.39, `position_y` = -1456.07, `position_z` = 102.191, `orientation` = 0.157079, `rotation2` = 0.0784588, `rotation3` = 0.996917 WHERE `guid` = 135604 AND `id` = 176587;
UPDATE `gameobject` SET `position_x` = 2719.06, `position_y` = -4868.81, `position_z` = 88.9132, `orientation` = 1.43117, `rotation2` = 0.656059, `rotation3` = 0.75471 WHERE `guid` = 132178 AND `id` = 176587;
DELETE FROM `gameobject` WHERE `guid` = 132187; -- Duplicate 132164
DELETE FROM `pool_gameobject` WHERE `guid` = 132187;
DELETE FROM `gameobject` WHERE `guid` = 132124; -- Duplicate 132202
DELETE FROM `pool_gameobject` WHERE `guid` = 132124;
UPDATE `gameobject` SET `position_x` = 3113.64, `position_y` = -3780.52, `position_z` = 130.505, `orientation` = 2.79252, `rotation2` = 0.984807, `rotation3` = 0.173652 WHERE `guid` = 132128 AND `id` = 176587;
DELETE FROM `gameobject` WHERE `guid` = 132141; -- Duplicate 132206
DELETE FROM `pool_gameobject` WHERE `guid` = 132141;
DELETE FROM `gameobject` WHERE `guid` = 136786; -- Duplicate 138564
DELETE FROM `pool_gameobject` WHERE `guid` = 136786;
UPDATE `gameobject` SET `position_x` = 3667.74, `position_y` = -1439.07, `position_z` = 182.799, `orientation` = 0.436332, `rotation2` = 0.216439, `rotation3` = 0.976296 WHERE `guid` = 138564 AND `id` = 176587;
UPDATE `gameobject` SET `position_x` = 4204.94, `position_y` = -1031.77, `position_z` = 293.272, `orientation` = -1.46608, `rotation2` = -0.669132, `rotation3` = 0.743144 WHERE `guid` = 138567 AND `id` = 176587;
UPDATE `gameobject` SET `position_x` = 5553.3, `position_y` = -919.271, `position_z` = 377.671, `orientation` = 1.3439, `rotation2` = 0.622513, `rotation3` = 0.782609 WHERE `guid` = 138599 AND `id` = 176587;
DELETE FROM `gameobject` WHERE `guid` = 135585; -- Duplicate 135639
DELETE FROM `pool_gameobject` WHERE `guid` = 135585;
DELETE FROM `gameobject` WHERE `guid` = 132174; -- Duplicate 132194
DELETE FROM `pool_gameobject` WHERE `guid` = 132174;
DELETE FROM `gameobject` WHERE `guid` = 135642; -- Duplicate 132126
DELETE FROM `pool_gameobject` WHERE `guid` = 135642;
DELETE FROM `gameobject` WHERE `guid` = 132162; -- Duplicate 132102
DELETE FROM `pool_gameobject` WHERE `guid` = 132162;

DELETE FROM `gameobject` WHERE `guid` IN (86474,65285,63713,63711,63706,63712,63716,86467,63699,63723,87314,63725,65286,86471,63697,63719,63714,63720,63709,63708,63683,87512,65280,63685,86468,63691,87511,63689,63696,87312,87313,86477,87510,86476,63718,87507,86466,87315,87509,63726,65283,63717,87508,86478,63701,86470,86475,63715,63681) AND `id` = 176587;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(63681, 176587, 0, 1, 3355.6, -4984.63, 159.253, 2.04204, 0, 0, 0.852641, 0.522496, 45, 90, 100, 1),
(63683, 176587, 0, 1, 1890.2, -1756.4, 61.7958, 2.63544, 0, 0, 0.968147, 0.250383, 45, 90, 100, 1),
(63685, 176587, 0, 1, 2158.7, -4345.31, 75.9694, 2.67035, 0, 0, 0.972369, 0.233447, 45, 90, 100, 1),
(63689, 176587, 0, 1, 2345.16, -1587.58, 109.385, -0.855211, 0, 0, -0.414693, 0.909961, 45, 90, 100, 1),
(63691, 176587, 0, 1, 2237.28, -1541.57, 78.802, 1.62316, 0, 0, 0.725376, 0.688353, 45, 90, 100, 1),
(63696, 176587, 0, 1, 2350.54, -4982.48, 71.2999, -3.08918, 0, 0, -0.999657, 0.0262016, 45, 90, 100, 1),
(63697, 176587, 0, 1, 1834.97, -2172.85, 66.8352, -2.33874, 0, 0, -0.920505, 0.390732, 45, 90, 100, 1),
(63699, 176587, 0, 1, 1707.76, -2348.97, 60.3897, -1.6057, 0, 0, -0.719339, 0.694659, 45, 90, 100, 1),
(63701, 176587, 0, 1, 3120.71, -3058.46, 133.354, 3.12412, 0, 0, 0.999962, 0.00873622, 45, 90, 100, 1),
(63706, 176587, 0, 1, 1600.04, -3050.9, 79.4959, -0.95993, 0, 0, -0.461748, 0.887011, 45, 90, 100, 1),
(63708, 176587, 0, 1, 1887.29, -1580.29, 59.4747, -2.426, 0, 0, -0.936671, 0.350211, 45, 90, 100, 1),
(63709, 176587, 0, 1, 1861.09, -2010.82, 83.83, -2.18166, 0, 0, -0.88701, 0.461749, 45, 90, 100, 1),
(63711, 176587, 0, 1, 1497.6, -1860.78, 58.628, 2.86233, 0, 0, 0.990267, 0.139178, 45, 90, 100, 1),
(63712, 176587, 0, 1, 1646.8, -3432.92, 136.714, -0.767944, 0, 0, -0.374606, 0.927184, 45, 90, 100, 1),
(63713, 176587, 0, 1, 1238.8, -2549.02, 92.0041, -0.645772, 0, 0, -0.317305, 0.948324, 45, 90, 100, 1),
(63714, 176587, 0, 1, 1852.03, -3815.96, 136.994, 1.0821, 0, 0, 0.515036, 0.857168, 45, 90, 100, 1),
(63715, 176587, 0, 1, 3183.07, -4570.98, 108.747, 2.21656, 0, 0, 0.894933, 0.446202, 45, 90, 100, 1),
(63716, 176587, 0, 1, 1649.55, -3722.11, 119.535, 1.46608, 0, 0, 0.669132, 0.743144, 45, 90, 100, 1),
(63717, 176587, 0, 1, 2832.67, -4743.53, 77.3118, 0.471238, 0, 0, 0.233445, 0.97237, 45, 90, 100, 1),
(63718, 176587, 0, 1, 2716.76, -4691.48, 76.8073, 0.855211, 0, 0, 0.414693, 0.909961, 45, 90, 100, 1),
(63719, 176587, 0, 1, 1835.43, -1642.28, 60.4431, 1.41372, 0, 0, 0.649449, 0.760405, 45, 90, 100, 1),
(63720, 176587, 0, 1, 1855.35, -4576.7, 79.0182, -1.01229, 0, 0, -0.484809, 0.87462, 45, 90, 100, 1),
(63723, 176587, 0, 1, 1711.95, -3935.51, 130.9, -1.72787, 0, 0, -0.760404, 0.64945, 45, 90, 100, 1),
(63725, 176587, 0, 1, 1752.43, -1226.08, 59.6435, 3.00195, 0, 0, 0.997563, 0.0697646, 45, 90, 100, 1),
(63726, 176587, 0, 1, 2815.06, -5441.11, 158.186, 1.0821, 0, 0, 0.515036, 0.857168, 45, 90, 100, 1),
(65280, 176587, 0, 1, 2016.61, -4694.26, 91.7821, -0.837757, 0, 0, -0.406736, 0.913546, 45, 90, 100, 1),
(65283, 176587, 0, 1, 2818.86, -4592.9, 90.6468, -1.69297, 0, 0, -0.748956, 0.66262, 45, 90, 100, 1),
(65285, 176587, 0, 1, 1208, -2550.61, 73.0816, -1.11701, 0, 0, -0.529919, 0.848048, 45, 90, 100, 1),
(65286, 176587, 0, 1, 1814.54, -1161.08, 60.4921, -2.426, 0, 0, -0.936671, 0.350211, 45, 90, 100, 1),
(86466, 176587, 0, 1, 2793.07, -4211.21, 90.0861, -3.10665, 0, 0, -0.999847, 0.0174704, 45, 90, 100, 1),
(86467, 176587, 0, 1, 1673.49, -2277.09, 59.161, -0.855211, 0, 0, -0.414693, 0.909961, 45, 90, 100, 1),
(86468, 176587, 0, 1, 2165.87, -3193.97, 104.805, 2.14675, 0, 0, 0.878816, 0.477161, 45, 90, 100, 1),
(86470, 176587, 0, 1, 3136.98, -3255.85, 154.399, -0.942477, 0, 0, -0.45399, 0.891007, 45, 90, 100, 1),
(86471, 176587, 0, 1, 1825.87, -5056.87, 84.4563, 2.32129, 0, 0, 0.91706, 0.398748, 45, 90, 100, 1),
(86474, 176587, 0, 1, 1095.73, -2526.41, 61.4232, -0.034906, 0, 0, -0.0174521, 0.999848, 45, 90, 100, 1),
(86475, 176587, 0, 1, 3140.44, -3679.26, 133.914, 2.33874, 0, 0, 0.920505, 0.390732, 45, 90, 100, 1),
(86476, 176587, 0, 1, 2665.35, -4087.51, 85.4097, 1.91986, 0, 0, 0.819151, 0.573577, 45, 90, 100, 1),
(86477, 176587, 0, 1, 2483.69, -4265.49, 74.3489, 1.62316, 0, 0, 0.725376, 0.688353, 45, 90, 100, 1),
(86478, 176587, 0, 1, 3104.87, -3972.7, 110.676, 0.488691, 0, 0, 0.241921, 0.970296, 45, 90, 100, 1),
(87312, 176587, 0, 1, 2453.53, -3656.75, 177.802, -0.925024, 0, 0, -0.446198, 0.894934, 45, 90, 100, 1),
(87313, 176587, 0, 1, 2388.11, -4093.08, 77.0275, 2.19912, 0, 0, 0.891008, 0.453988, 45, 90, 100, 1),
(87314, 176587, 0, 1, 1738.81, -1142.23, 60.915, -1.91986, 0, 0, -0.819151, 0.573577, 45, 90, 100, 1),
(87315, 176587, 0, 1, 2803.09, -3926.93, 101.182, 0.890117, 0, 0, 0.430511, 0.902586, 45, 90, 100, 1),
(87507, 176587, 0, 1, 2777.31, -3226.03, 105.933, 2.46091, 0, 0, 0.942641, 0.333809, 45, 90, 100, 1),
(87508, 176587, 0, 1, 2937.81, -4292.18, 90.3692, -1.02974, 0, 0, -0.492422, 0.870357, 45, 90, 100, 1),
(87509, 176587, 0, 1, 2813.84, -3678, 104.815, 0.017452, 0, 0, 0.00872589, 0.999962, 45, 90, 100, 1),
(87510, 176587, 0, 1, 2537.37, -4499.34, 78.3478, -3.12412, 0, 0, -0.999962, 0.00873622, 45, 90, 100, 1),
(87511, 176587, 0, 1, 2274.09, -4297.45, 74.1448, -0.698132, 0, 0, -0.34202, 0.939693, 45, 90, 100, 1),
(87512, 176587, 0, 1, 1933.45, -3818.12, 131.68, -2.21656, 0, 0, -0.894933, 0.446202, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (86474,65285,63713,63711,63706,63712,63716,86467,63699,63723,87314,63725,65286,86471,63697,63719,63714,63720,63709,63708,63683,87512,65280,63685,86468,63691,87511,63689,63696,87312,87313,86477,87510,86476,63718,87507,86466,87315,87509,63726,65283,63717,87508,86478,63701,86470,86475,63715,63681);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(63711, 13021, 0, 'Plaguebloom zone 28, node 205'), -- Western Plaguelands
(86467, 13021, 0, 'Plaguebloom zone 28, node 221'),
(87314, 13021, 0, 'Plaguebloom zone 28, node 227'),
(63725, 13021, 0, 'Plaguebloom zone 28, node 210'),
(63713, 13021, 0, 'Plaguebloom zone 28, node 206'),
(86474, 13021, 0, 'Plaguebloom zone 28, node 223'),
(63709, 13021, 0, 'Plaguebloom zone 28, node 204'),
(63708, 13021, 0, 'Plaguebloom zone 28, node 203'),
(65285, 13021, 0, 'Plaguebloom zone 28, node 211'),
(63719, 13021, 0, 'Plaguebloom zone 28, node 207'),
(63683, 13021, 0, 'Plaguebloom zone 28, node 197'),
(63689, 13021, 0, 'Plaguebloom zone 28, node 198'),
(63691, 13021, 0, 'Plaguebloom zone 28, node 199'),
(65286, 13021, 0, 'Plaguebloom zone 28, node 212'),
(63697, 13021, 0, 'Plaguebloom zone 28, node 200'),
(63699, 13021, 0, 'Plaguebloom zone 28, node 201'),

(86475, 13007, 0, 'Plaguebloom zone 139, node 441'), -- Eastern Plaguelands
(86470, 13007, 0, 'Plaguebloom zone 139, node 438'),
(86476, 13007, 0, 'Plaguebloom zone 139, node 442'),
(86477, 13007, 0, 'Plaguebloom zone 139, node 443'),
(86471, 13007, 0, 'Plaguebloom zone 139, node 439'),
(86478, 13007, 0, 'Plaguebloom zone 139, node 444'),
(87512, 13007, 0, 'Plaguebloom zone 139, node 461'),
(87511, 13007, 0, 'Plaguebloom zone 139, node 460'),
(87510, 13007, 0, 'Plaguebloom zone 139, node 459'),
(87509, 13007, 0, 'Plaguebloom zone 139, node 458'),
(87508, 13007, 0, 'Plaguebloom zone 139, node 457'),
(87507, 13007, 0, 'Plaguebloom zone 139, node 456'),
(87315, 13007, 0, 'Plaguebloom zone 139, node 451'),
(87312, 13007, 0, 'Plaguebloom zone 139, node 449'),
(87313, 13007, 0, 'Plaguebloom zone 139, node 450'),
(86468, 13007, 0, 'Plaguebloom zone 139, node 436'),
(63717, 13007, 0, 'Plaguebloom zone 139, node 393'),
(63696, 13007, 0, 'Plaguebloom zone 139, node 384'),
(63701, 13007, 0, 'Plaguebloom zone 139, node 385'),
(63706, 13007, 0, 'Plaguebloom zone 139, node 388'),
(63681, 13007, 0, 'Plaguebloom zone 139, node 380'),
(63712, 13007, 0, 'Plaguebloom zone 139, node 389'),
(63714, 13007, 0, 'Plaguebloom zone 139, node 390'),
(63715, 13007, 0, 'Plaguebloom zone 139, node 391'),
(63716, 13007, 0, 'Plaguebloom zone 139, node 392'),
(63718, 13007, 0, 'Plaguebloom zone 139, node 394'),
(63720, 13007, 0, 'Plaguebloom zone 139, node 395'),
(63723, 13007, 0, 'Plaguebloom zone 139, node 397'),
(63726, 13007, 0, 'Plaguebloom zone 139, node 398'),
(65280, 13007, 0, 'Plaguebloom zone 139, node 404'),
(65283, 13007, 0, 'Plaguebloom zone 139, node 407'),
(86466, 13007, 0, 'Plaguebloom zone 139, node 435'),
(63685, 13007, 0, 'Plaguebloom zone 139, node 381');

-- Icecap 176588
-- https://tbc.wowhead.com/object=176588/icecap
DELETE FROM `gameobject` WHERE `guid` = 141147; -- Duplicate 141123
DELETE FROM `pool_gameobject` WHERE `guid` = 141147;
DELETE FROM `gameobject` WHERE `guid` = 141134; -- Duplicate 141124
DELETE FROM `pool_gameobject` WHERE `guid` = 141134;
DELETE FROM `gameobject` WHERE `guid` = 141143; -- Duplicate 141126
DELETE FROM `pool_gameobject` WHERE `guid` = 141143;
UPDATE `gameobject` SET `position_x` = 6754.1, `position_y` = -3469.91, `position_z` = 680.081, `orientation` = -3.03684, `rotation2` = -0.998629, `rotation3` = 0.0523524 WHERE `guid` = 141127 AND `id` = 176588;
DELETE FROM `gameobject` WHERE `guid` = 141129; -- Duplicate 87516
DELETE FROM `pool_gameobject` WHERE `guid` = 141129;
DELETE FROM `gameobject` WHERE `guid` = 141101; -- Duplicate 141130
DELETE FROM `pool_gameobject` WHERE `guid` = 141101;
UPDATE `gameobject` SET `position_x` = 6878.13, `position_y` = -4446.98, `position_z` = 741.202, `orientation` = 3.08918, `rotation2` = 0.999657, `rotation3` = 0.0262033 WHERE `guid` = 141244 AND `id` = 176588;
UPDATE `gameobject` SET `position_x` = 7358.68, `position_y` = -4435.67, `position_z` = 646.256, `orientation` = -0.558504, `rotation2` = -0.275637, `rotation3` = 0.961262 WHERE `guid` = 141132 AND `id` = 176588;

DELETE FROM `gameobject` WHERE `guid` IN (86479,86502,86480,86496,86497,86484,86493,87514,86481,86492,86488,86495,87513,87060,86501,87516,86494,86491,86500,86487,86498,86483,86485,86490,86499,86482,86489) AND `id` = 176588;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(86479, 176588, 1, 1, 5121.67, -4969.84, 877.953, 0.95993, 0, 0, 0.461748, 0.887011, 45, 90, 100, 1),
(86480, 176588, 1, 1, 5299.71, -4791.05, 692.076, 0.977383, 0, 0, 0.469471, 0.882948, 45, 90, 100, 1),
(86481, 176588, 1, 1, 5935.55, -4583.15, 717.809, 3.05433, 0, 0, 0.999048, 0.0436174, 45, 90, 100, 1),
(86482, 176588, 1, 1, 7507.19, -3946.16, 721.172, -1.32645, 0, 0, -0.615661, 0.788011, 45, 90, 100, 1),
(86483, 176588, 1, 1, 7169.13, -4930.43, 713.605, -1.65806, 0, 0, -0.737276, 0.675591, 45, 90, 100, 1),
(86484, 176588, 1, 1, 5418.08, -4628.64, 803.636, -0.471238, 0, 0, -0.233445, 0.97237, 45, 90, 100, 1),
(86485, 176588, 1, 1, 7202.93, -4495.66, 612.221, -3.07177, 0, 0, -0.999391, 0.0349043, 45, 90, 100, 1),
(86487, 176588, 1, 1, 7113.89, -4231.54, 691.835, -0.506145, 0, 0, -0.25038, 0.968148, 45, 90, 100, 1),
(86488, 176588, 1, 1, 6454.25, -2619.77, 565.284, 0.558504, 0, 0, 0.275637, 0.961262, 45, 90, 100, 1),
(86489, 176588, 1, 1, 7917.05, -4217.55, 690.981, 0.244346, 0, 0, 0.121869, 0.992546, 45, 90, 100, 1),
(86490, 176588, 1, 1, 7277.05, -4973.89, 727.433, 2.91469, 0, 0, 0.993571, 0.113208, 45, 90, 100, 1),
(86491, 176588, 1, 1, 6828.07, -3437.83, 706.807, -1.67551, 0, 0, -0.743143, 0.669133, 45, 90, 100, 1),
(86492, 176588, 1, 1, 6452.4, -3043.28, 573.872, -1.62316, 0, 0, -0.725376, 0.688353, 45, 90, 100, 1),
(86493, 176588, 1, 1, 5446.56, -4891.5, 868.237, 0.244346, 0, 0, 0.121869, 0.992546, 45, 90, 100, 1),
(86494, 176588, 1, 1, 6786.35, -3076.26, 577.885, -2.11185, 0, 0, -0.870356, 0.492423, 45, 90, 100, 1),
(86495, 176588, 1, 1, 6578.92, -4341.99, 691.947, 0.017452, 0, 0, 0.00872589, 0.999962, 45, 90, 100, 1),
(86496, 176588, 1, 1, 5336.3, -4551.51, 694.994, -2.26892, 0, 0, -0.906306, 0.422622, 45, 90, 100, 1),
(86497, 176588, 1, 1, 6781.84, -3670.45, 732.095, 2.46091, 0, 0, 0.942641, 0.333809, 45, 90, 100, 1),
(86498, 176588, 1, 1, 7158.97, -4899.96, 704.893, -0.837757, 0, 0, -0.406736, 0.913546, 45, 90, 100, 1),
(86499, 176588, 1, 1, 7418.42, -4684.81, 630.092, 0.977383, 0, 0, 0.469471, 0.882948, 45, 90, 100, 1),
(86500, 176588, 1, 1, 6874.46, -3068.54, 620.449, -2.67035, 0, 0, -0.972369, 0.233447, 45, 90, 100, 1),
(86501, 176588, 1, 1, 6781.86, -3677.09, 731.957, -0.349065, 0, 0, -0.173648, 0.984808, 45, 90, 100, 1),
(86502, 176588, 1, 1, 5202.73, -4798.3, 692.044, 1.98967, 0, 0, 0.838669, 0.544641, 45, 90, 100, 1),
(87060, 176588, 1, 1, 6705.65, -3951.55, 699.948, 2.02458, 0, 0, 0.848048, 0.52992, 45, 90, 100, 1),
(87513, 176588, 1, 1, 6665.75, -4946.65, 720.42, 0.750491, 0, 0, 0.366501, 0.930418, 45, 90, 100, 1),
(87514, 176588, 1, 1, 5768.84, -4603.85, 764.253, -1.39626, 0, 0, -0.642786, 0.766046, 45, 90, 100, 1),
(87516, 176588, 1, 1, 6784.3, -2776.45, 576.472, -1.76278, 0, 0, -0.771624, 0.636079, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (86479,86502,86480,86496,86497,86484,86493,87514,86481,86492,86488,86495,87513,87060,86501,87516,86494,86491,86500,86487,86498,86483,86485,86490,86499,86482,86489);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(86479, 13042, 0, 'Icecap zone 618, node 266'), -- Winterspring
(86494, 13042, 0, 'Icecap zone 618, node 281'),
(86495, 13042, 0, 'Icecap zone 618, node 282'),
(86496, 13042, 0, 'Icecap zone 618, node 283'),
(86497, 13042, 0, 'Icecap zone 618, node 284'),
(86498, 13042, 0, 'Icecap zone 618, node 285'),
(86499, 13042, 0, 'Icecap zone 618, node 286'),
(86500, 13042, 0, 'Icecap zone 618, node 287'),
(86501, 13042, 0, 'Icecap zone 618, node 288'),
(86502, 13042, 0, 'Icecap zone 618, node 289'),
(87060, 13042, 0, 'Icecap zone 618, node 291'),
(87513, 13042, 0, 'Icecap zone 618, node 296'),
(87514, 13042, 0, 'Icecap zone 618, node 297'),
(86493, 13042, 0, 'Icecap zone 618, node 280'),
(86492, 13042, 0, 'Icecap zone 618, node 279'),
(86480, 13042, 0, 'Icecap zone 618, node 267'),
(86481, 13042, 0, 'Icecap zone 618, node 268'),
(86482, 13042, 0, 'Icecap zone 618, node 269'),
(86483, 13042, 0, 'Icecap zone 618, node 270'),
(86484, 13042, 0, 'Icecap zone 618, node 271'),
(86485, 13042, 0, 'Icecap zone 618, node 272'),
(86487, 13042, 0, 'Icecap zone 618, node 274'),
(86488, 13042, 0, 'Icecap zone 618, node 275'),
(86489, 13042, 0, 'Icecap zone 618, node 276'),
(86490, 13042, 0, 'Icecap zone 618, node 277'),
(86491, 13042, 0, 'Icecap zone 618, node 278'),
(87516, 13042, 0, 'Icecap zone 618, node 299');

-- Black Lotus 176589
-- https://tbc.wowhead.com/object=176589/black-lotus
-- https://github.com/cmangos/tbc-db/commit/e5c70589863d6cec78880c091c4c13f782a14876#commitcomment-39549841 - add missing xyz coordinate spawns (todo find sniff positions)
DELETE FROM `gameobject` WHERE `guid` IN (138603,138605,138607,138608,138612,138614,138615,138616,138617,138618,138619,138649) AND `id` = 176589;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(138603, 176589, 1, -7046.27, 1135.97, 5.381, 3.43208, 0, 0, 0.98947, -0.144736, 3600, 3600, 100, 1), -- 3998081
(138605, 176589, 1, -7202.8, 342.116, 39.658, 6.04744, 0, 0, 0.1176, -0.993061, 3600, 3600, 100, 1), -- 3998084
(138607, 176589, 1, -7126.82, 742.405, 10.661, 2.58383, 0, 0, 0.961365, 0.275278, 3600, 3600, 100, 1), -- 3998085
(138608, 176589, 1, -7893.4, 374.002, -38.107, 5.06174, 0, 0, 0.57346, -0.819233, 3600, 3600, 100, 1), -- 3998087
(138612, 176589, 1, -7367.63, 1204.64, -1.235, 5.4898, 0, 0, 0.38637, -0.922344, 3600, 3600, 100, 1), -- 3998091
(138614, 176589, 1, -7319.46, 1641.69, -31.032, 4.04467, 0, 0, 0.899778, -0.436349, 3600, 3600, 100, 1), -- 3998092
(138615, 176589, 0, 2598.65, -5515.23, 158.735, 5.96369, 0, 0, 0.159068, -0.987268, 3600, 3600, 100, 1), -- 3998143
(138616, 176589, 0, 3032.34, -3219.78, 146.509, 1.27479, 0, 0, 0.595104, 0.803649, 3600, 3600, 100, 1), -- 3998149
(138617, 176589, 1, 6189.89, -4408.3, 670.791, 2.04328, 0, 0, 0.852966, 0.521967, 3600, 3600, 100, 1), -- 3998203
(138618, 176589, 1, 5038.89, -4860.6, 874.446, 1.4307, 0, 0, 0.655882, 0.754863, 3600, 3600, 100, 1), -- 3998206
(138619, 176589, 1, 6852.8, -2499.04, 562.208, 0.684644, 0, 0, 0.335675, 0.941978, 3600, 3600, 100, 1), -- 3998224
(138649, 176589, 0, -8233.9, -1955.15, 143.781, 3.105, 0, 0, 0.999833, 0.0182929, 3600, 3600, 100, 1); -- 3998245

DELETE FROM `pool_gameobject` WHERE `guid` IN (138603,138605,138607,138608,138612,138614,138615,138616,138617,138618,138619,138649);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(138603, 945, 0, 'Silithus - Black Lotus'),
(138605, 945, 0, 'Silithus - Black Lotus'),
(138607, 945, 0, 'Silithus - Black Lotus'),
(138608, 945, 0, 'Silithus - Black Lotus'),
(138612, 945, 0, 'Silithus - Black Lotus'),
(138614, 945, 0, 'Silithus - Black Lotus'),

(138615, 946, 0, 'Eastern Plaguelands - Black Lotus'),
(138616, 946, 0, 'Eastern Plaguelands - Black Lotus'),

(138617, 944, 0, 'Winterspring - Black Lotus'),
(138618, 944, 0, 'Winterspring - Black Lotus'),
(138619, 944, 0, 'Winterspring - Black Lotus'),

(138649, 942, 0, 'Burning Steppes - Black Lotus');

-- Felwood

DELETE FROM `gameobject` WHERE `guid` IN (86866,86868,86865,86867,86962,86967,86990,86989,87378,87377,86996,87376,86999,86997,86993,86998,86992,87579,86994,86995,86991,
85904,87394,85902,87395,87123,85903,85911,87396,85909,85913,85907,85914,85908,87397,85912,85910,85906,85905,87124,85915) AND `id` IN (176636,176637,176638,176639,176640,176641,176642);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(85902, 176640, 1, 1, 6180.62, -1422.32, 406.45, -1.32645, 0, 0, -0.615661, 0.788011, 45, 90, 100, 1),
(85903, 176640, 1, 1, 6723.06, -1801.05, 595.175, 0.279252, 0, 0, 0.139173, 0.990268, 45, 90, 100, 1),
(85904, 176640, 1, 1, 5426.05, -809.724, 386.836, 2.9845, 0, 0, 0.996917, 0.0784656, 45, 90, 100, 1),
(85905, 176641, 1, 1, 6852.51, -1816.94, 563.876, 0.401425, 0, 0, 0.199368, 0.979925, 45, 90, 100, 1),
(85906, 176641, 1, 1, 6585.48, -1452.25, 453.583, 2.9845, 0, 0, 0.996917, 0.0784656, 45, 90, 100, 1),
(85907, 176641, 1, 1, 5222.93, -781.834, 345.815, 0.837757, 0, 0, 0.406736, 0.913546, 45, 90, 100, 1),
(85908, 176641, 1, 1, 5691.41, -717.777, 376.673, 0.680677, 0, 0, 0.333806, 0.942642, 45, 90, 100, 1),
(85909, 176641, 1, 1, 4513.95, -767.927, 262.422, -0.523598, 0, 0, -0.258819, 0.965926, 45, 90, 100, 1),
(85910, 176641, 1, 1, 6263.24, -1076.29, 373.896, -2.23402, 0, 0, -0.898794, 0.438372, 45, 90, 100, 1),
(85911, 176641, 1, 1, 3751.09, -1572.76, 215.054, 2.42601, 0, 0, 0.936673, 0.350206, 45, 90, 100, 1),
(85912, 176641, 1, 1, 6146.19, -1916.72, 575.18, 0.523598, 0, 0, 0.258819, 0.965926, 45, 90, 100, 1),
(85913, 176641, 1, 1, 4886.47, -781, 296.668, 1.48353, 0, 0, 0.67559, 0.737277, 45, 90, 100, 1),
(85914, 176641, 1, 1, 5490.02, -846.46, 360.329, -0.226892, 0, 0, -0.113203, 0.993572, 45, 90, 100, 1),
(85915, 176642, 1, 1, 6526.05, -1016.26, 433.901, -0.698132, 0, 0, -0.34202, 0.939693, 45, 90, 100, 1),
(86865, 176636, 1, 1, 5969.22, -616.162, 399.796, -3.10665, 0, 0, -0.999847, 0.0174704, 45, 90, 100, 1),
(86866, 176636, 1, 1, 5627.3, -520.709, 372.392, -0.610864, 0, 0, -0.300705, 0.953717, 45, 90, 100, 1),
(86867, 176636, 1, 1, 6154.25, -1490.27, 439.412, -2.56563, 0, 0, -0.958819, 0.284017, 45, 90, 100, 1),
(86868, 176636, 1, 1, 5851.77, -1181.76, 403.348, 2.60053, 0, 0, 0.963629, 0.267244, 45, 90, 100, 1),
(86962, 176638, 1, 1, 3810.86, -1607.13, 220.173, 2.46091, 0, 0, 0.942641, 0.333809, 45, 90, 100, 1),
(86967, 176638, 1, 1, 4090.04, -1119.42, 277.589, 2.60053, 0, 0, 0.963629, 0.267244, 45, 90, 100, 1),
(86989, 176638, 1, 1, 6216.36, -1397.76, 375.794, -2.09439, 0, 0, -0.866024, 0.500002, 45, 90, 100, 1),
(86990, 176638, 1, 1, 4350.72, -951.657, 307.27, -2.37364, 0, 0, -0.927182, 0.37461, 45, 90, 100, 1),
(86991, 176639, 1, 1, 6644.92, -1244.1, 455.831, 2.46091, 0, 0, 0.942641, 0.333809, 45, 90, 100, 1),
(86992, 176639, 1, 1, 6210.37, -1035.32, 386.014, 1.72787, 0, 0, 0.760404, 0.64945, 45, 90, 100, 1),
(86993, 176639, 1, 1, 5612.15, -1024.02, 376.038, 0.436332, 0, 0, 0.216439, 0.976296, 45, 90, 100, 1),
(86994, 176639, 1, 1, 6440.84, -1691.32, 502.469, 0.837757, 0, 0, 0.406736, 0.913546, 45, 90, 100, 1),
(86995, 176639, 1, 1, 6521.35, -1473.55, 439.164, -0.610864, 0, 0, -0.300705, 0.953717, 45, 90, 100, 1),
(86996, 176639, 1, 1, 4468.12, -926.952, 314.772, -2.60053, 0, 0, -0.963629, 0.267244, 45, 90, 100, 1),
(86997, 176639, 1, 1, 5188.97, -596.913, 326.422, -1.29154, 0, 0, -0.601814, 0.798637, 45, 90, 100, 1),
(86998, 176639, 1, 1, 5820.31, -727.122, 381.453, 0.279252, 0, 0, 0.139173, 0.990268, 45, 90, 100, 1),
(86999, 176639, 1, 1, 4953.82, -647.138, 295.787, -2.74016, 0, 0, -0.979924, 0.199371, 45, 90, 100, 1),
(87123, 176640, 1, 1, 6347.34, -755.314, 486.933, -2.93214, 0, 0, -0.994521, 0.104535, 45, 90, 100, 1),
(87124, 176642, 1, 1, 3783.99, -1016.47, 233.301, 0.506145, 0, 0, 0.25038, 0.968148, 45, 90, 100, 1),
(87376, 176639, 1, 1, 4521.6, -661.612, 259.686, -1.8675, 0, 0, -0.803856, 0.594824, 45, 90, 100, 1),
(87377, 176639, 1, 1, 4140.46, -700.01, 282.675, 2.28638, 0, 0, 0.909961, 0.414694, 45, 90, 100, 1),
(87378, 176639, 1, 1, 3881.28, -988.969, 246.243, 1.39626, 0, 0, 0.642786, 0.766046, 45, 90, 100, 1),
(87394, 176640, 1, 1, 6178.8, -1065.77, 385.206, -1.41372, 0, 0, -0.649449, 0.760405, 45, 90, 100, 1),
(87395, 176640, 1, 1, 6291.3, -2068.77, 595.53, 2.65289, 0, 0, 0.970294, 0.241927, 45, 90, 100, 1),
(87396, 176641, 1, 1, 4452.15, -933.014, 310.124, -0.349065, 0, 0, -0.173648, 0.984808, 45, 90, 100, 1),
(87397, 176641, 1, 1, 5883.98, -1280.45, 408.559, 1.32645, 0, 0, 0.615661, 0.788011, 45, 90, 100, 1),
(87579, 176639, 1, 1, 6258.18, -1411.12, 370.846, -0.942477, 0, 0, -0.45399, 0.891007, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (48921,48956,48960,86865,86866,86867,86868,48925,48927,48938,48941,48944,48954,48968,86906,86908,86921,86922,86944,86945,87363,87569,87571,48918,48948,48953,48962,86962,86967,86989,86990,
48913,48920,48923,48939,48947,48964,48967,86991,86992,86993,86994,86995,86996,86997,86998,86999,87376,87377,87378,87579,48908,48910,48922,48940,48945,85902,85903,85904,87123,87394,87395,48907,48911,48912,48916,48937,48963,48965,48970,
85905,85906,85907,85908,85909,85910,85911,85912,85913,85914,87396,87397,48919,48926,48946,48961,85915,87124);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(48921, 13032, 0, 'Felwood - Sungrass 176636'),
(48956, 13032, 0, 'Felwood - Sungrass 176636'),
(48960, 13032, 0, 'Felwood - Sungrass 176636'),
(86865, 13032, 0, 'Felwood - Sungrass 176636'),
(86866, 13032, 0, 'Felwood - Sungrass 176636'),
(86867, 13032, 0, 'Felwood - Sungrass 176636'),
(86868, 13032, 0, 'Felwood - Sungrass 176636'),

(48925, 13032, 0, 'Felwood - Gromsblood 176637'),
(48927, 13032, 0, 'Felwood - Gromsblood 176637'),
(48938, 13032, 0, 'Felwood - Gromsblood 176637'),
(48941, 13032, 0, 'Felwood - Gromsblood 176637'),
(48944, 13032, 0, 'Felwood - Gromsblood 176637'),
(48954, 13032, 0, 'Felwood - Gromsblood 176637'),
(48968, 13032, 0, 'Felwood - Gromsblood 176637'),
(86906, 13032, 0, 'Felwood - Gromsblood 176637'),
(86908, 13032, 0, 'Felwood - Gromsblood 176637'),
(86921, 13032, 0, 'Felwood - Gromsblood 176637'),
(86922, 13032, 0, 'Felwood - Gromsblood 176637'),
(86944, 13032, 0, 'Felwood - Gromsblood 176637'),
(86945, 13032, 0, 'Felwood - Gromsblood 176637'),
(87363, 13032, 0, 'Felwood - Gromsblood 176637'),
(87569, 13032, 0, 'Felwood - Gromsblood 176637'),
(87571, 13032, 0, 'Felwood - Gromsblood 176637'),

(48918, 13032, 0, 'Felwood - Golden Sansam 176638'),
(48948, 13032, 0, 'Felwood - Golden Sansam 176638'),
(48953, 13032, 0, 'Felwood - Golden Sansam 176638'),
(48962, 13032, 0, 'Felwood - Golden Sansam 176638'),
(86962, 13032, 0, 'Felwood - Golden Sansam 176638'),
(86967, 13032, 0, 'Felwood - Golden Sansam 176638'),
(86989, 13032, 0, 'Felwood - Golden Sansam 176638'),
(86990, 13032, 0, 'Felwood - Golden Sansam 176638'),

(48913, 13032, 0, 'Felwood - Dreamfoil 176639'),
(48920, 13032, 0, 'Felwood - Dreamfoil 176639'),
(48923, 13032, 0, 'Felwood - Dreamfoil 176639'),
(48939, 13032, 0, 'Felwood - Dreamfoil 176639'),
(48947, 13032, 0, 'Felwood - Dreamfoil 176639'),
(48964, 13032, 0, 'Felwood - Dreamfoil 176639'),
(48967, 13032, 0, 'Felwood - Dreamfoil 176639'),
(86991, 13032, 0, 'Felwood - Dreamfoil 176639'),
(86992, 13032, 0, 'Felwood - Dreamfoil 176639'),
(86993, 13032, 0, 'Felwood - Dreamfoil 176639'),
(86994, 13032, 0, 'Felwood - Dreamfoil 176639'),
(86995, 13032, 0, 'Felwood - Dreamfoil 176639'),
(86996, 13032, 0, 'Felwood - Dreamfoil 176639'),
(86997, 13032, 0, 'Felwood - Dreamfoil 176639'),
(86998, 13032, 0, 'Felwood - Dreamfoil 176639'),
(86999, 13032, 0, 'Felwood - Dreamfoil 176639'),
(87376, 13032, 0, 'Felwood - Dreamfoil 176639'),
(87377, 13032, 0, 'Felwood - Dreamfoil 176639'),
(87378, 13032, 0, 'Felwood - Dreamfoil 176639'),
(87579, 13032, 0, 'Felwood - Dreamfoil 176639'),

(48908, 13032, 0, 'Felwood - Mountain Silversage 176640'),
(48910, 13032, 0, 'Felwood - Mountain Silversage 176640'),
(48922, 13032, 0, 'Felwood - Mountain Silversage 176640'),
(48940, 13032, 0, 'Felwood - Mountain Silversage 176640'),
(48945, 13032, 0, 'Felwood - Mountain Silversage 176640'),
(85902, 13032, 0, 'Felwood - Mountain Silversage 176640'),
(85903, 13032, 0, 'Felwood - Mountain Silversage 176640'),
(85904, 13032, 0, 'Felwood - Mountain Silversage 176640'),
(87123, 13032, 0, 'Felwood - Mountain Silversage 176640'),
(87394, 13032, 0, 'Felwood - Mountain Silversage 176640'),
(87395, 13032, 0, 'Felwood - Mountain Silversage 176640'),

(48907, 13032, 0, 'Felwood - Plaguebloom 176641'),
(48911, 13032, 0, 'Felwood - Plaguebloom 176641'),
(48912, 13032, 0, 'Felwood - Plaguebloom 176641'),
(48916, 13032, 0, 'Felwood - Plaguebloom 176641'),
(48937, 13032, 0, 'Felwood - Plaguebloom 176641'),
(48963, 13032, 0, 'Felwood - Plaguebloom 176641'),
(48965, 13032, 0, 'Felwood - Plaguebloom 176641'),
(48970, 13032, 0, 'Felwood - Plaguebloom 176641'),
(85905, 13032, 0, 'Felwood - Plaguebloom 176641'),
(85906, 13032, 0, 'Felwood - Plaguebloom 176641'),
(85907, 13032, 0, 'Felwood - Plaguebloom 176641'),
(85908, 13032, 0, 'Felwood - Plaguebloom 176641'),
(85909, 13032, 0, 'Felwood - Plaguebloom 176641'),
(85910, 13032, 0, 'Felwood - Plaguebloom 176641'),
(85911, 13032, 0, 'Felwood - Plaguebloom 176641'),
(85912, 13032, 0, 'Felwood - Plaguebloom 176641'),
(85913, 13032, 0, 'Felwood - Plaguebloom 176641'),
(85914, 13032, 0, 'Felwood - Plaguebloom 176641'),
(87396, 13032, 0, 'Felwood - Plaguebloom 176641'),
(87397, 13032, 0, 'Felwood - Plaguebloom 176641'),

(48919, 13032, 0, 'Felwood - Arthas'' Tears 176642'),
(48926, 13032, 0, 'Felwood - Arthas'' Tears 176642'),
(48946, 13032, 0, 'Felwood - Arthas'' Tears 176642'),
(48961, 13032, 0, 'Felwood - Arthas'' Tears 176642'),
(85915, 13032, 0, 'Felwood - Arthas'' Tears 176642'),
(87124, 13032, 0, 'Felwood - Arthas'' Tears 176642');

DELETE FROM `gameobject` WHERE `guid` = 140196; -- Duplicate 32017
DELETE FROM `pool_gameobject` WHERE `guid` = 140196;
DELETE FROM `gameobject` WHERE `guid` = 139863; -- Duplicate 13675
DELETE FROM `pool_gameobject` WHERE `guid` = 139863;
DELETE FROM `gameobject` WHERE `guid` = 139711; -- Duplicate 13550
DELETE FROM `pool_gameobject` WHERE `guid` = 139711;
DELETE FROM `gameobject` WHERE `guid` = 140363; -- Duplicate 14487
DELETE FROM `pool_gameobject` WHERE `guid` = 140363;
DELETE FROM `gameobject` WHERE `guid` = 140005; -- Duplicate 13702
DELETE FROM `pool_gameobject` WHERE `guid` = 140005;
DELETE FROM `gameobject` WHERE `guid` = 139864; -- Duplicate 13599
DELETE FROM `pool_gameobject` WHERE `guid` = 139864;
DELETE FROM `gameobject` WHERE `guid` = 139715; -- Duplicate 13555
DELETE FROM `pool_gameobject` WHERE `guid` = 139715;
DELETE FROM `gameobject` WHERE `guid` = 140277; -- Duplicate 14486
DELETE FROM `pool_gameobject` WHERE `guid` = 140277;
DELETE FROM `gameobject` WHERE `guid` = 139680; -- Duplicate 13567
DELETE FROM `pool_gameobject` WHERE `guid` = 139680;
DELETE FROM `gameobject` WHERE `guid` = 140050; -- Duplicate 13684
DELETE FROM `pool_gameobject` WHERE `guid` = 140050;
DELETE FROM `gameobject` WHERE `guid` = 139851; -- Duplicate 13600
DELETE FROM `pool_gameobject` WHERE `guid` = 139851;
DELETE FROM `gameobject` WHERE `guid` = 139752; -- Duplicate 13548
DELETE FROM `pool_gameobject` WHERE `guid` = 139752;
DELETE FROM `gameobject` WHERE `guid` = 140169; -- Duplicate 14450
DELETE FROM `pool_gameobject` WHERE `guid` = 140169;
DELETE FROM `gameobject` WHERE `guid` = 139853; -- Duplicate 13619
DELETE FROM `pool_gameobject` WHERE `guid` = 139853;
DELETE FROM `gameobject` WHERE `guid` = 140185; -- Duplicate 14463
DELETE FROM `pool_gameobject` WHERE `guid` = 140185;
DELETE FROM `gameobject` WHERE `guid` = 140206; -- Duplicate 14456
DELETE FROM `pool_gameobject` WHERE `guid` = 140206;
DELETE FROM `gameobject` WHERE `guid` = 140117; -- Duplicate 13688
DELETE FROM `pool_gameobject` WHERE `guid` = 140117;
DELETE FROM `gameobject` WHERE `guid` = 140069; -- Duplicate 13687
DELETE FROM `pool_gameobject` WHERE `guid` = 140069;
DELETE FROM `gameobject` WHERE `guid` = 139664; -- Duplicate 13585
DELETE FROM `pool_gameobject` WHERE `guid` = 139664;
DELETE FROM `gameobject` WHERE `guid` = 140190; -- Duplicate 14462
DELETE FROM `pool_gameobject` WHERE `guid` = 140190;
DELETE FROM `gameobject` WHERE `guid` = 139742; -- Duplicate 13552
DELETE FROM `pool_gameobject` WHERE `guid` = 139742;
DELETE FROM `gameobject` WHERE `guid` = 140203; -- Duplicate 14452
DELETE FROM `pool_gameobject` WHERE `guid` = 140203;
DELETE FROM `gameobject` WHERE `guid` = 139677; -- Duplicate 31976
DELETE FROM `pool_gameobject` WHERE `guid` = 139677;
DELETE FROM `gameobject` WHERE `guid` = 139574; -- Duplicate 13578
DELETE FROM `pool_gameobject` WHERE `guid` = 139574;
DELETE FROM `gameobject` WHERE `guid` = 140030; -- Duplicate 31975
DELETE FROM `pool_gameobject` WHERE `guid` = 140030;
DELETE FROM `gameobject` WHERE `guid` = 140158; -- Duplicate 14464
DELETE FROM `pool_gameobject` WHERE `guid` = 140158;
DELETE FROM `gameobject` WHERE `guid` = 140018; -- Duplicate 14008
DELETE FROM `pool_gameobject` WHERE `guid` = 140018;
DELETE FROM `gameobject` WHERE `guid` = 139661; -- Duplicate 31974
DELETE FROM `pool_gameobject` WHERE `guid` = 139661;
DELETE FROM `gameobject` WHERE `guid` = 140219; -- Duplicate 14446
DELETE FROM `pool_gameobject` WHERE `guid` = 140219;
DELETE FROM `gameobject` WHERE `guid` = 139731; -- Duplicate 13558
DELETE FROM `pool_gameobject` WHERE `guid` = 139731;
DELETE FROM `gameobject` WHERE `guid` = 140184; -- Duplicate 14459
DELETE FROM `pool_gameobject` WHERE `guid` = 140184;
DELETE FROM `gameobject` WHERE `guid` = 139943; -- Duplicate 13696
DELETE FROM `pool_gameobject` WHERE `guid` = 139943;
DELETE FROM `gameobject` WHERE `guid` = 139590; -- Duplicate 13581
DELETE FROM `pool_gameobject` WHERE `guid` = 139590;
DELETE FROM `gameobject` WHERE `guid` = 139687; -- Duplicate 13546
DELETE FROM `pool_gameobject` WHERE `guid` = 139687;
DELETE FROM `gameobject` WHERE `guid` = 140187; -- Duplicate 14302
DELETE FROM `pool_gameobject` WHERE `guid` = 140187;
UPDATE `pool_gameobject` SET `pool_entry` = 13039, `description` = 'The Barrens - Mageroyal' WHERE `guid` = 140551;

-- Convert duplicate spawns into correct zone spawns
UPDATE `gameobject` SET `id` = 3724 WHERE `guid` IN (139732,139746,139701,139684,139750,139690,139747,139712) AND `id` = 1618; -- Peacebloom
UPDATE `gameobject` SET `id` = 3725 WHERE `guid` IN (139603,139628,139592,139601,139596,139626,139646,139621,139605,139594,139639,139624,139638,139654) AND `id` = 1617;
UPDATE `gameobject` SET `id` = 3726 WHERE `guid` IN (139849,139887,139865,139802) AND `id` = 1619;
UPDATE `gameobject` SET `id` = 3727 WHERE `guid` IN (140066,140139,139917,139922) AND `id` = 1620; -- Mageroyal
UPDATE `gameobject` SET `id` = 3729 WHERE `guid` IN (140145,140182,140220,140205,140183,140168) AND `id` = 1621; -- Briarthorn
UPDATE `gameobject` SET `position_x` = -2239.95, `position_y` = -1597.31, `position_z` = 92.7891, `orientation` = 0.680677, `rotation2` = 0.333806, `rotation3` = 0.942642 WHERE `guid` = 140182 AND `id` = 3729;
UPDATE `gameobject` SET `position_x` = -1767.89, `position_y` = -2967.73, `position_z` = 91.6667, `orientation` = -0.663223, `rotation2` = -0.325567, `rotation3` = 0.945519 WHERE `guid` = 140220 AND `id` = 3729;
UPDATE `gameobject` SET `position_x` = -1110.87, `position_y` = -2153.9, `position_z` = 80.6538, `orientation` = -2.94961, `rotation2` = -0.995396, `rotation3` = 0.095844 WHERE `guid` = 139592 AND `id` = 3725;
UPDATE `gameobject` SET `position_x` = -415.769, `position_y` = -2054.01, `position_z` = 91.667, `orientation` = -1.23918, `rotation2` = -0.580701, `rotation3` = 0.814117 WHERE `guid` = 139684 AND `id` = 3724;
 -- follow trinitydb and convert all remaining spawns in barrens to barrens version
UPDATE `gameobject` SET `id` = 3724 WHERE `guid` IN (SELECT `guid` FROM `pool_gameobject` WHERE `description` = 'The Barrens - Peacebloom');
UPDATE `gameobject` SET `id` = 3725 WHERE `guid` IN (SELECT `guid` FROM `pool_gameobject` WHERE `description` = 'The Barrens - Silverleaf');
UPDATE `gameobject` SET `id` = 3726 WHERE `guid` IN (SELECT `guid` FROM `pool_gameobject` WHERE `description` = 'The Barrens - Earthroot');
UPDATE `gameobject` SET `id` = 3727 WHERE `guid` IN (SELECT `guid` FROM `pool_gameobject` WHERE `description` = 'The Barrens - Mageroyal');
UPDATE `gameobject` SET `id` = 3729 WHERE `guid` IN (SELECT `guid` FROM `pool_gameobject` WHERE `description` = 'The Barrens - Briarthorn');
UPDATE `gameobject` SET `id` = 3730 WHERE `guid` IN (SELECT `guid` FROM `pool_gameobject` WHERE `description` = 'The Barrens - Bruiseweed');

DELETE FROM `gameobject` WHERE `guid` IN (87293,87294,86357,87285,86379,87291,86360,87661,87295,87283,86371,86364,86370,86373,86378,87659,86367,87284,86363,87660,87286,86352,65121,86366,5515,5518,87288,86355,86375,87289,86381,87290,87484,87658,86365,86362,86353,86368,86380,63430,86351,86358,86372,86374,86361,63426,63429,86377,63425,87287,86376,86356,87296,86359,86354,5516,63428,86369,87292) AND `id` BETWEEN 3724 and 3730;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5515, 3724, 1, 1, -1954.85, -2451.13, 91.6677, -0.977383, 0, 0, -0.469471, 0.882948, 45, 90, 100, 1),
(5516, 3725, 1, 1, 536.47, -2433.42, 91.8578, 1.36136, 0, 0, 0.62932, 0.777146, 45, 90, 100, 1),
(5518, 3727, 1, 1, -1856.58, -2593.17, 91.6667, -1.74533, 0, 0, -0.766044, 0.642789, 45, 90, 100, 1),
(63425, 3726, 1, 1, -226.043, -1245.33, 93.0938, 0.122173, 0, 0, 0.0610485, 0.998135, 45, 90, 100, 1),
(63426, 3726, 1, 1, -327.506, -1385.88, 112.398, 0.942477, 0, 0, 0.45399, 0.891007, 45, 90, 100, 1),
(63428, 3726, 1, 1, 538.108, -3613.34, 59.7735, 2.37364, 0, 0, 0.927182, 0.37461, 45, 90, 100, 1),
(63429, 3729, 1, 1, -292.007, -1462.99, 91.6702, -2.23402, 0, 0, -0.898794, 0.438372, 45, 90, 100, 1),
(63430, 3729, 1, 1, -560.95, -1482.42, 92.3816, -3.01941, 0, 0, -0.998134, 0.0610534, 45, 90, 100, 1),
(65121, 3727, 1, 1, -2282.97, -2287.78, 91.8577, 2.67035, 0, 0, 0.972369, 0.233447, 45, 90, 100, 1),
(86351, 3724, 1, 1, -524.746, -3453.84, 94.4237, -1.15192, 0, 0, -0.54464, 0.83867, 45, 90, 100, 1),
(86352, 3724, 1, 1, -2319, -2417.43, 95.6567, -2.58308, 0, 0, -0.961261, 0.27564, 45, 90, 100, 1),
(86353, 3724, 1, 1, -848.241, -2378.59, 91.7192, -0.279252, 0, 0, -0.139173, 0.990268, 45, 90, 100, 1),
(86354, 3724, 1, 1, 384.82, -2749.18, 92.7778, -3.12412, 0, 0, -0.999962, 0.00873622, 45, 90, 100, 1),
(86355, 3724, 1, 1, -1652.84, -3576.2, 94.1403, -0.890117, 0, 0, -0.430511, 0.902586, 45, 90, 100, 1),
(86356, 3725, 1, 1, 224.484, -3345.04, 46.9378, -1.01229, 0, 0, -0.484809, 0.87462, 45, 90, 100, 1),
(86357, 3726, 1, 1, -4152.02, -2279.53, 95.8744, -1.25664, 0, 0, -0.587786, 0.809016, 45, 90, 100, 1),
(86358, 3726, 1, 1, -450.492, -3692.4, 48.0801, -1.25664, 0, 0, -0.587785, 0.809017, 45, 90, 100, 1),
(86359, 3726, 1, 1, 384.268, -3543.53, 46.8668, 0.855211, 0, 0, 0.414693, 0.909961, 45, 90, 100, 1),
(86360, 3726, 1, 1, -3992.42, -2315.7, 96.0613, 2.26892, 0, 0, 0.906306, 0.422622, 45, 90, 100, 1),
(86361, 3726, 1, 1, -396.659, -1586.49, 103.695, 0.244346, 0, 0, 0.121869, 0.992546, 45, 90, 100, 1),
(86362, 3726, 1, 1, -863.505, -1595.69, 107.602, -1.20428, 0, 0, -0.566407, 0.824125, 45, 90, 100, 1),
(86363, 3727, 1, 1, -2483.53, -2248.7, 95.6184, 2.67035, 0, 0, 0.972369, 0.233447, 45, 90, 100, 1),
(86364, 3727, 1, 1, -3813, -2215.8, 93.1443, 0.715585, 0, 0, 0.350207, 0.936672, 45, 90, 100, 1),
(86365, 3727, 1, 1, -956.404, -1660.48, 93.9018, 1.74533, 0, 0, 0.766045, 0.642787, 45, 90, 100, 1),
(86366, 3729, 1, 1, -2093.66, -2420.5, 93.0188, 1.01229, 0, 0, 0.484809, 0.87462, 45, 90, 100, 1),
(86367, 3729, 1, 1, -2666.17, -2219.72, 92.0802, -1.69297, 0, 0, -0.748956, 0.66262, 45, 90, 100, 1),
(86368, 3729, 1, 1, -640.457, -3877.07, 28.5433, 1.79769, 0, 0, 0.782608, 0.622514, 45, 90, 100, 1),
(86369, 3729, 1, 1, 848.745, -3571.26, 90.2722, 1.51844, 0, 0, 0.688356, 0.725373, 45, 90, 100, 1),
(86370, 3729, 1, 1, -3570.05, -2433.25, 94.5956, -1.06465, 0, 0, -0.507538, 0.861629, 45, 90, 100, 1),
(86371, 3729, 1, 1, -3903.93, -2290.84, 91.6683, -1.6057, 0, 0, -0.719339, 0.694659, 45, 90, 100, 1),
(86372, 3729, 1, 1, -442.708, -3739.55, 27.1674, -0.226892, 0, 0, -0.113203, 0.993572, 45, 90, 100, 1),
(86373, 3729, 1, 1, -3457.7, -2337.88, 91.6667, -0.750491, 0, 0, -0.366501, 0.930418, 45, 90, 100, 1),
(86374, 3729, 1, 1, -431.804, -1316.55, 97.6229, 1.48353, 0, 0, 0.67559, 0.737277, 45, 90, 100, 1),
(86375, 3729, 1, 1, -1593.21, -3592.77, 91.8447, 2.58308, 0, 0, 0.961261, 0.275641, 45, 90, 100, 1),
(86376, 3729, 1, 1, -34.3888, -3565.08, 27.2031, 0.191985, 0, 0, 0.0958451, 0.995396, 45, 90, 100, 1),
(86377, 3729, 1, 1, -233.344, -3726.62, 29.8465, -0.872664, 0, 0, -0.422618, 0.906308, 45, 90, 100, 1),
(86378, 3730, 1, 1, -3201.34, -2307.78, 109.676, -2.28638, 0, 0, -0.909961, 0.414694, 45, 90, 100, 1),
(86379, 3730, 1, 1, -4057.03, -2319.09, 131.904, 0.506145, 0, 0, 0.25038, 0.968148, 45, 90, 100, 1),
(86380, 3730, 1, 1, -605.449, -2073.85, 170.753, 3.01941, 0, 0, 0.998134, 0.0610534, 45, 90, 100, 1),
(86381, 3730, 1, 1, -1462.52, -3666.71, 92.5161, 1.22173, 0, 0, 0.573576, 0.819152, 45, 90, 100, 1),
(87283, 3726, 1, 1, -3931.37, -1850.23, 96.5837, 1.29154, 0, 0, 0.601814, 0.798637, 45, 90, 100, 1),
(87284, 3727, 1, 1, -2585.05, -2050.21, 91.6667, -1.50098, 0, 0, -0.681997, 0.731355, 45, 90, 100, 1),
(87285, 3727, 1, 1, -4112.9, -1905.92, 93.1088, -0.436332, 0, 0, -0.216439, 0.976296, 45, 90, 100, 1),
(87286, 3727, 1, 1, -2416.2, -2524.77, 91.6667, 0.034906, 0, 0, 0.0174521, 0.999848, 45, 90, 100, 1),
(87287, 3727, 1, 1, -115.113, -1718.67, 94.2968, -2.07694, 0, 0, -0.861629, 0.507539, 45, 90, 100, 1),
(87288, 3727, 1, 1, -1820.1, -1859.38, 97.1059, 1.02974, 0, 0, 0.492422, 0.870357, 45, 90, 100, 1),
(87289, 3727, 1, 1, -1518.44, -2788.13, 93.8622, -2.44346, 0, 0, -0.939692, 0.342021, 45, 90, 100, 1),
(87290, 3729, 1, 1, -1422.33, -2892.46, 93.5401, 0.750491, 0, 0, 0.366501, 0.930418, 45, 90, 100, 1),
(87291, 3729, 1, 1, -4046.88, -1782.21, 95.1955, -2.14675, 0, 0, -0.878816, 0.477161, 45, 90, 100, 1),
(87292, 3729, 1, 1, 1042.02, -2987.69, 91.6673, 1.36136, 0, 0, 0.629322, 0.777145, 45, 90, 100, 1),
(87293, 3730, 1, 1, -4217.95, -1984.49, 100.462, 0.401425, 0, 0, 0.199368, 0.979925, 45, 90, 100, 1),
(87294, 3730, 1, 1, -4202.47, -2087.11, 100.523, 1.46608, 0, 0, 0.669132, 0.743144, 45, 90, 100, 1),
(87295, 3730, 1, 1, -3972.73, -1639.11, 97.5111, 1.27409, 0, 0, 0.594823, 0.803857, 45, 90, 100, 1),
(87296, 3730, 1, 1, 314.383, -2233.26, 232.258, 1.25664, 0, 0, 0.587786, 0.809016, 45, 90, 100, 1),
(87484, 3724, 1, 1, -1212.77, -3520.31, 91.6667, -2.84488, 0, 0, -0.989015, 0.147813, 45, 90, 100, 1),
(87658, 3725, 1, 1, -1095.52, -2264.12, 80.967, -2.72271, 0, 0, -0.978147, 0.207914, 45, 90, 100, 1),
(87659, 3727, 1, 1, -2755.1, -2214.42, 95.583, 1.25664, 0, 0, 0.587786, 0.809016, 45, 90, 100, 1),
(87660, 3729, 1, 1, -2430.22, -1817.29, 91.6667, -0.837757, 0, 0, -0.406736, 0.913546, 45, 90, 100, 1),
(87661, 3730, 1, 1, -3992.33, -1976.66, 95.7966, -0.523598, 0, 0, -0.258819, 0.965926, 45, 90, 100, 1);

-- All pooled in noninstanced maps
UPDATE `gameobject` SET `spawntimesecsmin` = 45, `spawntimesecsmax` = 90, `animprogress` = 100 WHERE `map` IN (0,1,530) AND `id` IN (
1617,
1618,
1619,
1620,
1621,
1622,
1623,
1624,
1628,
2041,
2042,
2043,
2044,
2045,
2046,
2866,
142140,
142141,
142142,
142143,
142144,
142145,
176583,
176584,
176586,
176587,
176588,
-- Felwood
176636, -- Sungrass 176636
176637, -- Gromsblood 176637
176638, -- Golden Sansam 176638
176639, -- Dreamfoil 176639
176640, -- Mountain Silversage 176640
176641, -- Plaguebloom 176641
176642 -- Arthas' Tears 176642
);

UPDATE `gameobject` SET `spawntimesecsmin` = 45, `spawntimesecsmax` = 90, `animprogress` = 100 WHERE `id` BETWEEN 3724 and 3730 AND `map` = 1;
DELETE FROM `pool_gameobject` WHERE `guid` IN (SELECT `guid` FROM `gameobject` WHERE `id` BETWEEN 3724 and 3730);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` AS `guid`, 13039, 0, 'The Barrens - Peacebloom 3724' FROM `gameobject` WHERE `id` = 3724;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` AS `guid`, 13039, 0, 'The Barrens - Silverleaf 3725' FROM `gameobject` WHERE `id` = 3725;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` AS `guid`, 13039, 0, 'The Barrens - Earthroot 3726' FROM `gameobject` WHERE `id` = 3726;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` AS `guid`, 13039, 0, 'The Barrens - Mageroyal 3727' FROM `gameobject` WHERE `id` = 3727;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` AS `guid`, 13039, 0, 'The Barrens - Briarthorn 3729' FROM `gameobject` WHERE `id` = 3729;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` AS `guid`, 13039, 0, 'The Barrens - Bruiseweed 3730' FROM `gameobject` WHERE `id` = 3730;

DELETE FROM `gameobject_loot_template` WHERE `entry` IN (
1415,2512, -- Peacebloom (1618 / 3724)
1414,2511, -- Silverleaf (1617 / 3725)
1416,2513, -- Earthroot (1619 / 3726)
1417,2514, -- Mageroyal (1620 / 3727)
1418,2515, -- Briarthorn (1621 / 3729)
1419,2516 -- Bruiseweed (1622 / 3730)
);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1415, 2447, 100, 0, 1, 3, 0, 'Peacebloom'),
(2512, 2447, 100, 0, 1, 3, 0, 'Peacebloom'),
(2512, 5056, -100, 0, 1, 1, 0, 'Root Sample'), -- missing

(1414, 765, 100, 0, 1, 3, 0, 'Silverleaf'),
(2511, 765, 100, 0, 1, 3, 0, 'Silverleaf'),
(2511, 5056, -100, 0, 1, 1, 0, 'Root Sample'), -- missing

(1416, 2449, 100, 0, 1, 3, 0, 'Earthroot'),
(2513, 2449, 100, 0, 1, 3, 0, 'Earthroot'),
(2513, 5056, -100, 0, 1, 1, 0, 'Root Sample'), -- missing

(1417, 785, 100, 0, 1, 3, 0, 'Mageroyal'),
(1417, 2452, 20, 0, 1, 2, 0, 'Swiftthistle'), -- Reduce to 1-2 from 1-3 - https://tbc.wowhead.com/object=1620/mageroyal
(2514, 785, 100, 0, 1, 3, 0, 'Mageroyal'), -- wrong count
(2514, 2452, 20, 0, 1, 2, 0, 'Swiftthistle'), -- missing
(2514, 5056, -100, 0, 1, 1, 0, 'Root Sample'), -- missing

(1418, 2450, 100, 0, 1, 3, 0, 'Briarthorn'),
(1418, 2452, 40, 0, 1, 2, 0, 'Swiftthistle'), -- Reduce to 1-2 from 1-3 - https://tbc.wowhead.com/object=1621/briarthorn
(2515, 2450, 100, 0, 1, 3, 0, 'Briarthorn'), -- wrong count
(2515, 2452, 40, 0, 1, 2, 0, 'Swiftthistle'), -- Reduce to 1-2 from 1-3
(2515, 5056, -100, 0, 1, 1, 0, 'Root Sample'), -- missing

(1419, 2453, 100, 0, 1, 3, 0, 'Bruiseweed'),
(2516, 2453, 100, 0, 1, 3, 0, 'Bruiseweed'), -- wrong count
(2516, 5056, -100, 0, 1, 1, 0, 'Root Sample'); -- missing

-- Bloodthistle 181166
-- https://tbc.wowhead.com/object=181166/bloodthistle
DELETE FROM `gameobject` WHERE `guid` IN (65129,65132,65131,65127,65126,65125,65124) AND `id` = 181166;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(65124, 181166, 530, 1, 9515.63, -7918.87, 13.4497, -0.418879, 0, 0, -0.207912, 0.978148, 45, 90, 255, 1),
(65125, 181166, 530, 1, 9481.07, -7946.28, 11.1778, -2.91469, 0, 0, -0.993571, 0.113208, 45, 90, 255, 1),
(65126, 181166, 530, 1, 9449.09, -7888.03, 21.0499, 1.37881, 0, 0, 0.636078, 0.771625, 45, 90, 255, 1),
(65127, 181166, 530, 1, 9258.88, -6625.81, 26.7832, 1.09956, 0, 0, 0.5225, 0.852639, 45, 90, 255, 1),
(65129, 181166, 530, 1, 8158.4, -6360.23, 70.8225, -1.25664, 0, 0, -0.587786, 0.809016, 45, 90, 255, 1),
(65131, 181166, 530, 1, 8270.51, -6657.1, 86.3072, -0.139624, 0, 0, -0.0697553, 0.997564, 45, 90, 255, 1),
(65132, 181166, 530, 1, 8211.71, -6303.67, 64.5097, 1.78023, 0, 0, 0.777144, 0.629323, 45, 90, 255, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (SELECT `guid` FROM `gameobject` WHERE `id` = 181166);
DELETE FROM `pool_template` WHERE `entry` = 13994;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(13994, 16, 'Eversong Woods - Bloodthistle (181166)');
DELETE FROM `pool_gameobject_template` WHERE `id` = 181166;
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES (181166, 13994, 0, 'Eversong Woods - Bloodthistle (181166)');

-- Felweed 181270
-- https://tbc.wowhead.com/object=181270/felweed
UPDATE `gameobject` SET `position_x` = -3694.49, `position_y` = 1790.62, `position_z` = 68.2702, `orientation` = 3.10665, `rotation2` = 0.999847, `rotation3` = 0.0174704 WHERE `guid` = 141841 AND `id` = 181270;
UPDATE `gameobject` SET `position_x` = -3489.21, `position_y` = 1815.17, `position_z` = 99.451, `orientation` = 1.37881, `rotation2` = 0.636078, `rotation3` = 0.771625 WHERE `guid` = 141861 AND `id` = 181270;
UPDATE `gameobject` SET `position_x` = -2846.25, `position_y` = 3325.9, `position_z` = -16.2232, `orientation` = 2.80997, `rotation2` = 0.986285, `rotation3` = 0.165053 WHERE `guid` = 142029 AND `id` = 181270;
UPDATE `gameobject` SET `position_x` = -2833.81, `position_y` = 4755.42, `position_z` = -2.92705, `orientation` = -2.23402, `rotation2` = -0.898794, `rotation3` = 0.438372 WHERE `guid` = 142009 AND `id` = 181270;
UPDATE `gameobject` SET `position_x` = -2810.96, `position_y` = 3619.2, `position_z` = -19.9223, `orientation` = -1.48353, `rotation2` = -0.67559, `rotation3` = 0.737277 WHERE `guid` = 142034 AND `id` = 181270;
UPDATE `gameobject` SET `position_x` = -2600.29, `position_y` = 7013.64, `position_z` = -3.35767, `orientation` = -1.39626, `rotation2` = -0.642786, `rotation3` = 0.766046 WHERE `guid` = 141597 AND `id` = 181270;
UPDATE `gameobject` SET `position_x` = -2561.6, `position_y` = 3597.9, `position_z` = 5.97321, `orientation` = -2.28638, `rotation2` = -0.909961, `rotation3` = 0.414694 WHERE `guid` = 142045 AND `id` = 181270;
UPDATE `gameobject` SET `position_x` = -2545.19, `position_y` = 6654.96, `position_z` = -1.06387, `orientation` = -2.16421, `rotation2` = -0.882948, `rotation3` = 0.469471 WHERE `guid` = 141590 AND `id` = 181270;
DELETE FROM `gameobject` WHERE `guid` = 142021; -- Duplicate 141613
DELETE FROM `pool_gameobject` WHERE `guid` = 142021;
DELETE FROM `gameobject` WHERE `guid` = 142055; -- Duplicate 142026
DELETE FROM `pool_gameobject` WHERE `guid` = 142055;
UPDATE `gameobject` SET `position_x` = -2334.04, `position_y` = 3882.37, `position_z` = 4.00799, `orientation` = 2.61799, `rotation2` = 0.965925, `rotation3` = 0.258821 WHERE `guid` = 142023 AND `id` = 181270;
DELETE FROM `gameobject` WHERE `guid` = 142020; -- Duplicate 141617
DELETE FROM `pool_gameobject` WHERE `guid` = 142020;
DELETE FROM `gameobject` WHERE `guid` = 142054; -- Duplicate 142067
DELETE FROM `pool_gameobject` WHERE `guid` = 142054;
UPDATE `gameobject` SET `position_x` = -2247.67, `position_y` = 4914.93, `position_z` = -2.77061, `orientation` = -1.95477, `rotation2` = -0.829038, `rotation3` = 0.559192 WHERE `guid` = 142022 AND `id` = 181270;
UPDATE `gameobject` SET `position_x` = -2243.83, `position_y` = 5045.9, `position_z` = -7.71486, `orientation` = 2.19912, `rotation2` = 0.891008, `rotation3` = 0.453988 WHERE `guid` = 142039 AND `id` = 181270;
UPDATE `gameobject` SET `position_x` = -2212.08, `position_y` = 4756.78, `position_z` = 0.7452, `orientation` = 0.488691, `rotation2` = 0.241921, `rotation3` = 0.970296 WHERE `guid` = 142048 AND `id` = 181270;
DELETE FROM `gameobject` WHERE `guid` = 142035; -- Duplicate 142053
DELETE FROM `pool_gameobject` WHERE `guid` = 142035;
DELETE FROM `gameobject` WHERE `guid` = 142052; -- Duplicate 142038
DELETE FROM `pool_gameobject` WHERE `guid` = 142052;
DELETE FROM `gameobject` WHERE `guid` = 142051; -- Duplicate 142018
DELETE FROM `pool_gameobject` WHERE `guid` = 142051;
UPDATE `gameobject` SET `position_x` = -1646.02, `position_y` = 4373.23, `position_z` = 26.3583, `orientation` = 1.62316, `rotation2` = 0.725376, `rotation3` = 0.688353 WHERE `guid` = 142065 AND `id` = 181270;
DELETE FROM `gameobject` WHERE `guid` = 142013; -- Duplicate 142065
DELETE FROM `pool_gameobject` WHERE `guid` = 142013;
DELETE FROM `gameobject` WHERE `guid` = 142064; -- Duplicate 142028
DELETE FROM `pool_gameobject` WHERE `guid` = 142064;
UPDATE `gameobject` SET `position_x` = -1481.32, `position_y` = 6340.96, `position_z` = 36.1969, `orientation` = -1.16937, `rotation2` = -0.551937, `rotation3` = 0.833886 WHERE `guid` = 141622 AND `id` = 181270;
UPDATE `gameobject` SET `position_x` = -1426.3, `position_y` = 3440.64, `position_z` = 42.4929, `orientation` = -2.26892, `rotation2` = -0.906306, `rotation3` = 0.422622 WHERE `guid` = 141531 AND `id` = 181270;
UPDATE `gameobject` SET `position_x` = -1227.16, `position_y` = 4092.83, `position_z` = 68.6285, `orientation` = -2.00713, `rotation2` = -0.843392, `rotation3` = 0.537299 WHERE `guid` = 141551 AND `id` = 181270;
UPDATE `gameobject` SET `position_x` = -1195.47, `position_y` = 6624.72, `position_z` = 65.3418, `orientation` = 0.349065, `rotation2` = 0.173648, `rotation3` = 0.984808 WHERE `guid` = 141581 AND `id` = 181270;
UPDATE `gameobject` SET `position_x` = -884.975, `position_y` = 3414.15, `position_z` = 85.917, `orientation` = -2.51327, `rotation2` = -0.951056, `rotation3` = 0.309019 WHERE `guid` = 141484 AND `id` = 181270;
DELETE FROM `gameobject` WHERE `guid` = 141624; -- Duplicate 142321
DELETE FROM `pool_gameobject` WHERE `guid` = 141624;
DELETE FROM `gameobject` WHERE `guid` = 141616; -- Duplicate 142304
DELETE FROM `pool_gameobject` WHERE `guid` = 141616;
DELETE FROM `gameobject` WHERE `guid` = 141640; -- Duplicate 142318
DELETE FROM `pool_gameobject` WHERE `guid` = 141640;
UPDATE `gameobject` SET `position_x` = -743.117, `position_y` = 4403.11, `position_z` = 78.9783, `orientation` = 0.715585, `rotation2` = 0.350207, `rotation3` = 0.936672 WHERE `guid` = 141500 AND `id` = 181270;
DELETE FROM `gameobject` WHERE `guid` = 141549; -- Duplicate 141479
DELETE FROM `pool_gameobject` WHERE `guid` = 141549;
UPDATE `gameobject` SET `position_x` = -606.608, `position_y` = 1994.07, `position_z` = 78.47, `orientation` = -0.261798, `rotation2` = -0.130525, `rotation3` = 0.991445 WHERE `guid` = 141546 AND `id` = 181270;
DELETE FROM `gameobject` WHERE `guid` = 141547; -- Duplicate 141494
DELETE FROM `pool_gameobject` WHERE `guid` = 141547;
UPDATE `gameobject` SET `position_x` = -389.293, `position_y` = 2375.26, `position_z` = 42.1689, `orientation` = 2.68781, `rotation2` = 0.97437, `rotation3` = 0.22495 WHERE `guid` = 200473 AND `id` = 181270;
DELETE FROM `gameobject` WHERE `guid` = 141465; -- Duplicate 141527
DELETE FROM `pool_gameobject` WHERE `guid` = 141465;
UPDATE `gameobject` SET `position_x` = -181.127, `position_y` = 7423.56, `position_z` = 22.598, `orientation` = -2.47837, `rotation2` = -0.945519, `rotation3` = 0.325567 WHERE `guid` = 142297 AND `id` = 181270;
UPDATE `gameobject` SET `position_x` = -178.821, `position_y` = 6845.77, `position_z` = 22.6898, `orientation` = -2.47837, `rotation2` = -0.945519, `rotation3` = 0.325567 WHERE `guid` = 142299 AND `id` = 181270;
UPDATE `gameobject` SET `position_x` = -58.2169, `position_y` = 4312.87, `position_z` = 81.6632, `orientation` = 3.05433, `rotation2` = 0.999048, `rotation3` = 0.0436174 WHERE `guid` = 141470 AND `id` = 181270;
UPDATE `gameobject` SET `position_x` = 82.9006, `position_y` = 6623.56, `position_z` = 21.1425, `orientation` = 1.44862, `rotation2` = 0.662619, `rotation3` = 0.748957 WHERE `guid` = 142325 AND `id` = 181270;
DELETE FROM `gameobject` WHERE `guid` = 141284; -- Duplicate 142303
DELETE FROM `pool_gameobject` WHERE `guid` = 141284;
DELETE FROM `gameobject` WHERE `guid` = 141275; -- Duplicate 142313
DELETE FROM `pool_gameobject` WHERE `guid` = 141275;
UPDATE `gameobject` SET `position_x` = 2077.86, `position_y` = 6398.12, `position_z` = -10.3378, `orientation` = -0.663223, `rotation2` = -0.325567, `rotation3` = 0.945519 WHERE `guid` = 141293 AND `id` = 181270;
UPDATE `gameobject` SET `position_x` = 3113.82, `position_y` = 5580.15, `position_z` = 147.161, `orientation` = -1.06465, `rotation2` = -0.507538, `rotation3` = 0.861629 WHERE `guid` = 141264 AND `id` = 181270;
UPDATE `gameobject` SET `position_x` = 3313.5, `position_y` = 5749.41, `position_z` = -10.3389, `orientation` = 0.942477, `rotation2` = 0.45399, `rotation3` = 0.891007 WHERE `guid` = 141277 AND `id` = 181270;
DELETE FROM `gameobject` WHERE `guid` = 141294; -- Duplicate 142312 Felweed
DELETE FROM `pool_gameobject` WHERE `guid` = 141294;

-- Use TBC GUID Range for TBC+ Herbs
SET @OGUID := 5303000;
-- DELETE FROM `gameobject` WHERE `guid` IN (55167,87603,56370,56375,56379,85963,87418,85967,64835,55112,87602,56374,87414,55699,56367,64834,56377,55628,87146,55695,87144,26630,85964,87416,55691,87417,55851,87412,87147,55192,85966,55626,87411,85962,56061,56384,55681,87424,87145,56364,85976,85970,56317,85973,56358,85965,56325,56313,87410,85972,26634,56310,56363,87425,87604,85975,85974,87426,55696,87423,85977,85969,87051,87050,87148,87047,87048,85961) AND `id` = 181270;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID + 0001 AND @OGUID + 0077 AND `id` = 181270;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID + 0001, 181270, 530, 1, -1916.04, 3963.29, -3.00834, 1.76278, 0, 0, 0.771624, 0.636079, 45, 90, 100, 1), -- 26630
(@OGUID + 0002, 181270, 530, 1, -151.618, 4647.76, 22.8601, -2.54818, 0, 0, -0.956305, 0.292372, 45, 90, 100, 1), -- 26634
(@OGUID + 0003, 181270, 530, 1, -3086.41, 2957.29, 91.0764, -1.78023, 0, 0, -0.777144, 0.629323, 45, 90, 100, 1), -- 55112
(@OGUID + 0004, 181270, 530, 1, -4136.16, 1933.42, 66.2827, -1.41372, 0, 0, -0.649449, 0.760405, 45, 90, 100, 1), -- 55167
(@OGUID + 0005, 181270, 530, 1, -961.425, 8965.25, 98.468, -0.226892, 0, 0, -0.113203, 0.993572, 45, 90, 100, 1), -- 55192
(@OGUID + 0006, 181270, 530, 1, -918.34, 7891.3, 34.7956, -2.23402, 0, 0, -0.898794, 0.438372, 45, 90, 100, 1), -- 55626
(@OGUID + 0007, 181270, 530, 1, -2344.02, 6990.22, -8.98703, 2.25147, 0, 0, 0.902584, 0.430513, 45, 90, 100, 1), -- 55628
(@OGUID + 0008, 181270, 530, 1, -759.155, 7420.42, 51.9454, 0.209439, 0, 0, 0.104528, 0.994522, 45, 90, 100, 1), -- 55681
(@OGUID + 0009, 181270, 530, 1, -1666.49, 6458.83, 31.2805, -3.08918, 0, 0, -0.999657, 0.0262033, 45, 90, 100, 1), -- 55691
(@OGUID + 0010, 181270, 530, 1, -2142.38, 4635.95, -8.80594, 0.628317, 0, 0, 0.309016, 0.951057, 45, 90, 100, 1), -- 55695
(@OGUID + 0011, 181270, 530, 1, 292.656, 2058.94, 39.8281, 1.88495, 0, 0, 0.809015, 0.587788, 45, 90, 100, 1), -- 55696
(@OGUID + 0012, 181270, 530, 1, -2780.47, 3454.06, -30.8132, -2.56563, 0, 0, -0.958819, 0.284017, 45, 90, 100, 1), -- 55699
(@OGUID + 0013, 181270, 530, 1, -1531.5, 5029.39, -12.0501, 2.07694, 0, 0, 0.861629, 0.507539, 45, 90, 100, 1), -- 55851
(@OGUID + 0014, 181270, 530, 1, -839.771, 7681.68, 41.1012, 1.90241, 0, 0, 0.814116, 0.580702, 45, 90, 100, 1), -- 56061
(@OGUID + 0015, 181270, 530, 1, -117.66, 3078.81, 1.2103, 0.785397, 0, 0, 0.382683, 0.92388, 45, 90, 100, 1), -- 56310
(@OGUID + 0016, 181270, 530, 1, -400.993, 4071, 92.8569, 2.65289, 0, 0, 0.970294, 0.241927, 45, 90, 100, 1), -- 56313
(@OGUID + 0017, 181270, 530, 1, -486.221, 4842.07, 30.3062, -0.104719, 0, 0, -0.0523356, 0.99863, 45, 90, 100, 1), -- 56317
(@OGUID + 0018, 181270, 530, 1, -412.801, 4322.51, 60.9042, 2.56563, 0, 0, 0.958819, 0.284017, 45, 90, 100, 1), -- 56325
(@OGUID + 0019, 181270, 530, 1, -455.3, 4582.69, 45.1646, -3.10665, 0, 0, -0.999847, 0.0174704, 45, 90, 100, 1), -- 56358
(@OGUID + 0020, 181270, 530, 1, 11.6712, 4854.41, 61.1755, 1.02974, 0, 0, 0.492422, 0.870357, 45, 90, 100, 1), -- 56363
(@OGUID + 0021, 181270, 530, 1, -683.22, 7823.02, 58.397, -0.977383, 0, 0, -0.469471, 0.882948, 45, 90, 100, 1), -- 56364
(@OGUID + 0022, 181270, 530, 1, -2597.13, 6478.23, 20.5604, -3.10665, 0, 0, -0.999847, 0.0174704, 45, 90, 100, 1), -- 56367
(@OGUID + 0023, 181270, 530, 1, -3809.55, 4224.91, 4.34368, 0.506145, 0, 0, 0.25038, 0.968148, 45, 90, 100, 1), -- 56370
(@OGUID + 0024, 181270, 530, 1, -2953.03, 4951.25, -21.6865, -1.23918, 0, 0, -0.580701, 0.814117, 45, 90, 100, 1), -- 56374
(@OGUID + 0025, 181270, 530, 1, -3792.98, 2348.15, 105.58, 2.82743, 0, 0, 0.987688, 0.156436, 45, 90, 100, 1), -- 56375
(@OGUID + 0026, 181270, 530, 1, -2412.87, 6427.53, 12.7571, -0.994837, 0, 0, -0.477158, 0.878817, 45, 90, 100, 1), -- 56377
(@OGUID + 0027, 181270, 530, 1, -3659.04, 2484.96, 77.53, -1.11701, 0, 0, -0.529919, 0.848048, 45, 90, 100, 1), -- 56379
(@OGUID + 0028, 181270, 530, 1, -761.586, 4033.17, 32.8312, 1.46608, 0, 0, 0.669132, 0.743144, 45, 90, 100, 1), -- 56384
(@OGUID + 0029, 181270, 530, 1, -2503.51, 4157.88, 1.29642, 2.87979, 0, 0, 0.991445, 0.130528, 45, 90, 100, 1), -- 64834
(@OGUID + 0030, 181270, 530, 1, -3135.52, 4620.47, -22.6592, -1.18682, 0, 0, -0.559191, 0.829039, 45, 90, 100, 1), -- 64835
(@OGUID + 0031, 181270, 530, 1, 4025.72, 3161.22, 148.675, 1.85005, 0, 0, 0.798636, 0.601815, 45, 90, 100, 1), -- 85961
(@OGUID + 0032, 181270, 530, 1, -876.445, 4231.71, 39.6496, 0.436332, 0, 0, 0.216439, 0.976296, 45, 90, 100, 1), -- 85962
(@OGUID + 0033, 181270, 530, 1, -3343.44, 2364.9, 63.7362, 0.261798, 0, 0, 0.130525, 0.991445, 45, 90, 100, 1), -- 85963
(@OGUID + 0034, 181270, 530, 1, -1890.38, 6603.7, 3.97598, -2.49582, 0, 0, -0.948324, 0.317305, 45, 90, 100, 1), -- 85964
(@OGUID + 0035, 181270, 530, 1, -417.726, 2080.68, 91.4538, -2.77507, 0, 0, -0.983255, 0.182237, 45, 90, 100, 1), -- 85965
(@OGUID + 0036, 181270, 530, 1, -942.854, 2276.76, 3.09293, -2.91469, 0, 0, -0.993571, 0.113208, 45, 90, 100, 1), -- 85966
(@OGUID + 0037, 181270, 530, 1, -3149.93, 3045.95, 102.596, 2.30383, 0, 0, 0.913544, 0.406739, 45, 90, 100, 1), -- 85967
(@OGUID + 0038, 181270, 530, 1, 1681.96, 5146.22, 265.13, 0.750491, 0, 0, 0.366501, 0.930418, 45, 90, 100, 1), -- 85969
(@OGUID + 0039, 181270, 530, 1, -492.379, 4723.05, 28.0931, 1.71042, 0, 0, 0.754709, 0.65606, 45, 90, 100, 1), -- 85970
(@OGUID + 0040, 181270, 530, 1, -280.783, 3358.78, -48.7614, 1.79769, 0, 0, 0.782608, 0.622514, 45, 90, 100, 1), -- 85972
(@OGUID + 0041, 181270, 530, 1, -463.741, 2913.23, 26, -2.82743, 0, 0, -0.987688, 0.156436, 45, 90, 100, 1), -- 85973
(@OGUID + 0042, 181270, 530, 1, 259.73, 3740.48, 179.279, -2.67035, 0, 0, -0.972369, 0.233447, 45, 90, 100, 1), -- 85974
(@OGUID + 0043, 181270, 530, 1, 178.801, 2946.3, 23.6427, -2.28638, 0, 0, -0.909961, 0.414694, 45, 90, 100, 1), -- 85975
(@OGUID + 0044, 181270, 530, 1, -578.483, 3983.76, 29.3869, 1.37881, 0, 0, 0.636078, 0.771625, 45, 90, 100, 1), -- 85976
(@OGUID + 0045, 181270, 530, 1, 1551.97, 6363.31, 2.8339, -0.802851, 0, 0, -0.390731, 0.920505, 45, 90, 100, 1), -- 85977
(@OGUID + 0046, 181270, 530, 1, 3283.77, 5129.91, 251.131, -2.00713, 0, 0, -0.843392, 0.537299, 45, 90, 100, 1), -- 87047
(@OGUID + 0047, 181270, 530, 1, 3561.45, 5180.4, -5.18557, -0.523598, 0, 0, -0.258819, 0.965926, 45, 90, 100, 1), -- 87048
(@OGUID + 0048, 181270, 530, 1, 2619.49, 5160.42, 264.159, 0.767944, 0, 0, 0.374606, 0.927184, 45, 90, 100, 1), -- 87050
(@OGUID + 0049, 181270, 530, 1, 1959.18, 5316.3, 154.077, -2.23402, 0, 0, -0.898794, 0.438372, 45, 90, 100, 1), -- 87051
(@OGUID + 0050, 181270, 530, 1, -2045.2, 4654.84, -5.04274, 2.93214, 0, 0, 0.994521, 0.104535, 45, 90, 100, 1), -- 87144
(@OGUID + 0051, 181270, 530, 1, -723.837, 8749.43, 185.707, -0.541051, 0, 0, -0.267238, 0.963631, 45, 90, 100, 1), -- 87145
(@OGUID + 0052, 181270, 530, 1, -2343, 3554.46, -10.6955, -1.11701, 0, 0, -0.529919, 0.848048, 45, 90, 100, 1), -- 87146
(@OGUID + 0053, 181270, 530, 1, -972.591, 1973.4, 69.0956, -1.46608, 0, 0, -0.669132, 0.743144, 45, 90, 100, 1), -- 87147
(@OGUID + 0054, 181270, 530, 1, 2771.8, 6077.14, -8.17688, -1.62316, 0, 0, -0.725376, 0.688353, 45, 90, 100, 1), -- 87148
(@OGUID + 0055, 181270, 530, 1, -349.854, 2358.08, 45.406, 2.3911, 0, 0, 0.930417, 0.366502, 45, 90, 100, 1), -- 87410
(@OGUID + 0056, 181270, 530, 1, -883.681, 1934.28, 67.2361, -3.00195, 0, 0, -0.997563, 0.0697646, 45, 90, 100, 1), -- 87411
(@OGUID + 0057, 181270, 530, 1, -989.555, 2048.3, 67.0449, -0.90757, 0, 0, -0.438371, 0.898794, 45, 90, 100, 1), -- 87412
(@OGUID + 0058, 181270, 530, 1, -2914.34, 4501.69, -15.2011, -1.71042, 0, 0, -0.754709, 0.65606, 45, 90, 100, 1), -- 87414
(@OGUID + 0059, 181270, 530, 1, -1696.62, 7288.72, 2.31641, 1.23918, 0, 0, 0.580701, 0.814117, 45, 90, 100, 1), -- 87416
(@OGUID + 0060, 181270, 530, 1, -1625.62, 6640.58, -6.10122, -1.72787, 0, 0, -0.760404, 0.64945, 45, 90, 100, 1), -- 87417
(@OGUID + 0061, 181270, 530, 1, -3223.25, 5288.85, -19.2395, -1.69297, 0, 0, -0.748956, 0.66262, 45, 90, 100, 1), -- 87418
(@OGUID + 0062, 181270, 530, 1, 518.188, 3146.17, 18.0198, 2.33874, 0, 0, 0.920505, 0.390732, 45, 90, 100, 1), -- 87423
(@OGUID + 0063, 181270, 530, 1, -743.475, 1615.95, 56.0541, -1.32645, 0, 0, -0.615661, 0.788011, 45, 90, 100, 1), -- 87424
(@OGUID + 0064, 181270, 530, 1, 140.773, 4169.72, 65.3722, 0.750491, 0, 0, 0.366501, 0.930418, 45, 90, 100, 1), -- 87425
(@OGUID + 0065, 181270, 530, 1, 288.731, 3421.04, 69.5576, -1.88495, 0, 0, -0.809015, 0.587788, 45, 90, 100, 1), -- 87426
(@OGUID + 0066, 181270, 530, 1, -3009.63, 2744.53, 69.2374, -1.97222, 0, 0, -0.833885, 0.551938, 45, 90, 100, 1), -- 87602
(@OGUID + 0067, 181270, 530, 1, -3939.1, 1190.04, 45.0333, -2.44346, 0, 0, -0.939692, 0.342021, 45, 90, 100, 1), -- 87603
(@OGUID + 0068, 181270, 530, 1, 145.156, 3117.31, 20.7134, 1.8675, 0, 0, 0.803856, 0.594824, 45, 90, 100, 1), -- 87604
-- NEW
(@OGUID + 0069, 181270, 530, 1, -88.1924362182617187, 1816.717041015625, 65.72290802001953125, 2.408554315567016601, 0, 0, 0.933580398559570312, 0.358368009328842163, 45, 90, 100, 1),
(@OGUID + 0070, 181270, 530, 1, -778.9266357421875, 3206.587158203125, 13.64073657989501953, 2.478367090225219726, 0, 0, 0.94551849365234375, 0.325568377971649169, 45, 90, 100, 1),
(@OGUID + 0071, 181270, 530, 1, -451.197174072265625, 2516.58984375, 48.650299072265625, 1.692969322204589843, 0, 0, 0.748955726623535156, 0.662620067596435546, 45, 90, 100, 1),
(@OGUID + 0072, 181270, 530, 1, -1382.11328125, 2903.061767578125, -25.8723316192626953, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218, 45, 90, 100, 1),
(@OGUID + 0073, 181270, 530, 1, 340.821075439453125, 3968.36376953125, 121.0513916015625, 6.108653545379638671, 0, 0, -0.08715534210205078, 0.996194720268249511, 45, 90, 100, 1),
(@OGUID + 0074, 181270, 530, 1, 272.808013916015625, 3544.084716796875, 71.65317535400390625, 0.331610709428787231, 0, 0, 0.16504669189453125, 0.986285746097564697, 45, 90, 100, 1),
(@OGUID + 0075, 181270, 530, 1, -698.14825439453125, 4331.71484375, 55.07080459594726562, 4.258606910705566406, 0, 0, -0.84804725646972656, 0.529920578002929687, 45, 90, 100, 1),
(@OGUID + 0076, 181270, 530, 1, -778.9266357421875, 3206.587158203125, 13.64073657989501953, 2.478367090225219726, 0, 0, 0.94551849365234375, 0.325568377971649169, 45, 90, 100, 1),
(@OGUID + 0077, 181270, 530, 1, 234.017578125, 2033.1690673828125, 24.21383285522460937, 1.553341388702392578, 0, 0, 0.700908660888671875, 0.713251054286956787, 45, 90, 100, 1);

UPDATE `gameobject` SET `animprogress` = 100 WHERE `id` = 181270;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN @OGUID + 0001 AND @OGUID + 0077;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@OGUID + 0017, 13044, 0, 'Felweed zone 3483, node 120'), -- Hellfire Peninsula
(@OGUID + 0044, 13044, 0, 'Felweed zone 3483, node 212'),
(@OGUID + 0018, 13044, 0, 'Felweed zone 3483, node 121'),
(@OGUID + 0019, 13044, 0, 'Felweed zone 3483, node 123'),
(@OGUID + 0020, 13044, 0, 'Felweed zone 3483, node 126'),
(@OGUID + 0043, 13044, 0, 'Felweed zone 3483, node 211'),
(@OGUID + 0042, 13044, 0, 'Felweed zone 3483, node 210'),
(@OGUID + 0040, 13044, 0, 'Felweed zone 3483, node 208'),
(@OGUID + 0039, 13044, 0, 'Felweed zone 3483, node 206'),
(@OGUID + 0041, 13044, 0, 'Felweed zone 3483, node 209'),
(@OGUID + 0036, 13044, 0, 'Felweed zone 3483, node 205'),
(@OGUID + 0035, 13044, 0, 'Felweed zone 3483, node 204'),
(@OGUID + 0028, 13044, 0, 'Felweed zone 3483, node 133'),
(@OGUID + 0016, 13044, 0, 'Felweed zone 3483, node 119'),
(@OGUID + 0015, 13044, 0, 'Felweed zone 3483, node 118'),
(@OGUID + 0065, 13044, 0, 'Felweed zone 3483, node 262'),
(@OGUID + 0002, 13044, 0, 'Felweed zone 3483, node 55'),
(@OGUID + 0064, 13044, 0, 'Felweed zone 3483, node 261'),
(@OGUID + 0063, 13044, 0, 'Felweed zone 3483, node 260'),
(@OGUID + 0062, 13044, 0, 'Felweed zone 3483, node 259'),
(@OGUID + 0032, 13044, 0, 'Felweed zone 3483, node 203'),
(@OGUID + 0056, 13044, 0, 'Felweed zone 3483, node 253'),
(@OGUID + 0057, 13044, 0, 'Felweed zone 3483, node 254'),
(@OGUID + 0055, 13044, 0, 'Felweed zone 3483, node 252'),
(@OGUID + 0011, 13044, 0, 'Felweed zone 3483, node 114'),
(@OGUID + 0053, 13044, 0, 'Felweed zone 3483, node 246'),
(@OGUID + 0068, 13044, 0, 'Hellfire Peninsula - Felweed'),
(@OGUID + 0069, 13044, 0, 'Hellfire Peninsula - Felweed'),
(@OGUID + 0070, 13044, 0, 'Hellfire Peninsula - Felweed'),
(@OGUID + 0071, 13044, 0, 'Hellfire Peninsula - Felweed'),
(@OGUID + 0072, 13044, 0, 'Hellfire Peninsula - Felweed'),
(@OGUID + 0073, 13044, 0, 'Hellfire Peninsula - Felweed'),
(@OGUID + 0074, 13044, 0, 'Hellfire Peninsula - Felweed'),
(@OGUID + 0075, 13044, 0, 'Hellfire Peninsula - Felweed'),
(@OGUID + 0076, 13044, 0, 'Hellfire Peninsula - Felweed'),
(@OGUID + 0077, 13044, 0, 'Hellfire Peninsula - Felweed'),

(@OGUID + 0059, 13045, 0, 'Felweed zone 3518, node 138'), -- Nagrand
(@OGUID + 0051, 13045, 0, 'Felweed zone 3518, node 135'),
(@OGUID + 0034, 13045, 0, 'Felweed zone 3518, node 131'),
(@OGUID + 0009, 13045, 0, 'Felweed zone 3518, node 122'),
(@OGUID + 0060, 13045, 0, 'Felweed zone 3518, node 139'),
(@OGUID + 0014, 13045, 0, 'Felweed zone 3518, node 123'),
(@OGUID + 0005, 13045, 0, 'Felweed zone 3518, node 117'),
(@OGUID + 0006, 13045, 0, 'Felweed zone 3518, node 119'),
(@OGUID + 0007, 13045, 0, 'Felweed zone 3518, node 120'),
(@OGUID + 0026, 13045, 0, 'Felweed zone 3518, node 129'),
(@OGUID + 0008, 13045, 0, 'Felweed zone 3518, node 121'),
(@OGUID + 0021, 13045, 0, 'Felweed zone 3518, node 124'),
(@OGUID + 0022, 13045, 0, 'Felweed zone 3518, node 127'),

(@OGUID + 0031, 13046, 0, 'Felweed zone 3523, node 141'), -- Netherstorm

(@OGUID + 0025, 13047, 0, 'Felweed zone 3520, node 149'), -- Shadowmoon Valley
(@OGUID + 0037, 13047, 0, 'Felweed zone 3520, node 152'),
(@OGUID + 0033, 13047, 0, 'Felweed zone 3520, node 151'),
(@OGUID + 0027, 13047, 0, 'Felweed zone 3520, node 150'),
(@OGUID + 0004, 13047, 0, 'Felweed zone 3520, node 148'),
(@OGUID + 0003, 13047, 0, 'Felweed zone 3520, node 147'),
(@OGUID + 0066, 13047, 0, 'Shadowmoon Valley - Felweed'),
(@OGUID + 0067, 13047, 0, 'Shadowmoon Valley - Felweed'),

(@OGUID + 0061, 13048, 0, 'Felweed zone 3519, node 266'), -- Terokkar Forest
(@OGUID + 0029, 13048, 0, 'Felweed zone 3519, node 246'),
(@OGUID + 0030, 13048, 0, 'Felweed zone 3519, node 247'),
(@OGUID + 0058, 13048, 0, 'Felweed zone 3519, node 265'),
(@OGUID + 0010, 13048, 0, 'Felweed zone 3519, node 221'),
(@OGUID + 0012, 13048, 0, 'Felweed zone 3519, node 222'),
(@OGUID + 0052, 13048, 0, 'Felweed zone 3519, node 262'),
(@OGUID + 0023, 13048, 0, 'Felweed zone 3519, node 224'),
(@OGUID + 0013, 13048, 0, 'Felweed zone 3519, node 223'),
(@OGUID + 0050, 13048, 0, 'Felweed zone 3519, node 261'),
(@OGUID + 0024, 13048, 0, 'Felweed zone 3519, node 225'),
(@OGUID + 0001, 13048, 0, 'Felweed zone 3519, node 51'),

(@OGUID + 0045, 13043, 0, 'Felweed zone 3522, node 121'), -- Blades Edge Mountains
(@OGUID + 0046, 13043, 0, 'Felweed zone 3522, node 129'),
(@OGUID + 0047, 13043, 0, 'Felweed zone 3522, node 130'),
(@OGUID + 0048, 13043, 0, 'Felweed zone 3522, node 131'),
(@OGUID + 0038, 13043, 0, 'Felweed zone 3522, node 120'),
(@OGUID + 0054, 13043, 0, 'Felweed zone 3522, node 133'),
(@OGUID + 0049, 13043, 0, 'Felweed zone 3522, node 132');

-- Dreaming Glory 181271
-- https://tbc.wowhead.com/object=181271/dreaming-glory
UPDATE `gameobject` SET `position_x` = -5248.39, `position_y` = 412.401, `position_z` = 66.1103, `orientation` = 2.61799, `rotation2` = 0.965925, `rotation3` = 0.258821 WHERE `guid` = 141891 AND `id` = 181271;
UPDATE `gameobject` SET `position_x` = -5209.75, `position_y` = -31.7159, `position_z` = 70.1434, `orientation` = 0, `rotation2` = 0, `rotation3` = 1 WHERE `guid` = 141887 AND `id` = 181271;
UPDATE `gameobject` SET `position_x` = -4829.55, `position_y` = 480.343, `position_z` = 49.2413, `orientation` = 3.12412, `rotation2` = 0.999962, `rotation3` = 0.00873622 WHERE `guid` = 141878 AND `id` = 181271;
UPDATE `gameobject` SET `position_x` = -4395.93, `position_y` = 984.235, `position_z` = 64.0554, `orientation` = -0.226892, `rotation2` = -0.113203, `rotation3` = 0.993572 WHERE `guid` = 141868 AND `id` = 181271;
UPDATE `gameobject` SET `position_x` = -3665.35, `position_y` = 1870.08, `position_z` = 86.8098, `orientation` = 1.32645, `rotation2` = 0.615661, `rotation3` = 0.788011 WHERE `guid` = 141894 AND `id` = 181271;
UPDATE `gameobject` SET `position_x` = -3018.59, `position_y` = 3520.14, `position_z` = 2.57458, `orientation` = -1.3439, `rotation2` = -0.622513, `rotation3` = 0.782609 WHERE `guid` = 142108 AND `id` = 181271;
UPDATE `gameobject` SET `position_x` = -2813.26, `position_y` = 6422.05, `position_z` = 66.1187, `orientation` = -2.94959, `rotation2` = -0.995395, `rotation3` = 0.0958539 WHERE `guid` = 141642 AND `id` = 181271;
UPDATE `gameobject` SET `position_x` = -2429.18, `position_y` = 5457.3, `position_z` = 15.9542, `orientation` = -3.01941, `rotation2` = -0.998134, `rotation3` = 0.0610534 WHERE `guid` = 142112 AND `id` = 181271;
UPDATE `gameobject` SET `position_x` = -2348.48, `position_y` = 4388.19, `position_z` = 17.1568, `orientation` = 2.84488, `rotation2` = 0.989015, `rotation3` = 0.147813 WHERE `guid` = 142110 AND `id` = 181271;
UPDATE `gameobject` SET `position_x` = -2321.72, `position_y` = 4732.1, `position_z` = 18.6294, `orientation` = -0.226892, `rotation2` = -0.113203, `rotation3` = 0.993572 WHERE `guid` = 142079 AND `id` = 181271;
UPDATE `gameobject` SET `position_x` = -2294.12, `position_y` = 4571.06, `position_z` = 11.1841, `orientation` = -1.01229, `rotation2` = -0.484809, `rotation3` = 0.87462 WHERE `guid` = 142091 AND `id` = 181271;
UPDATE `gameobject` SET `position_x` = -2154.83, `position_y` = 8059.03, `position_z` = -10.4093, `orientation` = 0.95993, `rotation2` = 0.461748, `rotation3` = 0.887011 WHERE `guid` = 141644 AND `id` = 181271;
UPDATE `gameobject` SET `position_x` = -2074.13, `position_y` = 3487.29, `position_z` = -77.9712, `orientation` = 0.698132, `rotation2` = 0.34202, `rotation3` = 0.939693 WHERE `guid` = 142131 AND `id` = 181271;
DELETE FROM `gameobject` WHERE `guid` = 142076; -- Duplicate 142104
DELETE FROM `pool_gameobject` WHERE `guid` = 142076;
UPDATE `gameobject` SET `position_x` = -1786.73, `position_y` = 3883.49, `position_z` = 19.8421, `orientation` = 1.85005, `rotation2` = 0.798636, `rotation3` = 0.601815 WHERE `guid` = 142128 AND `id` = 181271;
DELETE FROM `gameobject` WHERE `guid` = 142093; -- Duplicate 141652
DELETE FROM `pool_gameobject` WHERE `guid` = 142093;
DELETE FROM `gameobject` WHERE `guid` = 142083; -- Duplicate 142101
DELETE FROM `pool_gameobject` WHERE `guid` = 142083;
UPDATE `gameobject` SET `position_x` = -1305.79, `position_y` = 5122.61, `position_z` = 8.73221, `orientation` = -1.29154, `rotation2` = -0.601814, `rotation3` = 0.798637 WHERE `guid` = 142086 AND `id` = 181271;
DELETE FROM `gameobject` WHERE `guid` = 141665; -- Duplicate 142330
DELETE FROM `pool_gameobject` WHERE `guid` = 141665;
DELETE FROM `gameobject` WHERE `guid` = 141560; -- Duplicate 141571
DELETE FROM `pool_gameobject` WHERE `guid` = 141560;
UPDATE `gameobject` SET `position_x` = -307.522, `position_y` = 7592.08, `position_z` = 36.8116, `orientation` = -0.872664, `rotation2` = -0.422618, `rotation3` = 0.906308 WHERE `guid` = 142331 AND `id` = 181271;
UPDATE `gameobject` SET `position_x` = 650.987, `position_y` = 5029.43, `position_z` = 11.4427, `orientation` = 2.28638, `rotation2` = 0.909961, `rotation3` = 0.414694 WHERE `guid` = 142336 AND `id` = 181271;
UPDATE `gameobject` SET `position_x` = -1000.2645263671875, `position_y` = 2107.3212890625, `position_z` = 93.63060760498046875, `orientation` = 4.45059061050415039, `rotation2` = -0.79335308074951171, `rotation3` = 0.608761727809906005 WHERE `guid` = 141569 AND `id` = 181271;

-- Use TBC GUID Range for TBC+ Herbs
SET @OGUID := 5303200;
-- DELETE FROM `gameobject` WHERE `guid` IN (85981,26665,87430,26673,26664,26666,87432,26700,26698,26675,85982,87431,26702,87429,26690,56410,85983,56421,26674,87052,87606,85987,87435,85986,87433,85991,87154,26694,56419,26667,87150,26684,85985,87436,26692,85989,85979,85988,87149,87153,87151,87152) AND `id` = 181271;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID + 0001 AND @OGUID + 0042 AND `id` = 181271;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID + 0001, 181271, 530, 1, -2874.95, 3786.28, 3.46804, -2.82743, 0, 0, -0.987688, 0.156436, 45, 90, 100, 1), -- 26664
(@OGUID + 0002, 181271, 530, 1, -3897.72, 4183.01, 3.89481, -3.08918, 0, 0, -0.999657, 0.0262033, 45, 90, 100, 1), -- 26665
(@OGUID + 0003, 181271, 530, 1, -2746.39, 4558.86, 3.23794, -1.25664, 0, 0, -0.587786, 0.809016, 45, 90, 100, 1), -- 26666
(@OGUID + 0004, 181271, 530, 1, -676.123, 7573.7, 96.4932, -1.02974, 0, 0, -0.492422, 0.870357, 45, 90, 100, 1), -- 26667
(@OGUID + 0005, 181271, 530, 1, -2909.52, 7127.2, 0.256045, 3.05433, 0, 0, 0.999048, 0.0436174, 45, 90, 100, 1), -- 26673
(@OGUID + 0006, 181271, 530, 1, -1482.76, 7659.55, -6.64639, -0.942477, 0, 0, -0.45399, 0.891007, 45, 90, 100, 1), -- 26674
(@OGUID + 0007, 181271, 530, 1, -2329.33, 4952.69, 6.18438, -2.30383, 0, 0, -0.913544, 0.406739, 45, 90, 100, 1), -- 26675
(@OGUID + 0008, 181271, 530, 1, -630.753, 8318.46, 60.3887, -2.82743, 0, 0, -0.987688, 0.156436, 45, 90, 100, 1), -- 26684
(@OGUID + 0009, 181271, 530, 1, -1871.26, 4116.37, 28.4382, -1.0472, 0, 0, -0.500001, 0.866025, 45, 90, 100, 1), -- 26690
(@OGUID + 0010, 181271, 530, 1, 371.649, 3587.95, 181.071, -3.05433, 0, 0, -0.999048, 0.0436174, 45, 90, 100, 1), -- 26692
(@OGUID + 0011, 181271, 530, 1, -797.13, 8204.2, 64.0139, 1.43117, 0, 0, 0.656059, 0.75471, 45, 90, 100, 1), -- 26694
(@OGUID + 0012, 181271, 530, 1, -2399.14, 8687.33, -12.0176, -1.48353, 0, 0, -0.67559, 0.737277, 45, 90, 100, 1), -- 26698
(@OGUID + 0013, 181271, 530, 1, -2613.47, 8582.86, -14.3174, -0.715585, 0, 0, -0.350207, 0.936672, 45, 90, 100, 1), -- 26700
(@OGUID + 0014, 181271, 530, 1, -2009.46, 3222.33, -79.4697, 0.785397, 0, 0, 0.382683, 0.92388, 45, 90, 100, 1), -- 26702
(@OGUID + 0015, 181271, 530, 1, -1851.91, 6552.75, 23.3894, 0.575957, 0, 0, 0.284015, 0.95882, 45, 90, 100, 1), -- 56410
(@OGUID + 0016, 181271, 530, 1, -785.387, 4700.71, 69.3952, -0.610864, 0, 0, -0.300705, 0.953717, 45, 90, 100, 1), -- 56419
(@OGUID + 0017, 181271, 530, 1, -1553.84, 4346.96, 57.3296, -0.872664, 0, 0, -0.422618, 0.906308, 45, 90, 100, 1), -- 56421
(@OGUID + 0018, 181271, 530, 1, 2019.3, 4915.15, 139.841, -1.71042, 0, 0, -0.754709, 0.65606, 45, 90, 100, 1), -- 85979
(@OGUID + 0019, 181271, 530, 1, -5029.9, 404.466, 174.086, 0.977383, 0, 0, 0.469471, 0.882948, 45, 90, 100, 1), -- 85981
(@OGUID + 0020, 181271, 530, 1, -2256.41, 6139.93, 71.3229, -2.26892, 0, 0, -0.906306, 0.422622, 45, 90, 100, 1), -- 85982
(@OGUID + 0021, 181271, 530, 1, -1587.92, 6434.57, 32.8362, 1.55334, 0, 0, 0.700908, 0.713252, 45, 90, 100, 1), -- 85983
(@OGUID + 0022, 181271, 530, 1, -581.283, 3667.28, 51.9562, -0.890117, 0, 0, -0.430511, 0.902586, 45, 90, 100, 1), -- 85985
(@OGUID + 0023, 181271, 530, 1, -946.735, 3852.83, 151.426, 2.75761, 0, 0, 0.981626, 0.190814, 45, 90, 100, 1), -- 85986
(@OGUID + 0024, 181271, 530, 1, -1004.02, 4316.05, 68.0652, 2.46091, 0, 0, 0.942641, 0.333809, 45, 90, 100, 1), -- 85987
(@OGUID + 0025, 181271, 530, 1, 2228.98, 5200.52, 262.719, 0.366518, 0, 0, 0.182235, 0.983255, 45, 90, 100, 1), -- 85988
(@OGUID + 0026, 181271, 530, 1, 1722.89, 5953.78, 145.867, 2.60053, 0, 0, 0.963629, 0.267244, 45, 90, 100, 1), -- 85989
(@OGUID + 0027, 181271, 530, 1, -865.052, 1986.42, 93.4709, 0.157079, 0, 0, 0.0784588, 0.996917, 45, 90, 100, 1), -- 85991
(@OGUID + 0028, 181271, 530, 1, -1308.85, 5406.76, 36.2982, 2.93214, 0, 0, 0.994521, 0.104535, 45, 90, 100, 1), -- 87052
(@OGUID + 0029, 181271, 530, 1, 2891.72, 5712.92, 143.035, -0.226892, 0, 0, -0.113203, 0.993572, 45, 90, 100, 1), -- 87149
(@OGUID + 0030, 181271, 530, 1, -665.046, 8778.89, 200.236, -0.244346, 0, 0, -0.121869, 0.992546, 45, 90, 100, 1), -- 87150
(@OGUID + 0031, 181271, 530, 1, 3856.57, 2543.18, 87.3824, -1.16937, 0, 0, -0.551937, 0.833886, 45, 90, 100, 1), -- 87151
(@OGUID + 0032, 181271, 530, 1, 4395.89, 3050, 135.329, -0.628317, 0, 0, -0.309016, 0.951057, 45, 90, 100, 1), -- 87152
(@OGUID + 0033, 181271, 530, 1, 3181.23, 5549.02, 142.135, -2.68781, 0, 0, -0.97437, 0.22495, 45, 90, 100, 1), -- 87153
(@OGUID + 0034, 181271, 530, 1, -802.504, 4465.43, 118.814, 2.93214, 0, 0, 0.994521, 0.104535, 45, 90, 100, 1), -- 87154
(@OGUID + 0035, 181271, 530, 1, -1983.75, 6326.5, 50.0981, -2.49582, 0, 0, -0.948324, 0.317305, 45, 90, 100, 1), -- 87429
(@OGUID + 0036, 181271, 530, 1, -2929.73, 6314.31, 94.1783, -1.62316, 0, 0, -0.725376, 0.688353, 45, 90, 100, 1), -- 87430
(@OGUID + 0037, 181271, 530, 1, -2039.1, 8077.47, -16.8341, -2.93214, 0, 0, -0.994521, 0.104535, 45, 90, 100, 1), -- 87431
(@OGUID + 0038, 181271, 530, 1, -2704.32, 6929.31, 3.31441, 0.698132, 0, 0, 0.34202, 0.939693, 45, 90, 100, 1), -- 87432
(@OGUID + 0039, 181271, 530, 1, -945.486, 1620.43, 93.4792, 2.49582, 0, 0, 0.948324, 0.317305, 45, 90, 100, 1), -- 87433
(@OGUID + 0040, 181271, 530, 1, -998.474, 3584.42, 160.825, 1.15192, 0, 0, 0.54464, 0.83867, 45, 90, 100, 1), -- 87435
(@OGUID + 0041, 181271, 530, 1, 243.085, 3817.57, 179.888, -1.81514, 0, 0, -0.78801, 0.615662, 45, 90, 100, 1), -- 87436
(@OGUID + 0042, 181271, 530, 1, -1288.11, 3448.28, 107.427, -1.97222, 0, 0, -0.833885, 0.551938, 45, 90, 100, 1), -- 87606
-- NEW
(@OGUID + 0043, 181271, 530, 1, 481.999237060546875, 3587.436767578125, 190.82415771484375, 1.867502212524414062, 0, 0, 0.803856849670410156, 0.594822824001312255, 45, 90, 100, 1);

UPDATE `gameobject` SET `animprogress` = 100 WHERE `id` = 181271;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN @OGUID + 0001 AND @OGUID + 0042;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@OGUID + 0040, 13044, 0, 'Dreaming Glory zone 3483, node 266'), -- Hellfire Peninsula
(@OGUID + 0010, 13044, 0, 'Dreaming Glory zone 3483, node 57'),
(@OGUID + 0024, 13044, 0, 'Dreaming Glory zone 3483, node 217'),
(@OGUID + 0041, 13044, 0, 'Dreaming Glory zone 3483, node 267'),
(@OGUID + 0034, 13044, 0, 'Dreaming Glory zone 3483, node 247'),
(@OGUID + 0023, 13044, 0, 'Dreaming Glory zone 3483, node 216'),
(@OGUID + 0022, 13044, 0, 'Dreaming Glory zone 3483, node 215'),
(@OGUID + 0016, 13044, 0, 'Dreaming Glory zone 3483, node 142'),
(@OGUID + 0039, 13044, 0, 'Dreaming Glory zone 3483, node 264'),
(@OGUID + 0027, 13044, 0, 'Dreaming Glory zone 3483, node 219'),
(@OGUID + 0042, 13044, 0, 'Hellfire Peninsula - Dreaming Glory'),
(@OGUID + 0043, 13044, 0, 'Hellfire Peninsula - Dreaming Glory'),

(@OGUID + 0021, 13045, 0, 'Dreaming Glory zone 3518, node 134'), -- Nagrand
(@OGUID + 0030, 13045, 0, 'Dreaming Glory zone 3518, node 136'),
(@OGUID + 0035, 13045, 0, 'Dreaming Glory zone 3518, node 141'),
(@OGUID + 0036, 13045, 0, 'Dreaming Glory zone 3518, node 142'),
(@OGUID + 0037, 13045, 0, 'Dreaming Glory zone 3518, node 143'),
(@OGUID + 0038, 13045, 0, 'Dreaming Glory zone 3518, node 144'),
(@OGUID + 0020, 13045, 0, 'Dreaming Glory zone 3518, node 133'),
(@OGUID + 0008, 13045, 0, 'Dreaming Glory zone 3518, node 44'),
(@OGUID + 0011, 13045, 0, 'Dreaming Glory zone 3518, node 45'),
(@OGUID + 0015, 13045, 0, 'Dreaming Glory zone 3518, node 130'),
(@OGUID + 0006, 13045, 0, 'Dreaming Glory zone 3518, node 43'),
(@OGUID + 0013, 13045, 0, 'Dreaming Glory zone 3518, node 47'),
(@OGUID + 0012, 13045, 0, 'Dreaming Glory zone 3518, node 46'),
(@OGUID + 0005, 13045, 0, 'Dreaming Glory zone 3518, node 42'),
(@OGUID + 0004, 13045, 0, 'Dreaming Glory zone 3518, node 41'),

(@OGUID + 0032, 13046, 0, 'Dreaming Glory zone 3523, node 144'), -- Netherstorm
(@OGUID + 0031, 13046, 0, 'Dreaming Glory zone 3523, node 143'),

(@OGUID + 0019, 13047, 0, 'Dreaming Glory zone 3520, node 154'), -- Shadowmoon Valley

(@OGUID + 0002, 13048, 0, 'Dreaming Glory zone 3519, node 54'), -- Terokkar Forest
(@OGUID + 0007, 13048, 0, 'Dreaming Glory zone 3519, node 56'),
(@OGUID + 0003, 13048, 0, 'Dreaming Glory zone 3519, node 55'),
(@OGUID + 0009, 13048, 0, 'Dreaming Glory zone 3519, node 59'),
(@OGUID + 0017, 13048, 0, 'Dreaming Glory zone 3519, node 227'),
(@OGUID + 0014, 13048, 0, 'Dreaming Glory zone 3519, node 61'),
(@OGUID + 0028, 13048, 0, 'Dreaming Glory zone 3519, node 260'),
(@OGUID + 0001, 13048, 0, 'Dreaming Glory zone 3519, node 53'),

(@OGUID + 0025, 13043, 0, 'Dreaming Glory zone 3522, node 123'), -- Blades Edge Mountains
(@OGUID + 0026, 13043, 0, 'Dreaming Glory zone 3522, node 124'),
(@OGUID + 0029, 13043, 0, 'Dreaming Glory zone 3522, node 134'),
(@OGUID + 0033, 13043, 0, 'Dreaming Glory zone 3522, node 135'),
(@OGUID + 0018, 13043, 0, 'Dreaming Glory zone 3522, node 122');

-- Ragveil 181275 - instanced only
-- Shares Node with Flame Cap 181276
-- https://tbc.wowhead.com/object=181275/ragveil

-- Flame Cap 181276
-- Shares Node with Ragveil 181275 & Ragveil 183043
-- https://tbc.wowhead.com/object=181276/flame-cap
UPDATE `gameobject` SET `position_x` = -202.466, `position_y` = 7536.72, `position_z` = 22.0793, `orientation` = -1.46608, `rotation2` = -0.669132, `rotation3` = 0.743144 WHERE `guid` = 142386 AND `id` = 181276;
UPDATE `gameobject` SET `position_x` = 565.942, `position_y` = 7985.94, `position_z` = 21.6704, `orientation` = -0.680679, `rotation2` = -0.333807, `rotation3` = 0.942641 WHERE `guid` = 142388 AND `id` = 181276;
UPDATE `gameobject` SET `position_x` = 349.258, `position_y` = 7530.48, `position_z` = 22.6831, `orientation` = 1.79769, `rotation2` = 0.782608, `rotation3` = 0.622515 WHERE `guid` = 142387 AND `id` = 181276;
UPDATE `gameobject` SET `position_x` = 536.559, `position_y` = 5434.35, `position_z` = -3.38172, `orientation` = 1.71042, `rotation2` = 0.754709, `rotation3` = 0.656059 WHERE `guid` = 142383 AND `id` = 181276;
UPDATE `gameobject` SET `position_x` = 325.983, `position_y` = 5721.31, `position_z` = 22.6486 WHERE `guid` = 142389 AND `id` = 181276;
UPDATE `gameobject` SET `position_x` = 695.183, `position_y` = 5439.76, `position_z` = -23.4568 WHERE `guid` = 142385 AND `id` = 181276;

UPDATE `gameobject` SET `animprogress` = 100 WHERE `id` = 181276;

-- Terocone 181277
-- https://tbc.wowhead.com/object=181277/terocone
UPDATE `gameobject` SET `position_x` = -4057.06, `position_y` = 1941.45, `position_z` = 81.0768, `orientation` = -1.85005, `rotation2` = -0.798636, `rotation3` = 0.601815 WHERE `guid` = 141895 AND `id` = 181277;
UPDATE `gameobject` SET `position_x` = -3936.01, `position_y` = 1870.26, `position_z` = 90.8546, `orientation` = 0.052359, `rotation2` = 0.0261765, `rotation3` = 0.999657 WHERE `guid` = 141900 AND `id` = 181277;
DELETE FROM `gameobject` WHERE `guid` = 141898; -- Duplicate 141897
DELETE FROM `pool_gameobject` WHERE `guid` = 141898;
UPDATE `gameobject` SET `position_x` = -3013.11, `position_y` = 3224.35, `position_z` = 18.5837, `orientation` = 0.733038, `rotation2` = 0.358368, `rotation3` = 0.93358 WHERE `guid` = 142139 AND `id` = 181277;
UPDATE `gameobject` SET `position_x` = -2997.64, `position_y` = 5723.81, `position_z` = 2.92272, `orientation` = 0.628317, `rotation2` = 0.309016, `rotation3` = 0.951057 WHERE `guid` = 142151 AND `id` = 181277;
UPDATE `gameobject` SET `position_x` = -2933.91, `position_y` = 3343.4, `position_z` = 0.258114, `orientation` = 2.00713, `rotation2` = 0.843392, `rotation3` = 0.537299 WHERE `guid` = 142142 AND `id` = 181277;
UPDATE `gameobject` SET `position_x` = -2925.62, `position_y` = 3145.37, `position_z` = 29.7955, `orientation` = 1.71042, `rotation2` = 0.754709, `rotation3` = 0.65606 WHERE `guid` = 142134 AND `id` = 181277;
UPDATE `gameobject` SET `position_x` = -2879.04, `position_y` = 3617.48, `position_z` = -15.9379, `orientation` = -0.872664, `rotation2` = -0.422618, `rotation3` = 0.906308 WHERE `guid` = 142213 AND `id` = 181277;
UPDATE `gameobject` SET `position_x` = -2761.77, `position_y` = 3731.92, `position_z` = 0.678024, `orientation` = -2.25147, `rotation2` = -0.902584, `rotation3` = 0.430513 WHERE `guid` = 142198 AND `id` = 181277;
UPDATE `gameobject` SET `position_x` = -2731.31, `position_y` = 3816.55, `position_z` = -10.5897, `orientation` = -1.25664, `rotation2` = -0.587786, `rotation3` = 0.809016 WHERE `guid` = 142186 AND `id` = 181277;
UPDATE `gameobject` SET `position_x` = -2538.23, `position_y` = 3486.59, `position_z` = -4.04108, `orientation` = 0.890117, `rotation2` = 0.430511, `rotation3` = 0.902586 WHERE `guid` = 142172 AND `id` = 181277;
DELETE FROM `gameobject` WHERE `guid` = 142187; -- Duplicate 142157
DELETE FROM `pool_gameobject` WHERE `guid` = 142187;
UPDATE `gameobject` SET `position_x` = -2337.34, `position_y` = 5089.19, `position_z` = 0.56214, `orientation` = -1.43117, `rotation2` = -0.656059, `rotation3` = 0.75471 WHERE `guid` = 142219 AND `id` = 181277;
DELETE FROM `gameobject` WHERE `guid` = 142158; -- Duplicate 142184
DELETE FROM `pool_gameobject` WHERE `guid` = 142158;
UPDATE `gameobject` SET `position_x` = -2266.36, `position_y` = 4353.79, `position_z` = 4.04408, `orientation` = 2.65289, `rotation2` = 0.970294, `rotation3` = 0.241927 WHERE `guid` = 142211 AND `id` = 181277;
UPDATE `gameobject` SET `position_x` = -2217.59, `position_y` = 4095.92, `position_z` = -1.99839, `orientation` = 1.98967, `rotation2` = 0.838669, `rotation3` = 0.544641 WHERE `guid` = 142203 AND `id` = 181277;
UPDATE `gameobject` SET `position_x` = -2096.71, `position_y` = 4815.59, `position_z` = 3.90501, `orientation` = 2.32129, `rotation2` = 0.91706, `rotation3` = 0.398748 WHERE `guid` = 142202 AND `id` = 181277;
UPDATE `gameobject` SET `position_x` = -2070.64, `position_y` = 3349.48, `position_z` = -60.3802, `orientation` = -0.523598, `rotation2` = -0.258819, `rotation3` = 0.965926 WHERE `guid` = 142205 AND `id` = 181277;
DELETE FROM `gameobject` WHERE `guid` = 142204; -- Duplicate 142160
DELETE FROM `pool_gameobject` WHERE `guid` = 142204;
DELETE FROM `gameobject` WHERE `guid` = 142201; -- Duplicate 142163
DELETE FROM `pool_gameobject` WHERE `guid` = 142201;
UPDATE `gameobject` SET `position_x` = -1640.36, `position_y` = 4267.03, `position_z` = 56.1606, `orientation` = -2.07694, `rotation2` = -0.861629, `rotation3` = 0.507539 WHERE `guid` = 142210 AND `id` = 181277;
DELETE FROM `gameobject` WHERE `guid` = 142183; -- Duplicate 142174
DELETE FROM `pool_gameobject` WHERE `guid` = 142183;

SET @OGUID := 5303400;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID + 0001 AND @OGUID + 0015 AND `id` = 181277;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID + 0001, 181277, 530, 1, -2706.65, 3485.65, -1.61144, -1.48353, 0, 0, -0.67559, 0.737277, 45, 90, 100, 1), -- 61322
(@OGUID + 0002, 181277, 530, 1, -2170.06, 3335.84, -35.6993, -2.18166, 0, 0, -0.88701, 0.461749, 45, 90, 100, 1), -- 61328
(@OGUID + 0003, 181277, 530, 1, -2604.84, 3846.82, -5.71031, 2.14675, 0, 0, 0.878816, 0.477161, 45, 90, 100, 1), -- 61329
(@OGUID + 0004, 181277, 530, 1, -2246.35, 4996.96, -2.07144, 1.46608, 0, 0, 0.669132, 0.743144, 45, 90, 100, 1), -- 61330
(@OGUID + 0005, 181277, 530, 1, -2239.1, 4005.9, -24.3986, 0.174532, 0, 0, 0.0871553, 0.996195, 45, 90, 100, 1), -- 61337
(@OGUID + 0006, 181277, 530, 1, -3508.05, 5731.95, 0.137414, 0.191985, 0, 0, 0.0958451, 0.995396, 45, 90, 100, 1), -- 61338
(@OGUID + 0007, 181277, 530, 1, -3611.81, 4015.16, 74.6686, 1.37881, 0, 0, 0.636078, 0.771625, 45, 90, 100, 1), -- 61339
(@OGUID + 0008, 181277, 530, 1, -3351.95, 6074.68, 0.159937, 1.8675, 0, 0, 0.803856, 0.594824, 45, 90, 100, 1), -- 61340
(@OGUID + 0009, 181277, 530, 1, -1839.63, 4887.16, 1.10184, 1.95477, 0, 0, 0.829038, 0.559192, 45, 90, 100, 1), -- 61341
(@OGUID + 0010, 181277, 530, 1, -1327.36, 5086.98, -4.58639, -2.68781, 0, 0, -0.97437, 0.22495, 45, 90, 100, 1), -- 61343
(@OGUID + 0011, 181277, 530, 1, -2029.61, 4113, 1.41137, -1.09956, 0, 0, -0.5225, 0.852639, 45, 90, 100, 1), -- 61344
(@OGUID + 0012, 181277, 530, 1, -2448.49, 3734.26, 0.565117, -3.07177, 0, 0, -0.999391, 0.0349043, 45, 90, 100, 1), -- 64853
(@OGUID + 0013, 181277, 530, 1, -3068.66, 3262.44, 6.00242, 2.58308, 0, 0, 0.961261, 0.275641, 45, 90, 100, 1), -- 86014
(@OGUID + 0014, 181277, 530, 1, -2405.88, 4994.07, 30.2375, 2.9845, 0, 0, 0.996917, 0.0784656, 45, 90, 100, 1), -- 87157
(@OGUID + 0015, 181277, 530, 1, -3145.46, 2170.95, 71.669, -2.05949, 0, 0, -0.857168, 0.515037, 45, 90, 100, 1); -- 87607

UPDATE `gameobject` SET `animprogress` = 100 WHERE `id` = 181277;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN @OGUID + 0001 AND @OGUID + 0015;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@OGUID + 0013, 13047, 0, 'Terocone zone 3520, node 171'), -- Shadowmoon Valley

(@OGUID + 0001, 13048, 0, 'Terocone zone 3519, node 228'), -- Terokkar Forest
(@OGUID + 0012, 13048, 0, 'Terocone zone 3519, node 248'),
(@OGUID + 0011, 13048, 0, 'Terocone zone 3519, node 242'),
(@OGUID + 0010, 13048, 0, 'Terocone zone 3519, node 241'),
(@OGUID + 0009, 13048, 0, 'Terocone zone 3519, node 239'),
(@OGUID + 0008, 13048, 0, 'Terocone zone 3519, node 238'),
(@OGUID + 0007, 13048, 0, 'Terocone zone 3519, node 237'),
(@OGUID + 0006, 13048, 0, 'Terocone zone 3519, node 236'),
(@OGUID + 0005, 13048, 0, 'Terocone zone 3519, node 235'),
(@OGUID + 0004, 13048, 0, 'Terocone zone 3519, node 233'),
(@OGUID + 0003, 13048, 0, 'Terocone zone 3519, node 232'),
(@OGUID + 0002, 13048, 0, 'Terocone zone 3519, node 231'),
(@OGUID + 0014, 13048, 0, 'Terocone zone 3519, node 263'),
(@OGUID + 0015, 13048, 0, 'Terokkar Forest - Terocone');

-- Ancient Lichen 181278 - instanced only
-- https://tbc.wowhead.com/object=181278/ancient-lichen

-- =======================================================================
-- ========			Remove Netherbloom Vine from Zone Pool   	  ========
-- =======================================================================
-- Netherbloom 181279
-- SET @OGUID := 5303450;
-- https://tbc.wowhead.com/object=181279/netherbloom

SET @GUID := 5300397;
DELETE FROM `pool_gameobject` WHERE `guid` IN (SELECT `guid` FROM `gameobject` WHERE `id` = 181279 AND `guid` NOT IN (5300122,5300123,5300124,5300125));
DELETE FROM `gameobject` WHERE `id` = 181279 AND `guid` NOT IN (5530015,5530016,5530017);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@GUID := @GUID + 0, 181279, 530, 1, 4322.3037, 2022.2496, 121.22724, 0.94247663, 0, 0, 0.45398998, 0.89100677, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2590.9653, 4350.2686, 129.9261, 5.078908, 0, 0, -0.56640625, 0.8241262, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2842.1416, 3050.3533, 127.26942, 1.3962618, 0, 0, 0.642787, 0.766045, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3610.4758, 2737.966, 147.7355, 4.258607, 0, 0, -0.84804726, 0.5299206, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3147.27, 3310.2317, 111.63367, 6.1610126, 0, 0, -0.061048508, 0.9981348, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2530.7595, 3414.5625, 131.92012, 2.478367, 0, 0, 0.9455185, 0.32556838, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2616.5107, 2441.8196, 104.40415, 3.8746312, 0, 0, -0.9335804, 0.358368, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4112.002, 1685.447, 132.02368, 2.5656319, 0, 0, 0.9588194, 0.28401646, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2776.6914, 2918.544, 119.60911, 6.1610126, 0, 0, -0.061048508, 0.9981348, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2388.8167, 2907.3657, 134.72575, 5.864307, 0, 0, -0.20791149, 0.9781476, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4494.891, 3571.0352, 130.62447, 2.2514734, 0, 0, 0.902585, 0.43051165, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4098.081, 3934.1675, 189.65326, 1.954769, 0, 0, 0.82903767, 0.5591928, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2505.5222, 2062.0188, 91.54789, 3.3161445, 0, 0, -0.9961939, 0.08716504, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4837.5225, 2900.8113, 145.1083, 2.932139, 0, 0, 0.99452114, 0.10453553, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4039.2786, 4150.332, 193.01949, 5.4803343, 0, 0, -0.39073086, 0.920505, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4282.953, 2381.7017, 114.44681, 4.3284197, 0, 0, -0.8290367, 0.55919415, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3996.1729, 1894.3446, 247.22043, 2.478367, 0, 0, 0.9455185, 0.32556838, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2642.2312, 2606.7825, 117.52671, 0.41887861, 0, 0, 0.20791149, 0.9781476, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4671.6646, 2401.6055, 191.55907, 1.5882487, 0, 0, 0.71325016, 0.70090955, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3447.9583, 3839.9753, 144.55826, 5.6723223, 0, 0, -0.30070496, 0.95371723, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3061.6128, 1927.5126, 144.57816, 4.4156833, 0, 0, -0.80385685, 0.5948228, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2769.9304, 3939.9485, 142.01778, 3.9269955, 0, 0, -0.92387867, 0.3826855, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2706.2715, 3521.6406, 139.13554, 2.879789, 0, 0, 0.9914446, 0.13052827, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4856.011, 3117.1926, 114.86361, 4.9567375, 0, 0, -0.61566067, 0.7880114, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4811.166, 2713.6216, 86.4097, 1.6755137, 0, 0, 0.74314404, 0.66913146, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4148.7666, 1399.903, -121.0481, 4.3284197, 0, 0, -0.8290367, 0.55919415, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3974.7573, 2413.0012, 111.49713, 0.26179817, 0, 0, 0.13052559, 0.99144495, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3182.845, 3950.5, 168.32034, 0.4886912, 0, 0, 0.24192142, 0.97029585, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4993.603, 2758.2915, 49.14052, 2.967041, 0, 0, 0.9961939, 0.08716504, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4817.303, 2388.4119, 119.54829, 0.17453213, 0, 0, 0.08715534, 0.9961947, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4370.907, 3693.322, 101.83637, 0.82030326, 0, 0, 0.3987484, 0.9170604, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4089.2512, 2335.0898, 104.22938, 3.3161445, 0, 0, -0.9961939, 0.08716504, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3950.201, 1391.156, -128.38252, 4.0142603, 0, 0, -0.9063072, 0.4226195, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3846.6199, 3800.1875, 113.83507, 5.5152416, 0, 0, -0.37460613, 0.92718405, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3786.6362, 1981.4791, 257.9977, 4.34587, 0, 0, -0.82412624, 0.56640613, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3703.0173, 2224.2734, 124.29765, 5.742135, 0, 0, -0.26723766, 0.9636307, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3547.3782, 3731.826, 128.25488, 3.0194132, 0, 0, 0.9981346, 0.061051756, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3491.4468, 3249.3555, 102.82291, 0.6806767, 0, 0, 0.33380604, 0.9426418, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3316.7585, 4046.6194, 156.21545, 1.3962618, 0, 0, 0.642787, 0.766045, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3286.941, 2298.708, 107.73758, 1.1170093, 0, 0, 0.5299187, 0.84804845, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3244.5955, 2112.5745, 131.19972, 1.3264482, 0, 0, 0.61566067, 0.7880114, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3208.7551, 2908.8608, 129.12444, 4.2760572, 0, 0, -0.8433914, 0.53729963, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2982.8965, 3124.9983, 121.07678, 0.383971, 0, 0, 0.1908083, 0.9816273, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2974.9841, 3269.8147, 138.15886, 0.89011663, 0, 0, 0.43051052, 0.90258557, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2891.6692, 2682.7427, 111.81472, 0.383971, 0, 0, 0.1908083, 0.9816273, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2768.8987, 4327.882, 142.82904, 0.5235979, 0, 0, 0.25881863, 0.96592593, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2751.3762, 4152.1636, 185.47414, 1.2915417, 0, 0, 0.60181427, 0.7986361, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2687.3518, 3722.9744, 143.9939, 5.375615, 0, 0, -0.4383707, 0.89879423, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2534.9656, 2129.9548, 99.14506, 5.707228, 0, 0, -0.2840147, 0.9588199, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2520.222, 2760.7178, 132.16042, 2.5481794, 0, 0, 0.95630455, 0.29237235, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2495.5398, 2828.5598, 137.792, 3.1415927, 0, 0, -1, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2417.6047, 2139.0825, 87.7451, 3.9618986, 0, 0, -0.9170599, 0.3987495, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2390.5083, 2577.473, 136.81409, 1.4311681, 0, 0, 0.6560583, 0.7547102, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2248.2551, 2138.8713, 76.24464, 3.47321, 0, 0, -0.9862852, 0.1650499, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2966.56, 2543.87, 125.352, 0, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4039.54, 2293.89, 112.988, 1.91986, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4278.52, 3574.56, 138.15, 2.75762, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3686.5, 1753.92, 126.995, 0, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4512.95, 2765.8, 144.528, 0, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4040.96, 2059.11, 253.731, 0, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3257.7, 2703.19, 149.683, 0, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2974.94, 2310, 161.597, 1.18682, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3621.26, 2114.16, 105.9, 1.02974, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3249.34, 1944.17, 132.512, 0.087266, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4449.06, 2492.18, 95.3095, 1.29154, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3864.28, 2092.68, 255.235, 2.9147, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3902.5, 4084.73, 189.979, 2.04204, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3871.72, 1893.94, 255.482, 2.18166, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4063.71, 3461.89, 147.623, -2.82743, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3052.74, 2840.94, 101.076, 2.98451, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4714.1, 2529.32, 235.431, 0.296706, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2225.16, 2808.25, 123.975, 0, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4125.31, 2708.56, 105.451, -2.04204, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4719.58, 3493.48, 124.992, -0.942478, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4142.98, 4177.84, 133.861, 3.05433, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3754.12, 1632.7, 133.88, 1.67552, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3584.32, 1986.03, 102.019, 3.00197, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2883.98, 3787.18, 166.006, 2.9147, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4162.85, 3943.63, 125.606, -1.81514, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3599.14, 3577.34, 124.483, -1.27409, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3329.11, 3122.41, 118.849, 1.78024, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3931.68, 2186.42, 234.677, 0, 0, 0, 0, 1, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2449.25, 2261.98, 124.893, 0, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4718.4, 2982.69, 126.68, 0, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 4162.5, 2209.39, 168.581, 0, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3196.35, 1744.3, 133.123, 0, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2600.42, 4118.21, 149.764, -2.77507, 0, 0, -0.983255, 0.182237, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3421.04, 2651.24, 155.779, 0, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3940.76, 1648.08, 126.261, 2.82743, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 2998.82, 4255.35, 161.266, 2.96704, 0, 0, 0.996194, 0.0871655, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3614.22, 2342.14, 87.3628, -3.05433, 0, 0, -0.999048, 0.0436174, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181279, 530, 1, 3792.85, 2459.95, 116.729, -2.30383, 0, 0, -0.913544, 0.406739, 45, 90, 255, 1);

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) VALUES
(5300397, 13055, 'Netherstorm - Netherbloom'),
(5300398, 13055, 'Netherstorm - Netherbloom'),
(5300399, 13055, 'Netherstorm - Netherbloom'),
(5300400, 13055, 'Netherstorm - Netherbloom'),
(5300401, 13055, 'Netherstorm - Netherbloom'),
(5300402, 13055, 'Netherstorm - Netherbloom'),
(5300403, 13055, 'Netherstorm - Netherbloom'),
(5300404, 13055, 'Netherstorm - Netherbloom'),
(5300405, 13055, 'Netherstorm - Netherbloom'),
(5300406, 13055, 'Netherstorm - Netherbloom'),
(5300407, 13055, 'Netherstorm - Netherbloom'),
(5300408, 13055, 'Netherstorm - Netherbloom'),
(5300409, 13055, 'Netherstorm - Netherbloom'),
(5300410, 13055, 'Netherstorm - Netherbloom'),
(5300411, 13055, 'Netherstorm - Netherbloom'),
(5300412, 13055, 'Netherstorm - Netherbloom'),
(5300413, 13055, 'Netherstorm - Netherbloom'),
(5300414, 13055, 'Netherstorm - Netherbloom'),
(5300415, 13055, 'Netherstorm - Netherbloom'),
(5300416, 13055, 'Netherstorm - Netherbloom'),
(5300417, 13055, 'Netherstorm - Netherbloom'),
(5300418, 13055, 'Netherstorm - Netherbloom'),
(5300419, 13055, 'Netherstorm - Netherbloom'),
(5300420, 13055, 'Netherstorm - Netherbloom'),
(5300421, 13055, 'Netherstorm - Netherbloom'),
(5300422, 13055, 'Netherstorm - Netherbloom'),
(5300423, 13055, 'Netherstorm - Netherbloom'),
(5300424, 13055, 'Netherstorm - Netherbloom'),
(5300425, 13055, 'Netherstorm - Netherbloom'),
(5300426, 13055, 'Netherstorm - Netherbloom'),
(5300427, 13055, 'Netherstorm - Netherbloom'),
(5300428, 13055, 'Netherstorm - Netherbloom'),
(5300429, 13055, 'Netherstorm - Netherbloom'),
(5300430, 13055, 'Netherstorm - Netherbloom'),
(5300431, 13055, 'Netherstorm - Netherbloom'),
(5300432, 13055, 'Netherstorm - Netherbloom'),
(5300433, 13055, 'Netherstorm - Netherbloom'),
(5300434, 13055, 'Netherstorm - Netherbloom'),
(5300435, 13055, 'Netherstorm - Netherbloom'),
(5300436, 13055, 'Netherstorm - Netherbloom'),
(5300437, 13055, 'Netherstorm - Netherbloom'),
(5300438, 13055, 'Netherstorm - Netherbloom'),
(5300439, 13055, 'Netherstorm - Netherbloom'),
(5300440, 13055, 'Netherstorm - Netherbloom'),
(5300441, 13055, 'Netherstorm - Netherbloom'),
(5300442, 13055, 'Netherstorm - Netherbloom'),
(5300443, 13055, 'Netherstorm - Netherbloom'),
(5300444, 13055, 'Netherstorm - Netherbloom'),
(5300445, 13055, 'Netherstorm - Netherbloom'),
(5300446, 13055, 'Netherstorm - Netherbloom'),
(5300447, 13055, 'Netherstorm - Netherbloom'),
(5300448, 13055, 'Netherstorm - Netherbloom'),
(5300449, 13055, 'Netherstorm - Netherbloom'),
(5300450, 13055, 'Netherstorm - Netherbloom'),
(5300451, 13055, 'Netherstorm - Netherbloom'),
(5300452, 13055, 'Netherstorm - Netherbloom'),
(5300453, 13055, 'Netherstorm - Netherbloom'),
(5300454, 13055, 'Netherstorm - Netherbloom'),
(5300455, 13055, 'Netherstorm - Netherbloom'),
(5300456, 13055, 'Netherstorm - Netherbloom'),
(5300457, 13055, 'Netherstorm - Netherbloom'),
(5300458, 13055, 'Netherstorm - Netherbloom'),
(5300459, 13055, 'Netherstorm - Netherbloom'),
(5300460, 13055, 'Netherstorm - Netherbloom'),
(5300461, 13055, 'Netherstorm - Netherbloom'),
(5300462, 13055, 'Netherstorm - Netherbloom'),
(5300463, 13055, 'Netherstorm - Netherbloom'),
(5300464, 13055, 'Netherstorm - Netherbloom'),
(5300465, 13055, 'Netherstorm - Netherbloom'),
(5300466, 13055, 'Netherstorm - Netherbloom'),
(5300467, 13055, 'Netherstorm - Netherbloom'),
(5300468, 13055, 'Netherstorm - Netherbloom'),
(5300469, 13055, 'Netherstorm - Netherbloom'),
(5300470, 13055, 'Netherstorm - Netherbloom'),
(5300471, 13055, 'Netherstorm - Netherbloom'),
(5300472, 13055, 'Netherstorm - Netherbloom'),
(5300473, 13055, 'Netherstorm - Netherbloom'),
(5300474, 13055, 'Netherstorm - Netherbloom'),
(5300475, 13055, 'Netherstorm - Netherbloom'),
(5300476, 13055, 'Netherstorm - Netherbloom'),
(5300477, 13055, 'Netherstorm - Netherbloom'),
(5300478, 13055, 'Netherstorm - Netherbloom'),
(5300479, 13055, 'Netherstorm - Netherbloom'),
(5300480, 13055, 'Netherstorm - Netherbloom'),
(5300481, 13055, 'Netherstorm - Netherbloom'),
(5300482, 13055, 'Netherstorm - Netherbloom'),
(5300483, 13055, 'Netherstorm - Netherbloom'),
(5300484, 13055, 'Netherstorm - Netherbloom'),
(5300485, 13055, 'Netherstorm - Netherbloom'),
(5300486, 13055, 'Netherstorm - Netherbloom'),
(5300487, 13055, 'Netherstorm - Netherbloom'),
(5300488, 13055, 'Netherstorm - Netherbloom');

-- Nightmare Vine 181280
SET @OGUID := 5303500;
-- https://tbc.wowhead.com/object=181280/nightmare-vine
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID + 0001 AND @OGUID + 0004 AND `id`  = 181280;
-- DELETE FROM `gameobject` WHERE `guid` IN (86015,86017,86018,86016) AND `id`  = 181280;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID + 0001, 181280, 530, 1, -3691.33, 255.727, 90.989, -0.261798, 0, 0, -0.130525, 0.991445, 45, 90, 255, 1),
(@OGUID + 0002, 181280, 530, 1, 2207.86, 5393.08, 148.705, -1.91986, 0, 0, -0.819151, 0.573577, 45, 90, 255, 1),
(@OGUID + 0003, 181280, 530, 1, 1665.16, 7387.73, 370.489, 2.86233, 0, 0, 0.990267, 0.139178, 45, 90, 255, 1),
(@OGUID + 0004, 181280, 530, 1, 1765.98, 5326.78, 154.68, -1.0821, 0, 0, -0.515036, 0.857168, 45, 90, 255, 1);

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN @OGUID + 0001 AND @OGUID + 0004;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@OGUID + 0001, 13054, 0, 'Nightmare Vine zone 3520, node 172'), -- Shadowmoon Valley - Nightmare Vine
(@OGUID + 0002, 13053, 0, 'Nightmare Vine zone 3522, node 125'), -- Blade''s Edge Mountains - Nightmare Vine
(@OGUID + 0003, 13053, 0, 'Nightmare Vine zone 3522, node 126'),
(@OGUID + 0004, 13053, 0, 'Nightmare Vine zone 3522, node 127');

-- =======================================================================
-- ========			Remove Nightmare Vine from Zone Pools   	  ========
-- =======================================================================

SET @GUID := 5300294;
DELETE FROM `pool_gameobject` WHERE `guid` IN (SELECT `guid` FROM `gameobject` WHERE `id` = 181280 AND `guid` NOT IN (5300122,5300123,5300124,5300125,@OGUID + 0001,@OGUID + 0002,@OGUID + 0003,@OGUID + 0004));
DELETE FROM `gameobject` WHERE `id` = 181280 AND `guid` NOT IN (5300122,5300123,5300124,5300125,@OGUID + 0001,@OGUID + 0002,@OGUID + 0003,@OGUID + 0004);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
-- HP
(@GUID := @GUID + 0, 181280, 530, 1, 882.495, 2263.36, 297.829, 0.226893, 0, 0, 0, 0, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 784.762, 2081.11, 270.486, 1.23918, 0, 0, 0, 0, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 791.81, 2574.96, 297.91, 0, 0, 0, 0, 0, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 895.81, 2229.08, 299.57, 0, 0, 0, 0, 0, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 789.05, 2063.81, 272.56, 0, 0, 0, 0, 0, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 802.83, 2538.96, 295.71, 0, 0, 0, 0, 0, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 871.70, 2559.61, 296.60, 0, 0, 0, 0, 0, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 844.15, 2466.65, 287.48, 0, 0, 0, 0, 0, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 733.95, 2451.16, 272.87, 0, 0, 0, 0, 0, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 902.70, 2316.88, 306.43, 0, 0, 0, 0, 0, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 864.81, 2285.89, 288.98, 0, 0, 0, 0, 0, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 888.92, 2203.26, 288.81, 0, 0, 0, 0, 0, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 778.72, 2146.45, 269.74, 0, 0, 0, 0, 0, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 844.15, 2105.13, 269.91, 0, 0, 0, 0, 0, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 857.93, 2079.31, 270.96, 0, 0, 0, 0, 0, 180, 300, 255, 1),
-- BE
(@GUID := @GUID + 1, 181280, 530, 1, 2991.6973, 7039.893, 369.52225, 0.052358884, 0, 0, 0.026176453, 0.99965733, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 2768.9543, 7021.3975, 370.11777, 4.0142603, 0, 0, -0.9063072, 0.4226195, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 1406.4733, 7358.2275, 369.83194, 4.8171096, 0, 0, -0.6691303, 0.74314505, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 1501.8024, 7203.5967, 370.27466, 2.6703477, 0, 0, 0.9723692, 0.23344836, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 2954.6165, 6883.539, 371.49487, 3.0368383, 0, 0, 0.9986286, 0.052353222, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 2929.4175, 7099.617, 369.2068, 6.1959195, 0, 0, -0.043619156, 0.99904823, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 1313.7075, 7184.9434, 375.11176, 3.6826503, 0, 0, -0.9636297, 0.267241, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 1522.8348, 7312.1406, 367.32486, 5.3058023, 0, 0, -0.46947098, 0.8829479, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 2165.6987, 5467.4233, 153.56413, 2.967041, 0, 0, 0.9961939, 0.08716504, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 1839.8225, 5400.386, 154.21204, 2.2340178, 0, 0, 0.8987932, 0.43837282, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 2057.496, 5386.978, 149.82649, 4.7822027, 0, 0, -0.68199825, 0.7313538, 180, 300, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, 1810.8279, 5308.6235, 154.45248, 4.8694706, 0, 0, -0.64944744, 0.76040643, 180, 300, 255, 1),
-- SV
(@GUID := @GUID + 1, 181280, 530, 1, -3245.464, 498.71136, 91.15387, 2.530723, 0, 0, 0.9537163, 0.3007079, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -2563.9355, 1168.9618, 76.75517, 0.5585039, 0, 0, 0.27563667, 0.96126187, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3581.8394, 1142.7467, 46.248745, 1.6231557, 0, 0, 0.7253742, 0.68835473, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4126.154, 2576.3772, 146.2565, 4.904376, 0, 0, -0.6360779, 0.77162486, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3123.6477, 2118.0417, 81.7905, 5.93412, 0, 0, -0.17364788, 0.9848078, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -2741.4602, 1339.1146, 88.514015, 3.5255723, 0, 0, -0.9816265, 0.19081241, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3621.6477, 876.05707, 36.053944, 2.042035, 0, 0, 0.85264015, 0.5224986, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4045.6133, 1045.9067, 23.433159, 6.03884, 0, 0, -0.12186909, 0.9925462, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4420.556, 1752.8492, 157.60257, 6.056293, 0, 0, -0.11320305, 0.9935719, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4227.6807, 1596.5134, 115.02302, 0.7504908, 0, 0, 0.36650085, 0.9304177, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -2926.867, 1287.2251, 8.51188, 6.003934, 0, 0, -0.13917255, 0.9902682, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3027.222, 1176.3086, 8.323737, 3.7699115, 0, 0, -0.9510565, 0.30901712, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4132.9165, 1940.3021, 66.200966, 4.188792, 0, 0, -0.866025, 0.5000008, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3189.6104, 1482.8179, 56.06681, 0.31415844, 0, 0, 0.15643406, 0.98768836, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4602.298, 1846.0282, 156.16876, 3.2637722, 0, 0, -0.9981346, 0.061051756, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4442.7407, 859.5187, 5.956177, 0.5061446, 0, 0, 0.25037956, 0.96814775, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3698.6194, 2589.3196, 93.38295, 3.1590624, 0, 0, -0.99996185, 0.008734641, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3066.5151, 3138.5833, 64.2794, 2.4434602, 0, 0, 0.9396925, 0.34202045, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3103.4807, 1378.7762, 11.484845, 2.932139, 0, 0, 0.99452114, 0.10453553, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3270.5635, 1318.5212, 69.13913, 3.9618986, 0, 0, -0.9170599, 0.3987495, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4201.774, 638.2052, 23.544205, 0.22689247, 0, 0, 0.11320305, 0.9935719, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4380.521, 1399.3833, 143.58144, 3.490667, 0, 0, -0.984807, 0.1736523, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4658.3447, 1095.5045, 0.052046, 1.7104216, 0, 0, 0.75470924, 0.65605944, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3442.1055, 291.04904, 90.98536, 4.2760572, 0, 0, -0.8433914, 0.53729963, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3392.6682, 1052.525, 44.623924, 5.358162, 0, 0, -0.4461975, 0.89493454, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3172.2896, 1305.1478, 21.730295, 0.03490625, 0, 0, 0.01745224, 0.9998477, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3217.093, 2042.2305, 86.72334, 6.073746, 0, 0, -0.10452843, 0.9945219, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4600.237, 1192.6587, 1.149042, 2.932139, 0, 0, 0.99452114, 0.10453553, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3608.1086, 1010.7485, 51.168045, 2.7576132, 0, 0, 0.9816265, 0.19081241, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3444.1023, 3015.9429, 173.53003, 2.2165651, 0, 0, 0.8949337, 0.44619918, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3198.941, 2370.3738, 62.651875, 5.3232555, 0, 0, -0.46174812, 0.8870111, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3247.6912, 2794.9124, 118.1303, 5.742135, 0, 0, -0.26723766, 0.9636307, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3315.5977, 948.28754, 33.763554, 3.892087, 0, 0, -0.93041706, 0.3665025, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3216.133, 2509.9006, 61.12456, 5.288348, 0, 0, -0.47715855, 0.87881726, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3030.644, 2853.2856, 79.42215, 4.729844, 0, 0, -0.70090866, 0.71325105, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3115.4375, 2721.4792, 63.8341, 5.375615, 0, 0, -0.4383707, 0.89879423, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3876.7769, 2728.7615, 141.7445, 0.45378506, 0, 0, 0.22495079, 0.9743701, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3527.2783, 850.219, -0.057614, 4.34587, 0, 0, -0.82412624, 0.56640613, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -2778.6362, 832.28906, 21.110125, 5.6548686, 0, 0, -0.30901623, 0.9510568, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3141.1987, 1823.8092, 143.1921, 2.6005352, 0, 0, 0.9636297, 0.267241, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4543.0825, 2227.563, 21.67207, 0.052358884, 0, 0, 0.026176453, 0.99965733, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4604.328, 1686.5576, 175.26709, 0.5585039, 0, 0, 0.27563667, 0.96126187, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3270.6987, 1644.8456, 76.46506, 0.7155849, 0, 0, 0.35020733, 0.9366722, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4009.4626, 813.714, 3.281026, 3.6651962, 0, 0, -0.9659252, 0.2588213, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3780.174, 1698.9976, 51.014828, 5.2534423, 0, 0, -0.49242306, 0.87035596, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3346.6025, 1898.1002, 90.98111, 1.4835281, 0, 0, 0.67558956, 0.7372779, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3511.857, 395.84418, 31.782082, 4.2935133, 0, 0, -0.8386698, 0.54464024, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4171.558, 339.7269, 119.83469, 3.6477413, 0, 0, -0.9681473, 0.2503814, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3223.0435, 1040.2681, 63.15298, 2.7750685, 0, 0, 0.98325443, 0.18223801, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3431.2344, 668.2044, 5.010841, 6.003934, 0, 0, -0.13917255, 0.9902682, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3259.4817, 1174.7357, 61.57034, 2.967041, 0, 0, 0.9961939, 0.08716504, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3416.7026, 1206.5334, 61.89161, 6.03884, 0, 0, -0.12186909, 0.9925462, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4424.1157, 1875.2349, 158.53584, 1.3264482, 0, 0, 0.61566067, 0.7880114, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3758.3057, 1926.1727, 98.58828, 5.5152416, 0, 0, -0.37460613, 0.92718405, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3423.0408, 1675.7592, 106.52129, 0.82030326, 0, 0, 0.3987484, 0.9170604, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3720.8655, 546.4319, 48.115284, 0.36651757, 0, 0, 0.18223476, 0.983255, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3027.05, 1066.7053, 12.32614, 1.8151419, 0, 0, 0.7880106, 0.6156617, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4188.887, 1314.5758, 56.037655, 2.0594883, 0, 0, 0.85716724, 0.5150382, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3340.9749, 2607.4395, 59.870808, 5.270896, 0, 0, -0.48480892, 0.8746201, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3615.9949, 252.21896, 44.425613, 2.9146895, 0, 0, 0.9935713, 0.11320835, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3907.4878, 499.89322, 91.251144, 4.3807764, 0, 0, -0.8141155, 0.58070296, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4184.232, 1863.2509, 106.57501, 5.8992143, 0, 0, -0.1908083, 0.9816273, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4073.48, 463, 30.4145, 2.53073, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3068.45, 660.193, -11.6506, 0.837757, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3514, 252.844, 46.2293, 0.925024, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4113.85, 1890.02, 75.5606, -3.12414, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3387.43, 578.868, 56.6968, -0.750491, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4110.96, 1393.62, 83.0714, -2.96706, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4095.03, 825.717, 5.65411, 0, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -4504.94, 1278.03, 123.393, 0, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3620.97, 485.062, 23.0029, 0, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -2516.8, 1336.2, 75.7952, 0, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3933.99, 2547.45, 119.966, 0, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3610.67, 2651.09, 74.6056, 0, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -2813.09, 1036.52, 5.08747, 0, 0, 0, 0, 0, 45, 90, 255, 1),
(@GUID := @GUID + 1, 181280, 530, 1, -3681.97, 490.895, 90.9558, 0, 0, 0, 0, 0, 45, 90, 255, 1);

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) VALUES
(5300294, 13052, 'Hellfire Peninsula - Nightmare Vine'),
(5300295, 13052, 'Hellfire Peninsula - Nightmare Vine'),
(5300296, 13052, 'Hellfire Peninsula - Nightmare Vine'),
(5300297, 13052, 'Hellfire Peninsula - Nightmare Vine'),
(5300298, 13052, 'Hellfire Peninsula - Nightmare Vine'),
(5300299, 13052, 'Hellfire Peninsula - Nightmare Vine'),
(5300300, 13052, 'Hellfire Peninsula - Nightmare Vine'),
(5300301, 13052, 'Hellfire Peninsula - Nightmare Vine'),
(5300302, 13052, 'Hellfire Peninsula - Nightmare Vine'),
(5300303, 13052, 'Hellfire Peninsula - Nightmare Vine'),
(5300304, 13052, 'Hellfire Peninsula - Nightmare Vine'),
(5300305, 13052, 'Hellfire Peninsula - Nightmare Vine'),
(5300306, 13052, 'Hellfire Peninsula - Nightmare Vine'),
(5300307, 13052, 'Hellfire Peninsula - Nightmare Vine'),
(5300308, 13052, 'Hellfire Peninsula - Nightmare Vine'),

(5300309, 13053, 'Blade''s Edge Mountains - Nightmare Vine'),
(5300310, 13053, 'Blade''s Edge Mountains - Nightmare Vine'),
(5300311, 13053, 'Blade''s Edge Mountains - Nightmare Vine'),
(5300312, 13053, 'Blade''s Edge Mountains - Nightmare Vine'),
(5300313, 13053, 'Blade''s Edge Mountains - Nightmare Vine'),
(5300314, 13053, 'Blade''s Edge Mountains - Nightmare Vine'),
(5300315, 13053, 'Blade''s Edge Mountains - Nightmare Vine'),
(5300316, 13053, 'Blade''s Edge Mountains - Nightmare Vine'),
(5300317, 13053, 'Blade''s Edge Mountains - Nightmare Vine'),
(5300318, 13053, 'Blade''s Edge Mountains - Nightmare Vine'),
(5300319, 13053, 'Blade''s Edge Mountains - Nightmare Vine'),
(5300320, 13053, 'Blade''s Edge Mountains - Nightmare Vine'),

(5300321, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300322, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300323, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300324, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300325, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300326, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300327, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300328, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300329, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300330, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300331, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300332, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300333, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300334, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300335, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300336, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300337, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300338, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300339, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300340, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300341, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300342, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300343, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300344, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300345, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300346, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300347, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300348, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300349, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300350, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300351, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300352, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300353, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300354, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300355, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300356, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300357, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300358, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300359, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300360, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300361, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300362, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300363, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300364, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300365, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300366, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300367, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300368, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300369, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300370, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300371, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300372, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300373, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300374, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300375, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300376, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300377, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300378, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300379, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300380, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300381, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300382, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300383, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300384, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300385, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300386, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300387, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300388, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300389, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300390, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300391, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300392, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300393, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300394, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300395, 13054, 'Shadowmoon Valley - Nightmare Vine'),
(5300396, 13054, 'Shadowmoon Valley - Nightmare Vine');

-- Mana Thistle 181281
-- https://tbc.wowhead.com/object=181281/mana-thistle
UPDATE `gameobject` SET `position_x` = -5189.03, `position_y` = 703.151, `position_z` = 66.575, `orientation` = -3.01941, `rotation2` = -0.998134, `rotation3` = 0.0610534 WHERE `guid` = 141958 AND `id` = 181281;
UPDATE `gameobject` SET `position_x` = -4840.36, `position_y` = 423.94, `position_z` = 56.3133, `orientation` = 1.48353, `rotation2` = 0.67559, `rotation3` = 0.737277 WHERE `guid` = 141957 AND `id` = 181281;
DELETE FROM `gameobject` WHERE `guid` = 141687; -- Duplicate 142228
DELETE FROM `pool_gameobject` WHERE `guid` = 141687;
DELETE FROM `gameobject` WHERE `guid` = 141689; -- Duplicate 142232
DELETE FROM `pool_gameobject` WHERE `guid` = 141689;
DELETE FROM `gameobject` WHERE `guid` = 142235; -- Duplicate 142227
DELETE FROM `pool_gameobject` WHERE `guid` = 142235;

SET @OGUID := 5303550;
-- DELETE FROM `gameobject` WHERE `guid` IN (86020,87161) AND `id` = 181281;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID + 0001 AND @OGUID + 0002 AND `id`  = 181281;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID + 0001, 181281, 530, 1, -1405.15, 5826.38, 187.814, -1.53589, 0, 0, -0.694658, 0.71934, 45, 90, 100, 1), -- 86020
(@OGUID + 0002, 181281, 530, 1, -3953.6, 3177.48, 314.938, 2.61799, 0, 0, 0.965925, 0.258821, 45, 90, 100, 1); -- 87161

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN @OGUID + 0001 AND @OGUID + 0002;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@OGUID + 0001, 13048, 0, 'Mana Thistle zone 3519, node 254'), -- Terokkar Forest
(@OGUID + 0002, 13048, 0, 'Mana Thistle zone 3519, node 264');

-- Ragveil 183043
-- Shares Node with Flame Cap
-- https://tbc.wowhead.com/object=183043/ragveil
UPDATE `gameobject` SET `position_x` = -392.144, `position_y` = 6500.78, `position_z` = 21.553, `orientation` = 2.54818, `rotation2` = 0.956305, `rotation3` = 0.292372 WHERE `guid` = 142356 AND `id` = 181275;
UPDATE `gameobject` SET `position_x` = -252.617, `position_y` = 6198.28, `position_z` = 23.9543, `orientation` = -2.28638, `rotation2` = -0.909961, `rotation3` = 0.414694 WHERE `guid` = 142355 AND `id` = 181275;
UPDATE `gameobject` SET `position_x` = -193.153, `position_y` = 7896.41, `position_z` = 20.4815, `orientation` = 2.19912, `rotation2` = 0.891008, `rotation3` = 0.453988 WHERE `guid` = 142365 AND `id` = 181275;
UPDATE `gameobject` SET `position_x` = -178.382, `position_y` = 6021.08, `position_z` = 22.5117, `orientation` = -1.93732, `rotation2` = -0.824127, `rotation3` = 0.566404 WHERE `guid` = 142354 AND `id` = 181275;
UPDATE `gameobject` SET `position_x` = 475.503, `position_y` = 5950.67, `position_z` = 22.8493, `orientation` = 0.628317, `rotation2` = 0.309016, `rotation3` = 0.951057 WHERE `guid` = 142370 AND `id` = 181275;
UPDATE `gameobject` SET `position_x` = 512.408, `position_y` = 5850.85, `position_z` = 23.8378, `orientation` = -1.32645, `rotation2` = -0.615661, `rotation3` = 0.788011 WHERE `guid` = 142366 AND `id` = 181275;
UPDATE `gameobject` SET `position_x` = 611.324, `position_y` = 5518.14, `position_z` = -1.16461, `orientation` = -1.79769, `rotation2` = -0.782608, `rotation3` = 0.622514 WHERE `guid` = 142369 AND `id` = 181275;
UPDATE `gameobject` SET `position_x` = 758.05, `position_y` = 5651.15, `position_z` = 23.09, `orientation` = -0.855211, `rotation2` = -0.414693, `rotation3` = 0.909961 WHERE `guid` = 142377 AND `id` = 181275;
UPDATE `gameobject` SET `position_x` = 836.484, `position_y` = 5675.57, `position_z` = 24.7045, `orientation` = -3.05433, `rotation2` = -0.999048, `rotation3` = 0.0436174 WHERE `guid` = 142376 AND `id` = 181275;
UPDATE `gameobject` SET `id` = 183043 WHERE `map` = 530 AND `id` = 181275;
UPDATE `gameobject` SET `position_x` = 58.6755, `position_y` = 5531.17, `position_z` = 23.8776, `orientation` = -1.37881, `rotation2` = -0.636078, `rotation3` = 0.771625 WHERE `guid` = 142361 AND `id` = 183043;
UPDATE `gameobject` SET `position_x` = 393.008, `position_y` = 5888.21, `position_z` = 22.3804, `orientation` = 2.47837, `rotation2` = 0.945519, `rotation3` = 0.325567 WHERE `guid` = 142364 AND `id` = 183043;
UPDATE `gameobject` SET `position_x` = 458.682, `position_y` = 5300.45, `position_z` = -1.45927, `orientation` = -1.5708, `rotation2` = -0.707108, `rotation3` = 0.707106 WHERE `guid` = 142367 AND `id` = 183043;
UPDATE `gameobject` SET `position_x` = 536.559, `position_y` = 5434.35, `position_z` = -3.38172, `orientation` = 1.71042, `rotation2` = 0.754709, `rotation3` = 0.656059 WHERE `guid` = 142358 AND `id` = 183043;
DELETE FROM `gameobject` WHERE `guid` = 142339; -- Duplicate 105358
DELETE FROM `pool_gameobject` WHERE `guid` = 142339;

-- Use TBC GUID Range for TBC+ Herbs
SET @OGUID := 5303600;
-- DELETE FROM `gameobject` WHERE `guid` IN (16850,87398,87399,85917,85920,64807,16835,16820,85918,17180,16824,64806,87126,87127,16837,16847,85919,64808,16834,17844,17665,64809,16851,64810,16831,87045,17172,64802,16839,16836,1801,17178,85916,1821,17185,87125,16828,16840,16829,64805,87128) AND `id` = 183043;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID + 0001 AND @OGUID + 0042;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID + 0001, 183043, 530, 1, 426.372, 7143.61, 23.2572, -0.663223, 0, 0, -0.325567, 0.945519, 45, 90, 100, 1), -- 1801
(@OGUID + 0002, 183043, 530, 1, 565.942, 7985.94, 21.6704, -0.680679, 0, 0, -0.333807, 0.942641, 45, 90, 100, 1), -- 1821
(@OGUID + 0003, 183043, 530, 1, -593.064, 5314.64, 22.9118, -0.575957, 0, 0, -0.284015, 0.95882, 45, 90, 100, 1), -- 16820
(@OGUID + 0004, 183043, 530, 1, -448.393, 5388.17, 22.3863, 0.837757, 0, 0, 0.406736, 0.913546, 45, 90, 100, 1), -- 16824
(@OGUID + 0005, 183043, 530, 1, 698.649, 7816.91, 22.2145, -2.56563, 0, 0, -0.958819, 0.284017, 45, 90, 100, 1), -- 16828
(@OGUID + 0006, 183043, 530, 1, 919.076, 7500.88, 22.2466, 1.74533, 0, 0, 0.766045, 0.642787, 45, 90, 100, 1), -- 16829
(@OGUID + 0007, 183043, 530, 1, 154.377, 8310.03, 23.5881, -0.366518, 0, 0, -0.182235, 0.983255, 45, 90, 100, 1), -- 16831
(@OGUID + 0008, 183043, 530, 1, -91.6731, 5906.3, 22.4416, -2.91469, 0, 0, -0.993571, 0.113208, 45, 90, 100, 1), -- 16834
(@OGUID + 0009, 183043, 530, 1, -666.829, 5724.52, 20.9599, -2.28638, 0, 0, -0.909961, 0.414694, 45, 90, 100, 1), -- 16835
(@OGUID + 0010, 183043, 530, 1, 402.496, 8050.45, 24.0536, -1.46608, 0, 0, -0.669132, 0.743144, 45, 90, 100, 1), -- 16836
(@OGUID + 0011, 183043, 530, 1, -228.201, 5812.67, 23.5458, -1.69297, 0, 0, -0.748956, 0.66262, 45, 90, 100, 1), -- 16837
(@OGUID + 0012, 183043, 530, 1, 248.869, 5376.13, 22.2604, -0.855211, 0, 0, -0.414693, 0.909961, 45, 90, 100, 1), -- 16839
(@OGUID + 0013, 183043, 530, 1, 705.322, 5845.69, 27.0197, -0.104719, 0, 0, -0.0523356, 0.99863, 45, 90, 100, 1), -- 16840
(@OGUID + 0014, 183043, 530, 1, -211.253, 6958.59, 20.9092, -1.43117, 0, 0, -0.656059, 0.75471, 45, 90, 100, 1), -- 16847
(@OGUID + 0015, 183043, 530, 1, -1027.54, 5276.3, 22.8396, 1.76278, 0, 0, 0.771624, 0.636079, 45, 90, 100, 1), -- 16850
(@OGUID + 0016, 183043, 530, 1, 42.8332, 7622.71, 23.872, 0, 0, 0, 0, 1, 45, 90, 100, 1), -- 16851
(@OGUID + 0017, 183043, 530, 1, 235.551, 5897.5, 22.0829, 1.78023, 0, 0, 0.777144, 0.629323, 45, 90, 100, 1), -- 17172
(@OGUID + 0018, 183043, 530, 1, 541.682, 5959.59, 22.2652, 2.1293, 0, 0, 0.874619, 0.48481, 45, 90, 100, 1), -- 17178
(@OGUID + 0019, 183043, 530, 1, -492.669, 5920.06, 24.1321, -1.88495, 0, 0, -0.809015, 0.587788, 45, 90, 100, 1), -- 17180
(@OGUID + 0020, 183043, 530, 1, 568.935, 7617.03, 21.8145, 2.30383, 0, 0, 0.913544, 0.406739, 45, 90, 100, 1), -- 17185
(@OGUID + 0021, 183043, 530, 1, -83.7279, 8736.5, 20.927, -1.79769, 0, 0, -0.782608, 0.622514, 45, 90, 100, 1), -- 17665
(@OGUID + 0022, 183043, 530, 1, -87.9494, 8452.43, 22.1782, 0.191985, 0, 0, 0.0958451, 0.995396, 45, 90, 100, 1), -- 17844
(@OGUID + 0023, 183043, 530, 1, 243.617, 7459.68, 23.4179, -2.35619, 0, 0, -0.923879, 0.382686, 45, 90, 100, 1), -- 64802
(@OGUID + 0024, 183043, 530, 1, 1003.67, 7841.74, 23.5655, 2.40855, 0, 0, 0.93358, 0.35837, 45, 90, 100, 1), -- 64805
(@OGUID + 0025, 183043, 530, 1, -328.464, 6013.14, 22.2611, 1.69297, 0, 0, 0.748956, 0.66262, 45, 90, 100, 1), -- 64806
(@OGUID + 0026, 183043, 530, 1, -718.884, 5976.53, 24.4484, 2.75761, 0, 0, 0.981626, 0.190814, 45, 90, 100, 1), -- 64807
(@OGUID + 0027, 183043, 530, 1, -147.011, 7711.9, 23.4578, -0.052359, 0, 0, -0.0261765, 0.999657, 45, 90, 100, 1), -- 64808
(@OGUID + 0028, 183043, 530, 1, 6.31912, 8596.54, 22.0617, -2.87979, 0, 0, -0.991445, 0.130528, 45, 90, 100, 1), -- 64809
(@OGUID + 0029, 183043, 530, 1, 62.2853, 8524.45, 21.7028, 1.0821, 0, 0, 0.515036, 0.857168, 45, 90, 100, 1), -- 64810
(@OGUID + 0030, 183043, 530, 1, 565.138, 7758.17, 23.9002, 1.5708, 0, 0, 0.707108, 0.707106, 45, 90, 100, 1), -- 85916
(@OGUID + 0031, 183043, 530, 1, -815.432, 5197.01, 19.116, -1.44862, 0, 0, -0.662619, 0.748957, 45, 90, 100, 1), -- 85917
(@OGUID + 0032, 183043, 530, 1, -516.086, 5520.76, 23.8181, -0.523598, 0, 0, -0.258819, 0.965926, 45, 90, 100, 1), -- 85918
(@OGUID + 0033, 183043, 530, 1, -201.136, 8703.23, 20.4438, -0.506145, 0, 0, -0.25038, 0.968148, 45, 90, 100, 1), -- 85919
(@OGUID + 0034, 183043, 530, 1, -753.006, 5149.84, 21.7425, 2.23402, 0, 0, 0.898794, 0.438372, 45, 90, 100, 1), -- 85920
(@OGUID + 0035, 183043, 530, 1, 185.444, 5653.2, 23.4787, 0.418879, 0, 0, 0.207912, 0.978148, 45, 90, 100, 1), -- 87045
(@OGUID + 0036, 183043, 530, 1, 693.756, 8193.58, 23.2953, 1.32645, 0, 0, 0.615661, 0.788011, 45, 90, 100, 1), -- 87125
(@OGUID + 0037, 183043, 530, 1, -316.197, 8583.64, 20.1746, 1.36136, 0, 0, 0.629322, 0.777145, 45, 90, 100, 1), -- 87126
(@OGUID + 0038, 183043, 530, 1, -274.252, 7682.1, 21.2547, -0.837757, 0, 0, -0.406736, 0.913546, 45, 90, 100, 1), -- 87127
(@OGUID + 0039, 183043, 530, 1, 1140.83, 8699.95, 18.7153, -2.49582, 0, 0, -0.948324, 0.317305, 45, 90, 100, 1), -- 87128
(@OGUID + 0040, 183043, 530, 1, -987.62, 5225.53, 22.5514, 0.226892, 0, 0, 0.113203, 0.993572, 45, 90, 100, 1), -- 87398
(@OGUID + 0041, 183043, 530, 1, -942.452, 5153.56, 23.3949, -0.314158, 0, 0, -0.156434, 0.987688, 45, 90, 100, 1), -- 87399
-- NEW
(@OGUID + 0042, 183043, 530, 1, 781.3691, 6494.622, 20.87061, -1.186824, 0, 0, 0, 0, 45, 90, 100, 1),
(@OGUID + 0043, 183043, 530, 1, 627.611, 5326.46, -25.0848, 2.21657, 0, 0, 0.894935, 0.446197, 45, 90, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN @OGUID + 0001 AND @OGUID + 0042;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@OGUID + 0041, 13049, 0, 'Ragveil zone 3521, node 376'), -- Zangarmarsh
(@OGUID + 0030, 13049, 0, 'Ragveil zone 3521, node 330'),
(@OGUID + 0029, 13049, 0, 'Ragveil zone 3521, node 293'),
(@OGUID + 0028, 13049, 0, 'Ragveil zone 3521, node 292'),
(@OGUID + 0027, 13049, 0, 'Ragveil zone 3521, node 291'),
(@OGUID + 0026, 13049, 0, 'Ragveil zone 3521, node 290'),
(@OGUID + 0025, 13049, 0, 'Ragveil zone 3521, node 289'),
(@OGUID + 0024, 13049, 0, 'Ragveil zone 3521, node 288'),
(@OGUID + 0023, 13049, 0, 'Ragveil zone 3521, node 285'),
(@OGUID + 0031, 13049, 0, 'Ragveil zone 3521, node 331'),
(@OGUID + 0032, 13049, 0, 'Ragveil zone 3521, node 332'),
(@OGUID + 0040, 13049, 0, 'Ragveil zone 3521, node 375'),
(@OGUID + 0039, 13049, 0, 'Ragveil zone 3521, node 363'),
(@OGUID + 0038, 13049, 0, 'Ragveil zone 3521, node 362'),
(@OGUID + 0037, 13049, 0, 'Ragveil zone 3521, node 361'),
(@OGUID + 0036, 13049, 0, 'Ragveil zone 3521, node 360'),
(@OGUID + 0035, 13049, 0, 'Ragveil zone 3521, node 356'),
(@OGUID + 0034, 13049, 0, 'Ragveil zone 3521, node 334'),
(@OGUID + 0033, 13049, 0, 'Ragveil zone 3521, node 333'),
(@OGUID + 0022, 13049, 0, 'Ragveil zone 3521, node 32'),
(@OGUID + 0021, 13049, 0, 'Ragveil zone 3521, node 30'),
(@OGUID + 0020, 13049, 0, 'Ragveil zone 3521, node 29'),
(@OGUID + 0009, 13049, 0, 'Ragveil zone 3521, node 13'),
(@OGUID + 0008, 13049, 0, 'Ragveil zone 3521, node 12'),
(@OGUID + 0007, 13049, 0, 'Ragveil zone 3521, node 11'),
(@OGUID + 0006, 13049, 0, 'Ragveil zone 3521, node 10'),
(@OGUID + 0005, 13049, 0, 'Ragveil zone 3521, node 9'),
(@OGUID + 0004, 13049, 0, 'Ragveil zone 3521, node 7'),
(@OGUID + 0003, 13049, 0, 'Ragveil zone 3521, node 6'),
(@OGUID + 0002, 13049, 0, 'Ragveil zone 3521, node 3'),
(@OGUID + 0010, 13049, 0, 'Ragveil zone 3521, node 14'),
(@OGUID + 0011, 13049, 0, 'Ragveil zone 3521, node 15'),
(@OGUID + 0019, 13049, 0, 'Ragveil zone 3521, node 28'),
(@OGUID + 0018, 13049, 0, 'Ragveil zone 3521, node 27'),
(@OGUID + 0017, 13049, 0, 'Ragveil zone 3521, node 25'),
(@OGUID + 0016, 13049, 0, 'Ragveil zone 3521, node 24'),
(@OGUID + 0015, 13049, 0, 'Ragveil zone 3521, node 23'),
(@OGUID + 0014, 13049, 0, 'Ragveil zone 3521, node 21'),
(@OGUID + 0013, 13049, 0, 'Ragveil zone 3521, node 17'),
(@OGUID + 0012, 13049, 0, 'Ragveil zone 3521, node 16'),
(@OGUID + 0001, 13049, 0, 'Ragveil zone 3521, node 2'),
(@OGUID + 0042, 13049, 0, 'Zangarmarsh - Ragveil'),
(@OGUID + 0043, 13049, 0, 'Zangarmarsh - Ragveil');

-- Felweed 183044 - Zangarmarsh
SET @OGUID := 5303700;
-- https://tbc.wowhead.com/object=183044/felweed
-- DELETE FROM `gameobject` WHERE `guid` IN (20409,20424,87401,64819,85924,64818,85921,87131,87132,18533,18557,20417,20411,64825,85929,64822,85925,18573,20418,18545,85923,18548,87400,18899,87402,20422,64813,64817,17909,18546,18138,64816,85927,18516,64815,64820,87129,18563,18907,18584,64823,64821,18515,18581,85926,20421,20390,85922,85928,64824,85930,87130,64812,64814) AND `id` = 183044; 
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID + 0001 AND @OGUID + 0054 AND `id` = 183044;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID + 0001, 183044, 530, 1, 143.688, 8267.77, 24.0408, -0.296705, 0, 0, -0.147809, 0.989016, 45, 90, 100, 1), -- 17909
(@OGUID + 0002, 183044, 530, 1, 175.227, 7111.79, 36.7445, 2.37364, 0, 0, 0.927182, 0.37461, 45, 90, 100, 1), -- 18138
(@OGUID + 0003, 183044, 530, 1, 638.299, 7975.31, 23.4485, 0.750491, 0, 0, 0.366501, 0.930418, 45, 90, 100, 1), -- 18515
(@OGUID + 0004, 183044, 530, 1, 259.757, 6702.26, 21.7966, -0.331611, 0, 0, -0.165047, 0.986286, 45, 90, 100, 1), -- 18516
(@OGUID + 0005, 183044, 530, 1, -358.342, 7237.67, 53.0642, 0.802851, 0, 0, 0.390731, 0.920505, 45, 90, 100, 1), -- 18533
(@OGUID + 0006, 183044, 530, 1, -102.516, 6474.08, 21.0469, 2.26892, 0, 0, 0.906306, 0.422622, 45, 90, 100, 1), -- 18545
(@OGUID + 0007, 183044, 530, 1, 152.129, 8227.68, 24.2698, 1.95477, 0, 0, 0.829038, 0.559192, 45, 90, 100, 1), -- 18546
(@OGUID + 0008, 183044, 530, 1, -79.1946, 7128.44, 18.6944, 2.89724, 0, 0, 0.992546, 0.121873, 45, 90, 100, 1), -- 18548
(@OGUID + 0009, 183044, 530, 1, -343.156, 6237.8, 22.4512, 1.41372, 0, 0, 0.649449, 0.760405, 45, 90, 100, 1), -- 18557
(@OGUID + 0010, 183044, 530, 1, 471.671, 7652.17, 22.8873, 1.91986, 0, 0, 0.819151, 0.573577, 45, 90, 100, 1), -- 18563
(@OGUID + 0011, 183044, 530, 1, -153.086, 7600.67, 23.177, 0.733038, 0, 0, 0.358368, 0.93358, 45, 90, 100, 1), -- 18573
(@OGUID + 0012, 183044, 530, 1, 655.049, 5877.04, 23.5046, 2.37364, 0, 0, 0.927182, 0.37461, 45, 90, 100, 1), -- 18581
(@OGUID + 0013, 183044, 530, 1, 510.057, 5267.46, -6.22912, 1.79769, 0, 0, 0.782608, 0.622514, 45, 90, 100, 1), -- 18584
(@OGUID + 0014, 183044, 530, 1, 19.527, 6258.65, 23.5913, 0.715585, 0, 0, 0.350207, 0.936672, 45, 90, 100, 1), -- 18899
(@OGUID + 0015, 183044, 530, 1, 497.928, 6595.08, 24.2643, -0.017452, 0, 0, -0.00872589, 0.999962, 45, 90, 100, 1), -- 18907
(@OGUID + 0016, 183044, 530, 1, 761.276, 7713.41, 22.8221, -0.401425, 0, 0, -0.199368, 0.979925, 45, 90, 100, 1), -- 20390
(@OGUID + 0017, 183044, 530, 1, -1110.94, 5683.81, 57.6397, -0.453785, 0, 0, -0.224951, 0.97437, 45, 90, 100, 1), -- 20409
(@OGUID + 0018, 183044, 530, 1, -254.169, 8525.84, 22.849, 2.84488, 0, 0, 0.989015, 0.147813, 45, 90, 100, 1), -- 20411
(@OGUID + 0019, 183044, 530, 1, -266.048, 8027.55, 21.2469, -0.767944, 0, 0, -0.374606, 0.927184, 45, 90, 100, 1), -- 20417
(@OGUID + 0020, 183044, 530, 1, -146.783, 5957.64, 23.0388, -2.89724, 0, 0, -0.992546, 0.121873, 45, 90, 100, 1), -- 20418
(@OGUID + 0021, 183044, 530, 1, 748.576, 7815.99, 22.0431, 0.087266, 0, 0, 0.0436192, 0.999048, 45, 90, 100, 1), -- 20421
(@OGUID + 0022, 183044, 530, 1, 48.4971, 6051.69, 23.0459, -1.01229, 0, 0, -0.484809, 0.87462, 45, 90, 100, 1), -- 20422
(@OGUID + 0023, 183044, 530, 1, -949.632, 5780.41, 23.4733, -1.83259, 0, 0, -0.793352, 0.608764, 45, 90, 100, 1), -- 20424
(@OGUID + 0024, 183044, 530, 1, 1641.39, 8471.79, -15.3602, -1.13446, 0, 0, -0.537298, 0.843393, 45, 90, 100, 1), -- 64812
(@OGUID + 0025, 183044, 530, 1, 82.9006, 6623.56, 21.1425, 1.44862, 0, 0, 0.662619, 0.748957, 45, 90, 100, 1), -- 64813
(@OGUID + 0026, 183044, 530, 1, 1696.39, 8502.11, -3.7466, 1.90241, 0, 0, 0.814116, 0.580702, 45, 90, 100, 1), -- 64814
(@OGUID + 0027, 183044, 530, 1, 327.147, 5491.48, 22.0872, 0.59341, 0, 0, 0.292371, 0.956305, 45, 90, 100, 1), -- 64815
(@OGUID + 0028, 183044, 530, 1, 194.828, 7491.24, 23.5761, -1.51844, 0, 0, -0.688356, 0.725373, 45, 90, 100, 1), -- 64816
(@OGUID + 0029, 183044, 530, 1, 119.747, 6697.34, 22.5859, 0.471238, 0, 0, 0.233445, 0.97237, 45, 90, 100, 1), -- 64817
(@OGUID + 0030, 183044, 530, 1, -633.751, 5704.89, 24.3107, 1.43117, 0, 0, 0.656059, 0.75471, 45, 90, 100, 1), -- 64818
(@OGUID + 0031, 183044, 530, 1, -644.698, 6069.53, 22.7865, 0.872664, 0, 0, 0.422618, 0.906308, 45, 90, 100, 1), -- 64819
(@OGUID + 0032, 183044, 530, 1, 390.808, 5687.1, 22.5539, -0.139624, 0, 0, -0.0697553, 0.997564, 45, 90, 100, 1), -- 64820
(@OGUID + 0033, 183044, 530, 1, 605.202, 5425.54, -14.3271, 2.1293, 0, 0, 0.874619, 0.48481, 45, 90, 100, 1), -- 64821
(@OGUID + 0034, 183044, 530, 1, -159.488, 7313.52, 23.2769, 0.244346, 0, 0, 0.121869, 0.992546, 45, 90, 100, 1), -- 64822
(@OGUID + 0035, 183044, 530, 1, 511.42, 6221.3, 22.0683, 0.610864, 0, 0, 0.300705, 0.953717, 45, 90, 100, 1), -- 64823
(@OGUID + 0036, 183044, 530, 1, 851.326, 7843.07, 23.1184, 3.14159, 0, 0, 1, 0.00000126759, 45, 90, 100, 1), -- 64824
(@OGUID + 0037, 183044, 530, 1, -179.949, 7112.65, 22.2852, -3.12412, 0, 0, -0.999962, 0.00873622, 45, 90, 100, 1), -- 64825
(@OGUID + 0038, 183044, 530, 1, -559.956, 5839.79, 22.2477, -1.27409, 0, 0, -0.594823, 0.803857, 45, 90, 100, 1), -- 85921
(@OGUID + 0039, 183044, 530, 1, 772.77, 6651.39, 21.4402, 2.28638, 0, 0, 0.909961, 0.414694, 45, 90, 100, 1), -- 85922
(@OGUID + 0040, 183044, 530, 1, -87.3155, 8390.23, 22.3368, -2.53072, 0, 0, -0.953716, 0.300709, 45, 90, 100, 1), -- 85923
(@OGUID + 0041, 183044, 530, 1, -641.092, 5427.96, 23.4402, -0.471238, 0, 0, -0.233445, 0.97237, 45, 90, 100, 1), -- 85924
(@OGUID + 0042, 183044, 530, 1, -153.524, 6277.64, 23.4854, 2.67035, 0, 0, 0.972369, 0.233447, 45, 90, 100, 1), -- 85925
(@OGUID + 0043, 183044, 530, 1, 721.318, 5051.68, 8.10227, 0.90757, 0, 0, 0.438371, 0.898794, 45, 90, 100, 1), -- 85926
(@OGUID + 0044, 183044, 530, 1, 233.681, 5173.15, 25.0649, 2.33874, 0, 0, 0.920505, 0.390732, 45, 90, 100, 1), -- 85927
(@OGUID + 0045, 183044, 530, 1, 827.323, 6854.74, 22.4411, -2.82743, 0, 0, -0.987688, 0.156436, 45, 90, 100, 1), -- 85928
(@OGUID + 0046, 183044, 530, 1, -174.226, 8367.76, 21.8792, -0.401425, 0, 0, -0.199368, 0.979925, 45, 90, 100, 1), -- 85929
(@OGUID + 0047, 183044, 530, 1, 1007.71, 7645.8, 22.8247, -3.08918, 0, 0, -0.999657, 0.0262033, 45, 90, 100, 1), -- 85930
(@OGUID + 0048, 183044, 530, 1, 450.32, 8706.11, 23.5782, -2.3911, 0, 0, -0.930417, 0.366502, 45, 90, 100, 1), -- 87129
(@OGUID + 0049, 183044, 530, 1, 1347.79, 8452.73, 17.3762, -0.139624, 0, 0, -0.0697553, 0.997564, 45, 90, 100, 1), -- 87130
(@OGUID + 0050, 183044, 530, 1, -462.815, 6420.1, 22.7552, 0.785397, 0, 0, 0.382683, 0.92388, 45, 90, 100, 1), -- 87131
(@OGUID + 0051, 183044, 530, 1, -391.044, 6378.4, 23.8637, 1.90241, 0, 0, 0.814116, 0.580702, 45, 90, 100, 1), -- 87132
(@OGUID + 0052, 183044, 530, 1, -14.6456, 6330.68, 22.5381, -2.30383, 0, 0, -0.913544, 0.406739, 45, 90, 100, 1), -- 87400
(@OGUID + 0053, 183044, 530, 1, -770.653, 5239.58, 19.2918, 2.30383, 0, 0, 0.913544, 0.406739, 45, 90, 100, 1), -- 87401
(@OGUID + 0054, 183044, 530, 1, 24.1495, 6383.34, 22.8483, -0.506145, 0, 0, -0.25038, 0.968148, 45, 90, 100, 1); -- 87402

DELETE FROM `pool_gameobject` WHERE `guid` IN (SELECT `guid` FROM `gameobject` WHERE `id` = 183044);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` AS `guid`, 13049,	0, 'Zangarmarsh - Felweed 183044' FROM `gameobject` WHERE `id` = 183044 AND `guid` IN (SELECT `guid` FROM `gameobject` WHERE `id` = 183044);

-- Dreaming Glory 183045 - Zangarmarsh & Terokkar
SET @OGUID := 5303800;
-- https://tbc.wowhead.com/object=183045/dreaming-glory
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID + 0001 AND @OGUID + 0003 AND `id` = 183045;
-- DELETE FROM `gameobject` WHERE `guid` IN (64829,64828,64826) AND `id` = 183045;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID + 0001, 183045, 530, 1, 356.197, 6847.93, 50.6674, -0.261798, 0, 0, -0.130525, 0.991445, 45, 90, 100, 1), -- 64826
(@OGUID + 0002, 183045, 530, 1, -41.36, 8003.33, 27.2424, 1.09956, 0, 0, 0.5225, 0.852639, 45, 90, 100, 1), -- 64828
(@OGUID + 0003, 183045, 530, 1, -981.633, 5905.04, 23.5975, -3.05433, 0, 0, -0.999048, 0.0436174, 45, 90, 100, 1); -- 64829

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN @OGUID + 0001 AND @OGUID + 0003;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@OGUID + 0001, 13049, 0, 'Dreaming Glory zone 3521, node 308'), -- Zangarmarsh
(@OGUID + 0002, 13049, 0, 'Dreaming Glory zone 3521, node 309'),
(@OGUID + 0003, 13049, 0, 'Dreaming Glory zone 3521, node 310');

-- Blindweed 183046 - Zangarmarsh
SET @OGUID := 5303900;
-- https://tbc.wowhead.com/object=183046/blindweed
DELETE FROM `gameobject` WHERE `guid` = 142412; -- Duplicate 142240
DELETE FROM `pool_gameobject` WHERE `guid` = 142412;
DELETE FROM `gameobject` WHERE `guid` = 142420; -- Duplicate 142236
DELETE FROM `pool_gameobject` WHERE `guid` = 142420;

-- ====================================================================
-- ==========          Herb Spawn Pool Improvements          ==========
-- ====================================================================

-- V6: HerbTotal / 5, minherb = 15, if max > 75 = 75
-- https://tbc.wowhead.com/news/upcoming-hotfixes-to-black-lotus-spawn-rate-and-warsong-gulch-exploits-316244
-- In original WoW, designers planned Black Lotus around a technical limitation – only 10 spawn locations per node type could be active at the same time in the same zone.
-- We no longer have that limitation, but it gives us a design intention that we can work with: Black Lotus was supposed to spawn in the widest variety of locations,
-- while there could only be one up at a time in each zone. As always, our goal is to minimize differences from original World of Warcraft,
-- and we feel this is a case where we can follow that design intention in a way that is warranted by modern conditions as well as beneficial to players.

-- ('13000','22','Master Herb Pool - Alterac Mountains') - 321 Total
UPDATE pool_template SET max_limit=64 WHERE entry IN (13000);

-- ('13001','22','Master Herb Pool - Arathi Highlands') - 547 Total
UPDATE pool_template SET max_limit=75 WHERE entry IN (13001);

-- ('13002','21','Master Herb Pool - Badlands') - 165 Total
UPDATE pool_template SET max_limit=33 WHERE entry IN (13002);

-- ('13003','22','Master Herb Pool - Blasted Lands') - 115 Total
UPDATE pool_template SET max_limit=23 WHERE entry IN (13003);

-- ('13004','23','Master Herb Pool - Burning Steppes') - 149 Total
UPDATE pool_template SET max_limit=30 WHERE entry IN (13004);

-- ('13005','23','Master Herb Pool - Dun Morogh') - 170 Total
UPDATE pool_template SET max_limit=34 WHERE entry IN (13005);

-- ('13006','24','Master Herb Pool - Duskwood') - 309 Total
UPDATE pool_template SET max_limit=62 WHERE entry IN (13006);

-- ('13007','23','Master Herb Pool - Eastern Plaguelands') - 452 Total
UPDATE pool_template SET max_limit=75 WHERE entry IN (13007);

-- ('13008','23','Master Herb Pool - Elwynn Forest') - 173 Total
UPDATE pool_template SET max_limit=35 WHERE entry IN (13008);

-- ('13009','23','Master Herb Pool - Eversong Woods') - 138 Total
UPDATE pool_template SET max_limit=28 WHERE entry IN (13009);

-- ('13010','21','Master Herb Pool - Ghostlands') - 152 Total
UPDATE pool_template SET max_limit=30 WHERE entry IN (13010);

-- ('13011','23','Master Herb Pool - Hillsbrad Foothills') - 294 Total
UPDATE pool_template SET max_limit=59 WHERE entry IN (13011);

-- ('13012','2','Master Herb Pool - Isle of Quel\'Danas') - 24 Total
UPDATE pool_template SET max_limit=5 WHERE entry IN (13012);

-- ('13013','23','Master Herb Pool - Loch Modan') - 241 Total
UPDATE pool_template SET max_limit=48 WHERE entry IN (13013);

-- ('13014','23','Master Herb Pool - Redridge Mountains') - 220 Total
UPDATE pool_template SET max_limit=44 WHERE entry IN (13014);

-- ('13015','19','Master Herb Pool - Searing Gorge') - 58 Total
UPDATE pool_template SET max_limit=15 WHERE entry IN (13015);

-- ('13016','23','Master Herb Pool - Silverpine Forest') - 254 Total
UPDATE pool_template SET max_limit=51 WHERE entry IN (13016);

-- ('13017','28','Master Herb Pool - Stranglethorn Vale') - 747 Total
UPDATE pool_template SET max_limit=75 WHERE entry IN (13017);

-- ('13018','22','Master Herb Pool - Swamp of Sorrows') - 408 Total
UPDATE pool_template SET max_limit=75 WHERE entry IN (13018);

-- ('13019','22','Master Herb Pool - The Hinterlands') - 376 Total
UPDATE pool_template SET max_limit=75 WHERE entry IN (13019);

-- ('13020','21','Master Herb Pool - Tirisfal Glades') - 200 Total
UPDATE pool_template SET max_limit=40 WHERE entry IN (13020);

-- ('13021','23','Master Herb Pool - Western Plaguelands') - 232 Total
UPDATE pool_template SET max_limit=46 WHERE entry IN (13021);

-- ('13022','23','Master Herb Pool - Westfall') - 322 Total
UPDATE pool_template SET max_limit=64 WHERE entry IN (13022);

-- ('13023','22','Master Herb Pool - Wetlands') - 429 Total
UPDATE pool_template SET max_limit=75 WHERE entry IN (13023);

-- ('13024','23','Master Herb Pool - Ashenvale') - 469 Total
UPDATE pool_template SET max_limit=75 WHERE entry IN (13024);

-- ('13025','22','Master Herb Pool - Azshara') - 533 Total
UPDATE pool_template SET max_limit=75 WHERE entry IN (13025);

-- ('13026','21','Master Herb Pool - Azuremyst Isle') - 133 Total
UPDATE pool_template SET max_limit=27 WHERE entry IN (13026);

-- ('13027','20','Master Herb Pool - Bloodmyst Isle') - 170 Total
UPDATE pool_template SET max_limit=34 WHERE entry IN (13027);
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 161772 AND 161917;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` AS `guid`, 13027,	0, 'Bloodmyst Isle - Silverleaf' FROM `gameobject` WHERE `id` = 1617 AND `guid` BETWEEN 161772 AND 161917;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` AS `guid`, 13027,	0, 'Bloodmyst Isle - Peacebloom' FROM `gameobject` WHERE `id` = 1618 AND `guid` BETWEEN 161772 AND 161917;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` AS `guid`, 13027,	0, 'Bloodmyst Isle - Earthroot' FROM `gameobject` WHERE `id` = 1619 AND `guid` BETWEEN 161772 AND 161917;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` AS `guid`, 13027,	0, 'Bloodmyst Isle - Mageroyal' FROM `gameobject` WHERE `id` = 1620 AND `guid` BETWEEN 161772 AND 161917;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` AS `guid`, 13027,	0, 'Bloodmyst Isle - Briarthorn' FROM `gameobject` WHERE `id` = 1621 AND `guid` BETWEEN 161772 AND 161917;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` AS `guid`, 13027,	0, 'Bloodmyst Isle - Bruiseweed' FROM `gameobject` WHERE `id` = 1622 AND `guid` BETWEEN 161772 AND 161917;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` AS `guid`, 13027,	0, 'Bloodmyst Isle - Stranglekelp' FROM `gameobject` WHERE `id` = 2045 AND `guid` BETWEEN 161772 AND 161917;

-- ('13028','23','Master Herb Pool - Darkshore') - 381 Total
UPDATE pool_template SET max_limit=75 WHERE entry IN (13028);

-- ('13029','21','Master Herb Pool - Desolace') - 173 Total
UPDATE pool_template SET max_limit=35 WHERE entry IN (13029);

-- ('13030','23','Master Herb Pool - Durotar') - 298 Total
UPDATE pool_template SET max_limit=60 WHERE entry IN (13030);

-- ('13031','21','Master Herb Pool - Dustwallow Marsh') - 179 Total
UPDATE pool_template SET max_limit=36 WHERE entry IN (13031);

-- ('13032','21','Master Herb Pool - Felwood') - 330 Total
UPDATE pool_template SET max_limit=66 WHERE entry IN (13032);

-- ('13033','22','Master Herb Pool - Feralas') - 266 Total
UPDATE pool_template SET max_limit=53 WHERE entry IN (13033);

-- ('13034','23','Master Herb Pool - Mulgore') - 192 Total
UPDATE pool_template SET max_limit=38 WHERE entry IN (13034);

-- ('13035','21','Master Herb Pool - Silithus') - 69 Total
UPDATE pool_template SET max_limit=15 WHERE entry IN (13035);

-- ('13036','21','Master Herb Pool - Stonetalon Mountians') - 300 Total
UPDATE pool_template SET max_limit=60 WHERE entry IN (13036);
UPDATE `pool_template` SET `description` = 'Master Herb Pool - Stonetalon Mountains' WHERE `entry` = 13036;

-- ('13037','20','Master Herb Pool - Tanaris') - 126 Total
UPDATE pool_template SET max_limit=25 WHERE entry IN (13037);

-- ('13038','21','Master Herb Pool - Teldrassil') - 159 Total
UPDATE pool_template SET max_limit=32 WHERE entry IN (13038);

-- ('13039','34','Master Herb Pool - The Barrens') - 1044 Total
UPDATE pool_template SET max_limit=75 WHERE entry IN (13039);

-- ('13040','20','Master Herb Pool - Thousand Needles') - 120 Total
UPDATE pool_template SET max_limit=24 WHERE entry IN (13040);

-- ('13041','22','Master Herb Pool - Un\'Goro Crater') - 300 Total
UPDATE pool_template SET max_limit=60 WHERE entry IN (13041);

-- ('13042','20','Master Herb Pool - Winterspring') - 292 Total
UPDATE pool_template SET max_limit=58 WHERE entry IN (13042);

-- ('13043','23','Master Herb Pool - Blades Edge Mountains') - 123 Total
UPDATE pool_template SET max_limit=24 WHERE entry IN (13043);

-- ('13044','25','Master Herb Pool - Hellfire Peninsula') - 319 Total
UPDATE pool_template SET max_limit=64 WHERE entry IN (13044);

-- ('13045','25','Master Herb Pool - Nagrand') - 149 Total
UPDATE pool_template SET max_limit=30 WHERE entry IN (13045);

-- ('13046','25','Master Herb Pool - Netherstorm') - 72 Total
UPDATE pool_template SET max_limit=15 WHERE entry IN (13046);

-- ('13047','25','Master Herb Pool - Shadowmoon Valley') - 88 Total
UPDATE pool_template SET max_limit=18 WHERE entry IN (13047);

-- ('13048','25','Master Herb Pool - Terokkar Forest') - 247 Total
UPDATE pool_template SET max_limit=49 WHERE entry IN (13048);

-- ('13049','25','Master Herb Pool - Zangarmarsh') - 366 Total
UPDATE pool_template SET max_limit=73 WHERE entry IN (13049);

DELETE FROM `pool_template` WHERE `entry` IN (13052,13053,13054);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(13052, 3, 'Hellfire Peninsula - Nightmare Vine (181280)'), -- 15 Total
(13053, 3, ' Blade''s Edge Mountains - Nightmare Vine (181280)'), -- 15 Total
(13054, 15, 'Shadowmoon Valley - Nightmare Vine (181280)'); -- 77 Total

DELETE FROM `pool_template` WHERE `entry` = 13055;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(13055, 18, 'Netherstorm - Netherbloom (181279)'); -- 92 Total

DELETE FROM `pool_template` WHERE `entry` IN (13056,13057);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(13056, 3, 'Zangarmarsh (Funggor Cavern) - Ghost Mushroom (142144)'), -- 12 Total
(13057, 2, 'Zangarmarsh (Ango''rosh Stronghold) - Ghost Mushroom (142144)'); -- 8 Total

-- 13050 15 Master Herb Pool - Shadowmoon Valley - Netherdust Bush (185881) - 86 Total (pool_gameobject_template)
UPDATE pool_template SET max_limit=17 WHERE entry IN (13050);

-- 13051 20 Master Herb Pool - Isle of Quel'Danas - Bloodberry Bush (187333) - 70 Total (pool_gameobject_template)
UPDATE pool_template SET max_limit=23 WHERE entry IN (13051);

