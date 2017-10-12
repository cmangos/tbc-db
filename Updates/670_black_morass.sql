-- CAVERNS OF TIME
-- BLACK MORASS

-- 15608 Medivh

UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(12/7) WHERE entry IN (17918,20746); -- 17918 Time Keeper, 20746	Time Keeper (1)

UPDATE creature_template SET UnitFlags=32768 WHERE entry=20201; -- 20201 Sa'at
UPDATE gossip_menu_option SET option_text='Sa''at, I have lost the chrono-beacon and require another!' WHERE menu_id=8088 AND id=0;

UPDATE creature_template SET FactionAlliance=35, FactionHorde=35 WHERE entry=17838; -- 17838 Time Rift

UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(12/7), UnitFlags=32832 WHERE entry IN (17881,20737); -- 17881 Aeonus, 20737 Aeonus (1)
-- created by spell 31393

UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(10/7), UnitFlags=32832 WHERE entry IN (17880,20745); -- 17880 Temporus, 20745 Temporus (1)
-- created by spell 31392

UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(10/7), UnitFlags=32832 WHERE entry IN (17879,20738); -- 17879 Chrono Lord Deja, 20738 Chrono Lord Deja (1)
-- created by spell 31391

UPDATE creature_template SET SpeedWalk=(5/2.5), SpeedRun=(10/7) WHERE entry IN (21818,22169); -- 21818 Infinite Whelp, 22169 Infinite Whelp (1)
-- created by spell 37606

-- 21697 Infinite Chrono-Lord, 21712 Infinite Chrono-Lord (1)
-- Substitute boss for Chrono-Lord Deja that spawns if you've wiped. No loot.

-- 21698 Infinite Timereaver
-- Substitute for Temporus

UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(4/7) WHERE entry IN (18982,22173); -- 18982 Sable Jaguar, 22173 Sable Jaguar (1)
DELETE FROM creature_template_addon WHERE entry=18982;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
('18982', '0', '0', '1', '0', '0', '0', '18950 22766'); -- Sneak (Rank 1), Invisibility and Stealth Detection
-- sniff says 1.25 for walk speed but maybe it's halved already by Sneak

-- 18983 Blackfang Tarantula, 22162	Blackfang Tarantula (1)
DELETE FROM creature_template_addon WHERE entry=18983;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
('18983', '0', '0', '1', '0', '0', '0', '34365'); -- Ebon Poison
-- was casting trigger spell 34366 manually in ACID... should use passive aura 34365 Ebon Poison instead

-- 20075 Darkwater Crocolisk, 22163 Darkwater Crocolisk (1)
-- 17952 Darkwater Crocolisk
-- There's a script outside of the instance in CoT that involves 20075 (unattackable)
-- 17952 is supposed to be inside the instance

-- update all static spawns inside BM to 17952
UPDATE creature SET id=17952 WHERE id=20075;

-- crocolisk involved in CoT script is unattackable
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16, SpeedWalk=1, UnitFlags=33536, HeroicEntry=0 WHERE entry=20075;

-- update crocs now in BM
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16, SpeedWalk=1, UnitFlags=32768 WHERE entry=22163;
UPDATE creature_template SET UnitFlags=32768, HeroicEntry=22163 WHERE entry=17952;

-- 17839 Rift Lord, 20744 Rift Lord (1)
-- Monster - Polearm, Black
UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(10/7), UnitFlags=64, MovementType=1 WHERE entry IN (17839,20744); 
-- created by spell 31321

-- 21140 Rift Lord, 22172 Rift Lord (1)
-- Monster - Axe, 2H Arcanite Reaper
UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(10/7), UnitFlags=64, HeroicEntry=22172, MovementType=1 WHERE entry=21140;
UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(10/7), UnitFlags=64, FactionHorde=1720, FactionAlliance=1720, MovementType=1 WHERE entry=22172;
-- created by spell 36234

-- 21104 Rift Keeper, 22170	Rift Keeper (1)
-- Monster - Staff, D01 Circling Black Skull
UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(10/7), UnitFlags=64, MovementType=1 WHERE entry IN (21104,22170); 
-- created by spell 36235

-- 21148 Rift Keeper, 22171 Rift Keeper (1)
-- Monster - Staff, Jeweled D01/B02 Yellow w/Low Red Flame
UPDATE creature_template SET FactionAlliance=1720, FactionHorde=1720, SpeedWalk=(2.5/2.5), SpeedRun=(10/7), UnitFlags=64, MovementType=1 WHERE entry IN (21148,22171); 
-- created by spell 36236

