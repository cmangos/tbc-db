-- DB Error cleanup

-- no need for these addons (creature_template_addon used instead)
DELETE FROM creature_addon WHERE guid IN (37601,38670,38705,38706,38707,38708,38710,38791,38882,38925,38934,38947,38948,38949,38950,38954,38956,38960,38964,39549,40157,40158,40183,40199,67912,67914,67915,67917,67919,67920,67924,71396,73268,73271,75202,75205,75206,75208,75212);

-- Add missing template from Classic-DB
DELETE FROM gameobject_template WHERE entry=180055;
INSERT INTO gameobject_template (entry, type, displayId, name, faction, flags, ExtraFlags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, CustomData1, mingold, maxgold, ScriptName) VALUES
(180055, 2, 318, 'Mysterious Wailing Caverns Chest', 0, 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');


