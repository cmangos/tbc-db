UPDATE creature_template SET UnitFlags=832,InhabitType=4 WHERE entry IN(23054); -- needs to "fly"

DELETE FROM creature_template_addon WHERE entry IN(23054);
INSERT INTO creature_template_addon(entry,auras) VALUES
(23054,'39966');

DELETE FROM gameobject WHERE guid IN(113163,150143);
INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
('113163', '185170', '530', '1', '-1891.344', '5417.036', '-5.539243', '0.4188786', '0', '0', '0.2079115', '0.9781476', '-7200', '-7200', '0', '0'),
('150143', '185170', '530', '1', '-3600.01', '1933.34', '58.2374', '4.72984', '0', '0', '-0.700909', '0.713251', '-120', '-120', '0', '0'); -- had wrong spawnmask

DELETE FROM dbscripts_on_relay WHERE id IN(10061);
INSERT INTO dbscripts_on_relay(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('10061', '0', '0', '0', '0', '0', '0', '0', '0', '2000005916', '0', '0', '0', '0', '0', '0', '0', 'Adal emote at player'),
('10061', '4', '0', '0', '0', '0', '0', '0', '0', '2000005917', '0', '0', '0', '0', '0', '0', '0', 'Adal emote at player'),
('10061', '8', '0', '0', '0', '0', '0', '0', '0', '2000005918', '0', '0', '0', '0', '0', '0', '0', 'Adal emote at player'),
('10061', '13', '0', '0', '0', '0', '0', '0', '0', '2000005919', '0', '0', '0', '0', '0', '0', '0', 'Adal emote at player'),
('10061', '14', '9', '113163', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Respawn Mark of Kaelthas'),
('10061', '14', '10', '23054', '50000', '0', '0', '0', '8', '0', '0', '0', '0', '-1884.322', '5420.598', '-8.42119', '0.4886922', 'Spawn kaelthas'),
('10061', '20', '0', '0', '0', '0', '23054', '30', '0', '2000005920', '0', '0', '0', '0', '0', '0', '0', 'Kael yell at player'),
('10061', '31', '0', '0', '0', '0', '23054', '30', '0', '2000005921', '0', '0', '0', '0', '0', '0', '0', 'Kael yell at player'),
('10061', '42', '0', '0', '0', '0', '23054', '30', '0', '2000005922', '0', '0', '0', '0', '0', '0', '0', 'Kael yell at player'),
('10061', '53', '0', '0', '0', '0', '23054', '30', '0', '2000005923', '0', '0', '0', '0', '0', '0', '0', 'Kael yell at player');
DELETE FROM dbscript_string WHERE entry IN(2000005916,2000005917,2000005918,2000005919,2000005920,2000005921,2000005922,2000005923);
INSERT INTO dbscript_string(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
('2000005916', 'Silence descends upon Shattrath.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '7', '0', '0', 'q.11007 Adal emote'),
('2000005917', '%s''s thoughts invade your mind.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '7', '0', '0', 'q.11007 Adal emote'),
('2000005918', 'Kael''thas Sunstrider has been defeated by $n and $g his:her; allies.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '7', '0', '0', 'q.11007 Adal emote'),
('2000005919', 'The time to strike at the remaining blood elves of Tempest Keep is now. Take arms and let A''dal''s song of battle empower you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '7', '0', '0', 'q.11007 Adal emote'),
('2000005920', 'Your monkeys failed to finish the job, naaru. Beaten but alive... The same mistake was not made when we took command of your vessel.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '6', '0', '0', 'q.11007 Kaelthas yell'),
('2000005921', 'All for what? Trinkets? You are too late. The preparations have already begun. Soon the master will make his return.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '6', '0', '0', 'q.11007 Kaelthas yell'),
('2000005922', 'And there is nothing you or that fool, Illidan, can do to stop me! You have both served me in your own right - unwittingly.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '6', '0', '0', 'q.11007 Kaelthas yell'),
('2000005923', 'Lay down your arms and succumb to the might of Kil''jaeden!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '6', '0', '0', 'q.11007 Kaelthas yell');


