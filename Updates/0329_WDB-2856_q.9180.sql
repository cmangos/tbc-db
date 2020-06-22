-- q.9180 'Journey to Undercity' - fix

-- Highborne Lamenter 21628
UPDATE creature_template SET MovementType = 0 WHERE entry = 21628;

