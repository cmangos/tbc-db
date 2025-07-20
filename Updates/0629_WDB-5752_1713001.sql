-- Fix: another db error
-- DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 1713001, command 26 source can not attack (Attacker: Creature (Entry: 18200 Counter: 64976) DBGuid: 64976, Target: Creature (Entry: 17130 Counter: 9011589) DBGuid: 9011589)
-- DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 1713001, command 26 source can not attack (Attacker: Creature (Entry: 18180 Counter: 64963) DBGuid: 64963, Target: Creature (Entry: 17130 Counter: 9011589) DBGuid: 9011589)
DELETE FROM dbscripts_on_creature_movement WHERE id = 1713001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1713001,1,20,1,7,8000,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Talbuk Stag - Set Random Movement (temp 8sek)'),
(1713001,1,22,14,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Talbuk Stag - Set Faction to 14'),
(1713001,10000,26,0,0,0,18180,65,1,0,0,0,0,0,0,0,0,'Talbuk Stag - Start Attack on Hemet Nesingwary'),
(1713001,11000,26,0,0,0,18200,70,0,0,0,0,0,0,0,0,0,'Shado \Fitz\ Farstrider - Start Attack on Talbuk Stag'),
(1713001,11000,26,0,0,0,18180,70,0,0,0,0,0,0,0,0,0,'Hemet Nesingwary - Start Attack on Talbuk Stag');

