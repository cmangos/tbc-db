-- Fix attack speed for Shen'dralar Zealot 14369
UPDATE creature_template SET MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=14369; -- Shen'dralar Zealot

