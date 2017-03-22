-- Only zones that should have sandstorms are Badlands, Silithus, Ruins of Ahn’Qiraj, Ahn’Qiraj, and Tanaris

UPDATE game_weather SET spring_storm_chance=0, summer_storm_chance=0, fall_storm_chance=0, winter_storm_chance=0 WHERE zone NOT IN (3,440,1377,3428,3429);

