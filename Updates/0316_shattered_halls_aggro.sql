-- Correct some CallForHelp for shattered halls npcs
UPDATE creature_template SET CallForHelp = '6' WHERE entry IN (16523, 16593, 16594, 16700, 17420, 17694);
-- Same for Heroic
UPDATE creature_template SET CallForHelp = '6' WHERE entry IN (20591, 20582, 20576, 20587, 20589, 20577);