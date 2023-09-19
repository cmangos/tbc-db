-- Questend Script for Warn Bolvar! Quest - 11222 
DELETE FROM `dbscripts_on_quest_end` WHERE id = '11222';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(11222,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Warn Bolvar! - Highlord Bolvar Fordragon - Set Active'), --  12:22:06.552
(11222,0,1,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Warn Bolvar! - Highlord Bolvar Fordragon - Remove NPC Flags'),
(11222,0,2,0,0,0,0,0,0,0,22516,0,0,0,0,0,0,0,0,0,0,'Warn Bolvar! - Highlord Bolvar Fordragon - Say Text'),
(11222,5000,0,0,0,0,0,0,0,0,22517,0,0,0,0,0,0,0,0,0,0,'Warn Bolvar! - Highlord Bolvar Fordragon - Say Text'), -- 12:22:11.384
(11222,11000,0,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Warn Bolvar! - Highlord Bolvar Fordragon - Emote OneShotPoint'),  -- 12:22:17.653
(11222,11000,1,0,0,0,0,0,0,0,22518,0,0,0,0,0,0,0,0,0,0,'Warn Bolvar! - Highlord Bolvar Fordragon - Say Text'), -- 12:22:17.756
(11222,11000,2,1,5,0,0,1749,5,0,0,0,0,0,0,0,0,0,0,0,0,'Warn Bolvar! - Lady Katrana Prestor - Emote OneShotExclamation'), -- 12:22:17.926
(11222,16000,0,1,6,0,0,1749,5,0,0,0,0,0,0,0,0,0,0,0,0,'Warn Bolvar! - Lady Katrana Prestor - Emote OneShotQuestion'), -- 12:22:22.545
(11222,16000,1,0,0,0,0,1749,5,0,22520,0,0,0,0,0,0,0,0,0,0,'Warn Bolvar! - Lady Katrana Prestor - Say Text'), -- 12:22:22.722
(11222,18000,0,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Warn Bolvar! - Highlord Bolvar Fordragon - Add NPC Flags'), -- 12:22:24.248
(11222,23000,0,1,1,0,0,1749,5,0,0,0,0,0,0,0,0,0,0,0,0,'Warn Bolvar! - Lady Katrana Prestor - Emote OneShotTalk'), -- 12:22:29.075
(11222,23000,1,0,0,0,0,1749,5,0,22521,0,0,0,0,0,0,0,0,0,0,'Warn Bolvar! - Lady Katrana Prestor - Say Text'),
(11222,23000,2,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Warn Bolvar! - Highlord Bolvar Fordragon - Remove Active');

UPDATE quest_template SET CompleteScript= 11222 WHERE entry= 11222;