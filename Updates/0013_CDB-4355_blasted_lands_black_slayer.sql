-- https://github.com/cmangos/classic-db/commit/3e4b3332249f475616b110b9d8a172e8db64bfcd
DELETE FROM `creature` WHERE (`guid` IN (
3836, -- 140187
3837, -- 140185
3838, -- 140184
3938, -- 140181 patrol
3928, -- 140182
3929, -- 140183
3916 -- 140186
)); -- Black Slayer
-- -- DELETE FROM `creature` WHERE (`guid` IN (3839, 3916, 3918, 3928, 3929)); -- Bonebiter, all of them exist in TBC+, 3839 & 3918 have patrol paths
DELETE FROM `creature` WHERE (`guid` IN (
3896, -- 140188
3898 -- 140189
)); -- 2 Scorpid Stinger, these are always Black Slayer in classic-wow, 5988 tbc

DELETE FROM `creature` WHERE (`guid` IN (
3860, -- 140193
3905 -- 140192
)); -- 2 Wretched Lost One, can also spawn as Black Slayer in classic-wow
DELETE FROM `creature_movement` WHERE (`id` IN (3860, 3905));

SET @CGUID := 140180;
SET @SGUID := 154;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID AND @CGUID + 013;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID + 000, 0, 0, 1, -11580.8232421875, -3182.214355468750, 7.074623584747314453, 2.548180580139160156, 300, 300, 00, 4), -- Blasted Lands - Black Slayer (1) Patrol 000
(@CGUID + 001, 0, 0, 1, -11149.6992187500, -3335.627685546875, 7.274872303009033203, 4.885375976562500000, 300, 300, 00, 4), -- Blasted Lands - Black Slayer (1) Patrol 001
(@CGUID + 002, 0, 0, 1, -11556.2392578125, -3073.159423828125, 7.897656440734863281, 0.294780194759368896, 300, 300, 02, 1), -- Blasted Lands - Black Slayer (1) Wandering 000
(@CGUID + 003, 0, 0, 1, -11562.3964843750, -3082.123291015625, 6.294155597686767578, 1.998706698417663574, 300, 300, 02, 1), -- Blasted Lands - Black Slayer (1) Wandering 001
(@CGUID + 004, 0, 0, 1, -11402.5429687500, -3142.259277343750, 13.27161788940429687, 5.188477039337158203, 300, 300, 02, 1), -- Blasted Lands - Black Slayer (1) Wandering 002
(@CGUID + 005, 0, 0, 1, -11380.7177734375, -3117.438476562500, 3.662009239196777343, 2.623294830322265625, 300, 300, 02, 1), -- Blasted Lands - Black Slayer (1) Wandering 003
(@CGUID + 006, 0, 0, 1, -11377.2255859375, -3065.978759765625, -4.37762641906738281, 1.279655575752258300, 300, 300, 02, 1), -- Blasted Lands - Black Slayer (1) Wandering 004
(@CGUID + 007, 0, 0, 1, -11160.4111328125, -3342.360595703125, 4.469780445098876953, 5.916666030883789062, 300, 300, 02, 1), -- Blasted Lands - Black Slayer (1) Wandering 005
(@CGUID + 008, 0, 0, 1, -10947.1728515625, -2914.352783203125, 8.268877029418945312, 0.467801064252853393, 300, 300, 02, 1), -- Blasted Lands - Black Slayer (1) Wandering 006
(@CGUID + 009, 0, 0, 1, -10956.4365234375, -2924.397949218750, 10.06605720520019531, 3.755380153656005859, 300, 300, 02, 1), -- Blasted Lands - Black Slayer (1) Wandering 007
(@CGUID + 010, 0, 0, 1, -10985.1064453125, -2784.475830078125, 2.825718164443969726, 0.999858796596527099, 300, 300, 02, 1), -- Blasted Lands - Black Slayer (1) Wandering 008
(@CGUID + 011, 0, 0, 1, -10899.0478515625, -2866.749267578125, 19.75895690917968750, 1.989675283432006835, 300, 300, 00, 4), -- Blasted Lands - Wretched Lost One | Black Slayer (1) Patrol 000
(@CGUID + 012, 0, 0, 1, -11000.7958984375, -2886.656738281250, 9.870463371276855468, 4.865927219390869140, 300, 300, 00, 4), -- Blasted Lands - Wretched Lost One | Black Slayer (1) Patrol 001
(@CGUID + 013, 0, 0, 1, -11120.5292968750, -2725.100341796875, 11.83318424224853515, 1.482810378074645996, 300, 300, 00, 2); -- Blasted Lands - Wretched Lost One | Black Slayer (1) Patrol 002

