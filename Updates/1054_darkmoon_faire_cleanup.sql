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
UPDATE `game_event` SET `description`=REPLACE(`description`,'June 2018 - ','') WHERE `entry` IN (76,77,78,79,80,81,82,83,84);
UPDATE `game_event` SET `description`=REPLACE(`description`,'July 2018 - ','') WHERE `entry` IN (76,77,78,79,80,81,82,83,84);
UPDATE `game_event` SET `description`=REPLACE(`description`,'August 2018 - ','') WHERE `entry` IN (76,77,78,79,80,81,82,83,84);


