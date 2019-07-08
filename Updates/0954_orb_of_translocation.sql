-- has associated core commit
DELETE FROM dbscripts_on_spell WHERE id IN(25650,25652);
UPDATE gameobject_template SET data10=34448 WHERE entry IN(180911);
UPDATE gameobject_template SET data10=34452 WHERE entry IN(180912);
UPDATE gameobject_template SET data10=45367 WHERE entry IN(187428);
UPDATE gameobject_template SET data10=45370 WHERE entry IN(187431);
UPDATE spell_target_position SET target_position_x=9330.66,target_position_y=-7810.86,target_position_z=136.569,target_orientation=5.29381 WHERE id IN(26566);
UPDATE spell_target_position SET target_position_x=9334.5,target_position_y=-7880.76,target_position_z=74.9094,target_orientation=2.15615 WHERE id IN(26572);
UPDATE spell_target_position SET target_position_x=-594,target_position_y=4079,target_position_z=94,target_orientation=5.14872 WHERE id IN(30140);
UPDATE spell_target_position SET target_position_x=-589,target_position_y=4079,target_position_z=143.3,target_orientation=4.36332 WHERE id IN(30141);
UPDATE spell_target_position SET target_position_x=1805,target_position_y=327,target_position_z=70.5,target_orientation=1.58825 WHERE id IN(25649);
UPDATE spell_target_position SET target_position_x=10021,target_position_y=-7014,target_position_z=50,target_orientation=3.90954 WHERE id IN(35730);
INSERT INTO spell_target_position(id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(45368,530,12793.67,-6894.165,30.8974,-0.7504914),
(45371,530,12780.87,-6877.502,22.78612,-0.8901179);


