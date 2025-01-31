-- -----------------------------
-- Mana Tombs exterior RP events
-- -----------------------------
-- Consortium Engineer 19673
DELETE FROM creature_spawn_data_template WHERE Entry=1967301;
INSERT INTO creature_spawn_data_template (Entry, NpcFlags, UnitFlags, Faction, ModelId, EquipmentId, CurHealth, CurMana, SpawnFlags, RelayId, StringId, `Name`) VALUES
(1967301, -1, -1, 0, 0, -1, 0, 0, 0, 10216, 0, 'Consortium Engineer - RelayScript (10216)');
DELETE FROM creature_spawn_data WHERE Guid=84507;
INSERT INTO creature_spawn_data (Guid, Id) VALUES
(84507,1967301);
DELETE FROM creature_template_addon WHERE entry=19673; -- not every spawn uses emote 233
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id=19673);
DELETE FROM creature WHERE guid=84498; -- extra spawn, there should only be 3 in total
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, emote, moveflags, auras) VALUES
(84504, 0, 0, 1, 233, 0, NULL),
(84497, 0, 0, 1, 0, 0, NULL),
(84507, 0, 0, 1, 0, 0, NULL);
DELETE FROM dbscripts_on_relay WHERE id=10216;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(10216, 1, 0, 31, 19677, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Consortium Engineer - search for buddy'),
(10216, 100, 0, 15, 34432, 0, 0, 19677, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Consortium Engineer - Cast Ribbon of Souls'),
(10216, 10000, 0, 45, 10216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Consortium Engineer - Start Relay Script'); -- creates loop intentionally
-- add missing Consortium Spell Marker
UPDATE creature_template SET InhabitType=4 WHERE Entry=19677; -- always flying
DELETE FROM creature WHERE guid=84498; -- reuse freed guid from above
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(84498, 19677, 530, 1, -3101.862, 4931.368, -87.810165, 2.30383467674255371, 300, 300, 0, 0);

-- add emotes for texts used by Nexus-Prince Haramad 19674
UPDATE broadcast_text SET EmoteID1=1, EmoteID2=15, EmoteDelay2=3000 WHERE Id IN (17224,17225,17226);
-- 5:00-5:30 interval, triggered via EAI
DELETE FROM dbscripts_on_relay WHERE id=10219;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(10219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17226, 17225, 17224, 0, 0, 0, 0, 0, 0, 0, 0, 'Nexus-Prince Haramad - random say'),
(10219, 3000, 0, 1, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nexus-Prince Haramad - emote'); -- this is only necessary because EmoteID2/EmoteDelay2 in broadcast_text is unimplemented?

-- "Captain" Kaftiz 19676 has two mini events.
-- #1 He harasses a nearby Consortium Laborer, and #2 he sends off Consortium Engineers into the Mana Tombs portal to die.

-- #1
-- specific Consortium Laborer 19672 who turns and talks to him - guid 84500
-- 2:00-2:30 interval, triggered via EAI
DELETE FROM dbscripts_on_relay WHERE id=10217;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(10217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17204, 17203, 17202, 17201, 0, 0, 0, 0, 0, 0, 0, '"Captain" Kaftiz - random say'),
(10217, 4000, 0, 1, 0, 0, 0, 19672, 84500, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Consortium Laborer - stop emote'),
(10217, 5000, 0, 36, 0, 0, 0, 19672, 84500, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Consortium Laborer - face "Captain" Kaftiz'),
(10217, 6000, 1, 0, 10201, 0, 0, 19672, 84500, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Consortium Laborer - random say'),
(10217, 11000, 0, 36, 1, 0, 0, 19672, 84500, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Consortium Laborer - reset facing'),
(10217, 12000, 0, 1, 233, 0, 0, 19672, 84500, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Consortium Laborer - emote');
DELETE FROM dbscript_random_templates WHERE id=10201;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(10201, 0, 17193, 0, 'Consortium Laborer 19672'),
(10201, 0, 17194, 0, 'Consortium Laborer 19672'),
(10201, 0, 17195, 0, 'Consortium Laborer 19672'),
(10201, 0, 17196, 0, 'Consortium Laborer 19672'),
(10201, 0, 17197, 0, 'Consortium Laborer 19672'),
(10201, 0, 17198, 0, 'Consortium Laborer 19672'),
(10201, 0, 17199, 0, 'Consortium Laborer 19672'),
(10201, 0, 17200, 0, 'Consortium Laborer 19672');
UPDATE broadcast_text SET EmoteID1=1 WHERE Id BETWEEN 17201 AND 17204;
UPDATE broadcast_text SET EmoteID1=1 WHERE Id BETWEEN 17193 AND 17200;
-- #2
-- Consortium Engineer 19673 has interaction with "Captain" Kaftiz 19676, then enters portal and dies - guid 84497
-- occurs more or less continuously, with a 5 second respawn after dying in portal
UPDATE creature SET spawntimesecsmin=5, spawntimesecsmax=5 WHERE guid=84497;
UPDATE creature_movement SET WaitTime=90000, ScriptId=1967301 WHERE `Point`=4 AND Id=84497;
DELETE FROM creature_movement WHERE `Point` IN (5,6,7) AND Id=84497;
INSERT INTO creature_movement (Id, `Point`, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, `Comment`) VALUES
(84497, 5, -3095.94, 4940.46, -99.6997, 100, 1, 5, 'copy of point 4 to make "run on" work'),
(84497, 6, -3074.75, 4943.16, -101.04, 100, 500, 1967302, 'chance for temporary success or die instantly'),
(84497, 7, -3069.42, 4942.84, -101.04, 100, 5000, 1967303, 'yell and die');
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1967301,1967302,1967303);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1967301, 84000, 0, 0, 0, 0, 0, 19676, 40, 0, 17210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '"Captain" Kaftiz - say'), -- Alright, it looks safe. Get in there, engineer!
(1967301, 88000, 0, 0, 0, 0, 0, 0, 0, 0, 17208, 17207, 17206, 17205, 0, 0, 0, 0, 0, 0, 0, 'Consortium Engineer - random say'),
(1967302, 0, 0, 45, 0, 10202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Consortium Engineer - start random relay script'),
(1967302, 8000, 0, 0, 0, 0, 0, 19676, 40, 0, 17213, 17212, 0, 0, 0, 0, 0, 0, 0, 0, 0, '"Captain" Kaftiz - random text emote'),
(1967302, 10000, 0, 0, 0, 0, 0, 19676, 40, 0, 17218, 17217, 17216, 17215, 0, 0, 0, 0, 0, 0, 0, '"Captain" Kaftiz - random say'),
(1967303, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 17209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Consortium Engineer - yell'),
(1967303, 2000, 0, 15, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Consortium Engineer - cast death');
DELETE FROM dbscript_random_templates WHERE id=10202;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(10202, 1, 10218, 80, 'Consortium Engineer 19673 - die immediately'),
(10202, 1, 0, 20, 'Consortium Engineer 19673 - continue inside portal');
DELETE FROM dbscripts_on_relay WHERE id=10218;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(10218, 0, 0, 15, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Consortium Engineer - cast death');
UPDATE broadcast_text SET EmoteID1=1 WHERE Id=17210;
UPDATE broadcast_text SET EmoteID1=1 WHERE Id BETWEEN 17205 AND 17208;
UPDATE broadcast_text SET EmoteID1=1 WHERE Id BETWEEN 17215 AND 17218;
UPDATE broadcast_text SET ChatTypeID=1 WHERE Id=17209;


