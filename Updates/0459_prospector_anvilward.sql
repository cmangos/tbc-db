-- Quest The Dwarfen Spy
-- Add gossip to Prospector Anvilward
DELETE FROM npc_text_broadcast_text WHERE Id IN (8239, 8240);
INSERT INTO npc_text_broadcast_text (`Id`, `Prob0`, `BroadcastTextId0`) VALUES 
('8239', '1', '11730'), -- What are you looking at, $glad : lass;?  Never seen a dwarf before, then?$B$BYou'd best be on yer way if you don't want any trouble.
('8240', '1', '11732'); -- Ah, you must be the $glad : lass; assigned to show me around the Eversong Woods.  Took your sweet time getting here, didn't you?$B$BVery well, off we go.  Let us not waste one more minute.
DELETE FROM npc_text WHERE ID IN (8239, 8240);

-- Sniffed Values
-- GossipID: 6953
-- GossipID: 6952
DELETE FROM gossip_menu WHERE entry IN (6952, 6953);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
('6953', '8239', '0', '0'),
('6952', '8240', '0', '0');

DELETE FROM gossip_menu_option WHERE menu_id IN (6952, 6953);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `condition_id`) VALUES 
('6953', '1', '0', 'I need a moment of your time, sir.', '11731', '1', '1', '6952', '0', '0', '6952'),
('6952', '1', '0', 'Why... yes, of course.  I\'ve something to show you right inside this building, Mr. Anvilward.', '11733', '1', '1', '0', '0', '6952', '6952');

UPDATE creature_template SET GossipMenuId = 6953 WHERE entry = 15420;

DELETE FROM conditions WHERE condition_entry = 6952;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `comments`) VALUES 
('6952', '9', '8483', 'Player has Quest The Dwarfen Spy');

DELETE FROM dbscripts_on_gossip WHERE id = 6952;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES 
(6952, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Prospector Anvilward - set Active'),
(6952, 0, 1, 29, 1, 0, 0, 0, 0, 0, 11734, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Prospector Anvilward - remove gossip flag'),
(6952, 0, 2, 0, 0, 0, 0, 0, 0, 0, 11734, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Prospector Anvilward - say text'), 
(6952, 0, 3, 20, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Prospector Anvilward - Start Waypoint Path');

-- Waypoints
DELETE FROM creature_movement_template WHERE entry = 15420;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(15420,1,1,9296.278,-6676.996,22.353302,100, 0, 0),
(15420,1,2,9299.323,-6668.9614,22.41333,100, 0, 0),
(15420,1,3,9303.353,-6666.7637,22.427332,100, 0, 0),
(15420,1,4,9307.93,-6660.8057,22.422642,100, 0, 0),
(15420,1,5,9309.302,-6656.1987,22.999205,100, 0, 0),
(15420,1,6,9307.306,-6651.726,24.881317,100, 0, 0),
(15420,1,7,9300.505,-6648.1587,28.03696,100, 0, 0),
(15420,1,8,9293.383,-6650.728,30.56724,100, 0, 0),
(15420,1,9,9290.5205,-6654.362,31.82197,100, 0, 0),
(15420,1,10,9289.944,-6657.774,31.817722,100, 0, 0),
(15420,1,11,9290.866,-6658.0156,31.816088,0.104719758033752441,1000,1542001);

-- Waypoint Script
DELETE FROM dbscripts_on_creature_movement WHERE id = 1542001;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1542001, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Prospector Anvilward - Change Movement'),
(1542001, 0, 1, 0, 0, 0, 0, 0, 0, 0, 11735, 0, 0, 0, 0, 0, 0, 0, 'Prospector Anvilward - say Text'),
(1542001, 0, 2, 22, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Prospector Anvilward - Change Faction'),
(1542001, 0, 2, 18, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Prospector Anvilward - Force despawn with delay');

-- Correct respawntimer to match better with classic ptr tests 
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 120 WHERE guid = 55371;

-- RP starts on spawn and then every 5 minutes
DELETE FROM dbscripts_on_relay  WHERE id = 1542001;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1542001, 0, 0, 31, 15405, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Prospector Anvilward - Search for Ley Keeper Caidanis'),
(1542001, 1, 0, 0, 0, 0, 0, 0, 0, 0, 11717, 0, 0, 0, 0, 0, 0, 0, 'Prospector Anvilward - Say Text'), -- 20:32:29.742
(1542001, 7000, 0, 0, 0, 0, 0, 15405, 10, 0, 11718, 0, 0, 0, 0, 0, 0, 0, 'Ley Keeper Caidanis - Say Text');