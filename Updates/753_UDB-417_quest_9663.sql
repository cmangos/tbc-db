-- q.9663 'The Kessel Run'
DELETE FROM dbscripts_on_quest_end WHERE id = 9663;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9663,1,14,31973,0,0,0,6,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 9663 WHERE entry = 9663;
-- credit should be given automat. without using any gossip option
-- High Chief Stillpine 
UPDATE gossip_menu SET script_id = 7370, condition_id = 1058 WHERE entry = 7434 AND text_id = 9039; 
DELETE FROM gossip_menu_option WHERE menu_id = 7434;
DELETE FROM `conditions` WHERE `condition_entry` IN (1058,976,977);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('1058','-1','976','977'),
('976','9','9663','1'),
('977','1','31973','0');

-- Exarch Menelaous
UPDATE gossip_menu SET script_id = 7370, condition_id = 1058 WHERE entry = 7370 AND text_id = 9040; 
DELETE FROM gossip_menu_option WHERE menu_id = 7370 AND id = 1;

-- Admiral Odesyus <Alliance Naval Command>
UPDATE gossip_menu SET script_id = 7370, condition_id = 1058 WHERE entry = 7399 AND text_id = 9038; 
DELETE FROM gossip_menu_option WHERE menu_id = 7399 AND id = 1;

DELETE FROM `dbscripts_on_gossip` WHERE `id`=7370 AND `command`=8;
INSERT INTO dbscripts_on_gossip (id, command, comments) VALUES (7370, 8, 'quest 9663 - questcredit');


