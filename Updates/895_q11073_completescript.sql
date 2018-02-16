-- Terokk's Downfall q.11073 CompleteScript

UPDATE quest_template SET CompleteScript=11073 WHERE entry=11073;

DELETE FROM `dbscripts_on_quest_end` WHERE `id` IN(11073);
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(11073,0,28,0,0,0,0,0,0,0,0,0,0,'Sky Commander Adaris - Set Stand State Stand',0,0,0,0),
(11073,3,0,0,0,0,2000001456,0,0,0,0,0,0,'Sky Commander Adaris - You''re one of our bravest, $n.  All of the Skyguard is in your debt.',0,0,0,0),
(11073,14,28,1,0,0,0,0,0,0,0,0,0,'Sky Commander Adaris - Set Stand State Sit',0,0,0,0);

DELETE FROM `dbscript_string` WHERE `entry`=2000001456;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001456, 'You''re one of our bravest, $n.  All of the Skyguard is in your debt.', 0, 0, 0, 66, 'Sky Commander Adaris (Entry: 23038)');

