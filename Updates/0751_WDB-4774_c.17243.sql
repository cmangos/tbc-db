-- Engineer "Spark" Overgrind 17243
-- quest 9531 path corrected - down from 18 points
DELETE FROM creature_movement_template WHERE entry IN (17243);
INSERT INTO creature_movement_template (Entry, PathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(17243,0,1,-5066.677,-11255.72,0.8438532,100,0,0),
(17243,0,2,-5081.806,-11253.73,0.5938532,3.02,60000,0),
(17243,0,3,-5064.747 ,-11259.5,0.5329142,100,0,0),
(17243,0,4,-5047.413,-11274.72,1.43928,100,0,0),
(17243,0,5,-5031.403,-11293.48,8.126307,100,0,0),
(17243,0,6,-5016.113,-11322.38,0.5627251,100,100,1);

