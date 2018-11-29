-- Amani'shi Lookout
UPDATE creature_template SET UnitFlags=33104 WHERE entry=24175;

-- Amani Eagle
UPDATE creature_template SET MovementType=2 WHERE entry=24159;

-- Amani'shi Warrior
UPDATE creature_template SET MovementType=2 WHERE entry=24225;

DELETE FROM spell_script_target WHERE entry IN (43487,43486);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(43487, 1, 23574, 0), -- Akil'zon
(43486, 1, 24325, 0); -- Eagle Troll Spawn Target


