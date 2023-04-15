-- Generic Relay (let's add it as its slightly different then "3"
DELETE FROM dbscripts_on_relay WHERE id IN (30601);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(30601,0,39,1,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'GENERIC - FLY ANIM ON - RUN ON');
-- for generic creature_spawn_data_template
DELETE FROM creature_spawn_data_template WHERE entry = 20056;
INSERT INTO creature_spawn_data_template (`Entry`, `SpawnFlags`, `RelayId`, `Name`) VALUES 
(20056,3,30601, 'GENERIC - FLY ANIM ON - RUN ON');

-- Creatures

-- Vhel'kur 21801
UPDATE creature SET MovementType = 3 WHERE id = 21801;
UPDATE `creature_template` SET `SpeedWalk` = 1 WHERE `entry` = 21801;
DELETE FROM creature_spawn_data WHERE guid IN (76114);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(76114,20056);
UPDATE creature_movement_template SET WaitTime = 0, ScriptId = 0 WHERE entry IN (21801);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2180101;

-- Insidion 23281
DELETE FROM creature_spawn_data WHERE guid IN (160764);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(160764,3);

-- Furywing 23261
DELETE FROM creature_spawn_data WHERE guid IN (160763);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(160763,3);

-- Rivendark 23061
DELETE FROM creature_spawn_data WHERE guid IN (160762);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(160762,3);

-- Obsidia 23282
DELETE FROM creature_spawn_data WHERE guid IN (160761);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(160761,3);

