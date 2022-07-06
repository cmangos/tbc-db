-- Ironhand Guardian 8982
UPDATE `creature_template` SET `MinLevel` = 56, `MaxLevel` = 56, ExtraFlags='64', `PowerMultiplier`='2', `MinLevelHealth`='8097', `MaxLevelHealth`='8097', `ArmorMultiplier`='1.33', `Armor`='4495',
`MinMeleeDmg`='97.9', `MaxMeleeDmg`='129.8', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='238', `RangedAttackPower`='24', `MeleeBaseAttackTime`='2000',
`ResistanceHoly`='0', `ResistanceFire`='0', `ResistanceNature`='0', `ResistanceFrost`='0', `ResistanceShadow`='0', `ResistanceArcane`='0', `MovementType`=0 WHERE `Entry`='8982';

-- Magmus 9938
-- https://wowwiki-archive.fandom.com/wiki/Magmus?oldid=1124050 - 57 in classic
UPDATE `creature_template` SET `UnitFlags` = 64, ExtraFlags='0', `SpeedWalk` = 0.777776, `CreatureTypeFlags`='72', `PowerMultiplier`='2', `MinLevelHealth`='24291', `MaxLevelHealth`='24291',
`MinMeleeDmg`='117.5', `MaxMeleeDmg`='155.8', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3380', `MeleeAttackPower`='238', `MovementType`=0,
`RangedAttackPower`='24', `MeleeBaseAttackTime`='2400', `RangedBaseAttackTime`='2400' WHERE `Entry`='9938';

