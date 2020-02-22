-- Add missing relay script from wotlk-db referenced by Wind Trader Madrid EAI
DELETE FROM dbscripts_on_relay WHERE id=20158;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20158, 0, 0, 21, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'unactive');

-- Lieutenant General Andorov - vendor and repair flag
UPDATE creature_template SET NpcFlags=NpcFlags|128|4096 WHERE Entry=15471;

UPDATE creature_template SET Family=0 WHERE entry IN (15517,15630,15962);

UPDATE gossip_menu_option SET npc_option_npcflag=128 WHERE menu_id=347 AND id=4;
UPDATE creature_template SET NpcFlags=NpcFlags|128 WHERE entry IN (15350,15351);

DELETE FROM spell_bonus_data WHERE entry IN (20154,21084);
INSERT INTO spell_bonus_data (entry, direct_bonus, dot_bonus, ap_bonus, ap_dot_bonus, comments) VALUES
(20154, 0, 0, 0, 0, '');


