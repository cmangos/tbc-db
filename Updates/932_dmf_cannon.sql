-- Reverted data to WotLK sniff values
UPDATE gameobject_template SET ExtraFlags=0, data10=24743, data3=0 WHERE entry=180515;
UPDATE gameobject_template SET ExtraFlags=0, data10=24832, data3=0 WHERE entry=180452;
UPDATE gameobject_template SET ExtraFlags=0, data10=42825, data3=0 WHERE entry=186560;

-- Added all spells cast when the Darkmoon Fair cannon is used
DELETE FROM dbscripts_on_go_template_use WHERE id IN (180515, 180452);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(180515, 0, 15, 24831, 0, 0, 0, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkmoon Faire cannon - Elwynn Forest - TP'),
(180515, 0, 15, 24754, 0, 0, 0, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkmoon Faire cannon - Elwynn Forest - Stun'),
(180452, 0, 15, 24754, 0, 0, 0, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkmoon Faire cannon - Mulgore - stun'),
(180452, 0, 15, 24730, 0, 0, 0, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkmoon Faire cannon - Mulgore - TP'),
(186560, 0, 15, 24754, 0, 0, 0, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkmoon Faire cannon - Terrokar Forest - stun'),
(186560, 0, 15, 42826, 0, 0, 0, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkmoon Faire cannon - Terrokar Forest - TP');

UPDATE creature_template SET FactionAlliance=35, FactionHorde=35 WHERE entry=15218;
