-- Void Traveler and Sapling should move much more slowly
UPDATE creature_template SET SpeedWalk=2/2.5,SpeedRun=2/7 WHERE entry IN(19226,19949);


