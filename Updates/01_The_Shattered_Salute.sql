INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `comments`) VALUES 
('2460', '5000', '1', '66', 'The Shattered Salute - ONESHOT_SALUTE');

UPDATE `quest_template` SET `StartScript`='2460' WHERE (`entry`='2460');