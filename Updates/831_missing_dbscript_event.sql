-- Missing npc text 
DELETE FROM npc_text WHERE ID=8753;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
('8753', 'Greetings, $c.', '', '0', '1', '2', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');

-- Gossip menus for galressa (missing) npc and turn in npc
DELETE FROM gossip_menu WHERE entry IN(7345,7342);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('7345', '8756', '0', '0'),

-- It is currently unknown exactly when and how these texts should appear. It does not seem to be connected to quest completion, at least not with the two quests Taleris ends himself.
-- Add all texts like this for now and add conditions when those are researched.
('7342', '8751', '0', '0'), -- Death Knight Troll
('7342', '8752', '0', '0'), -- Unknown (any race except troll and monk??)
('7342', '8753', '0', '0'); -- Pandaren Monk

-- Update template for these npcs
UPDATE `creature_template` SET `GossipMenuId`='7345' WHERE `Entry`='17046'; -- Gal'ressa
UPDATE `creature_template` SET `GossipMenuId`='7342' WHERE `Entry`='17015'; -- Taleris
UPDATE `creature_template_addon` SET `bytes1`='3' WHERE `entry`=17046; -- Gal'ressa should sleep by default

-- missing dbscript strings
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001500 AND 2000001507;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`) VALUES
('2000001500', 'Wake up, Gal\'ressa.', '0', '0', '1', '1'),
('2000001501', '%s rubs the sleep from her eyes.', '0', '2', '0', '0'),
('2000001502', 'What do you want, Taleris?', '0', '0', '1', '0'),
('2000001503', 'You\'ve had enough time to recover from your wounds, Gal\'ressa. The time has come for you to return to the road.', '0', '0', '1', '1'),
('2000001504', 'I\'m not going on alone, Taleris, and that\'s final. I\'m going to wait here for the next group of pilgrims and set out with them when they depart.', '0', '0', '1', '1'),
('2000001505', 'You\'ll do no such thing. We simply haven\'t the room to keep you here. Now, kindly be on your way.', '0', '0', '1', '25'),
('2000001506', 'By the Sunwell, you\'ve a thick skull! You\'ll not bully me into leaving, Taleris. Now, begone from my sight!', '0', '0', '1', '274'),
('2000001507', 'Very well then, have it your way. When we turn others away, you will be responsible for their suffering. Think about that.', '0', '0', '1', '2');

DELETE FROM `creature_movement_template` WHERE `entry`=17015;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(17015,1,-650.434,4136.92,64.54276,400000,1701503,2.024582), -- 400000
(17015,2,-649.4641,4147.578,64.26553,0,1701502,100),
(17015,3,-650.6796,4155.083,64.77444,0,0,100),
(17015,4,-651.2034,4162.931,66.72098,0,0,100),
(17015,5,-651.0701,4169.221,68.00764,0,0,100),
(17015,6,-646.951,4176.908,68.51362,39000,1701501,1.954769),
(17015,7,-646.951,4176.908,68.51362,1200,0,0.7504916),
(17015,8,-649.9417,4167.887,67.84748,0,0,100),
(17015,9,-650.6875,4162.559,66.56985,0,0,100),
(17015,10,-649.6133,4157.676,65.41068,0,0,100),
(17015,11,-647.4691,4152.874,64.41068,0,0,100),
(17015,12,-647.6826,4147.895,64.35086,0,0,100),
(17015,13,-648.0635,4143.36,64.53568,0,0,100),
(17015,14,-649.0391,4139.546,64.66068,0,0,100),
(17015,15,-650.2896,4137.252,64.66068,0,0,100);

-- Taleris Galressa interaction
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1701501 AND 1701503;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1701501, 1, 0, 0, 0, 0, 0, 0, 0, 2000001500, 0, 0, 0, 0, 0, 0, 0, 'Taleris - Say 1'),
(1701501, 4, 28, 1, 0, 0, 17046, 10, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Pilgrim - Sleep to Sit'),
(1701501, 4, 0, 0, 0, 0, 17046, 10, 3, 2000001501, 0, 0, 0, 0, 0, 0, 0, 'Pilgrim - Text Emote'),
(1701501, 6, 0, 0, 0, 0, 17046, 10, 3, 2000001502, 0, 0, 0, 0, 0, 0, 0, 'Pilgrim - Say 1'),
(1701501, 10, 0, 0, 0, 0, 0, 0, 0, 2000001503, 0, 0, 0, 0, 0, 0, 0, 'Taleris - Say 2'),
(1701501, 15, 28, 0, 0, 0, 17046, 10, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Pilgrim - Sit to Stand'),
(1701501, 17, 0, 0, 0, 0, 17046, 10, 3, 2000001504, 0, 0, 0, 0, 0, 0, 0, 'Pilgrim - Say 2'),
(1701501, 23, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.495821, 'Taleris - Face 2.495821'),
(1701501, 25, 0, 0, 0, 0, 0, 0, 0, 2000001505, 0, 0, 0, 0, 0, 0, 0, 'Taleris - Say 3'),
(1701501, 30, 0, 0, 0, 0, 17046, 10, 3, 2000001506, 0, 0, 0, 0, 0, 0, 0, 'Pilgrim - Say 3'),
(1701501, 34, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.752458, 'Taleris - Face 3.752458'),
(1701501, 35, 0, 0, 0, 0, 0, 0, 0, 2000001507, 0, 0, 0, 0, 0, 0, 0, 'Taleris - Say 4'),

(1701502, 0, 29, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Taleris - Remove gossip NPCflag'),
(1701502, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Taleris - Stand'),

(1701503, 0, 29, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Taleris - Add gossip NPCflag'),
(1701503, 0, 28, 3, 0, 0, 17046, 50, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Pilgrim - Go to sleep');

