-- End script for quest Samophlange.
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = '902';
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`,  `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`,`x`, `y`, `z`, `o`, `comments`) VALUES 
('902 ', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4727', '0', '0', '0', '0','0', '0', '0', 'Samophlange - Sputtervalve - Say Text'),
('902 ', '0', '0', '9', '6552', '13', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', 'Samophlange - Sputtervalve - Spawn Object'),
('902 ', '0', '1', '36', '0', '0', '0', '162024', '5', '1025', '0', '0', '0', '0', '0','0', '0', '0', 'Samophlange - Sputtervalve - Face Object'),
('902 ', '2000', '0', '1', '173', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', 'Samophlange - Sputtervalve - Emote Mining'),
('902 ', '6000', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', 'Samophlange - Sputtervalve - Stop Emote'),
('902 ', '6000', '0', '15', '13727', '162024', '0', '0', '4', '1025', '0', '0', '0', '0', '0','0', '0', '0', 'Samophlange - Sputtervalve - Cast Break Samophlange'),
('902 ', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '4728', '0', '0', '0', '0', '0','0', '0', 'Samophlange - Sputtervalve - Say Text'),
('902 ', '8000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '1.309', 'Samophlange - Sputtervalve - Reset Facing');

UPDATE `quest_template` SET `CompleteScript`= '902' WHERE `entry`= '902';

DELETE FROM `gameobject` WHERE `guid` = '6552';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES 
('6552', '162024', '1', '1', '-900.61115', '-3758.9548', '11.331928', '0', '0', '0', '0', '0', '-600', '-600', '0', '1');

DELETE FROM `spell_script_target` WHERE `entry` = '13727';
INSERT INTO `spell_script_target` (`entry`, `targetEntry`) VALUES 
('13727', '162024');
