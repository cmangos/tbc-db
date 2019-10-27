-- correct 2.4.1 speeds and model data
UPDATE creature_template SET SpeedWalk=2.5/2.5,SpeedRun=8/7 WHERE entry IN(17877);
UPDATE creature_model_info SET bounding_radius=0.31,combat_reach=3 WHERE modelid IN(18228);

