-- adjust delay in line with core
UPDATE dbscripts_on_quest_start SET delay=0 WHERE command=31 AND id IN(9977);

