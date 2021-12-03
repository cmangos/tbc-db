UPDATE `broadcast_text` SET `ChatTypeID`='4' WHERE (`Id`='4576');

DELETE FROM `dbscripts_on_quest_start` WHERE id = '3602';
INSERT INTO `dbscripts_on_quest_start` (`id`, `command`, `dataint`, `comments`) VALUES ('3602', '0', '4576', 'Azsharite: Loramus Thalipedes - Whisper Text');

UPDATE `quest_template` SET `StartScript`='3602' WHERE (`entry`='3602');