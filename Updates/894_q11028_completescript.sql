-- Countdown to Doom q.11028 CompleteScript

UPDATE quest_template SET CompleteScript=11028 WHERE entry=11028;

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001454 AND 2000001455;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001454, 'You over there!  I must speak with you!', 0, 4, 0, 0, 'Hazzik (Entry: 23306)'),
(2000001455, 'Do not... bring Terokk into our world, $n...  That would be... madness...', 0, 0, 0, 0, 'Sky Commander Adaris (Entry: 23038)');

DELETE FROM `dbscripts_on_quest_end` WHERE `id` IN(11028);
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(11028,0,45,10089,0,0,0,0,0,0,23306,10,0,'Sky Commander Adaris - Start relay script with Hazzik as source and Player as target',0,0,0,0),
(11028,4,0,0,0,0,2000001455,0,0,0,0,0,0,'Sky Commander Adaris - Do not... bring Terokk into our world, $n...  That would be... madness...',0,0,0,0);

INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10089,0,0,0,0,0,2000001454,0,0,0,0,0,0,'Hazzik - You over there!  I must speak with you!',0,0,0,0);

