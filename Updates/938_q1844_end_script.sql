-- q.1844 'Chimaeric Horn' End Script
-- inspired by: https://github.com/TrinityCore/TrinityCore/commit/b9b404c4fe2a5097758b0591f7930bcb7b964310

DELETE FROM dbscript_string WHERE entry IN (2000006702,2000006703);
INSERT INTO dbscript_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
('2000006702', '%s begins to work...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '233', 'Orm Stonehoof'),
('2000006703', 'I have completed your helm, $n.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', 'Orm Stonehoof');

UPDATE quest_template SET CompleteScript=1844 WHERE entry=1844;
DELETE FROM dbscripts_on_quest_end WHERE id IN (1844);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('1844', '0', '29', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Orm Stonehoof - Remove Npc Flag Questgiver'),
('1844', '1', '0', '0', '0', '0', '0', '0', '0', '2000006702', '0', '0', '0', '0', '0', '0', '0', 'Orm Stonehoof - Say Line 0'),
('1844', '18', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Orm Stonehoof - Stop Emote'),
('1844', '19', '0', '0', '0', '0', '0', '0', '0', '2000006703', '0', '0', '0', '0', '0', '0', '0', 'Orm Stonehoof - Say Line 1'),
('1844', '20', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Orm Stonehoof - Add Npc Flag Questgiver');

UPDATE `creature` SET `position_x`=-1239.54, `position_y`=109.707, `position_z`=129.58, `orientation`=1.89658 WHERE `guid`=24678;


