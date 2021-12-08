-- Start script for quest The Binding.
DELETE FROM dbscripts_on_quest_start WHERE id = '1795';
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `data_flags`, `dataint`, `x`, `y`, `z`, `o`, `comments`) VALUES 
('1795 ', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'The Binding: Strahad Farsan - Set ActiveObject'),
('1795 ', '1000', '29', '51', '2', '0', '0', '0', '0', '0', '0', '0', 'The Binding: Strahad Farsan - Toggle Npc Flags'),
('1795 ', '1000', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'The Binding: Strahad Farsan - Emote OneShotTalk'),
('1795 ', '1000', '0', '0', '0', '0', '0', '2370', '0', '0', '0', '0', 'The Binding: Strahad Farsan - Say Text'),
('1795 ', '4000', '3', '0', '0', '0', '0', '0', '-780.438', '-3718.21', '42.1855', '0', 'The Binding: Strahad Farsan - Move'),
('1795 ', '6000', '3', '0', '0', '0', '0', '0', '-769.382', '-3721.35', '42.4199', '0', 'The Binding: Strahad Farsan - Move'),
('1795 ', '14000', '15', '8677', '0', '0', '4', '0', '0', '0', '0', '0', 'The Binding: Strahad Farsan - Cast Spell Summon Effect');

UPDATE `quest_template` SET `StartScript`=1795 WHERE `entry`=1795;

-- Script when Strahad Farsan casts spell Summon Effect
DELETE FROM dbscripts_on_event WHERE id = '1428';
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `x`, `y`, `z`, `o`, `comments`) VALUES 
('1428 ', '0', '9', '29205', '120', '0', '0', '0', '0', '0','0', '0', '0', '0', 'The Binding: Summon GameObject Strahad\'s Summoning Circle'),
('1428 ', '2000', '1', '2', '0', '0', '6253', '30', '0', '0', '0', '0', '0', '0', 'The Binding: Acolyte Fenrick - Emote OneShotBow'),
('1428 ', '2000', '1', '2', '0', '0', '6254', '30', '0', '0', '0', '0', '0', '0', 'The Binding: Acolyte Wytula - Emote OneShotBow'),
('1428 ', '2000', '1', '2', '0', '0', '6252', '30', '0', '0', '0', '0', '0', '0', 'The Binding: Acolyte Magaz - Emote OneShotBow'),
('1428 ', '2000', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'The Binding: Strahad Farsan - Emote OneShotTalk'),
('1428 ', '2000', '0', '0', '0', '0', '0', '0', '0', '2374', '0', '0', '0', '0', 'The Binding: Strahad Farsan - Say Text'),
('1428 ', '2000', '29', '3', '2', '0', '6254', '30', '0', '0', '0', '0', '0', '0', 'The Binding: Acolyte Wytula - Toggle NpcFlags'),
('1428 ', '2000', '29', '3', '2', '0', '6252', '30', '0', '0', '0', '0', '0', '0', 'The Binding: Acolyte Magaz - Toggle NpcFlags'),
('1428 ', '5000', '3', '0', '0', '0', '0', '0', '0', '0', '-763.195', '-3720.34', '42.2333', '3.15487', 'The Binding: Strahad Farsan - Move'),
('1428 ', '5000', '15', '8675', '0', '0', '6253', '30', '0', '0', '0', '0', '0', '0', 'The Binding: Acolyte Fenrick - Cast Spell Warlock Channeling'),
('1428 ', '5000', '15', '8675', '0', '0', '6254', '30', '0', '0', '0', '0', '0', '0', 'The Binding: Acolyte Wytula - Cast Spell Warlock Channeling'),
('1428 ', '5000', '15', '8675', '0', '0', '6252', '30', '0', '0', '0', '0', '0', '0', 'The Binding: Acolyte Magaz - Cast Spell Warlock Channeling'),
('1428 ', '14000', '9', '50355', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'The Binding: Summon GameObject Summoning Circle');

-- Script when player uses item Tome of the Cabal.
DELETE FROM dbscripts_on_event WHERE id = '1449';
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint4`,`x`, `y`, `z`, `o`, `comments`) VALUES 
('1449 ', '0', '10', '6268', '120000', '0', '0', '0', '0', '0', '6268', '-768.601', '-3721.96', '42.4778', '2.79253', 'The Binding: Summon Creature Summoned Felhunter'),
('1449 ', '1000', '1', '34', '0', '0', '6253', '30', '0', '0', '0', '0', '0', '0', '0','The Binding: Acolyte Fenrick - Emote OneShotWoundCritical'),
('1449 ', '1000', '1', '34', '0', '0', '6254', '30', '0', '0', '0', '0', '0', '0', '0','The Binding: Acolyte Wytula - Emote OneShotWoundCritical'),
('1449 ', '1000', '1', '34', '0', '0', '6252', '30', '0', '0', '0', '0', '0', '0', '0','The Binding: Acolyte Magaz - Emote OneShotWoundCritical'),
('1449 ', '1000', '29', '3', '2', '0', '6254', '30', '0', '0', '0', '0', '0', '0', '0','The Binding: Acolyte Wytula - Toggle NpcFlags'),
('1449 ', '1000', '29', '3', '2', '0', '6252', '30', '0', '0', '0', '0', '0', '0', '0','The Binding: Acolyte Magaz - Toggle NpcFlags'),
('1428 ', '3000', '40', '92252', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','The Binding: Strahad\'s Summoning Circle - Despawn'),
('1428 ', '3000', '40', '92388', '106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','The Binding: Summoning Circle - Despawn');

-- Spawn script for Summoned Felhunter.
DELETE FROM dbscripts_on_relay WHERE id = '6268';
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint4`,`x`, `y`, `z`, `o`, `comments`) VALUES 
('6268 ', '2000', '22', '14', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', 'The Binding: Summoned Felhunter - Set Faction');

DELETE FROM creature_spawn_data_template WHERE entry = '6268';
INSERT INTO `creature_spawn_data_template` (`Entry`, `RelayId`) VALUES 
('6268', '6268');

-- Correct spawn position and let objects just spawn via event script.
UPDATE `gameobject` SET `position_x`='-768.659', `position_y`='-3721.86', `position_z`='42.3966', `orientation`='4.55531', `spawntimesecsmin`='-1', `spawntimesecsmax`='-1' WHERE (`guid`='29205');
UPDATE `gameobject` SET `position_x`='-768.692', `position_y`='-3721.9', `position_z`='42.3976', `orientation`='2.68781', `spawntimesecsmin`='-1', `spawntimesecsmax`='-1' WHERE (`guid`='50355');

-- - Update gameobject templates.
UPDATE `gameobject_template` SET `size`=2.5, `faction`=35 WHERE `entry`=92252;
UPDATE `gameobject_template` SET `size`=2.5, `faction`=35 WHERE `entry`=92388;

-- Define targets for spell Summon Felhunter.
DELETE FROM `spell_script_target` WHERE `entry`=8712;
INSERT INTO `spell_script_target` (`entry`, `targetEntry`) VALUES ('8712', '92388');
INSERT INTO `spell_script_target` (`entry`, `targetEntry`) VALUES ('8712', '92252');

-- Correct data for Summoned Felhunter.
UPDATE `creature_template` SET `faction`=35, `MeleeBaseAttackTime`=2000, `SpeedWalk`=1, `SpeedRun`=1.14286 WHERE `entry`=6268;