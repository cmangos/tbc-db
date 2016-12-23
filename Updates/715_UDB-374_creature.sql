-- Corki
-- correct hp
-- sniff: UNIT_FIELD_HEALTH: 24895 / UNIT_FIELD_MAXHEALTH: 24895
-- lvl60 - class 1 multi:5 = 4979*5 = 24895
-- UPDATE creature_template SET MinLevelHealth = 24895, MaxLevelHealth = 24895 WHERE entry = 18445;
-- UPDATE creature_template SET MinLevelHealth = 24895, MaxLevelHealth = 24895 WHERE entry = 18369;
-- UPDATE creature_template SET MinLevelHealth = 24895, MaxLevelHealth = 24895 WHERE entry = 20812;
-- both spawn points were mixed up.
UPDATE creature SET position_x = -918.143, position_y = 8663.94, position_z = 172.542, orientation = 0.523599, curhealth = 24895 WHERE guid = 65849; -- 18445
UPDATE creature SET position_x = -2563.89, position_y = 6288.29, position_z = 15.295, orientation = 5.23599, curhealth = 24895 WHERE guid = 65786; -- 18369
UPDATE creature SET curhealth = 24895 WHERE guid = 79588; -- 20812
-- quest_relations must also be corrected
DELETE FROM creature_questrelation WHERE id = 18445 AND quest = 9923; -- wrong npc used
DELETE FROM creature_questrelation WHERE id = 18369 AND quest = 9923;
INSERT INTO creature_questrelation (id, quest) values
(18369,9923);


