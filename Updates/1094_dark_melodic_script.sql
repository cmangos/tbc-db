DELETE FROM creature_movement_template WHERE entry = "19435";
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES 
('19435', '0', '0', '-140.467', '982.053', '54.2479', '2.32129', '3600000', '0', 'Dark Clearic Malod Spawn'),
('19435', '0', '1', '-135.922', '997.979', '54.1678', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '2', '-130.295', '1001.47', '54.1352', '6.19592', '4000', '1943501', 'Dark Clearic Malod first event'),
('19435', '0', '3', '-129.399', '1005.35', '54.1277', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '4', '-129.399', '1005.35', '54.1277', '5.70723', '3000', '0', 'Dark Clearic Malod Change Orientation'),
('19435', '0', '5', '-129.399', '1005.35', '54.1277', '0.383972', '3000', '0', 'Dark Clearic Malod Change Orientation'),
('19435', '0', '6', '-138.249', '1017.98', '54.1666', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '7', '-133.805', '1024.5', '54.1383', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '8', '-133.805', '1024.5', '54.1383', '0.925025', '4000', '0', 'Dark Clearic Malod Change Orientation'),
('19435', '0', '9', '-133.805', '1024.5', '54.1383', '0.261799', '4000', '0', 'Dark Clearic Malod Change Orientation'),
('19435', '0', '10', '-133.805', '1024.5', '54.1383', '1.69297', '4000', '0', 'Dark Clearic Malod Change Orientation'),
('19435', '0', '11', '-133.805', '1024.5', '54.1383', '0.925025', '28000', '1943502', 'Dark Clearic Malod Second Event'),
('19435', '0', '12', '-157.823', '1010.55', '54.1879', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '13', '-172.394', '1017.44', '54.238', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '14', '-201.42', '1016.82', '54.3039', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '15', '-226.246', '1016.51', '54.3208', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '16', '-237.851', '1023.36', '54.309', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '17', '-234.792', '1026.51', '54.3085', '0.717042', '45000', '1943503', 'Dark Clearic Malod third Event'),
('19435', '0', '18', '-201.884', '1016.94', '54.3022', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '19', '-166.062', '1017.46', '54.2065', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '20', '-151.175', '1012.26', '54.183', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '21', '-145.295', '1000.05', '54.2113', '0', '0', '0', 'Dark Clearic Malod Waypoint'),
('19435', '0', '22', '-140.269', '982.351', '54.2018', '0', '0', '0', 'Dark Clearic Malod Waypoint');

DELETE FROM dbscript_string WHERE entry BETWEEN 2000020130 AND 2000020134;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
('2000020130', 'AIEE! What are you doing?! I\'m still ALIVE, damn you!', null, null, null, null, null, null, null, null, '0', '0', '0', '1', 'Injured Grunt Text'),
('2000020131', 'Oh! So sorry. How terribly embarrassing! I didn\'t realize... ah... please, lie down, get some more rest.', null, null, null, null, null, null, null, null, '0', '0', '0', '1', 'Dark Clearic Malod Text 1'),
('2000020132', 'Ah, Lieutenant General Orion. I\'ve come to report that casualties are well within acceptable levels for this operation. In fact, the wounded are quite... ah... lively.', null, null, null, null, null, null, null, null, '0', '0', '0', '1', 'Dark Clearic Malod Talk 2'),
('2000020133', 'This is good news. Return to them, priest. But heed this: do not eat ANYONE.', null, null, null, null, null, null, null, null, '0', '0', '0', '1', 'Lieutnant Orion'),
('2000020134', 'Oh dear, Lieutenant General, how ghastly! I would most certainly never. I shall return to my charges now.', null, null, null, null, null, null, null, null, '0', '0', '0', '1', 'Dark Clearic Malod Text 3');


DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1943501 AND 1943503;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
('1943502', '2', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod Emote Talk'),
('1943502', '5', '15', '33963', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod Cast CANNIBALIZE'),
('1943502', '8', '31', '19432', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod search for buddy - 19432'),
('1943502', '8', '21', '1', '0', '0', '19432', '5', '7', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod buddy active'),
('1943502', '8', '28', '0', '0', '0', '19432', '5', '7', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod force buddy to stand up'),
('1943502', '10', '0', '0', '0', '0', '19432', '5', '7', '2000020130', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod force buddy to say text'),
('1943502', '19', '0', '0', '0', '0', '0', '0', '0', '2000020131', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod talk'),
('1943502', '27', '31', '19432', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod search for buddy - 19432'),
('1943502', '27', '21', '1', '0', '0', '19432', '5', '7', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod buddy active'),
('1943502', '27', '28', '3', '0', '0', '19432', '5', '7', '3', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod force buddy to sit '),
('1943501', '1', '1', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod Emote Kneel'),
('1943503', '3', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod Emote bow'),
('1943503', '5', '0', '0', '0', '0', '0', '0', '0', '2000020132', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod say text'),
('1943503', '18', '31', '19253', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod search for buddy - 19253'),
('1943503', '18', '21', '1', '0', '0', '19253', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod buddy active'),
('1943503', '18', '0', '0', '0', '0', '19253', '5', '7', '2000020133', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod force buddy to say text'),
('1943503', '29', '0', '0', '0', '0', '0', '0', '0', '2000020134', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod say text'),
('1943503', '40', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dark Clearic Malod Emote bow');

-- section for delaying broog script so they do not conflict
UPDATE creature_movement_template SET waittime=1800000 WHERE entry IN(19436) AND point=1;
UPDATE creature_movement_template SET pathId=1 WHERE pathId=0 AND entry=19436;
INSERT INTO creature_movement_template VALUES
('19436', '0', '1', '-182.049', '1000.29', '54.2398', '0.364398', '900000', '1943601', 'Delay script of Broog by 15 minutes to avoid conflicts with others');
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('1943601', '0', '20', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Supply Master Broog - Set PathId 1');
