-- Adds teleport location for The Stockades ".tele Stockade"
DELETE FROM `game_tele` WHERE `id` = 414;
INSERT INTO game_tele (id,position_x,position_y,position_z,orientation,map,name) VALUES (414,-8787.390625,828.377075,97.648933,0.626312,0,'Stockade');

