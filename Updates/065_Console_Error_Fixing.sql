-- ERROR:`game_event_creature` game event id (-XX) not exist in `game_event`
DELETE FROM game_event_creature WHERE event IN (-47,-46);
DELETE FROM game_event_creature_data WHERE event IN (-47,-46);
DELETE FROM game_event_gameobject WHERE event IN (-47,-46);
DELETE FROM game_event_mail WHERE event IN (-47,-46);
DELETE FROM game_event_quest WHERE event IN (-47,-46);


-- Make Netherspite use creature_movement_template instead (data already exists)
DELETE FROM creature_movement WHERE id IN (68947);

