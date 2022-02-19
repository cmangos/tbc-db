-- (Alliance) 19743 We're under attack! Defend yourself! I'm taking the high road. Call me back when the coast is clear!
-- (Horde) 19698 Enemies approach! Call for me when you are at a safe location.
UPDATE broadcast_text SET EmoteID1=5 WHERE Id IN (19743,19698);
UPDATE creature_template SET InhabitType=7,MovementType=0 WHERE Entry IN (22059,21998,22008);
DELETE FROM dbscripts_on_relay WHERE id IN (10211,10212);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(10211, 0, 0, 37, 0, 0, 0, 22008, 100, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Wildhammer Gryphon Rider/Kor''kron Wind Rider - Fly to Spawn Marker'),
(10211, 0, 0, 18, 6000, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wildhammer Gryphon Rider/Kor''kron Wind Rider - Despawn Self'),
(10212, 0, 0, 37, 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Wildhammer Gryphon Rider/Kor''kron Wind Rider - Fly to Player');

UPDATE creature_template SET GossipMenuId=8756 WHERE Entry=21998; -- Kor'kron Wind Rider
UPDATE creature_template SET GossipMenuId=8756 WHERE Entry=22059; -- Wildhammer Gryphon Rider

DELETE FROM gossip_menu WHERE entry=8756;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8756, 11091, 0, 0);
DELETE FROM npc_text WHERE id=11091;
DELETE FROM npc_text_broadcast_text WHERE id=11091;
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(11091, 1, 21955);


