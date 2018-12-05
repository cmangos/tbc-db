-- Add missing Simon Unit c.23385
-- These are spawned underneath Apexis Monuments in Bash'ir and Ogri'la.
-- If they are on Bash'ir plateau they are transformed into Bash'ir Arcanist c.22243
-- If they are on Ogri'la plateau they are transformed into Gan'arg Analyzer c.23386

UPDATE creature_template SET UnitFlags=33587456, ModelId2=17612 WHERE entry=23385; -- Simon Unit
UPDATE creature_template SET SpeedWalk=2.5/2.5, FactionAlliance=90, FactionHorde=90, UnitFlags=32768, MovementType=2 WHERE entry=23386; -- Gan'arg Analyzer
UPDATE creature_template SET SpeedWalk=2.5/2.5, MovementType=2 WHERE entry=22243; -- Bash'ir Arcanist

-- Add serverside aura
DELETE FROM creature_template_addon WHERE entry = 23385;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(23385,0,0,1,16,0,0,'42416');

SET @GUID := 161153;
DELETE FROM creature WHERE id=23386; -- Delete old Gan'arg Analyzer spawns
DELETE FROM creature WHERE id=23385;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 1911.64, 7374.97, 364.7, 1.66709, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 1911.77, 7344.86, 364.714, 3.78348, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 1928.66, 7364.38, 364.748, 6.23034, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 1928.68, 7356.31, 364.758, 3.80213, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 1945.85, 7344.64, 364.725, 3.7697, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 1946.31, 7374.69, 364.71, 4.07714, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 2084.86, 7107.41, 365.026, 4.27207, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 2085.66, 7137.48, 365.026, 0.0428227, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 2100.87, 7120.55, 365.059, 6.12342, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 2100.89, 7127.4, 365.061, 3.5264, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 2117.02, 7137.11, 365.002, 3.02222, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 2117.3, 7107.04, 365.026, 6.15536, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 2516.08, 7016.93, 368.21, 5.91641, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 2516.32, 7048.06, 368.205, 3.47321, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 2533, 7037.56, 368.245, 2.14107, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 2533.02, 7030.23, 368.242, 4.84616, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 2550.08, 7047.79, 368.21, 5.46459, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 2550.14, 7017.18, 368.208, 3.9854, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 2708.29, 7270.04, 368.84, 3.36492, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 2708.59, 7299.13, 368.819, 2.36482, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 2726.13, 7279.83, 368.815, 3.49995, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 2726.45, 7286.5, 368.817, 2.45589, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 2743.27, 7270.04, 368.84, 5.33089, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 2744.16, 7298.37, 368.833, 2.5299, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 3892.04, 5121.01, 270.348, 1.67362, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 3892.71, 5083.55, 270.327, 1.27882, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 3901.99, 5101.75, 270.382, 4.89245, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 3909.92, 5101.83, 270.377, 4.9036, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 3919.85, 5083.28, 270.329, 4.55608, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 3919.95, 5120.78, 270.347, 1.15942, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 4002.74, 5320.64, 269.987, 2.15452, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 4003.35, 5354.45, 270.139, 0.133609, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 4010.16, 5337.51, 269.965, 1.17539, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 4018.27, 5337.37, 269.959, 1.14866, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 4026.34, 5320.5, 269.984, 1.38404, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 4027.06, 5354.44, 269.987, 5.32325, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 4049.93, 5604.12, 267.531, 6.21831, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 4050.02, 5575.05, 267.697, 0.593038, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 4060.91, 5589.54, 267.453, 2.63572, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 4068.59, 5589.47, 267.448, 5.09058, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 4078.75, 5575.06, 267.697, 2.94758, 300, 480, 0, 0, 0, 0, 0, 2),
(@GUID := @GUID + 1, 23385, 530, 1, 0, 0, 4079.33, 5604.14, 267.531, 1.04658, 300, 480, 0, 0, 0, 0, 0, 2);

DELETE FROM creature_movement WHERE id IN(SELECT guid FROM creature WHERE id=23385);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`)
SELECT guid, '1', position_x, position_y, position_z, '1000', '2338501', '100'
FROM creature 
WHERE id=23385;

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2338501);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2338501,0,20,0,0,0,0,0,0,0,0,0,0,'Simon Unit - Idle Movement',0,0,0,0),
(2338501,0,1,173,0,0,0,0,0,0,0,0,0,'Simon Unit - STATE_WORK',0,0,0,0),
(2338501,20,1,0,0,0,0,0,0,0,0,0,0,'Simon Unit - ONESHOT_NONE',0,0,0,0),
(2338501,20,20,1,4,0,0,0,0,0,0,0,8,'Simon Unit - Random Movement',0,0,0,0),
(2338501,80,20,2,0,0,0,0,0,0,0,0,0,'Simon Unit - Waypoint Movement',0,0,0,0);