DELETE FROM `spawn_group` WHERE `Id` BETWEEN @SGUID AND @SGUID + 013;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGUID + 000, 'Blasted Lands - Redstone Crystalhide (1) Patrol 000', 0, 0, 0, 0, 0),
(@SGUID + 001, 'Blasted Lands - Bonepicker (1) Patrol 001', 0, 0, 0, 0, 0),
(@SGUID + 002, 'Blasted Lands - Bonepicker (1) Wandering 000', 0, 0, 0, 0, 0),
(@SGUID + 003, 'Blasted Lands - Bonepicker (1) Wandering 001', 0, 0, 0, 0, 0),
(@SGUID + 004, 'Blasted Lands - Bonepicker (1) Wandering 002', 0, 0, 0, 0, 0),
(@SGUID + 005, 'Blasted Lands - Bonepicker (1) Wandering 003', 0, 0, 0, 0, 0),
(@SGUID + 006, 'Blasted Lands - Bonepicker (1) Wandering 004', 0, 0, 0, 0, 0),
(@SGUID + 007, 'Blasted Lands - Bonepicker (1) Wandering 005', 0, 0, 0, 0, 0),
(@SGUID + 008, 'Blasted Lands - Scorpok Stinger (1) Wandering 006', 0, 0, 0, 0, 0),
(@SGUID + 009, 'Blasted Lands - Scorpok Stinger (1) Wandering 007', 0, 0, 0, 0, 0),
(@SGUID + 010, 'Blasted Lands - Scorpok Stinger (1) Wandering 008', 0, 0, 0, 0, 0),
(@SGUID + 011, 'Blasted Lands - Wretched Lost One (1) Patrol 000', 0, 0, 0, 0, 0),
(@SGUID + 012, 'Blasted Lands - Wretched Lost One (1) Patrol 001', 0, 0, 0, 0, 0),
(@SGUID + 013, 'Blasted Lands - Wretched Lost One (1) Patrol 002', 0, 0, 0, 0, 0);

DELETE FROM `spawn_group_spawn` WHERE `Id` BETWEEN @SGUID AND @SGUID + 013;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGUID + 000, @CGUID + 000, 0, 0),
(@SGUID + 001, @CGUID + 001, 0, 0),
(@SGUID + 002, @CGUID + 002, 0, 0),
(@SGUID + 003, @CGUID + 003, 0, 0),
(@SGUID + 004, @CGUID + 004, 0, 0),
(@SGUID + 005, @CGUID + 005, 0, 0),
(@SGUID + 006, @CGUID + 006, 0, 0),
(@SGUID + 007, @CGUID + 007, 0, 0),
(@SGUID + 008, @CGUID + 008, 0, 0),
(@SGUID + 009, @CGUID + 009, 0, 0),
(@SGUID + 010, @CGUID + 010, 0, 0),
(@SGUID + 011, @CGUID + 011, 0, 0),
(@SGUID + 012, @CGUID + 012, 0, 0),
(@SGUID + 013, @CGUID + 013, 0, 0);

