-- o.2554 'Cortello's Riddle' - only one spawns at same time
DELETE FROM `spawn_group` WHERE id = 19998;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19998, 'Stranglethorn Vale - Cortello\'s Riddle', 1, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19998;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19998, 12172, -1), -- 12172,11652,11133
(19998, 11652, -1),
(19998, 11133, -1);

