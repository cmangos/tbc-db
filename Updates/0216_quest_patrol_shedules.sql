-- Rework Privat Merle Movement
-- Spawns on Last waypoint and moves instantly 	
-- Respawns between 30 and 40 secs.

SET @PATH := 1421;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`) VALUES 
(@PATH,0,1,-11332.41,-202.57655,75.27844,100, 0),
(@PATH,0,2,-11332.354,-207.86171,75.4801,100, 0),
(@PATH,0,3,-11329.404,-210.93268,75.854614,100, 0),
(@PATH,0,4,-11325.882,-214.05154,76.310425,100, 0),
(@PATH,0,5,-11326.426,-220.31602,76.13684,100, 0),
(@PATH,0,6,-11331.428,-224.11876,75.2301,100, 15000),
(@PATH,0,7,-11330.593,-229.14502,75.061646,100, 0),
(@PATH,0,8,-11329.63,-232.61719,74.89221,100, 0),
(@PATH,0,9,-11329.29,-236.28912,74.812546,100, 0),
(@PATH,0,10,-11330.215,-240.38336,74.337204,100, 0),
(@PATH,0,11,-11328.289,-244.47841,74.35039,100, 0),
(@PATH,0,12,-11330.688,-248.137,73.26103,100, 30000),
(@PATH,0,13,-11328.444,-239.69011,74.69609,100, 0),
(@PATH,0,14,-11327.524,-235.55914,74.91753,100, 0),
(@PATH,0,15,-11326.942,-230.3699,75.30945,100, 0),
(@PATH,0,16,-11330.103,-226.33957,75.2301,100, 0),
(@PATH,0,17,-11330.271,-222.37321,75.2301,100, 0),
(@PATH,0,18,-11328.002,-216.52393,76.18225,100, 0),
(@PATH,0,19,-11330.451,-207.0886,75.4801,100, 0),
(@PATH,0,20,-11332.41,-202.57655,75.27844,100, 0),
(@PATH,0,21,-11330.128,-201.70247,75.3551,100, 12000);

UPDATE `creature` SET `spawntimesecsmin`='30', `spawntimesecsmax`='40', `position_x`='-11330.128', `position_y`='-201.70247', `position_z`='75.3551' WHERE `guid` = '1626';

-- Add waypoints for Privat Merle when quest Proof of Deed is turned in.
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@PATH,1,1,-11315.612,-197.70877,76.311745,100, 0, 0),
(@PATH,1,2,-11313.796,-194.019,76.59934,100, 6000, 142100), -- Say text and face Player 
(@PATH,1,3,-11325.414,-200.42009,75.6178,100, 0, 0),
(@PATH,1,4,-11343.164,-212.33643,75.29683,100, 0, 0),
(@PATH,1,5,-11359.65,-209.66531,75.29683,100, 0, 0),
(@PATH,1,6,-11374.819,-216.3622,75.34232,100, 0, 0),
(@PATH,1,7,-11383.107,-231.53195,71.442665,100, 0, 0),
(@PATH,1,8,-11383.049,-246.53125,65.809425,100, 0, 0),
(@PATH,1,9,-11391.146,-276.89496,59.325535,100, 0, 0),
(@PATH,1,10,-11390.09,-287.58762,59.22373,100, 0, 0),
(@PATH,1,11,-11384.697,-308.23578,63.358273,100, 0, 0),
(@PATH,1,12,-11382.183,-317.46582,65.11658,100, 0, 0),
(@PATH,1,13,-11379.763,-328.08258,65.40881,100, 0, 0),
(@PATH,1,14,-11372.397,-344.2346,65.67435,100, 0, 0),
(@PATH,1,15,-11366.07,-364.66504,66.08626,100, 0, 0),
(@PATH,1,16,-11358.83,-375.84946,65.32926,100, 0, 0),
(@PATH,1,17,-11350.435,-381.47113,65.6547,100, 0, 142101), -- Spawn Ghouls
(@PATH,1,18,-11308.213,-370.0369,65.413025,100, 0, 0), 
(@PATH,1,19,-11299.191,-369.09235,65.643585,100, 4000, 0), 
(@PATH,1,20,-11271.992,-368.16895,61.901157,100, 0, 0),
(@PATH,1,21,-11255.041,-371.03772,58.591084,100, 0, 142102); -- Despawn

-- Add quest end script for quest 'Patrol Schedules' entry 330
-- Privat Merle moves into the camp, faces Player and talks to player.
-- We currently cant set Player as target when with db_script_on_movement
DELETE FROM dbscripts_on_quest_end WHERE id = '330';
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `x`, `y`, `z`, `comments`) VALUES 
('330', '0', '0', '21', '1', '0', '0', '1421', '75', '0', '0', '0', '0', '0', 'Patrol Schedules - Privat Merle - Set ActiveState'),
('330', '0', '1', '25', '1', '0', '0', '1421', '75', '0', '0', '0', '0', '0', 'Patrol Schedules - Privat Merle - Set Run'),
('330', '0', '2', '20', '2', '1', '0', '1421', '75', '0', '0', '0', '0', '0', 'Patrol Schedules - Privat Merle - Start Waypoint Path 1');

DELETE FROM dbscripts_on_creature_movement WHERE id = '142100';
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `comments`) VALUES 
('142100', '1000', '0', '36', '0', '0', '0', '0', '0', '0','Patrol Schedules - Privat Merle - Face Player'),
('142100', '1000', '1', '0', '0', '0', '229', '0', '0', '0','Patrol Schedules - Privat Merle - Say Text'),
('142100', '2000', '22', '0', '0', '0', '0', '0', '0', '0','Patrol Schedules - Privat Merle - Change Faction'),
-- Spawn Spreaders
-- Check how long they should be spawned
-- Spawn Plaque Spreader as spawn_group
('142101', '1000', '0', '10', '604', '0', '0', '0', '0', '0','Patrol Schedules - Privat Merle - Spawn Plague Spreader'),
-- Despawn at the end of his Waypoint
('142102', '2000', '0', '18', '0', '0', '0', '0', '0', '0','Patrol Schedules - Privat Merle - Despawn');

-- Plaque Spreader spawns
INSERT INTO `creature` (`guid`, `id`, `position_x`, `position_y`, `position_z`, `orientation`, `curhealth`) VALUES 
('Free GUID', '604', '-11253.794', '-355.35596', '58.454597', '0', '0'),
('1224321421', '604', '-11250.679', '-356.77237', '56.685455', '0', '0'),
('1224321421', '604', '-11257.765', '-359.5209', '59.33482', '0', '0'); --Leader

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES 
('100', 'Duskwood - Plaque Spreader - Quest Patrol Shedules', '0', '3', '3', '1');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES 
('100', '1', '2', '0', 'path', '0', 'Duskwood - Plaque Spreader - Quest Patrol');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES 
('3213120', '3213120', '1'),
('3213120', '3213120', '2'),
('3213120', '3213120', '3');

-- plaque Spreader Waypoints
SET @PLAQUEPATH := 1421;
DELETE FROM creature_movement_template WHERE `Entry` = @PLAQUEPATH;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`) VALUES 
(@PLAQUEPATH,1,-11270.975,-364.99533,61.834743),
(@PLAQUEPATH,2,-11282.513,-366.25824,63.389675),
(@PLAQUEPATH,3,-11291.812,-366.56598,64.210236),
(@PLAQUEPATH,4,-11290.514,-366.52344,64.17557),
(@PLAQUEPATH,5,-11272.343,-366.87717,62.105503),
(@PLAQUEPATH,6,-11262.049,-365.63098,60.135162),
(@PLAQUEPATH,7,-11250.061,-358.7902,56.24234);