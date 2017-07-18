UPDATE quest_template SET CompleteScript=10903 WHERE entry=10903;

DELETE FROM `dbscripts_on_quest_end` WHERE `id`=10903;
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10903,0,0,0,0,0,2000001309,0,0,0,0,0,0,'Assistant Klatu - I fear that Colonel Jules may only be saved through a dangerous ritual... an exorcism.',0,0,0,0),
(10903,4,36,0,0,0,0,0,0,0,0,0,0,'Assistant Klatu - Face Player',0,0,0,0),
(10903,5,0,0,0,0,2000001310,0,0,0,0,0,0,'Assistant Klatu - Speak with me, $n, for we have much to prepare...',0,0,0,0),
(10903,9,36,1,0,0,0,0,0,0,0,0,0,'Assistant Klatu - Reset Facing',0,0,0,0);

DELETE FROM `db_script_string` WHERE `entry` IN(2000001309,2000001310);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001309, 'I fear that Colonel Jules may only be saved through a dangerous ritual... an exorcism.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 396, 'Assistant Klatu (Entry: 22430)'),
(2000001310, 'Speak with me, $n, for we have much to prepare...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 397, 'Assistant Klatu (Entry: 22430)');

DELETE FROM conditions WHERE condition_entry BETWEEN 519 AND 522;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(519, 8, 10935, 0), -- Quest 10935 Rewarded
(520, 8, 10903, 0),-- Quest 10903 Rewarded
(521, -3, 519, 0), -- Quest 10935 NOT Rewarded
(522, -1, 520, 521); -- Quest 10903 Rewarded AND Quest 10935 NOT Rewarded

UPDATE `gossip_menu` SET `condition_id`=522 WHERE `entry`=8538 AND `text_id`=10801; -- Quest 10903 Rewarded AND Quest 10935 NOT Rewarded

-- Colonel Jules should always be male
UPDATE `creature_model_info` SET `modelid_other_gender`='0' WHERE `modelid`=14533;

