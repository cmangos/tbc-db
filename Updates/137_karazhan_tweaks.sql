DELETE FROM creature WHERE id=17645;
INSERT INTO creature VALUES(63370,17645,532,1,0,0,-10833.1,-2151.58,380.86,4.62512,43200,0,0,8,0,0,0); -- add correct InfernalRelay npc spawns
INSERT INTO creature(guid,id,map,spawnMask,position_x,position_y,position_z,orientation,MovementType,spawndist) VALUES(63371,17645,532,1,-10893.51,-2081.342,342.2936,5.183628,0,0);

UPDATE creature_template SET UnitFlags = 768 WHERE entry = 17518; -- Give vendor civilian/passive flags to prevent aran from going into combat

UPDATE creature_template SET MinLevel=73,MaxLevel=73 WHERE entry=16697;

UPDATE creature_template SET AIName='NullAI' WHERE entry in(17208,17305,17316,17317); -- Give chess squares NULLAI to prevent reactions


UPDATE creature_template SET ExtraFlags=ExtraFlags|256 WHERE entry=15689; -- Make netherspite not tauntable

