-- https://github.com/cmangos/tbc-db/pull/1190
-- Add missing Ectoplasmic Distiller object.
DELETE FROM `gameobject_template` WHERE entry = 181057;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `ExtraFlags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `CustomData1`, `mingold`, `maxgold`, `StringId`, `ScriptName`) VALUES
(181057, 8, 6659, 'Ectoplasmic Distiller', 0, 0, 0, 1.4, 0, 10, 181054, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

