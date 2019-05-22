-- Fix stats for a few NPCs
-- Note that warlock pets multiplier values are not in line with usual creature multipliers because they are to match pet_levelstats at a given level and that they are not usual creatures
-- Sources: WoW Bestiary and cross checks between pet_levelstats and class_levelstats (Classic and TBC)
UPDATE `creature_template` SET `ExtraFlags`='64', `DamageMultiplier`='1.3', `ArmorMultiplier`='0.75' WHERE `entry`='416'; -- Imp (0.36H)(0.33P)(2D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='0.8', `ArmorMultiplier`='0.95' WHERE `entry`='417'; -- Felhunter (0.95H)(0.77P)(1D)(1A)
UPDATE `creature_template` SET `MechanicImmuneMask`='16385' WHERE `entry`='575'; -- Fire Elemental (1.15H)(1P)(1D)(1A)
UPDATE `creature_template` SET `MaxLevel`='36' WHERE `entry`='4297'; -- Scarlet Conjuror
UPDATE `creature_template` SET `DamageMultiplier`='1', `ArmorMultiplier`='1.64' WHERE `entry`='1860'; -- Voidwalker (1.4H)(0.77P)(0.6D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='1.06', `ArmorMultiplier`='0.8' WHERE `entry`='1863'; -- Succubus (0.7H)(0.77P)(0.1D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='1', `ArmorMultiplier`='1' WHERE `entry`='2070'; -- Moonstalker Runt (1H)(1P)(0.98D)(0.975936A)
UPDATE `creature_template` SET `ExtraFlags`='64', `ArmorMultiplier`='1', `SkinningLootId`='0' WHERE `entry`='3450'; -- Defias Companion (1H)(1P)(0.5D)(0.974755A)
UPDATE `creature_template` SET `DamageMultiplier`='0.75', `MeleeBaseAttackTime`='2000', `ArmorMultiplier`='1' WHERE `entry`='4526'; -- Wind Howler (0.8H)(1P)(1D)(0.982863A)
UPDATE `creature_template` SET `DamageMultiplier`='1' WHERE `entry`='4534'; -- Tamed Hyena (0.8H)(1P)(5D)(1A)
UPDATE `creature_template` SET `NpcFlags`='80', `UnitFlags`='32768', `ExtraFlags`='66' WHERE `entry`='5032'; -- World Alchemy Trainer (1H)(1P)(1D)(1A)
UPDATE `creature_template` SET `NpcFlags`='80', `UnitFlags`='32768', `ExtraFlags`='66' WHERE `entry`='5037'; -- World Engineering Trainer (1H)(1P)(1D)(1A)
UPDATE `creature_template` SET `NpcFlags`='80', `UnitFlags`='32768', `ExtraFlags`='66' WHERE `entry`='5038'; -- World Enchanting Trainer (1H)(1P)(1D)(1A)
UPDATE `creature_template` SET `NpcFlags`='80', `UnitFlags`='32768', `ExtraFlags`='66' WHERE `entry`='5040'; -- World Leatherworking Trainer (1H)(1P)(1D)(1A)
UPDATE `creature_template` SET `NpcFlags`='80', `UnitFlags`='32768', `ExtraFlags`='66' WHERE `entry`='5041'; -- World Tailoring Trainer (1H)(1P)(1D)(1A)
UPDATE `creature_template` SET `MinLevel`='11', `MaxLevel`='11', `DamageMultiplier`='0.5', `ArmorMultiplier`='1' WHERE `entry`='5766'; -- Savannah Cub (1H)(1P)(1D)(0.816667A)
UPDATE `creature_template` SET `MinLevel`='21', `HealthMultiplier`='1' WHERE `entry`='6047'; -- Aqua Guardian (1.1228H)(1P)(1D)(1A) s.8372
UPDATE `creature_template` SET `ExtraFlags`='64', `DamageMultiplier`='1' WHERE `entry`='6250'; -- Crawler (1H)(1P)(0.8D)(1A) s.8656
UPDATE `creature_template` SET `ExtraFlags`='64', `MinLevel`='1', `MaxLevel`='1', `HealthMultiplier`='1', `DamageMultiplier`='1' WHERE `entry`='6412'; -- Skeleton (0.5H)(1P)(1.4D)(1A) s.8853,17204
UPDATE `creature_template` SET `ExtraFlags`='64', `DamageMultiplier`='0.75', `ArmorMultiplier`='1' WHERE `entry`='10979'; -- Scarlet Hound (1.25H)(1P)(1D)(0.990997A)
UPDATE `creature_template` SET `MinLevel`='50', `MaxLevel`='50', Faction='90', `HealthMultiplier`='1.17', `PowerMultiplier`='1.27', `DamageMultiplier`='1.5', `ArmorMultiplier`='0.8' WHERE `entry`='17252'; -- Felguard (1H)(0.77P)(2D)(1A)

