INSERT INTO `broadcast_text` (`Id`, `Text`, `ChatTypeID`, `VerifiedBuild`) VALUES 
('77866', '$n, pay very close attention to what I do and follow my instructions precisely. To not heed my words is to sign your own death warrant, as Taskmaster Fizzule is VERY well versed in the ways of the warrior and the assassin.', '0', '18019'),
('77867', 'After you get his attention - and you can be certain that if he sees you near the tower, you\'ll have his undue attention - face him and perfom the Shattered /Salute. Let me demonstrate....', '0', '18019'),
('77868', 'Shenthul prepares the Shattered Salute! *PAY ATTENTION!*', '2', '18019'),
('77869', 'Did you see what I did? If you are unsure of the technique used in presenting the /salute, practice on me. If you correctly execute the Shattered /Salute, I will give you the proper response.', '0', '18019'),
('77870', 'Well done!', '0', '18019');

INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `priority`, `command`, `datalong`, `dataint`, `comments`) VALUES 
('2460', '0', '0', '0',  '0', '77866', 'Quest - The Shattered Salute - Talk'),
('2460', '8000', '0', '0',  '0', '77867', 'Quest - The Shattered Salute - Talk'),
('2460', '14000', '0', '0',  '0', '77868', 'Quest - The Shattered Salute - Talk'),
('2460', '20000', '0', '1',  '66', '0', 'Quest - The Shattered Salute - EMOTE_SALUTE'),
('2460', '25000', '0', '0',  '0', '77869', 'Quest - The Shattered Salute - Talk');

INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `dataint`, `comments`) VALUES 
('3401', '0', '1', '66', '0', 'Quest - The Shattered Salute'),
('3401', '4000', '0', '0', '77870', 'Quest - The Shattered Salute');

UPDATE `quest_template` SET `StartScript`='2460' WHERE (`entry`='2460');

INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES 
('340101', '3401', '22', '0', '100', '0', '78', '2460', '0', '0', '0', '0', '53', '3401', '0', '0', '15', '2460', '6', '0', '0', '0', '0', '0', 'Shenthul - OnReceive EMOTE_SALUTE - complete quest and start relay Script');

INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
('2460', '9', '2460', '0', '0', '0', '0', 'Quest ID 2460 Taken');
