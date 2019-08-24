-- delete all Elwynn Forest events except 82, 83, 84
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `game_event_creature` WHERE `event` IN (100,101,102,109,110,111,91,92,93));
DELETE FROM `game_event_creature` WHERE `event` IN (100,101,102,109,110,111,91,92,93);
DELETE FROM `game_event_creature` WHERE `event` IN (-100,-101,-102,-109,-110,-111,-91,-92,-93);
DELETE FROM `game_event_gameobject` WHERE `event` IN (100,101,102,109,110,111,91,92,93);
DELETE FROM `game_event_gameobject` WHERE `event` IN (-100,-101,-102,-109,-110,-111,-91,-92,-93);
DELETE FROM `game_event` WHERE `entry` IN (100,101,102,109,110,111,91,92,93);

-- delete all Mulgore events except 79, 80, 81
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `game_event_creature` WHERE `event` IN (88,89,90,97,98,99,106,107,108));
DELETE FROM `game_event_creature` WHERE `event` IN (88,89,90,97,98,99,106,107,108);
DELETE FROM `game_event_creature` WHERE `event` IN (-88,-89,-90,-97,-98,-99,-106,-107,-108);
DELETE FROM `game_event_gameobject` WHERE `event` IN (88,89,90,97,98,99,106,107,108);
DELETE FROM `game_event_gameobject` WHERE `event` IN (-88,-89,-90,-97,-98,-99,-106,-107,-108);
DELETE FROM `game_event` WHERE `entry` IN (88,89,90,97,98,99,106,107,108);

-- delete all Terokkar events except 76, 77, 78
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `game_event_creature` WHERE `event` IN (85,86,87,94,95,96,103,104,105));
DELETE FROM `game_event_creature` WHERE `event` IN (85,86,87,94,95,96,103,104,105);
DELETE FROM `game_event_creature` WHERE `event` IN (-85,-86,-87,-94,-95,-96,-103,-104,-105);
DELETE FROM `game_event_gameobject` WHERE `event` IN (85,86,87,94,95,96,103,104,105);
DELETE FROM `game_event_gameobject` WHERE `event` IN (-85,-86,-87,-94,-95,-96,-103,-104,-105);
DELETE FROM `game_event` WHERE `entry` IN (85,86,87,94,95,96,103,104,105);

-- clean-up old events 39 and 40
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `game_event_creature` WHERE `event` IN (39,40));
DELETE FROM `creature` WHERE `guid` IN (SELECT `guid` FROM `game_event_creature` WHERE `event` IN (39,40));
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `game_event_creature` WHERE `event` IN (39,40));
DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `game_event_creature` WHERE `event` IN (39,40));
DELETE FROM `game_event_creature` WHERE `event` IN (39,40);
DELETE FROM `game_event_creature` WHERE `event` IN (-39,-40);
DELETE FROM `game_event_gameobject` WHERE `event` IN (39,40);
DELETE FROM `game_event_gameobject` WHERE `event` IN (-39,-40);
DELETE FROM `game_event` WHERE `entry` IN (39,40);

-- remove references to specific dates in descriptions
DELETE FROM `game_event` WHERE `entry` IN (76,77,78,79,80,81,82,83,84);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `linkedTo`, `EventGroup`, `description`) VALUES
('76', '2018-06-01 00:00:01', '2030-12-31 23:59:00', '525600', '4320', '0', '0', '0', 'Darkmoon Faire (Terokkar Forest) - Building Stage 1'),
('77', '2018-06-02 00:00:01', '2030-12-31 23:59:00', '525600', '2880', '0', '0', '0', 'Darkmoon Faire (Terokkar Forest) - Building Stage 2'),
('78', '2018-06-04 00:00:01', '2030-12-31 23:59:00', '525600', '8640', '376', '0', '0', 'Darkmoon Faire (Terokkar Forest) - Darkmoon Faire Open'),
('79', '2018-07-06 00:00:01', '2030-12-31 23:59:00', '525600', '4320', '0', '0', '0', 'Darkmoon Faire (Mulgore) - Building Stage 1'),
('80', '2018-07-07 00:00:01', '2030-12-31 23:59:00', '525600', '2880', '0', '0', '0', 'Darkmoon Faire (Mulgore) - Building Stage 2'),
('81', '2018-07-09 00:00:01', '2030-12-31 23:59:00', '525600', '8640', '375', '0', '0', 'Darkmoon Faire (Mulgore) - Darkmoon Faire Open'),
('82', '2018-08-03 00:00:01', '2030-12-31 23:59:00', '525600', '4320', '0', '0', '0', 'Darkmoon Faire (Elwynn Forest) - Building Stage 1'),
('83', '2018-08-04 00:00:01', '2030-12-31 23:59:00', '525600', '2880', '0', '0', '0', 'Darkmoon Faire (Elwynn Forest) - Building Stage 2'),
('84', '2018-08-06 00:00:01', '2030-12-31 23:59:00', '525600', '8640', '374', '0', '0', 'Darkmoon Faire (Elwynn Forest) - Darkmoon Faire Open');


