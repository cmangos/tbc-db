-- q.1842 'Satyr Hooves' End Script
-- inspired by: https://github.com/TrinityCore/TrinityCore/commit/0ef2cd28a72505516e7f1e17f2e9dd9fa9f71601

DELETE FROM dbscript_string WHERE entry IN (2000006700,2000006701);
INSERT INTO dbscript_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
('2000006700', '%s begins to work...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '233', 'Ula''elek'),
('2000006701', 'I am done.  Your armor is ready, $n.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '1', 'Ula''elek');

UPDATE quest_template SET CompleteScript=1842 WHERE entry=1842;
DELETE FROM dbscripts_on_quest_end WHERE id IN (1842);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('1842', '0', '29', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ula''elek - Remove Npc Flag Questgiver'),
('1842', '1', '0', '0', '0', '0', '0', '0', '0', '2000006700', '0', '0', '0', '0', '0', '0', '0', 'Ula''elek - Say Line 0'),
('1842', '18', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ula''elek - Stop Emote'),
('1842', '19', '0', '0', '0', '0', '0', '0', '0', '2000006701', '0', '0', '0', '0', '0', '0', '0', 'Ula''elek - Say Line 1'),
('1842', '20', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ula''elek - Add Npc Flag Questgiver');

UPDATE `creature` SET `position_x`=-811.458, `position_y`=-4939.82, `position_z`=20.4816, `orientation`=3.59002 WHERE `guid`=6490;


