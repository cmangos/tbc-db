DELETE FROM dbscripts_on_quest_end WHERE id = '7846';
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `data_flags`, `dataint`, `comments`) VALUES 
('7846', '0', '28', '0', '0', '0', '0', '0', 'Recover the Key!: Elder Torntusk - Stand Up'),
('7846', '0', '4', '147', '1', '2', '0', '0', 'Recover the Key!: Elder Torntusk - Remove Npc Flags'),
('7846', '0', '18', '120000', '0', '0', '4', '0', 'Recover the Key!: Elder Torntusk - Despawn in 2 Minutes'),
('7846', '1000', '1', '15', '0', '0', '0', '0', 'Recover the Key!: Elder Torntusk - Emote OneShotRoar'),
('7846', '5000', '1', '4', '0', '0', '0', '0', 'Recover the Key!: Elder Torntusk - Emote OneShotCheer'),
('7846', '5000', '0', '0', '0', '0', '0', '10013', 'Recover the Key!: Elder Torntusk - Say Text');


UPDATE `quest_template` SET `CompleteScript`=7846 WHERE `entry`=7846;
