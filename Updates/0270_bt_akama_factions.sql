-- correct BT shade of akama factions
UPDATE creature_template SET Faction=16,UnitFlags=32768 WHERE entry IN(23523);
UPDATE creature_template SET Faction=16,UnitFlags=32768 WHERE entry IN(23524);
UPDATE creature_template SET Faction=1849,UnitFlags=32768 WHERE entry IN(23215);
UPDATE creature_template SET Faction=1849,UnitFlags=32768 WHERE entry IN(23215);

