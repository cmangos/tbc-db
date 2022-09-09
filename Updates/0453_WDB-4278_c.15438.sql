-- c.15438 Greater Fire Elemental
-- should scale to players lvl
-- Creature (Entry: 15438) `MaxLevel` exceeds maximum allowed value of '75'
UPDATE creature_template SET MaxLevel=75 WHERE entry=15438; -- just to align with wotlk

