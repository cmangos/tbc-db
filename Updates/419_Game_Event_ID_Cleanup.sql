-- ==========================================
-- General Game Event ID Cleanup and Grouping
-- ==========================================
-- Darkmoon Faire (Mulgore) - Building Stage 1 (62)
UPDATE game_event_creature SET event=39 WHERE event=62;
UPDATE game_event_creature SET event=-39 WHERE event=-62;
UPDATE game_event_creature_data SET event=39 WHERE event=62;
UPDATE game_event_gameobject SET event=39 WHERE event=62;
UPDATE game_event_gameobject SET event=-39 WHERE event=-62;
UPDATE game_event_mail SET event=39 WHERE event=62;
UPDATE game_event_quest SET event=39 WHERE event=62;
UPDATE conditions SET Value1=39 WHERE Type IN (12,25) and Value1=62;

-- Darkmoon Faire (Mulgore) - Building Stage 2 (63)
UPDATE game_event_creature SET event=40 WHERE event=63;
UPDATE game_event_creature SET event=-40 WHERE event=-63;
UPDATE game_event_creature_data SET event=40 WHERE event=63;
UPDATE game_event_gameobject SET event=40 WHERE event=63;
UPDATE game_event_gameobject SET event=-40 WHERE event=-63;
UPDATE game_event_mail SET event=40 WHERE event=63;
UPDATE game_event_quest SET event=40 WHERE event=63;
UPDATE conditions SET Value1=40 WHERE Type IN (12,25) and Value1=63;

-- Stormwind City - Stockades Jail Break (61)
UPDATE game_event_creature SET event=24 WHERE event=61;
UPDATE game_event_creature SET event=-24 WHERE event=-61;
UPDATE game_event_creature_data SET event=24 WHERE event=61;
UPDATE game_event_gameobject SET event=24 WHERE event=61;
UPDATE game_event_gameobject SET event=-24 WHERE event=-61;
UPDATE game_event_mail SET event=24 WHERE event=61;
UPDATE game_event_quest SET event=24 WHERE event=61;
UPDATE conditions SET Value1=24 WHERE Type IN (12,25) and Value1=61;

-- Grim Guzzler - L70ETC Pre-Concert (64)
UPDATE game_event_creature SET event=61 WHERE event=64;
UPDATE game_event_creature SET event=-61 WHERE event=-64;
UPDATE game_event_creature_data SET event=61 WHERE event=64;
UPDATE game_event_gameobject SET event=61 WHERE event=64;
UPDATE game_event_gameobject SET event=-61 WHERE event=-64;
UPDATE game_event_mail SET event=61 WHERE event=64;
UPDATE game_event_quest SET event=61 WHERE event=64;
UPDATE conditions SET Value1=61 WHERE Type IN (12,25) and Value1=64;

-- Grim Guzzler - L70ETC Concert (65)
UPDATE game_event_creature SET event=62 WHERE event=65;
UPDATE game_event_creature SET event=-62 WHERE event=-65;
UPDATE game_event_creature_data SET event=62 WHERE event=65;
UPDATE game_event_gameobject SET event=62 WHERE event=65;
UPDATE game_event_gameobject SET event=-62 WHERE event=-65;
UPDATE game_event_mail SET event=62 WHERE event=65;
UPDATE game_event_quest SET event=62 WHERE event=65;
UPDATE conditions SET Value1=62 WHERE Type IN (12,25) and Value1=65;

-- L70ETC Concert - Terrokar Forest (Blizzcon Event) (34)
UPDATE game_event_creature SET event=63 WHERE event=34;
UPDATE game_event_creature SET event=-63 WHERE event=-34;
UPDATE game_event_creature_data SET event=63 WHERE event=34;
UPDATE game_event_gameobject SET event=63 WHERE event=34;
UPDATE game_event_gameobject SET event=-63 WHERE event=-34;
UPDATE game_event_mail SET event=63 WHERE event=34;
UPDATE game_event_quest SET event=63 WHERE event=34;
UPDATE conditions SET Value1=63 WHERE Type IN (12,25) and Value1=34;

-- Stranglethorn Fishing Extravaganza - Announce (14)
UPDATE game_event_creature SET event=34 WHERE event=14;
UPDATE game_event_creature SET event=-34 WHERE event=-14;
UPDATE game_event_creature_data SET event=34 WHERE event=14;
UPDATE game_event_gameobject SET event=34 WHERE event=14;
UPDATE game_event_gameobject SET event=-34 WHERE event=-14;
UPDATE game_event_mail SET event=34 WHERE event=14;
UPDATE game_event_quest SET event=34 WHERE event=14;
UPDATE conditions SET Value1=34 WHERE Type IN (12,25) and Value1=14;

