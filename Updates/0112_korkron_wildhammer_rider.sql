-- (Alliance) 19743 We're under attack! Defend yourself! I'm taking the high road. Call me back when the coast is clear!
-- (Horde) 19698 Enemies approach! Call for me when you are at a safe location.
UPDATE broadcast_text SET EmoteID1=5 WHERE Id IN (19743,19698);
UPDATE creature_template SET InhabitType=7,MovementType=0 WHERE Entry IN (22059,21998,22008);
DELETE FROM dbscripts_on_relay WHERE id IN (10211,10212,10213);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(10211, 0, 0, 37, 0, 0, 0, 22008, 100, 1, 3, 10213, 0, 0, 0, 0, 0, 0, 0, 'Wildhammer Gryphon Rider/Kor''kron Wind Rider - Fly to Spawn Marker'),
(10212, 0, 0, 37, 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Wildhammer Gryphon Rider/Kor''kron Wind Rider - Fly to Player'),
(10213, 0, 0, 18, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wildhammer Gryphon Rider/Kor''kron Wind Rider - Despawn Self');


