-- ported from classic db and extended for tbc - broke some time in the past
DELETE FROM dbscripts_on_go_template_use WHERE Id IN(180452,180515,186560);
INSERT INTO dbscripts_on_go_template_use(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
('180452', '0', '0', '15', '24754', '0', '0', '0', '100', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Darkmoon Faire cannon - Mulgore - stun'),
('180452', '0', '0', '15', '24730', '0', '0', '0', '100', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Darkmoon Faire cannon - Mulgore - TP'),
('180515', '0', '0', '15', '24831', '0', '0', '0', '100', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Darkmoon Faire cannon - Elwynn Forest - TP'),
('180515', '0', '0', '15', '24754', '0', '0', '0', '100', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Darkmoon Faire cannon - Elwynn Forest - Stun'),
('186560', '0', '0', '15', '42826', '0', '0', '0', '100', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Darkmoon Faire cannon - Terokkar Forest - TP'),
('186560', '0', '0', '15', '24754', '0', '0', '0', '100', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Darkmoon Faire cannon - Terokkar Forest - Stun');
UPDATE gameobject_template SET data10=42825 WHERE entry IN(186560);
UPDATE gameobject_template SET data10=24832 WHERE entry IN(180515);