-- Stranglethorn Fishing Extravaganza (15)
UPDATE game_event_creature SET event=35 WHERE event=15;
UPDATE game_event_creature SET event=-35 WHERE event=-15;
UPDATE game_event_creature_data SET event=35 WHERE event=15;
UPDATE game_event_gameobject SET event=35 WHERE event=15;
UPDATE game_event_gameobject SET event=-35 WHERE event=-15;
UPDATE game_event_mail SET event=35 WHERE event=15;
UPDATE game_event_quest SET event=35 WHERE event=15;
UPDATE conditions SET Value1=35 WHERE Type IN (12,25) and Value1=15;

-- Brew of the Month - January
UPDATE game_event_creature SET event=64 WHERE event=45;
UPDATE game_event_creature SET event=-64 WHERE event=-45;
UPDATE game_event_creature_data SET event=64 WHERE event=45;
UPDATE game_event_gameobject SET event=64 WHERE event=45;
UPDATE game_event_gameobject SET event=-64 WHERE event=-45;
UPDATE game_event_mail SET event=64 WHERE event=45;
UPDATE game_event_quest SET event=64 WHERE event=45;
UPDATE conditions SET Value1=64 WHERE Type IN (12,25) and Value1=45;

-- Brew of the Month - February
UPDATE game_event_creature SET event=65 WHERE event=46;
UPDATE game_event_creature SET event=-65 WHERE event=-46;
UPDATE game_event_creature_data SET event=65 WHERE event=46;
UPDATE game_event_gameobject SET event=65 WHERE event=46;
UPDATE game_event_gameobject SET event=-65 WHERE event=-46;
UPDATE game_event_mail SET event=65 WHERE event=46;
UPDATE game_event_quest SET event=65 WHERE event=46;
UPDATE conditions SET Value1=65 WHERE Type IN (12,25) and Value1=46;

-- Brew of the Month - March
UPDATE game_event_creature SET event=66 WHERE event=47;
UPDATE game_event_creature SET event=-66 WHERE event=-47;
UPDATE game_event_creature_data SET event=66 WHERE event=47;
UPDATE game_event_gameobject SET event=66 WHERE event=47;
UPDATE game_event_gameobject SET event=-66 WHERE event=-47;
UPDATE game_event_mail SET event=66 WHERE event=47;
UPDATE game_event_quest SET event=66 WHERE event=47;
UPDATE conditions SET Value1=66 WHERE Type IN (12,25) and Value1=47;

-- Brew of the Month - April
UPDATE game_event_creature SET event=67 WHERE event=48;
UPDATE game_event_creature SET event=-67 WHERE event=-48;
UPDATE game_event_creature_data SET event=67 WHERE event=48;
UPDATE game_event_gameobject SET event=67 WHERE event=48;
UPDATE game_event_gameobject SET event=-67 WHERE event=-48;
UPDATE game_event_mail SET event=67 WHERE event=48;
UPDATE game_event_quest SET event=67 WHERE event=48;
UPDATE conditions SET Value1=67 WHERE Type IN (12,25) and Value1=48;

-- Brew of the Month - May
UPDATE game_event_creature SET event=68 WHERE event=49;
UPDATE game_event_creature SET event=-68 WHERE event=-49;
UPDATE game_event_creature_data SET event=68 WHERE event=49;
UPDATE game_event_gameobject SET event=68 WHERE event=49;
UPDATE game_event_gameobject SET event=-68 WHERE event=-49;
UPDATE game_event_mail SET event=68 WHERE event=49;
UPDATE game_event_quest SET event=68 WHERE event=49;
UPDATE conditions SET Value1=68 WHERE Type IN (12,25) and Value1=49;

-- Brew of the Month - June
UPDATE game_event_creature SET event=69 WHERE event=50;
UPDATE game_event_creature SET event=-69 WHERE event=-50;
UPDATE game_event_creature_data SET event=69 WHERE event=50;
UPDATE game_event_gameobject SET event=69 WHERE event=50;
UPDATE game_event_gameobject SET event=-69 WHERE event=-50;
UPDATE game_event_mail SET event=69 WHERE event=50;
UPDATE game_event_quest SET event=69 WHERE event=50;
UPDATE conditions SET Value1=69 WHERE Type IN (12,25) and Value1=50;

-- Brew of the Month - July
UPDATE game_event_creature SET event=70 WHERE event=51;
UPDATE game_event_creature SET event=-70 WHERE event=-51;
UPDATE game_event_creature_data SET event=70 WHERE event=51;
UPDATE game_event_gameobject SET event=70 WHERE event=51;
UPDATE game_event_gameobject SET event=-70 WHERE event=-51;
UPDATE game_event_mail SET event=70 WHERE event=51;
UPDATE game_event_quest SET event=70 WHERE event=51;
UPDATE conditions SET Value1=70 WHERE Type IN (12,25) and Value1=51;

