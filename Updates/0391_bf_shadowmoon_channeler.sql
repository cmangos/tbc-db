-- Shadowmoon Channeler should despawn 3 seconds after death
UPDATE creature_template SET CorpseDecay = 3 WHERE entry IN (17653, 18620);