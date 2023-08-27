UPDATE creature_model_info SET bounding_radius=2,combat_reach=3 WHERE modelid IN(13109,14213,13110,14112,14214);
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN(17980,21559);
UPDATE spell_target_position SET target_position_x=-185,target_position_y=376,target_position_z=-15.6,target_orientation=0.506146013736724853 WHERE Id IN(34682);
UPDATE spell_target_position SET target_position_x=-185,target_position_y=376,target_position_z=-15.6,target_orientation=0.506146013736724853 WHERE Id IN(34681);
UPDATE spell_target_position SET target_position_x=-185,target_position_y=407,target_position_z=-15.6,target_orientation=6.126110076904296875 WHERE Id IN(34684);
UPDATE spell_target_position SET target_position_x=-185,target_position_y=407,target_position_z=-15.6,target_orientation=6.126110076904296875 WHERE Id IN(34685);
UPDATE spell_target_position SET target_orientation=0.017452999949455261 WHERE Id IN(34673);