-- 17835 Infinite Assassin, 20740 Infinite Assassin (1)
UPDATE creature_template SET SpeedWalk=(5/2.5), SpeedRun=(10/7) WHERE entry IN (17835,20740);
-- created by spell 31318
DELETE FROM creature_template_addon WHERE entry=17835;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
('17835', '0', '0', '1', '0', '0', '0', '38519'); -- Deadly Poison

-- 21137 Infinite Assassin, 22164 Infinite Assassin (1)
UPDATE creature_template SET FactionAlliance=1720, FactionHorde=1720, SpeedWalk=(5/2.5), SpeedRun=(10/7) WHERE entry IN (21137,22164);
-- created by spell 36229
DELETE FROM creature_template_addon WHERE entry=21137;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
('21137', '0', '0', '1', '0', '0', '0', '30982'); -- Crippling Poison (server-side)

-- 17892 Infinite Chronomancer, 20741 Infinite Chronomancer (1)
UPDATE creature_template SET FactionAlliance=1720, FactionHorde=1720, SpeedWalk=(5/2.5), SpeedRun=(10/7) WHERE entry IN (17892,20741);
-- created by spell 31421

-- 21136 Infinite Chronomancer, 22165 Infinite Chronomancer (1)
UPDATE creature_template SET FactionAlliance=1720, FactionHorde=1720, SpeedWalk=(5/2.5), SpeedRun=(10/7) WHERE entry IN (21136,22165);
-- created by spell 36231

-- 18994 Infinite Executioner, 20742 Infinite Executioner (1)
UPDATE creature_template SET FactionAlliance=1720, FactionHorde=1720, SpeedWalk=(5/2.5), SpeedRun=(10/7) WHERE entry IN (18994,20742);
-- created by spell 33363

-- 21138 Infinite Executioner, 22166 Infinite Executioner (1)
UPDATE creature_template SET FactionAlliance=1720, FactionHorde=1720, SpeedWalk=(5/2.5), SpeedRun=(10/7) WHERE entry IN (21138,22166);
-- created by spell 36232

-- 18995 Infinite Vanquisher, 20743 Infinite Vanquisher (1)
UPDATE creature_template SET FactionAlliance=1720, FactionHorde=1720, SpeedWalk=(5/2.5), SpeedRun=(10/7) WHERE entry IN (18995,20743);
-- created by spell 33364

-- 21139 Infinite Vanquisher, 22168 Infinite Vanquisher (1)
UPDATE creature_template SET FactionAlliance=1720, FactionHorde=1720, SpeedWalk=(5/2.5), SpeedRun=(10/7) WHERE entry IN (21139,22168);
-- created by spell 36233

UPDATE creature_model_info SET bounding_radius=0.5376937 WHERE modelid=18718;
UPDATE creature_model_info SET bounding_radius=0.558, combat_reach=2.25 WHERE modelid=16657;
UPDATE creature_model_info SET bounding_radius=0.558, combat_reach=2.25 WHERE modelid=16656;

-- 3 chair spawns... in unreachable area
REPLACE INTO gameobject_template (entry, type, displayId, name, size, data0, data1) VALUES
(180609,7,39,'Doodad_GeneralChairLoEnd02',1,1,1),
(180610,7,39,'Doodad_GeneralChairLoEnd04',1,1,1),
(180611,7,39,'Doodad_GeneralChairLoEnd05',1,1,1);
DELETE FROM `gameobject` WHERE `guid` IN (116164,116165,116166);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(116164, 180609, 269, 3, -1243.371, 6911.594, 37.72076, 4.117643, -0.01651573, 0.1293859, -0.8730412, 0.4698784, 7200, 7200, 255, 1),
(116165, 180610, 269, 3, -1246.063, 6913.503, 38.55579, 4.75033, 0.0248332, 0.1280499, -0.6819782, 0.7196473, 7200, 7200, 255, 1),
(116166, 180611, 269, 3, -1259.972, 6904.152, 38.6535, 0.66311, 0.1250486, 0.03709888, 0.323432, 0.9372184, 7200, 7200, 255, 1);

-- link new creatures to Medivh
DELETE FROM creature_linking_template WHERE entry IN (21139,21138,21136,21137,21148,21140);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(21139,269,15608,16,0),
(21138,269,15608,16,0),
(21136,269,15608,16,0),
(21137,269,15608,16,0),
(21148,269,15608,16,0),
(21140,269,15608,16,0);


