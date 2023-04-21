-- Giant Clam (o.19017)
-- Delete from old Pool SYSTEM
DELETE FROM pool_template WHERE entry BETWEEN 13984 AND 13988;
/*
13984	1	Bloodmyst Isle (The Crimson Reach) - Giant Clam (19017)
13985	2	Bloodmyst Isle (The Hidden Reef) - Giant Clam (19017)
13986	2	Bloodmyst Isle - Giant Clam (19017)
13987	2	Bloodmyst Isle (Blacksilt Shore) - Giant Clam (19017)
13988	4	Ghostlands - Giant Clam (19017)
*/
DELETE FROM pool_gameobject WHERE pool_entry BETWEEN 13984 AND 13988;
/*
5309502	13984
5309503	13984
5309504	13985
5309505	13985
5309506	13985
5309507	13985
5309508	13986
5309509	13986
5309510	13986
5309511	13986
5309512	13987
5309513	13987
5309514	13987
5309515	13987
5309516	13988
5309517	13988
5309518	13988
5309519	13988
5309520	13988
5309521	13988
5309522	13988
5309523	13988
*/
-- Moved to Spawn Groups
DELETE FROM `spawn_group` WHERE id BETWEEN 29990 AND 29994;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(29990, 'Bloodmyst Isle (The Crimson Reach) - Giant Clam (19017)', 1, 1, 0, 0),
(29991, 'Bloodmyst Isle (The Hidden Reef) - Giant Clam (19017)', 1, 2, 0, 0),
(29992, 'Bloodmyst Isle - Giant Clam (19017)', 1, 2, 0, 0),
(29993, 'Bloodmyst Isle (Blacksilt Shore) - Giant Clam (19017)', 1, 2, 0, 0),
(29994, 'Ghostlands - Giant Clam (19017)', 1, 4, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id BETWEEN 29990 AND 29994;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
-- 29990
(29990, 5309502, -1),
(29990, 5309503, -1),
-- 29991
(29991, 5309504, -1),
(29991, 5309505, -1),
(29991, 5309506, -1),
(29991, 5309507, -1),
-- 29992
(29992, 5309508, -1),
(29992, 5309509, -1),
(29992, 5309510, -1),
(29992, 5309511, -1),
-- 29993
(29993, 5309512, -1),
(29993, 5309513, -1),
(29993, 5309514, -1),
(29993, 5309515, -1),
-- 29994
(29994, 5309516, -1),
(29994, 5309517, -1),
(29994, 5309518, -1),
(29994, 5309519, -1),
(29994, 5309520, -1),
(29994, 5309521, -1),
(29994, 5309522, -1),
(29994, 5309523, -1);

