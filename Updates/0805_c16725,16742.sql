-- Kudrii 16742 "Apprentice Enchanter" & Nahogg 16725 "Enchanting Trainer" dont sell anything, Egomis 16722 does
-- Until patch 2.3, Kudrii was a journeyman enchanting trainer. Afterwards she is just flavor npc
UPDATE `creature_template` SET `NpcFlags` = `NpcFlags`&~(128), `GossipMenuId` = 0 WHERE `entry` IN (16725,16742);

