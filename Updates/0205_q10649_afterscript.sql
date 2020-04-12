-- ---------------------------------------------------------
-- CompleteScript for quest The Book of Fel Names q.10649
-- ---------------------------------------------------------

-- Quest template
UPDATE quest_template SET CompleteScript=10649 WHERE entry=10649;

-- Add text
DELETE FROM `dbscript_string` WHERE `entry` IN(2000001647,2000001648);
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`, `broadcast_text_id`) VALUES 
(2000001647, 'This book would give me unlimited power over my enemies... I would become... unstoppable!', 0, 0, 0, 1, 'Altruis the Sufferer (Entry: 18417)',19614),
(2000001648, 'No... you must take this from me, $n!  I feel its dark power swaying my will already!  Use it to destroy Varedis.', 0, 0, 0, 274, 'Altruis the Sufferer (Entry: 18417)',19615);

-- Add script
DELETE FROM `dbscripts_on_quest_end` WHERE `id` IN(10649);
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`priority`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10649,2500,0,0,0,0,0,2000001647,0,0,0,0,0,0,'Altruis the Sufferer - This book would give me unlimited power over my enemies... I would become... unstoppable!',0,0,0,0),
(10649,8500,0,0,0,0,0,2000001648,0,0,0,0,0,0,'Altruis the Sufferer - No... you must take this from me, $n!  I feel its dark power swaying my will already!  Use it to destroy Varedis.',0,0,0,0);

