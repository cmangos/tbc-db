-- Fixed stats of boss NPCs in Blackrock Depths
UPDATE `creature_template` SET `PowerMultiplier`='2' WHERE `entry`='8923'; -- Panzor the Invincible
UPDATE `creature_template` SET `DamageMultiplier`='6.25' WHERE `entry`='8983'; -- Golem Lord Argelmach (maxdmg, mindmg is lower)
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `PowerMultiplier`='2' WHERE `entry`='9016'; -- Bael'Gar
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `PowerMultiplier`='5' WHERE `entry`='9017'; -- Lord Incendius
UPDATE `creature_template` SET `CreatureTypeFlags`='0' WHERE `entry`='9018'; -- High Interrogator Gerstahn
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `PowerMultiplier`='2', `DamageMultiplier`='7.25' WHERE `entry`='9019'; -- Emperor Dagran Thaurissan
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `PowerMultiplier`='2', `DamageMultiplier`='7.25' WHERE `entry`='15775'; -- Christmas Emperor Dagran Thaurissan
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `PowerMultiplier`='2' WHERE `entry`='9025'; -- Lord Roccor
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `DamageMultiplier`='4.25', `MechanicImmuneMask`='8388624' WHERE `entry`='9030'; -- Ok'thor the Breaker
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `PowerMultiplier`='2', `DamageMultiplier`='5.5', `MechanicImmuneMask`='8389648' WHERE `entry`='9032'; -- Hedrum the Creeper
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `PowerMultiplier`='2' WHERE `entry`='9033'; -- General Angerforge
UPDATE `creature_template` SET `CreatureTypeFlags`='0' WHERE `entry`='9034'; -- Hate'rel
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `PowerMultiplier`='2' WHERE `entry`='9035'; -- Anger'rel
UPDATE `creature_template` SET `CreatureTypeFlags`='0' WHERE `entry`='9036'; -- Vile'rel
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `PowerMultiplier`='2', `DamageMultiplier`='4', `MeleeBaseAttackTime` = 2800 WHERE `entry`='9037'; -- Gloom'rel
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `ArmorMultiplier`='1.25' WHERE `entry`='9038'; -- Seeth'rel
UPDATE `creature_template` SET `CreatureTypeFlags`='0' WHERE `entry`='9039'; -- Doom'rel
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `PowerMultiplier`='2' WHERE `entry`='9040'; -- Dope'rel
UPDATE `creature_template` SET `CreatureTypeFlags`='0' WHERE `entry`='9041'; -- Warder Stilgiss
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `PowerMultiplier`='2' WHERE `entry`='9042'; -- Verek
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `PowerMultiplier`='2' WHERE `entry`='9156'; -- Ambassador Flamelash
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `PowerMultiplier`='2' WHERE `entry`='9319'; -- Houndmaster Grebmar
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `DamageMultiplier`='3.5', `MechanicImmuneMask`='8388624', `MaxLootGold`='737' WHERE `entry`='9437'; -- Dark Keeper Vorfalk
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `DamageMultiplier`='3.5', `MechanicImmuneMask`='8388624', `MaxLootGold`='737', `MovementType`='0' WHERE `entry`='9438'; -- Dark Keeper Bethek
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `MechanicImmuneMask`='8388624', `MaxLootGold`='761' WHERE `entry`='9439'; -- Dark Keeper Uggel (already has 3.5 which is correct, others had 6 set)
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `DamageMultiplier`='3.5', `MechanicImmuneMask`='8388624', `MaxLootGold`='998' WHERE `entry`='9441'; -- Dark Keeper Zimrel
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `DamageMultiplier`='3.5', `MechanicImmuneMask`='8388624', `MaxLootGold`='737' WHERE `entry`='9442'; -- Dark Keeper Ofgut
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `DamageMultiplier`='3.5', `MechanicImmuneMask`='8388624', `MaxLootGold`='761' WHERE `entry`='9443'; -- Dark Keeper Pelver
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `MechanicImmuneMask`='8388624', `MaxLootGold`='761' WHERE `entry`='9476'; -- Watchman Doomgrip
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `PowerMultiplier`='2' WHERE `entry`='9502'; -- Phalanx
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `DamageMultiplier`='4.5', `MechanicImmuneMask`='76234719' WHERE `entry`='10076'; -- High Priestess of Thaurissan (Setting same Immunities as Princess for now)
UPDATE `creature_template` SET `PowerMultiplier`='2' WHERE `entry`='10096'; -- High Justice Grimstone

