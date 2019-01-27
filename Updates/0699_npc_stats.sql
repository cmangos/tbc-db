-- based on https://github.com/cmangos/classic-db/commit/a4cb0aad35cbadc08926cc5e0a55638baca20928
-- https://github.com/cmangos/classic-db/commit/c1509be456480f0ebafb9bcc012ae34d9a55964d

-- also correcting speed values, which are too high

-- Emerald Dragon Whelp 8776
UPDATE creature_template SET DamageMultiplier=1 WHERE entry=8776;
UPDATE creature_model_info SET bounding_radius=0.278, combat_reach=1.25 WHERE modelid=694;
-- Gan'zulah 1061
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = (8/7), DamageMultiplier=1, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=1061;
-- Enraged Feral Scar 5295
UPDATE creature_template SET SpeedWalk = 1 WHERE entry=5295;
-- Omgorn the Lost 8201
UPDATE creature_template SET SpeedWalk = 1, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=8201;
-- Gordok Hyena 12418
UPDATE creature_template SET SpeedWalk = 1, SpeedRun = (10/7), DamageMultiplier=2.6, MeleeBaseAttackTime=1500, RangedBaseAttackTime=1500 WHERE entry=12418;
-- Silicate Feeder 15333
UPDATE creature_template SET DamageMultiplier=1.5 WHERE entry=15333;

