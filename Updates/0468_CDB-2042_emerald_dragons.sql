
-- Demented Druid Spirit
UPDATE creature_template SET modelId2=15403, ModelId3=15341, ModelId4=15342, SpeedWalk=1, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=15260;
-- Spirit Shade
UPDATE creature_template SET MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=15261;

-- Missing script target for spell Despawn Taerar Shades
DELETE FROM spell_script_target WHERE entry=24886;
INSERT INTO spell_script_target VALUES
(24886, 1, 15302, 0);

-- Fixed GO 180517 (Putrid Mushroom)
UPDATE gameobject_template SET data2=5, ExtraFlags=1 WHERE entry=180517;

