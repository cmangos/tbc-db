-- ==========================================================================================
-- Fix Quest: 55 "Morbent Fel" - Now Properly Works (still small visual issue to resolve yet) - Despawn Command makes NPC die instead of just despawn - UDB Backport
-- ==========================================================================================
insert into `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8913','2','10','24782','120000','1200','50','7','0','0','0','0','0','0','0','0','');
insert into `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8913','3','18','0','0','1200','50','7','0','0','0','0','0','0','0','0','');

DELETE FROM creature_addon WHERE guid IN (5056);
DELETE FROM creature_template_addon WHERE entry IN (1200);
insert into `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('1200','0','0','1','16','0','0','');


