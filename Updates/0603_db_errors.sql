-- Handled via spawn_group now
DELETE FROM pool_template WHERE entry = 31286;

-- Needs to be confirmed that Peacbloom in Mulgore should not spawn when Darkmoon Fairy is up
DELETE FROM game_event_gameobject where guid = 1399;