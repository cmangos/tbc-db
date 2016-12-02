-- Eldinarcus (rare NPC in Eversong woods, id 16854) is bugged and hits probably 5 times as hard as should, somebody please forward this to devs.

-- Eldinarcus (16854)
UPDATE `creature_template` SET `MeleeAttackPower` = '34.0', `RangedAttackPower` = '0.0', `MinLevelHealth` = '261', `MaxLevelHealth` = '261', `MinLevelMana` = '205', `MaxLevelMana` = '205', `MinMeleeDmg` = '22', `MaxMeleeDmg` = '29', `MinRangedDmg` = '14', `MaxRangedDmg` = '21', `HealthMultiplier` = '1.255', `DamageMultiplier` = '1.6', `DamageVariance` = '1.0' WHERE `entry` = '16854';




