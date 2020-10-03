-- ** Battleground updates **

-- EotS: update visual flags; there is no usage for these at the moment
-- alliance and horde flags should be despawned on map create
UPDATE gameobject SET spawntimesecsmin=-86400, spawntimesecsmax=-86400 WHERE id IN (184380,184381);
-- only neutral flags should be spawned on create
UPDATE gameobject SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE id IN (184382);

-- flag unlock spell targets
-- EotS flag
DELETE FROM spell_script_target WHERE entry=24390 AND targetEntry=184141;
INSERT INTO spell_script_target VALUES
(24390, 0, 184141, 0);

-- Zangarmarsh flags (they don't have linked auras)
DELETE FROM spell_script_target WHERE entry=24390 AND targetEntry IN (182527,182528,182529);
INSERT INTO spell_script_target VALUES
(24390, 0, 182527, 0),
(24390, 0, 182528, 0),
(24390, 0, 182529, 0);

