-- Fix NPC Faction For Quest 10974
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16 WHERE entry IN (22920);

