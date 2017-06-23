-- Re-add some generic scripts that was accidentally deleted at some point
DELETE FROM dbscripts_on_creature_movement WHERE id IN(2,3,4,7,8);
INSERT INTO dbscripts_on_creature_movement (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(2,0,20,1,5,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Change Movement To 1 - Random'),
(3,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Change Movement To 0 - Idle'),
(4,0,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Change Movement To 2 - Waypoint'),
(7,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Waypoint Pause'),
(8,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Waypoint Unpause');

-- Add some additional generic scripts
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 9 AND 16;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `command`, `datalong`, `comments`) VALUES
('9', '21', '1', 'GENERIC - Set Active Object On'),
('10', '21', '0', 'GENERIC - Set Active Object Off'),
('11', '35', '5', 'GENERIC - Send AI Event 5 (A) to Self'),
('12', '35', '6', 'GENERIC - Send AI Event 6 (B) to Self'),
('13', '35', '8', 'GENERIC - Send AI Event 8 (C) to Self'),
('14', '35', '9', 'GENERIC - Send AI Event 9 (D) to Self'),
('15', '35', '10', 'GENERIC - Send AI Event 10 (E) to Self'),
('16', '35', '11', 'GENERIC - Send AI Event 11 (F) to Self');

-- Update comment to make it clear that it's generic and not specific to Stratholme Gargoyles
UPDATE dbscripts_on_creature_movement SET comments='GENERIC - Run Mode On' WHERE id=5;

