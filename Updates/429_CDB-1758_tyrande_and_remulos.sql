-- Fixed race requirement for quest 8734 (Tyrande and Remulos)
UPDATE quest_template SET RequiredRaces=255 WHERE entry=8734;
