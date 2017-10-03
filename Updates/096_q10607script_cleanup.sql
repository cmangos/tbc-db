UPDATE gameobject_template SET NAME = 'The Third Prophecy' WHERE entry = 184968;
UPDATE gameobject_template SET NAME = 'The Fourth Prophecy' WHERE entry = 184969; -- add correct names
UPDATE gameobject_template SET TYPE = 10,faction=35,data0=56,data1=10607, data5 = 0 WHERE entry in(184950,184967,184968,184969); -- add correct data from UDB
UPDATE creature_template SET UnitFlags=768, MovementType=0 WHERE entry = 21861; -- make not move and non attackable/passive


