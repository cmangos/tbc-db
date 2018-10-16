-- Add missing creature template for NPC 7073 (Arados the Damned)
-- This is for exhaustivity purpose as the NPC was removed in patch 1.10
-- Possibly wrong multiplier as NPC was removed
UPDATE `creature_template` SET `ModelId1` = 11369, `SpeedWalk` = (2.5/2.5), `SpeedRun` = (15/7), `HealthMultiplier` = 1, `MinLevelHealth` = 1220, `MaxLevelHealth` = 1220, 
`DamageMultiplier` = 1, `MinMeleeDmg` = 49, `MaxMeleeDmg` = 64, `MinRangedDmg` = 33, `MaxRangedDmg` = 49, `MeleeAttackPower` = 118, `RangedAttackPower` = 11, `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000
WHERE `entry` = 7073;

