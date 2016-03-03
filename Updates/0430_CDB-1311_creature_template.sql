-- Fixed stats and flags for creatures summoned by Scarshield Warlocks in Lower Blackrock Spire
UPDATE `creature_template` SET `DamageMultiplier`='1.4', `MechanicImmuneMask`='1' WHERE `entry`='9708'; -- Burning Imp (1.9D) (1A) (1P)
UPDATE `creature_template` SET `DamageMultiplier`='3.5', `MeleeBaseAttackTime`='1400', `ArmorMultiplier`='1', `MechanicImmuneMask`='1' WHERE `entry`='10261'; -- Burning Felhound (3.3D) (0.991746A) (1P)
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='4.5', `MeleeBaseAttackTime`='2300', `ArmorMultiplier`='1' WHERE `entry`='10263'; -- Burning Felguard (9D) (0.992308A) (1P)

