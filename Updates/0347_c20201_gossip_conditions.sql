-- Fix players being able to get more Chrono-beacons from Sa'at while event is running
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES 
(10084, 18, 20201, 0, 'INSTANCE_CONDITION_ID_SAAT_BEACON - Event not in progress and Medivh is spawned and alive'),
(10085, -1, 146, 10084, NULL),
(10086, -1, 153, 10084, NULL);

-- Update old conditions
UPDATE gossip_menu_option SET condition_id=10085 WHERE condition_id=146 AND menu_id=8088;
UPDATE gossip_menu_option SET condition_id=10086 WHERE condition_id=153 AND menu_id=8088;
