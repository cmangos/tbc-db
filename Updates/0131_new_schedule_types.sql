UPDATE game_event SET schedule_type=12 WHERE entry=7; -- Lunar - lunar
UPDATE game_event SET schedule_type=11 WHERE entry=8; -- Love is in the Air - Yearly
UPDATE game_event SET schedule_type=11 WHERE entry=2; -- Feast of Winter Veil - Yearly
UPDATE game_event SET schedule_type=11 WHERE entry=10; -- Childrens Week - Yearly
UPDATE game_event SET schedule_type=13 WHERE entry=28; -- Noblegarden - easter

DELETE FROM `game_event_time` WHERE `entry` IN (7,28); -- enum GameEventScheduleType
-- https://github.com/cmangos/issues/wiki/Game_event

