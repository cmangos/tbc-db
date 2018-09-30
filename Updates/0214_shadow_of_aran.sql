-- correct data for Shadow Of Aran
UPDATE creature_template SET MinLevel=70,MaxLevel=70,FactionAlliance=168,FactionHorde=168,UnitFlags=32768,SpeedRun=12/7 WHERE entry IN(18254);
UPDATE creature_model_info SET bounding_radius=0.5508,combat_reach=2.7 WHERE modelid=17644;

