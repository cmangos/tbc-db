-- Fixed completion of quest 8868 (Elune's Blessing)
-- Added missing GO
DELETE FROM gameobject_template WHERE entry=180877;
INSERT INTO gameobject_template (entry,type,displayId,name,faction,flags,ExtraFlags,size,data0,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12,data13,data14,data15,data16,data17,data18,data19,data20,data21,data22,data23,CustomData1,mingold,maxgold,ScriptName) VALUES
(180877, 6, 0, 'Elune\'s Blessing TRAP QUESTCREDIT', 0, 0, 0, 1, 0, 0, 5, 26394, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Fixed GO trap radius
UPDATE gameobject_template SET displayid=0, data2=5 WHERE entry=180876;
