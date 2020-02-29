-- serverside targeting
DELETE FROM spell_script_target WHERE entry=38640;
INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) VALUES
(38640,1,21326,0);

-- note - I still use spell script in core but this is the easiest way to add delay to something
INSERT INTO dbscripts_on_spell(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('38640', '4000', '0', '0', '0', '0', '0', '0', '0', '2', '2000010178', '0', '0', '0', '0', '0', '0', '0', 'Leafbeard Delayed Emote/Text');

INSERT INTO `dbscript_string` (`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`broadcast_text_id`,`comment`) VALUES
('2000010178','The %s appears very grateful to be free of the koi-koi spirit''s influence.','0','2','0','34','19943','21326');

