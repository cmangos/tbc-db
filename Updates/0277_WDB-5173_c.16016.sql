-- Anthion Harmon 16016
UPDATE creature SET position_x = 3357.4731, position_y = -3379.7356, position_z = 144.86537, orientation = 6.230825424194335937 WHERE id = 16016;
DELETE FROM creature_template_addon WHERE entry IN (16016);
INSERT INTO creature_template_addon (entry, sheath_state, auras) VALUES
(16016,1,'27614 27978');