DELETE FROM `spawn_group_entry` WHERE `Id` BETWEEN @SGUID AND @SGUID + 013;
INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 000, 5991, 0, 0, 0),
(@SGUID + 001, 5983, 0, 0, 0),
(@SGUID + 002, 5983, 0, 0, 0), -- https://github.com/cmangos/classic-db/commit/3e4b3332249f475616b110b9d8a172e8db64bfcd#r114175553
(@SGUID + 003, 5983, 0, 0, 0), -- https://github.com/cmangos/classic-db/commit/3e4b3332249f475616b110b9d8a172e8db64bfcd#r114175553
(@SGUID + 004, 5983, 0, 0, 0), 
(@SGUID + 005, 5983, 0, 0, 0),
(@SGUID + 006, 5983, 0, 0, 0), -- https://github.com/cmangos/classic-db/commit/3e4b3332249f475616b110b9d8a172e8db64bfcd#r114175553
(@SGUID + 007, 5983, 0, 0, 0),
(@SGUID + 008, 5988, 0, 0, 0), -- tbc+ 5988 - https://github.com/cmangos/classic-db/commit/3e4b3332249f475616b110b9d8a172e8db64bfcd#r114175006
(@SGUID + 009, 5988, 0, 0, 0), -- tbc+ 5988 - https://github.com/cmangos/classic-db/commit/3e4b3332249f475616b110b9d8a172e8db64bfcd#r114175006
(@SGUID + 010, 5988, 0, 0, 0), -- tbc+ 5988 - https://github.com/cmangos/classic-db/commit/3e4b3332249f475616b110b9d8a172e8db64bfcd#r114175006
(@SGUID + 011, 5979, 0, 0, 0), -- https://github.com/cmangos/classic-db/commit/3e4b3332249f475616b110b9d8a172e8db64bfcd#r114174866
(@SGUID + 012, 5979, 0, 0, 0), -- https://github.com/cmangos/classic-db/commit/3e4b3332249f475616b110b9d8a172e8db64bfcd#r114174866
(@SGUID + 013, 5979, 0, 0, 0); -- https://github.com/cmangos/classic-db/commit/3e4b3332249f475616b110b9d8a172e8db64bfcd#r114174866

