-- blizzlike arena durations are 11-38 weeks (11840-53280)
-- https://wowpedia.fandom.com/wiki/PvP_season
UPDATE game_event_time SET start_time='2021-01-01 00:00:00',end_time='2022-01-01 00:00:00' WHERE entry=53; -- Arena Season 1
UPDATE game_event SET length=525600, length=525600 WHERE entry=53; -- 1year duration for development, blizzlike length = 28800
UPDATE game_event_time SET start_time='2021-01-01 00:00:00',end_time='2022-01-01 00:00:00' WHERE entry=54; -- Arena Season 2
UPDATE game_event SET length=525600, length=525600 WHERE entry=54; -- 1year duration for development, blizzlike length = 33120
UPDATE game_event_time SET start_time='2021-01-01 00:00:00', end_time='2022-01-01 00:00:00' WHERE entry=55; -- Arena Season 3
UPDATE game_event SET length=525600, length=525600 WHERE entry=55; -- 1year duration for development, blizzlike length = 41760
UPDATE game_event_time SET start_time='2022-01-01 00:00:00', end_time='2050-01-01 00:00:00' WHERE entry=56; -- Arena Season 4
UPDATE game_event SET length=525600, length=525600 WHERE entry=56; -- 1year duration for development, blizzlike length = 24480

