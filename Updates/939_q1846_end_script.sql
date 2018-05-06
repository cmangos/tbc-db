-- q.1846 'Dragonmaw Shinbones' End Script
-- inspired by: https://github.com/TrinityCore/TrinityCore/commit/c5cc36d4c3fbe7a7faa8953a9579f9f06a5555fb

DELETE FROM dbscript_string WHERE entry IN (2000006704,2000006705);
INSERT INTO dbscript_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
('2000006704', '%s begins to craft...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '133', 'Velora Nitely'),
('2000006705', 'I have finished your leg guards, $n.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', 'Velora Nitely');

UPDATE quest_template SET CompleteScript=1846 WHERE entry=1846;
DELETE FROM dbscripts_on_quest_end WHERE id IN (1846);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('1846', '0', '29', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Velora Nitely - Remove Npc Flag Questgiver'),
('1846', '1', '0', '0', '0', '0', '0', '0', '0', '2000006704', '0', '0', '0', '0', '0', '0', '0', 'Velora Nitely - Say Line 0'),
('1846', '18', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Velora Nitely - Stop Emote'),
('1846', '19', '0', '0', '0', '0', '0', '0', '0', '2000006705', '0', '0', '0', '0', '0', '0', '0', 'Velora Nitely - Say Line 1'),
('1846', '20', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Velora Nitely - Add Npc Flag Questgiver');