DELETE FROM `creature_movement` WHERE `Id` BETWEEN @CGUID AND @CGUID + 013;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CGUID + 000, 01, -11574.3349609375, -3177.580322265625, 7.077253341674804687, 100, 0, 0),
(@CGUID + 000, 02, -11555.1542968750, -3191.756103515625, 7.679084777832031250, 100, 0, 0),
(@CGUID + 000, 03, -11542.2607421875, -3222.371093750000, 7.215793132781982421, 100, 0, 0),
(@CGUID + 000, 04, -11518.8652343750, -3231.110351562500, 7.395200252532958984, 100, 0, 0),
(@CGUID + 000, 05, -11494.0839843750, -3236.802001953125, 12.29545688629150390, 100, 0, 0),
(@CGUID + 000, 06, -11466.1347656250, -3247.759765625000, 17.37906837463378906, 100, 0, 0),
(@CGUID + 000, 07, -11439.4501953125, -3244.576660156250, 12.09244728088378906, 100, 0, 0),
(@CGUID + 000, 08, -11416.5820312500, -3261.949218750000, 7.874382019042968750, 100, 0, 0),
(@CGUID + 000, 09, -11381.1015625000, -3255.145019531250, 5.812380790710449218, 100, 0, 0);

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CGUID + 001, 01, -11149.3251953125, -3337.761474609375, 7.826395034790039062, 100, 0, 0),
(@CGUID + 001, 02, -11162.9912109375, -3315.411132812500, 4.421508789062500000, 100, 0, 0),
(@CGUID + 001, 03, -11161.9482421875, -3289.550781250000, 5.246299743652343750, 100, 0, 0),
(@CGUID + 001, 04, -11178.9287109375, -3260.242675781250, 7.820431232452392578, 100, 0, 0),
(@CGUID + 001, 05, -11190.8281250000, -3226.915039062500, 8.724966049194335937, 100, 0, 0),
(@CGUID + 001, 06, -11201.9951171875, -3199.155761718750, 8.099186897277832031, 100, 0, 0),
(@CGUID + 001, 07, -11219.8847656250, -3165.442626953125, 7.024968147277832031, 100, 0, 0),
(@CGUID + 001, 08, -11220.6972656250, -3139.443359375000, 5.922429084777832031, 100, 0, 0),
(@CGUID + 001, 09, -11232.9355468750, -3095.292236328125, 3.815185070037841796, 100, 0, 0),
(@CGUID + 001, 10, -11235.6533203125, -3072.582031250000, 4.964619159698486328, 100, 0, 0);

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CGUID + 011, 01, -10912.0634765625, -2877.576660156250, 13.53593921661376953, 100, 0, 0),
(@CGUID + 011, 02, -10929.9785156250, -2847.772216796875, 11.43566608428955078, 100, 0, 0),
(@CGUID + 011, 03, -10947.3652343750, -2844.356689453125, 9.882669448852539062, 100, 0, 0),
(@CGUID + 011, 04, -10965.9287109375, -2826.812011718750, 9.201398849487304687, 100, 0, 0),
(@CGUID + 011, 05, -10975.4902343750, -2804.781250000000, 5.062310218811035156, 100, 0, 0),
(@CGUID + 011, 06, -10982.6064453125, -2780.399658203125, 4.808463096618652343, 100, 0, 0),
(@CGUID + 011, 07, -10992.4462890625, -2757.369628906250, 4.970278739929199218, 100, 0, 0),
(@CGUID + 011, 08, -11013.1416015625, -2738.141113281250, 5.884078025817871093, 100, 0, 0);

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CGUID + 012, 01, -11000.5595703125, -2888.183837890625, 9.753969192504882812, 100, 0, 0),
(@CGUID + 012, 02, -11012.8964843750, -2868.995361328125, 9.379213333129882812, 100, 0, 0),
(@CGUID + 012, 03, -11036.5673828125, -2867.507324218750, 9.300695419311523437, 100, 0, 0),
(@CGUID + 012, 04, -11055.4824218750, -2863.615478515625, 10.51587486267089843, 100, 0, 0),
(@CGUID + 012, 05, -11071.0439453125, -2871.154052734375, 9.778038024902343750, 100, 0, 0),
(@CGUID + 012, 06, -11085.7460937500, -2859.619140625000, 11.08268451690673828, 100, 0, 0),
(@CGUID + 012, 07, -11091.3007812500, -2842.644287109375, 14.94840717315673828, 100, 0, 0),
(@CGUID + 012, 08, -11090.6416015625, -2823.482421875000, 18.50168228149414062, 100, 0, 0),
(@CGUID + 012, 09, -11082.8095703125, -2807.870361328125, 11.17746257781982421, 100, 0, 0),
(@CGUID + 012, 10, -11072.0683593750, -2787.736328125000, 8.234523773193359375, 100, 0, 0),
(@CGUID + 012, 11, -11091.5703125000, -2774.224121093750, 12.45229721069335937, 100, 0, 0),
(@CGUID + 012, 12, -11114.7402343750, -2758.976318359375, 17.23969268798828125, 100, 0, 0),
(@CGUID + 012, 13, -11143.8720703125, -2746.637695312500, 15.22305202484130859, 100, 0, 0),
(@CGUID + 012, 14, -11170.8535156250, -2733.070312500000, 15.07990074157714843, 100, 0, 0),
(@CGUID + 012, 15, -11205.1845703125, -2727.850341796875, 14.58436012268066406, 100, 0, 0);

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CGUID + 013, 01, -11119.2158203125, -2710.318359375000, 11.59362411499023437, 100, 0, 0),
(@CGUID + 013, 02, -11135.3583984375, -2731.691894531250, 13.05368518829345703, 100, 0, 0),
(@CGUID + 013, 03, -11119.0771484375, -2758.417480468750, 17.58295440673828125, 100, 0, 0),
(@CGUID + 013, 04, -11093.2714843750, -2770.770507812500, 13.28408432006835937, 100, 0, 0),
(@CGUID + 013, 05, -11076.7978515625, -2785.354736328125, 8.547023773193359375, 100, 0, 0),
(@CGUID + 013, 06, -11057.9570312500, -2819.995605468750, 9.316370010375976562, 100, 0, 0),
(@CGUID + 013, 07, -11036.2314453125, -2838.878173828125, 12.77344322204589843, 100, 0, 0),
(@CGUID + 013, 08, -11019.7285156250, -2865.339355468750, 9.092391014099121093, 100, 0, 0),
(@CGUID + 013, 09, -10998.9580078125, -2883.407958984375, 9.747742652893066406, 100, 0, 0),
(@CGUID + 013, 10, -10975.2773437500, -2876.501220703125, 6.429139137268066406, 100, 0, 0),
(@CGUID + 013, 11, -10969.7441406250, -2854.104980468750, 5.817299842834472656, 100, 0, 0),
(@CGUID + 013, 12, -10956.2500000000, -2841.666015625000, 7.778665542602539062, 100, 0, 0),
(@CGUID + 013, 13, -10968.2998046875, -2830.959716796875, 9.886773109436035156, 100, 0, 0),
(@CGUID + 013, 14, -10998.9853515625, -2800.093017578125, 5.628228187561035156, 100, 0, 0),
(@CGUID + 013, 15, -11005.2783203125, -2773.620117187500, 4.317544937133789062, 100, 0, 0),
(@CGUID + 013, 16, -11008.5371093750, -2744.612792968750, 5.273482322692871093, 100, 0, 0),
(@CGUID + 013, 17, -11033.3613281250, -2725.946044921875, 8.216245651245117187, 100, 0, 0),
(@CGUID + 013, 18, -11055.3740234375, -2735.161865234375, 9.889304161071777343, 100, 0, 0),
(@CGUID + 013, 19, -11075.1787109375, -2743.744873046875, 10.05155372619628906, 100, 0, 0),
(@CGUID + 013, 20, -11099.5947265625, -2743.920410156250, 15.01981544494628906, 100, 0, 0);

