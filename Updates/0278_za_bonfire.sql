-- Add missing Bonfire used in Zul'Aman for completeness reasons - Source: wotlk-db
DELETE FROM `gameobject_template` WHERE `entry` = 191460;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `faction`, `flags`, `ExtraFlags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `CustomData1`, `mingold`, `maxgold`, `ScriptName`) VALUES
(191460, 8, 6411, 'Bonfire', '', '', 0, 0, 0, 1.10627, 4, 10, 2066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

