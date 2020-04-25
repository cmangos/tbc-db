-- ---------------------------------------------------------
-- CompleteScript for quest Dissension Amongst the Ranks... q.10776(A), q.10769(H)
-- ---------------------------------------------------------

-- Quest template
UPDATE quest_template SET CompleteScript=10776 WHERE entry=10776;
UPDATE quest_template SET CompleteScript=10769 WHERE entry=10769;

-- Add scripts
DELETE FROM dbscripts_on_quest_end WHERE id=10776;
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10776,6000,0,0,0,0,0,22054,77278,16,2000001664,0,0,0,0.000000,0.000000,0.000000,0.000000,'Behemothon, King of the Colossi - Brashly you have attacked my children, Illidan! The pact is broken. Giant will never side with elf! NEVER!'),
(10776,11000,0,0,0,0,0,22054,77278,16,2000001665,0,0,0,0.000000,0.000000,0.000000,0.000000,'Behemothon, King of the Colossi - %s roars in defiance.');
DELETE FROM dbscripts_on_quest_end WHERE id=10769;
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10769,6000,0,0,0,0,0,22054,77278,16,2000001664,0,0,0,0.000000,0.000000,0.000000,0.000000,'Behemothon, King of the Colossi - Brashly you have attacked my children, Illidan! The pact is broken. Giant will never side with elf! NEVER!'),
(10769,11000,0,0,0,0,0,22054,77278,16,2000001665,0,0,0,0.000000,0.000000,0.000000,0.000000,'Behemothon, King of the Colossi - %s roars in defiance.');

-- Add texts
DELETE FROM `dbscript_string` WHERE `entry` IN(2000001664,2000001665);
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `broadcast_text_id`, `comment`) VALUES 
(2000001664, 'Brashly you have attacked my children, Illidan! The pact is broken. Giant will never side with elf! NEVER!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 0, 0, 19737, 'Behemothon, King of the Colossi (Entry: 22054)'),
(2000001665, '%s roars in defiance.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3685, 7, 0, 0, 19739, 'Behemothon, King of the Colossi (Entry: 22054)');

