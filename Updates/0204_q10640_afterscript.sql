-- ---------------------------------------------------------
-- CompleteScript for quest Altruis q.10640
-- ---------------------------------------------------------

-- Quest template
UPDATE quest_template SET CompleteScript=10640 WHERE entry=10640;

-- Add text
DELETE FROM `dbscript_string` WHERE `entry`=2000001646;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`, `broadcast_text_id`) VALUES 
(2000001646, 'The information you seek... I cannot give you that freely.  You will have to prove that your enemies are the same as mine.', 0, 0, 0, 25, 'Altruis the Sufferer (Entry: 18417)',19890);

-- Add script
DELETE FROM `dbscripts_on_quest_end` WHERE `id` IN(10640);
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`priority`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10640,2000,0,0,0,0,0,2000001646,0,0,0,0,0,0,'Altruis the Sufferer - The information you seek... I cannot give you that freely.  You will have to prove that your enemies are the same as mine.',0,0,0,0);

