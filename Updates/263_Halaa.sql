UPDATE creature_template SET ModelId1=11686,UnitFlags=33554944 WHERE entry IN(18225); -- correct data for Fire Bomb Target from sniff

-- Roosts and bomb wagons should be despawned by default - event starts off as neutral
UPDATE gameobject SET spawntimesecs=-1 WHERE id IN(182267,182280,182281,182282,182222,182272,182273,182274,182266,182275,182276,182277,182301,182302,182303,182304,182305,182306,182307,182308,182297,182298,182299,182300);

DELETE FROM spell_area WHERE spell IN(31958); -- should be possible to cast Fire Bomb only in Halaa
INSERT INTO spell_area VALUES(31958,3628,0,0,0,0,0,0,2,0);


