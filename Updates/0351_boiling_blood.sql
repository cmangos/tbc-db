-- has core component
DELETE FROM dbscripts_on_go_template_use WHERE id IN(184722,184715);
DELETE FROM spell_script_target WHERE entry IN(36546);
INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) VALUES
('36546', '0', '184722', '0');
UPDATE creature_template SET Faction=7 WHERE entry IN(21306);
DELETE FROM dbscripts_on_creature_movement WHERE id IN(2130801);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('2130801', '0', '0', '15', '36555', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Summon Scarab'),
('2130801', '1500', '0', '15', '36555', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Summon Scarab'),
('2130801', '3000', '0', '15', '36555', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Summon Scarab'),
('2130801', '4500', '0', '15', '36555', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Summon Scarab');
DELETE FROM creature_template_addon WHERE entry IN(21306);
INSERT INTO creature_template_addon(entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
('21306', '0', '0', '1', '0', '0', '0', '36556 36559 31309');


