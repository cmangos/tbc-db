-- Update areatrigger_teleports and add condition requirements to Horde and Night Elf bases in case player manages to get behind barrier
UPDATE areatrigger_teleport SET target_position_x=5066.79, target_position_y=-1791.9, target_position_z=1321.65, target_orientation=2.356194 WHERE id=4311; -- Alliance Base
UPDATE areatrigger_teleport SET target_position_x=5499.96, target_position_y=-2756.8, target_position_z=1488.96, target_orientation=1.396263, condition_id=10072 WHERE id=4312; -- Horde Base (Requires Anetheron Done)
UPDATE areatrigger_teleport SET target_position_x=5163.02, target_position_y=-3428.31, target_position_z=1627.61, target_orientation=0.7853982, condition_id=10075 WHERE id=4313; -- Night Elf (Requires Azgalor Done)
UPDATE areatrigger_teleport SET target_position_x=4252.72, target_position_y=-4226.16, target_position_z=868.222, target_orientation=2.356194 WHERE id=4319; -- Entrance
UPDATE areatrigger_teleport SET target_position_x=-8176.99, target_position_y=-4176.92, target_position_z=-166.463, target_orientation=3.926991 WHERE id=4323; -- Exit

-- Also add some game_teles to make moving around easier
DELETE FROM game_tele WHERE id BETWEEN 424 AND 430;
INSERT INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES
(424, 5066.79, -1791.9, 1321.65, 2.356194, 534, 'HyjalHuman'),
(425, 5066.79, -1791.9, 1321.65, 2.356194, 534, 'HyjalAlliance'),
(426, 5499.96, -2756.8, 1488.96, 1.396263, 534, 'HyjalOrc'),
(427, 5499.96, -2756.8, 1488.96, 1.396263, 534, 'HyjalHorde'),
(428, 5163.02, -3428.31, 1627.61, 0.7853982, 534, 'HyjalNightElf'),
(429, 5163.02, -3428.31, 1627.61, 0.7853982, 534, 'HyjalNE'),
(430, 4252.72, -4226.16, 868.222, 2.356194, 534, 'HyjalEntranceRoom');

-- Set proper flags for Horde Encampment Portal and Night Elf Village Portal (They will now be locked as intended)
UPDATE `gameobject_template` SET `flags`=34 WHERE `entry` IN(182060,182061);

