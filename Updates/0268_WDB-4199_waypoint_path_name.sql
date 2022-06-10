/*
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 1.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 2.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 3.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 4.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 5.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 6.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 7.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 8.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 1927.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 2057.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 2395.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 3254.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 3513.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 5768.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 6883.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 10000.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 10001.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 10002.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 10003.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 10004.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 10005.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 10006.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 10007.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 10008.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 10009.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 14872.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 18397.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 19001.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 92287.`
*/

-- Path name added
DELETE FROM `waypoint_path_name` WHERE `PathId` IN (1,2,3,4,5,6,7,8,1927,2057,2395,3254,3513,5768,6883,10000,10001,10002,10003,10004,10005,10006,10007,10008,10009,14872,18397,19001,92287);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(1,'Stormwind - Kimberly Grant | Kelly Grant Patrol'),
(2,'Alterac Mountains - Frostwolf Battleguard (2) Patrol 000'),
(3,'Hillsbrad Foothills - Tarren Mill - Tarren Mill Deathguard (2) Patrol 000'),
(4,'Searing Gorge - Dark Iron Slaver (2) Patrol 000'),
(5,'Searing Gorge - Dark Iron Slaver (2) Patrol 001'),
(6,'Searing Gorge - Dark Iron Slaver (2) Patrol 002'),
(7,'Searing Gorge - Dark Iron Taskmaster | Dark Iron Slaver (3) Patrol 000'),
(8,'Eastern Plaguelands - Light\'s Hope Chapel - Argent Rider (2) Patrol 000'),
(1927,'Stranglethorn Vale (Ruins of Zul\'Kunda) - c.guid (1927,1926)'),
(2057,'Stranglethorn Vale (Ruins of Zul\'Kunda) - c.guid (2057,2056)'),
(2395,'Stranglethorn Vale (Ruins of Zul\'Kunda) - c.guid (2395,2396)'),
(3254,'Durotar - Raider Jhash and Raider Kerr'),
(3513,'Miss Danna - Fanned out behind formation - Stormwind tour w/ school children'),
(5768,'Searing Gorge - Shadowsilk Poacher <The Undermarket> Patrol (c.id 8442)'),
(6883,'Kargath Expeditionary Force c.entry 9082,9083,9084,9085,9086 & Linked to 9077 for RP'),
(10000,'Kalimdor - Mulgore - Galak Centaur | Galak Outrunner (2) Patrol 000'),
(10001,'Kalimdor - Mulgore - Galak Centaur | Galak Outrunner (2) Patrol 001'),
(10002,'Kalimdor - Mulgore - Galak Centaur | Galak Outrunner (2) Patrol 002'),
(10003,'Kalimdor - Mulgore - Kodo Calf | Kodo Bull | Kodo Matriarch (4) Patrol 000'),
(10004,'Kalimdor - Mulgore - Kodo Calf | Kodo Bull | Kodo Matriarch (4) Patrol 001'),
(10005,'Kalimdor - Mulgore - Kodo Calf | Kodo Bull | Kodo Matriarch (5) Patrol 000'),
(10006,'Kalimdor - Mulgore - Kodo Calf | Kodo Bull | Kodo Matriarch (5) Patrol 001'),
(10007,'Kalimdor - Mulgore - Kodo Calf | Kodo Bull | Kodo Matriarch (5) Patrol 002'),
(10008,'Silithus - Cenarion Hold - Cenarion Hold Infantry (2) Patrol 000'),
(10009,'Silithus - Cenarion Hold - Cenarion Hold Infantry (2) Patrol 001'),
(14872,'The Barrens - Trok and Swarm of bees'),
(18397,'Redridge Mountains (Stonewatch) - Tharil\'zun (486)'),
(19001,'Blasted Lands (The Tainted Scar) - Felguard Elite & Manahound (3) Patrol 000'),
(92287,'Eastern Plaguelands - Crimson Courier (c.id 13118, 12337)');

