-- Fix for quests 7161 and 7162
-- Gameobject quest objective now correctly appears.

-- Alliance quest: Proving Grounds
-- Gameobject: Stormpike Banner
INSERT INTO gameobject (id,map,spawnMask,position_x,position_y,position_z,orientation,animprogress,state)
VALUES (179024,30,1,63.27116,5.837619,-4.096218,2.216568,100,1);

-- Horde quest: Proving Grounds
-- Gameobject: Frostwolf Banner
INSERT INTO gameobject (id,map,spawnMask,position_x,position_y,position_z,orientation,animprogress,state)
VALUES (179025,30,1,-1551.88,-364.1875,65.59335,-1.954769,100,1);