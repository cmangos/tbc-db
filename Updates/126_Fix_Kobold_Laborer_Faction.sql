-- Correct Faction To Proper Pre-WOTLK 3.3.0 Values To Be Hostile
UPDATE creature_template SET FactionAlliance=26, FactionHorde=26 WHERE entry IN (80);

