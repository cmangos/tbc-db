-- =========================================================
-- Add Missing End Script for Quest 553 "Helcular's Revenge"
-- =========================================================
DELETE FROM `dbscripts_on_quest_end` WHERE `id`=553;
insert into `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('553','2','10','2433','600000','0','0','0','0','0','0','0','-747.107','-586.97','19.8435','3.17531','');


