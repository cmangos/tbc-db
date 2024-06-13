-- Infernal Attacker 21419
-- fix display db errors
UPDATE creature_template SET DisplayId1 = 17312, DisplayIdProbability2 = 100 WHERE Entry = 21419;
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 60 WHERE id = 21419; -- make event be more randomized (40 40)

