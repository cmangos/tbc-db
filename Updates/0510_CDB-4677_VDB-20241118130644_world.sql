-- Add your query below.
-- https://github.com/vmangos/core/commit/07834065128b4d0c516e0354593b54f0fefa477e

-- Add vendor list for TEST Resist Gear.
UPDATE `creature_template` SET `NpcFlags`=128 WHERE  `entry`=12516; -- 128 tbc+
DELETE FROM `npc_vendor` WHERE `entry` = 12516;
-- INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 1, 5828); -- Ring of Uber Resists (TEST)
-- INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 2, 10555); -- Resist Test Item
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 3, 16068); -- Test Fire Resist Cloth LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 4, 16069); -- Test Fire Resist Leather LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 5, 16070); -- Test Fire Resist Mail LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 6, 16071); -- Test Fire Resist Plate LockBox

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 7, 16173); -- Test Frost Resist Cloth LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 8, 16174); -- Test Frost Resist Leather LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 9, 16175); -- Test Frost Resist Mail LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 10, 16176); -- Test Frost Resist Plate LockBox

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 11, 16180); -- Test Nature Resist Cloth LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 12, 16178); -- Test Nature Resist Leather LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 13, 16179); -- Test Nature Resist Mail LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 14, 16177); -- Test Nature Resist Plate LockBox

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 15, 16181); -- Test Shadow Resist Cloth LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 16, 16182); -- Test Shadow Resist Leather LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 17, 16183); -- Test Shadow Resist Mail LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 18, 16184); -- Test Shadow Resist Plate LockBox

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 19, 16186); -- Test Arcane Resist Cloth LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 20, 16187); -- Test Arcane Resist Leather LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 21, 16188); -- Test Arcane Resist Mail LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 22, 16185); -- Test Arcane Resist Plate LockBox
-- End of migration.

INSERT INTO `item_loot_template` (`entry`, `item`) VALUES
(16181, 32420),(16181, 32649),(16181, 32389),(16181, 32390),(16181, 32391),(16181, 32392), -- Test Shadow Resist Cloth LockBox
(16182, 32420),(16182, 32649),(16182, 32393),(16182, 32394),(16182, 32395),(16182, 32396), -- Test Shadow Resist Leather LockBox
(16183, 32420),(16183, 32649),(16183, 32397),(16183, 32398),(16183, 32399),(16183, 32400), -- Test Shadow Resist Mail LockBox
(16184, 32420),(16184, 32649),(16184, 32401),(16184, 32402),(16184, 32403),(16184, 32404), -- Test Shadow Resist Plate LockBox
(16177, 31368),(16177, 24095),(16177, 31364),(16177, 31367),(16177, 31399), -- Test Nature Resist Plate LockBox
(16176, 31371),(16176, 24093),(16176, 31369),(16176, 31370),(16176, 31398), -- Test Frost Resist Plate LockBox
(16071, 30769),(16071, 30767),(16071, 30766),(16071, 30768),(16071, 31746),(16071, 23516),(16071, 23515),(16071, 29494),(16071, 31074), -- Test Fire Resist Plate LockBox
(16186, 31113),(16186, 30831), -- Test Arcane Resist Cloth LockBox
(16187, 31113),(16187, 30831), -- Test Arcane Resist Leather LockBox
(16188, 31113),(16188, 30831), -- Test Arcane Resist Mail LockBox
(16185, 31113),(16185, 30831); -- Test Arcane Resist Plate LockBox

