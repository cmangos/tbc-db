DELETE FROM game_event_creature WHERE event=16;
INSERT INTO game_event_creature VALUES
('636', '16'); -- make short john mithril be spawned by event instead of default

UPDATE gameobject SET spawntimesecs=-spawntimesecs WHERE guid=12029; -- make despawned by default


