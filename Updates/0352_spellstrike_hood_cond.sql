-- unifies conditions with the other 3 entries for spellstrike items
UPDATE creature_loot_template SET condition_id=201 WHERE entry IN(16807) AND item IN(24312);

