-- ---------------------------------------------------------
-- CompleteScript for quest A Mission of Mercy q.10970
-- ---------------------------------------------------------

-- Quest template
UPDATE quest_template SET CompleteScript=10970 WHERE entry=10970;

-- Add scripts
DELETE FROM dbscripts_on_quest_end WHERE id=10970;
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10970,312,0,0,0,0,0,0,0,0,2000001666,0,0,0,0.000000,0.000000,0.000000,0.000000,'Commander Ameer - Stand back, $n. This may be an Ethereum trap.'),
(10970,4400,0,3,0,0,0,0,0,0,2000001666,0,0,0,4248.613770,2168.86,137.74632,100,'Commander Ameer - Move'),
(10970,8200,0,0,0,0,0,0,0,0,2000001667,0,0,0,0.000000,0.000000,0.000000,0.000000,'Commander Ameer - %s uses the Ethereum prison key on the salvaged Ethereum prison.'),
(10970,9200,0,1,28,0,0,0,0,0,0,0,0,0,0.000000,0.000000,0.000000,0.000000,'Commander Ameer - STATE_WORK_SHEATHED'),
(10970,12900,0,1,0,0,0,0,0,0,0,0,0,0,0.000000,0.000000,0.000000,0.000000,'Commander Ameer - ONESHOT_NONE'),
(10970,13100,0,14,35465,0,0,20520,5,0,0,0,0,0,0.000000,0.000000,0.000000,0.000000,'Ethereum Prisoner - Remove Aura 35465'),
(10970,13100,0,36,0,0,0,20520,5,3,0,0,0,0,0.000000,0.000000,0.000000,0.000000,'Ethereum Prisoner - Face Commander Ameer'),
(10970,13100,0,11,0,0,0,184488,5,7,0,0,0,0,0.000000,0.000000,0.000000,0.000000,'Salvaged Ethereum Prison - Open'),
(10970,13100,1,23,22900,0,0,20520,5,0,0,0,0,0,0.000000,0.000000,0.000000,0.000000,'Etherium Prisoner - Morph'),
(10970,15000,0,0,0,0,0,20520,5,0,2000001668,0,0,0,0.000000,0.000000,0.000000,0.000000,'Tortured Protectorate Vanguard - Commander... I am not long for this world... Taken to a holding pen...'),
(10970,29500,0,15,3617,0,0,20520,5,7,0,0,0,0,0.000000,0.000000,0.000000,0.000000,'Tortured Protectorate Vanguard - Cast 3617'),
(10970,35000,0,0,0,0,0,0,0,0,2000001669,0,0,0,0.000000,0.000000,0.000000,0.000000,'Commander Ameer - Those fools! What have they done! What horrors do they hold? And for what purpose? I will need your help again, hero. Help us. Help your people.'),
(10970,41000,0,3,0,0,0,0,0,0,0,0,0,0,4252.6523,2166.07,137.79778,100,'Commander Ameer - Move'),
(10970,43000,0,3,0,0,0,0,0,0,0,0,0,0,0.000000,0.000000,0.000000,1.099557399749755859,'Commander Ameer - Orientation');

-- Missing Creature
DELETE FROM creature WHERE id=20520 AND guid=161599;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, curhealth, curmana, MovementType) VALUES
-- Ethereum Prisoner
(161599,20520,530,1,0,0,4245.3223,2171.1458,137.94838,0.680678427219390869,0,0,0,0,0,0);

-- Missing Gameobject
DELETE FROM gameobject WHERE id=184998 AND guid=161918;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES 
(161918, 184998, 530, 1, 4245.33, 2171.18, 137.678, 3.63029, 0, 0, -0.970295, 0.241925, 180, 180, 100, 1);

-- Gameobject respawntime
UPDATE gameobject SET spawntimesecsmin=0, spawntimesecsmax=0 WHERE id=184488;

-- Add texts
DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001666 AND 2000001669;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `broadcast_text_id`, `comment`) VALUES 
(2000001666, 'Stand back, $n. This may be an Ethereum trap.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 20539, 'Commander Ameer (Entry: 20448)'),
(2000001667, '%s uses the Ethereum prison key on the salvaged Ethereum prison.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 20540, 'Commander Ameer (Entry: 20448)'),
(2000001668, 'Commander... I am not long for this world... Taken to a holding pen... hundreds... thousands... beings from other worlds... Imprisoned... Imprisoned by Ethereum. Many of them our allies. Must... Must save the others... It... It''s not too late...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 20542, 'Tortured Protectorate Vanguard (Entry: 20520)'),
(2000001669, 'Those fools! What have they done! What horrors do they hold? And for what purpose? I will need your help again, hero. Help us. Help your people.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 20544, 'Commander Ameer (Entry: 20448)');

