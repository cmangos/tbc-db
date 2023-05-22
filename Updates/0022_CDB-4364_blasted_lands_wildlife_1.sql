-- https://github.com/cmangos/classic-db/commit/0cdb99ef6fdeb8bd9d1dcae6c8b22819b53cdff5
-- guid 2878 seems to exist in tbc+
DELETE FROM `creature` WHERE (`guid` IN (3921, 3922, 3923, 3924, 3927, 3933, 3935)); -- Redstone Crystalhide (2878 & 3935 do not exist in classic, rest are different templates)
DELETE FROM `creature` WHERE (`guid` IN (3932, 3936)); --  Ashmane Boar & Redstone Basilisk (different template, only TBC+)
DELETE FROM `creature` WHERE (`guid` IN (3925, 3926)); -- Helboar (different template, only TBC+)

SET @CGUID := 140290;
SET @SGUID := 249;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID AND @CGUID + 009;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID + 000, 0, 0, 1, -11515.7744140625, -3214.702392578125, 8.199786186218261718, 0.942323446273803710, 300, 300, 45, 1), -- Blasted Lands - 5991 Counter: 3923
(@CGUID + 001, 0, 0, 1, -11547.8173828125, -3249.014404296875, 6.965761661529541015, 3.893105506896972656, 300, 300, 45, 1), -- Blasted Lands - 5991 Counter: 3924
(@CGUID + 002, 0, 0, 1, -11582.7783203125, -3281.576416015625, 10.39273834228515625, 3.953731775283813476, 300, 300, 45, 1), -- Blasted Lands - 5993 Counter: 3925
(@CGUID + 003, 0, 0, 1, -11549.3437500000, -3184.436767578125, 5.096073627471923828, 2.410356760025024414, 300, 300, 45, 1), -- Blasted Lands - nonexistant, close to road maybe dead alot.
(@CGUID + 004, 0, 0, 1, -11483.1005859375, -3249.328613281250, 16.41819190979003906, 0.558159232139587402, 300, 300, 45, 1), -- Blasted Lands - 5991 Counter: 3922
(@CGUID + 005, 0, 0, 1, -11415.8564453125, -3248.860351562500, 9.892518043518066406, 0.862841129302978515, 300, 300, 45, 1), -- Blasted Lands - 5991 Counter: 3921/3933
(@CGUID + 006, 0, 0, 1, -11384.6787109375, -3285.565185546875, 1.739705324172973632, 0.815740704536437988, 300, 300, 45, 1), -- Blasted Lands - 5991 Counter: 3935
(@CGUID + 007, 0, 0, 1, -11351.5019531250, -3251.598144531250, 9.210183143615722656, 3.532057762145996093, 300, 300, 45, 1), -- Blasted Lands - 5990 Counter: 3936
(@CGUID + 008, 0, 0, 1, -11382.6630859375, -3216.719726562500, 11.77551269531250000, 5.179092407226562500, 300, 300, 45, 1), -- Blasted Lands - 5992 Counter: 3932
(@CGUID + 009, 0, 0, 1, -11581.5908203125, -3216.217529296875, 6.155599594116210937, 3.890923261642456054, 300, 300, 45, 1); -- Blasted Lands - 5993 Counter: 3926

REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGUID + 000, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 000', 0, 0, 0, 0, 0),
(@SGUID + 001, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 001', 0, 0, 0, 0, 0),
(@SGUID + 002, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 002', 0, 0, 0, 0, 0),
(@SGUID + 003, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 003', 0, 0, 0, 0, 0),
(@SGUID + 004, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 004', 0, 0, 0, 0, 0),
(@SGUID + 005, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 005', 0, 0, 0, 0, 0),
(@SGUID + 006, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 006', 0, 0, 0, 0, 0),
(@SGUID + 007, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 007', 0, 0, 0, 0, 0),
(@SGUID + 008, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 008', 0, 0, 0, 0, 0),
(@SGUID + 009, 'Blasted Lands - Redstone Crystalhide | Helboar | Felbeast (1) Wandering 009', 0, 0, 0, 0, 0);

REPLACE INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGUID + 000, @CGUID + 000, 0, 0),
(@SGUID + 001, @CGUID + 001, 0, 0),
(@SGUID + 002, @CGUID + 002, 0, 0),
(@SGUID + 003, @CGUID + 003, 0, 0),
(@SGUID + 004, @CGUID + 004, 0, 0),
(@SGUID + 005, @CGUID + 005, 0, 0),
(@SGUID + 006, @CGUID + 006, 0, 0),
(@SGUID + 007, @CGUID + 007, 0, 0),
(@SGUID + 008, @CGUID + 008, 0, 0),
(@SGUID + 009, @CGUID + 009, 0, 0);

-- https://www.wowhead.com/tbc/npc=5988/scorpok-stinger#comments:id=2804152
-- https://www.wowhead.com/tbc/npc=5991/redstone-crystalhide#comments:id=3158340 - "The ones in the south share spawns with Felbeasts and Boars so kill all of them."
DELETE FROM `spawn_group_entry` WHERE `Id` BETWEEN @SGUID AND @SGUID + 009;
REPLACE INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 000, 5991, 0, 0, 0), (@SGUID + 000, 5993, 0, 0, 0), (@SGUID + 000, 8675, 0, 0, 0),
(@SGUID + 001, 5991, 0, 0, 0), (@SGUID + 001, 5993, 0, 0, 0), (@SGUID + 001, 8675, 0, 0, 0),
(@SGUID + 002, 5991, 0, 0, 0), (@SGUID + 002, 5993, 0, 0, 0), (@SGUID + 002, 8675, 0, 0, 0),
(@SGUID + 003, 5991, 0, 0, 0), (@SGUID + 003, 5993, 0, 0, 0), (@SGUID + 003, 8675, 0, 0, 0),
(@SGUID + 004, 5991, 0, 0, 0), (@SGUID + 004, 5993, 0, 0, 0), (@SGUID + 004, 8675, 0, 0, 0),
(@SGUID + 005, 5991, 0, 0, 0), (@SGUID + 005, 5993, 0, 0, 0), (@SGUID + 005, 8675, 0, 0, 0),
(@SGUID + 006, 5991, 0, 0, 0), (@SGUID + 006, 5993, 0, 0, 0), (@SGUID + 006, 8675, 0, 0, 0),
(@SGUID + 007, 5991, 0, 0, 0), (@SGUID + 007, 5993, 0, 0, 0), (@SGUID + 007, 8675, 0, 0, 0),
(@SGUID + 008, 5991, 0, 0, 0), (@SGUID + 008, 5993, 0, 0, 0), (@SGUID + 008, 8675, 0, 0, 0),
(@SGUID + 009, 5991, 0, 0, 0), (@SGUID + 009, 5993, 0, 0, 0), (@SGUID + 009, 8675, 0, 0, 0);

-- align other spawns until respawned.
DELETE FROM `creature` WHERE `guid` = 3832; -- too close to Dreadmaul Post, to be respawned.
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` IN (5985,5988,5991,5993,8675);
UPDATE `creature` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300 WHERE `id` IN (5985,5988,5991,5993,8675);

