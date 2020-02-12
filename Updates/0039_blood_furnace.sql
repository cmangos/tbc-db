-- the maker
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN(17381,18621);

-- broggok
UPDATE creature_template SET UnitFlags=33587264 WHERE entry IN(17380,18601); -- boss
UPDATE creature_template SET UnitFlags=0x02000000 WHERE entry IN(17662,18602); -- adds

-- heroic Kelidan
UPDATE creature_template SET EquipmentTemplateId=17377 WHERE entry IN(18607);

