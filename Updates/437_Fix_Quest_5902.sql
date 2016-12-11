-- ===================================
-- Fix Quest 5902 "A Plague Upon Thee" - Backport UDB Script
-- ===================================
UPDATE gossip_menu_option SET action_script_id=4362 WHERE menu_id=4362 AND id=0;
DELETE FROM dbscripts_on_gossip WHERE id IN (4362);
insert into `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('4362','0','9','0','60','177491','5','0','0','0','0','0','0','0','0','0','Respawn Termite Barrel');


