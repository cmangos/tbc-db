INSERT INTO `broadcast_text` (`Id`, `Text`, `ChatTypeID`, `VerifiedBuild`) VALUES 
('77866', '$n, pay very close attention to what I do and follow my instructions precisely. To not heed my words is to sign your own death warrant, as Taskmaster Fizzule is VERY well versed in the ways of the warrior and the assassin.', '0', '18019'),
('77867', 'After you get his attention - and you can be certain that if he sees you near the tower, you\'ll have his undue attention - face him and perfom the Shattered /Salute. Let me demonstrate....', '0', '18019'),
('77868', 'Shenthul prepares the Shattered Salute! *PAY ATTENTION!*', '2', '18019'),
('77869', 'Did you see what I did? If you are unsure of the technique used in presenting the /salute, practice on me. If you correctly execute the Shattered /Salute, I will give you the proper response.', '0', '18019');

INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `priority`, `command`, `datalong`, `dataint`, `comments`) VALUES 
('2460', '0', '0', '0',  '0', '77866', 'Quest - The Shattered Salute - Talk'),
('2460', '8000', '0', '0',  '0', '77867', 'Quest - The Shattered Salute - Talk'),
('2460', '14000', '0', '0',  '0', '77868', 'Quest - The Shattered Salute - Talk'),
('2460', '20000', '0', '1',  '66', '0', 'Quest - The Shattered Salute - EMOTE_SALUTE'),
('2460', '25000', '0', '0',  '0', '77869', 'Quest - The Shattered Salute - Talk');

UPDATE `quest_template` SET `StartScript`='2460' WHERE (`entry`='2460');