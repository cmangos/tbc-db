-- doesnt regen even if he doesnt enter combat
UPDATE creature_template SET RegenerateStats=0 WHERE entry IN(20284);

