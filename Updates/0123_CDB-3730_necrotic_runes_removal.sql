-- Remove Necrotic Rune when disrupting channeling of Cultist Engineer in Scourge Invasions events
-- 8 runes must be removed, as noted in gossip option
-- https://github.com/cmangos/classic-db/blob/77d70af1a63d0696cc9a448becf6644507c1448f/Updates/3661_scourge_invasion_data.sql#L143
DELETE FROM dbscripts_on_gossip WHERE id=7166 AND command=17;
INSERT INTO dbscripts_on_gossip (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(7166, 0, 0, 17, 22484, 8, 0, 0, 0, 0x008, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cultist Engineer - Use 8 shards to summon Shadow of Doom');
-- 7166	0	0	35	7166	0	0	0	0	0	0	0	0	0	0	0	0	0	0	Cultist Engineer - Use 8 shards to summon Shadow of Doom - SCRIPT_COMMAND_SEND_AI_EVENT

