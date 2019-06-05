-- add targets for teleports used by Skyguard Prisoner
DELETE FROM spell_target_position WHERE id IN (41136,41138,41141);
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(41136, 530, -4106.64, 3029.76, 344.877, 0.820305),
(41138, 530, -3720.35, 3789.91, 302.888, 5.20119),
(41141, 530, -3669.57, 3386.74, 312.955, 3.69251);

-- no more pooling, one spawn moves around with teleports
DELETE FROM creature WHERE guid IN (140773,140774);
DELETE FROM pool_template WHERE entry=2100;
DELETE FROM pool_creature_template WHERE id=23383;

-- summoned via spell 41147 instead
DELETE FROM gameobject WHERE id=185952;


