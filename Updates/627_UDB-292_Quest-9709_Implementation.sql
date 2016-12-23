-- UDB_292
-- q.9709 'Stealing Back the Mushrooms'
DELETE FROM dbscripts_on_quest_end WHERE id = 9709;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9709,1,20,2,0,17831,63512,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(9709,2,0,0,0,0,0,0,2000000625,0,0,0,0,0,0,0,''),
(9709,84,0,0,0,0,0,0,2000000629,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 9709 WHERE entry = 9709;
-- used only during q.
DELETE FROM creature_movement_template WHERE entry = 17831;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17831,1, -283.861, 8302.74, 19.7109, 4000, 1783101, 0.925025, 0, 0),
(17831,2, -279.541,8304.48,19.88, 0, 0, 100, 0, 0),
(17831,3, -276.254,8299.12,19.835, 0, 0, 100, 0, 0),
(17831,4, -277.253,8292.89,19.78, 0, 0, 100, 0, 0),
(17831,5, -280.11,8284.88,18.4662, 0, 0, 100, 0, 0),
(17831,6, -292.934,8242.46,18.2843, 0, 0, 100, 0, 0),
(17831,7, -293.665,8233.73,20.3739, 55000, 1783102, 3.83194, 0, 0),
(17831,8, -292.913,8242.31,18.2988, 0, 0, 100, 0, 0),
(17831,9, -282.882,8283.62,18.1645, 0, 0, 100, 0, 0),
(17831,10, -277.159,8294.56,19.8014, 0, 0, 100, 0, 0),
(17831,11, -277.396,8299.08,19.8348, 0, 0, 100, 0, 0),
(17831,12, -280.191,8301.87,19.8223, 0, 0, 100, 0, 0),
(17831,13, -283.861, 8302.74, 19.7109, 5000, 1783103, 0.925025, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1783101 AND 1783103; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1783101,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(1783101,1,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(1783101,2,21,1,0,17953,63623,7 | 0x10,0,0,0,0,0,0,0,0,'Buddy - active'),
(1783101,4,20,2,0,17953,63623,7 | 0x10,0,0,0,0,0,0,0,0,'Buddy - movement chenged to 2:waypoint'),
(1783102,2,0,0,0,0,0,0,2000000626,0,0,0,0,0,0,0,''),
(1783102,9,15,32618,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1783102,20,0,0,0,0,0,0,2000000627,0,0,0,0,0,0,0,''),
(1783102,22,9,9306,60,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1783102,22,10,17955,70000,0,0,0,0,0,0,0,-362.3764, 8215.58, 25.25911, 0.3794507,'summon Hungry Boglord'),
(1783102,40,0,0,0,0,0,0,2000000628,0,0,0,0,0,0,0,''),
(1783103,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1783103,1,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'npc_flag added'),
(1783103,2,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
-- Buddy
UPDATE creature SET position_x = -287.241425, position_y = 8308.556641, position_z = 19.843025, spawndist = 5, MovementType = 1 WHERE guid = 63623;
-- used only during q.
DELETE FROM creature_movement_template WHERE entry = 17953;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17953,1,-276.83,8300.08,19.8581, 0, 0, 100, 0, 0),
(17953,2,-280.337,8285.79,18.8336, 0, 0, 100, 0, 0),
(17953,3,-292.95,8242.65,18.2649, 0, 0, 100, 0, 0),
(17953,4,-294.656,8234.74,20.3036, 58000, 0, 100, 0, 0),
(17953,5,-293.185,8242.32,18.3132, 0, 0, 100, 0, 0),
(17953,6,-281.958,8284.04,18.2655, 0, 0, 100, 0, 0),
(17953,7,-276.682,8298.99,19.8316, 0, 0, 100, 0, 0),
(17953,8,-287.241425,8308.556641,19.843025, 2000, 1795301, 100, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1795301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1795301,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(1795301,1,20,1,5,0,0,0,0,0,0,0,0,0,0,0,'Buddy - movement chenged to 1:random');
-- Hungry Boglord
UPDATE creature_template SET MovementType = 2 WHERE entry = 17955;
-- used only during q.
DELETE FROM creature_movement_template WHERE entry = 17955;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17955,1, -362.3764, 8215.58, 25.25911,  2000, 1795501, 0.3794507, 0, 0),
(17955,2, -303.5525, 8217.391, 22.25951, 19000, 1795502, 100, 0, 0),
(17955,3, -263.247,8221.46,19.7823, 0, 0, 100, 0, 0),
(17955,4, -250.962,8215.91,20.2557, 0, 0, 100, 0, 0),
(17955,5, -226.744,8179.7,19.8254, 0, 0, 100, 0, 0),
(17955,6, -225.618,8139.61,19.9743, 2000, 1795503, 100, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1795501 AND 1795503; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1795501,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1795502,3,0,0,0,0,0,0,2000000630,0,0,0,0,0,0,0,''),
(1795502,10,0,0,0,0,0,0,2000000631,0,0,0,0,0,0,0,''),
(1795502,12,40,0,0,182073,30,7,0,0,0,0,0,0,0,0,''),
(1795503,1,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn'); 
-- texts
DELETE FROM db_script_string WHERE entry BETWEEN 2000000625 AND 2000000631;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000625,'$n, let\'s go see if this plan will work.  Come along, Buddy!',0,0,0,1,NULL),
(2000000626,'Ok, let\'s see about using those mushrooms you brought back to grow the bog lords a new food supply.',0,0,0,0,NULL),
(2000000627,'Wait and see what happens!',0,0,0,0,NULL),
(2000000628,'Oh Buddy, you big baby!  Look, it\'s working.  It\'s really working!!  Now all I need to do is grow more of these mushrooms here and the bog lords will likely leave the sporelings alone!',0,0,0,0,NULL),
(2000000629,'Oh, thank you, $n!  You\'ve made it possible to save both the sporelings from the bog lords, and the bog lords from our wrath.',0,0,0,0,NULL),
(2000000630,'The %s takes a piece of the mushroom tree and holds it to its \'nose\'.  Seemingly satisfied, it eats it!',0,2,0,36,NULL),
(2000000631,'The %s uproots the rest of the mushroom tree and makes off with it.',0,2,0,36,NULL);
-- missing spell for trap added. Source: dbc 4.3.4 
DELETE FROM spell_template WHERE id = 31338;
INSERT INTO spell_template (id, proc_flags, proc_chance, duration_index, effect0, effect0_implicit_target_a, effect0_radius_idx, effect0_apply_aura_name, effect0_misc_value, effect0_misc_value_b, effect0_trigger_spell, comments) VALUES
(31338, 0, 101, 3, 28, 32, 8, 0, 18120, 64, 0, 'Summon Ogre');
-- missing objects added - UDB free guids reused
-- Box of Mushrooms Trap
DELETE FROM gameobject WHERE guid IN (5236, 9301, 9306);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
(5236, 182051, 530, 1,1627.71, 8604.54, -25.4862, -2.94959, 0, 0, -0.995395, 0.0958539, 181, 255, 1),
(9301, 182051, 530, 1,1722.83, 8473.81, -4.44422, -1.91986, 0, 0, -0.819151, 0.573577, 181, 255, 1),
-- Grown Mushroom
(9306, 182073, 530, 1,-293.1354, 8218.522, 22.26159, 2.757613, 0, 0, 0, 0, -60, 255, 1);
-- Box of Mushrooms #22408
UPDATE gameobject SET position_x = 1708.371, position_y = 8458.188, position_z = -4.837735, orientation = 2.495818, rotation0 = 0, rotation1 = 0, rotation2 = 0.9483232, rotation3 = 0.3173059 WHERE guid = 22408;
-- Ango'rosh Shadowmoage
UPDATE creature SET position_x = 1636.920776, position_y = 8507.608398, position_z = -53.615044, orientation = 6.061350, spawndist = 0, MovementType = 0 WHERE guid = 72425;


