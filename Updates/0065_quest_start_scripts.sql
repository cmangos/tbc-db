UPDATE quest_template SET StartScript=2282 WHERE entry=2282;
DELETE FROM dbscripts_on_quest_start WHERE id=2282;
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(2282, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 3562, 0, 0, 0, 0, 0, 0, 0, 0, 'Alther''s Mill - Lucius: Say text 1');

UPDATE quest_template SET StartScript=3449 WHERE entry=3449;
DELETE FROM dbscripts_on_quest_start WHERE id=3449;
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(3449, 500, 0, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcane Runes - Tymor: Emote'),
(3449, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 4451, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcane Runes - Tymor: Say text 1');


