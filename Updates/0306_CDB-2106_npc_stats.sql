-- Summon Enraged Felbat 14252, Summon Enraged Wyvern 14307, Summon Enraged Gryphon 14313, Summon Enraged Hippogryph 14329
UPDATE creature_template SET DamageMultiplier=2, ArmorMultiplier=1, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000
WHERE entry IN (
9297, -- Enraged Wyvern
9521, -- Enraged Felbat
9526, -- Enraged Gryphon
9527); -- Enraged Hippogryph

