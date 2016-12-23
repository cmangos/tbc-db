DELETE FROM gameobject WHERE id=185577; -- remove gameobject that is spawned through spell temporarily

-- make entries 23081 and 22911 invisible to players
UPDATE creature_template SET ModelId1=11686,ModelId2=0,ModelId3=0,ModelId4=0 WHERE entry=23040;
UPDATE creature_template SET ModelId1=15880,ModelId2=0,ModelId3=0,ModelId4=0 WHERE entry=23081;
UPDATE creature SET ModelId=0 WHERE id IN (23040,23081);

