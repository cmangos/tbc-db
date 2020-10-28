-- reduce Hakkar hit box
UPDATE creature_model_info SET combat_reach=2 WHERE modelid=15295;
-- make poison cloud spawned by son of hakkar not targettable
UPDATE creature_template SET UnitFlags=33554432 WHERE entry=14989;


