-- ---------------------------------------------------------
-- CompleteScript for Vile Idolatry q.9863
-- ---------------------------------------------------------

-- Quest template
UPDATE quest_template SET CompleteScript=9863 WHERE entry=9863;

-- Call to Lightning s.32127 target
DELETE FROM spell_script_target WHERE entry=32127;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(32127,1,18228,0);

-- Add scripts
DELETE FROM `dbscripts_on_quest_end` WHERE `id` IN(9863);
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`priority`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(9863,0,0,31,10042,20,0,0,0,0,0,0,0,8,'Farseer Kurkush - Terminate Script if Thrall is in range (Both events should not run simultaneously)',0,0,0,0),
(9863,0,1,0,0,0,0,2000001643,0,0,0,0,0,0,'Farseer Kurkush - %s places the Murkblood idols atop the Lightning stone and invokes the spirits.',0,0,0,0),
(9863,2719,0,15,32127,0,0,0,0,0,0,0,0,0,'Farseer Kurkush - Cast Call to Lightning',0,0,0,0);

-- Add text
DELETE FROM `dbscript_string` WHERE `entry`=2000001643;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`, `broadcast_text_id`) VALUES 
(2000001643, '%s places the Murkblood idols atop the Lightning stone and invokes the spirits.', 0, 2, 1, 0, 'Farseer Kurkush (Entry: 18066)',14998);