-- Add CREATURE_EXTRA_FLAG_DYNGUID and align respawntimer for remaining/other creatures in that area that are not spawn_group
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` IN (5979,5981,5982,5983,5984,5985,5988,5990,5991,5992,5993);
REPLACE INTO `creature_template_addon` (`entry`, `sheath_state`, `auras`) VALUES (5993, 1, '12896'),(5992, 1, '12898 11966');
UPDATE `creature` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300 WHERE `id` IN ( -- 66/68 tbc due to extra two 5983, which should have path, down from 450 450
5979, -- https://www.wowhead.com/tbc/npc=5979/wretched-lost-one
5981, -- https://www.wowhead.com/tbc/npc=5981/portal-seeker
5982, -- https://www.wowhead.com/tbc/npc=5982/black-slayer#comments:id=191992
5983, -- https://www.wowhead.com/tbc/npc=5983/bonepicker#comments:id=191992
5984, -- https://www.wowhead.com/tbc/npc=5984/starving-snickerfang
5985, -- https://www.wowhead.com/tbc/npc=5985/snickerfang-hyena
5988, -- https://www.wowhead.com/tbc/npc=5988/scorpok-stinger
5990, -- https://www.wowhead.com/tbc/npc=5990/redstone-basilisk
5991, -- https://www.wowhead.com/tbc/npc=5991/redstone-crystalhide
5992, -- https://www.wowhead.com/tbc/npc=5992/ashmane-boar
5993 -- https://www.wowhead.com/tbc/npc=5993/helboar#abilities
);
