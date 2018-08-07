-- corrections for wrong requried races
UPDATE quest_template SET RequiredRaces=690 WHERE entry IN(915);
UPDATE quest_template SET RequiredRaces=0 WHERE entry IN(8734,3321,7501,7505);

