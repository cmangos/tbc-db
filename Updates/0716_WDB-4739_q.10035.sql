-- hope no dbscripts touch these guids.
UPDATE `creature` SET `guid` = 5309988 WHERE `guid` = 45844 AND `id` = 18815;
UPDATE `creature` SET `guid` = 5309987 WHERE `guid` = 84156 AND `id` = 18815;
UPDATE `creature` SET `guid` = 5309986 WHERE `guid` = 130000 AND `id` = 17530;

-- q.10035 'Torgos!'

-- Torgos 18707 - He IS a static unit
UPDATE `creature_template` SET `UnitFlags` = 33088 WHERE `entry` = 18707; -- 32832
-- .add 30618
-- readded
DELETE FROM creature_addon WHERE guid = 5309985;
DELETE FROM creature_movement WHERE id = 5309985;
DELETE FROM game_event_creature WHERE guid = 5309985;
DELETE FROM game_event_creature_data WHERE guid = 5309985;
DELETE FROM creature_battleground WHERE guid = 5309985;
DELETE FROM creature_linking WHERE guid = 5309985
 OR master_guid = 5309985;
DELETE FROM creature WHERE guid = 5309985;
INSERT INTO creature (guid, id, map, spawnmask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) values
(5309985,18707,530,1,-3080.584,5629.393,45.49624,0,300,300,0,3);

UPDATE creature_template SET MovementType = 3 WHERE entry IN (18707);
DELETE FROM `creature_movement_template` WHERE entry IN (18707);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
-- Path 0
(18707,0,1,-3080.584,5629.393,45.49624,100,0,0),
(18707,0,2,-3066.579,5600.193,45.49624,100,0,0),
(18707,0,3,-3033.242,5566.647,45.49624,100,0,0),
(18707,0,4,-3000.091,5550.69,45.49624,100,0,0),
(18707,0,5,-2966.126,5553.22,45.49624,100,0,0),
(18707,0,6,-2933.276,5566.656,45.49624,100,0,0),
(18707,0,7,-2909.975,5595.43,45.49624,100,0,0),
(18707,0,8,-2924.426,5628.75,45.49624,100,0,0),
(18707,0,9,-2959.99,5634.25,45.49624,100,0,0),
(18707,0,10,-3003.322,5643.299,45.49624,100,0,0),
(18707,0,11,-3031.275,5676.786,45.49624,100,0,0),
(18707,0,12,-3069.663,5670.291,45.49624,100,0,0),
-- Path 1
(18707,1,1,-2999.79,5622.37,-2.36827,1.85217,300000,1870701), -- 5min waiting for player to attack before return to his path
(18707,1,2,-2999.79,5622.37,-2.36827,1.85217,100,1870702);

-- shadow shows hover, no run - https://youtu.be/0rkLrSZKXHU?t=234
DELETE FROM creature_spawn_data WHERE guid IN (5309985);
INSERT INTO creature_spawn_data (guid, id) VALUES 
(5309985, 3); -- 1

DELETE FROM dbscripts_on_creature_movement WHERE id = 1870701;
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) values
(1870701,100,1,38,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1870701,1000,53,0,0,0,0,0,0,29995,0,0,0,0,0,0,0,'Set worldstate variable to 0'), -- off
(1870701,2000,48,256,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove UnitFLags'),
(1870702,1,48,256,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'add UnitFLags'),
(1870702,2,1,20,3,0,0,0,0x04,0,0,0,0,0,0,0,0,'Change Movement To 3 - Cyclic Spline Movement');

-- Trachela's Carcass 184844
UPDATE gameobject SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 184844;

DELETE FROM `spawn_group` WHERE id = 29995;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(29995, 'Terrokar Forest - Veil Rhaze - o.184844 spawn with q.10035', 1, 0, 20544, 0x08); -- 55967, Entry 184844

DELETE FROM `spawn_group_spawn` WHERE id = 29995;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(29995, 55967, -1); -- guid 28155

DELETE FROM conditions WHERE condition_entry IN (20544);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20544, 42, 29995, 0, 1, 0, 'Terrokar Forest - Veil Rhaze - o.184844 spawn with q.10035');

DELETE FROM worldstate_name WHERE Id=29995;
INSERT INTO worldstate_name(Id, Name) VALUES
(29995,'Terrokar Forest - Veil Rhaze - o.184844 spawn with q.10035');

-- Q event
DELETE FROM dbscripts_on_event WHERE id = 13894;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) values
(13894,1,31,18707,200,0,0,0,0,0,0,0,0,0,0,0,0,'search for 11886'),
(13894,100,53,0,0,0,0,0,0,29995,1,0,0,0,0,0,0,'Set worldstate variable to 1'), -- on
(13894,101,20,2,1,0,18707,200,7,0,0,0,0,0,0,0,0,'18707 - set path 1');

