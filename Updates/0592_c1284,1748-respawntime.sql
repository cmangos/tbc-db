-- based on https://github.com/cmangos/classic-db/commit/8b2cf47cd232e406e43df1f6830813a4d169d29b

-- Archbishop Benedictus 1284
-- Source: http://www.wowwiki.com/Patch_1.4.1
-- "Archbishop Benedictus should be respawning every 2 hours."
-- Currently set as 6300 (1hr 45 mins)

UPDATE creature SET spawntimesecsmin = 7200, spawntimesecsmax = 7200 WHERE id = 1284;

-- Highlord Bolvar 1748
-- Source: http://www.wowwiki.com/Patch_1.4.1
-- "Highlord Bolvar should be respawning between 5 and 8 minutes."
-- Used 6:30 mins, as doesnt seem to be a way to use a spawntime variance?
-- Currently set as 2 hour respawn timer. (7200)

UPDATE creature SET spawntimesecsmin = 300, spawntimesecsmax = 420 WHERE id = 1748;