-- Brew of the Month - August
UPDATE game_event_creature SET event=71 WHERE event=52;
UPDATE game_event_creature SET event=-71 WHERE event=-52;
UPDATE game_event_creature_data SET event=71 WHERE event=52;
UPDATE game_event_gameobject SET event=71 WHERE event=52;
UPDATE game_event_gameobject SET event=-71 WHERE event=-52;
UPDATE game_event_mail SET event=71 WHERE event=52;
UPDATE game_event_quest SET event=71 WHERE event=52;
UPDATE conditions SET Value1=71 WHERE Type IN (12,25) and Value1=52;

-- Brew of the Month - September
UPDATE game_event_creature SET event=72 WHERE event=53;
UPDATE game_event_creature SET event=-72 WHERE event=-53;
UPDATE game_event_creature_data SET event=72 WHERE event=53;
UPDATE game_event_gameobject SET event=72 WHERE event=53;
UPDATE game_event_gameobject SET event=-72 WHERE event=-53;
UPDATE game_event_mail SET event=72 WHERE event=53;
UPDATE game_event_quest SET event=72 WHERE event=53;
UPDATE conditions SET Value1=72 WHERE Type IN (12,25) and Value1=53;

-- Brew of the Month - October
UPDATE game_event_creature SET event=73 WHERE event=54;
UPDATE game_event_creature SET event=-73 WHERE event=-54;
UPDATE game_event_creature_data SET event=73 WHERE event=54;
UPDATE game_event_gameobject SET event=73 WHERE event=54;
UPDATE game_event_gameobject SET event=-73 WHERE event=-54;
UPDATE game_event_mail SET event=73 WHERE event=54;
UPDATE game_event_quest SET event=73 WHERE event=54;
UPDATE conditions SET Value1=73 WHERE Type IN (12,25) and Value1=54;

-- Brew of the Month - November
UPDATE game_event_creature SET event=74 WHERE event=55;
UPDATE game_event_creature SET event=-74 WHERE event=-55;
UPDATE game_event_creature_data SET event=74 WHERE event=55;
UPDATE game_event_gameobject SET event=74 WHERE event=55;
UPDATE game_event_gameobject SET event=-74 WHERE event=-55;
UPDATE game_event_mail SET event=74 WHERE event=55;
UPDATE game_event_quest SET event=74 WHERE event=55;
UPDATE conditions SET Value1=74 WHERE Type IN (12,25) and Value1=55;

-- Brew of the Month - December
UPDATE game_event_creature SET event=75 WHERE event=56;
UPDATE game_event_creature SET event=-75 WHERE event=-56;
UPDATE game_event_creature_data SET event=75 WHERE event=56;
UPDATE game_event_gameobject SET event=75 WHERE event=56;
UPDATE game_event_gameobject SET event=-75 WHERE event=-56;
UPDATE game_event_mail SET event=75 WHERE event=56;
UPDATE game_event_quest SET event=75 WHERE event=56;
UPDATE conditions SET Value1=75 WHERE Type IN (12,25) and Value1=56;

-- Darkmoon Faire (Mulgore)
UPDATE game_event_creature SET event=45 WHERE event=5;
UPDATE game_event_creature SET event=-45 WHERE event=-5;
UPDATE game_event_creature_data SET event=45 WHERE event=5;
UPDATE game_event_gameobject SET event=45 WHERE event=5;
UPDATE game_event_gameobject SET event=-45 WHERE event=-5;
UPDATE game_event_mail SET event=45 WHERE event=5;
UPDATE game_event_quest SET event=45 WHERE event=5;
UPDATE conditions SET Value1=45 WHERE Type IN (12,25) and Value1=5;

-- Darkmoon Faire (Elwynn Forest)
UPDATE game_event_creature SET event=46 WHERE event=4;
UPDATE game_event_creature SET event=-46 WHERE event=-4;
UPDATE game_event_creature_data SET event=46 WHERE event=4;
UPDATE game_event_gameobject SET event=46 WHERE event=4;
UPDATE game_event_gameobject SET event=-46 WHERE event=-4;
UPDATE game_event_mail SET event=46 WHERE event=4;
UPDATE game_event_quest SET event=46 WHERE event=4;
UPDATE conditions SET Value1=46 WHERE Type IN (12,25) and Value1=4;

-- Darkmoon Faire (Terokkar Forest)
UPDATE game_event_creature SET event=47 WHERE event=3;
UPDATE game_event_creature SET event=-47 WHERE event=-3;
UPDATE game_event_creature_data SET event=47 WHERE event=3;
UPDATE game_event_gameobject SET event=47 WHERE event=3;
UPDATE game_event_gameobject SET event=-47 WHERE event=-3;
UPDATE game_event_mail SET event=47 WHERE event=3;
UPDATE game_event_quest SET event=47 WHERE event=3;
UPDATE conditions SET Value1=47 WHERE Type IN (12,25) and Value1=3;



