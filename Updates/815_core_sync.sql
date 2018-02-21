ALTER TABLE game_event_gameobject DROP PRIMARY KEY, ADD PRIMARY KEY (guid, event);
ALTER TABLE game_event_creature DROP PRIMARY KEY, ADD PRIMARY KEY (guid, event);

