-- Fixed level, health, mana and damage stats of the creatures (trash,
-- rares and bosses) in the Wailing Caverns. They are now similar to what they
-- were back in Classic.
-- Several sources were used with cross-checking: Bestiary, WoW Dungeon
-- Companion, various web archives (wowwiki, allakhazam...)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='3630'; -- Deviate Coiler (1D) (0.974755A)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='3631'; -- Deviate Stinglash (1D) (0.977273A)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='3632'; -- Deviate Creeper (1D) (0.974755A)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='3633'; -- Deviate Slayer (1D) (0.977273A)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='3634'; -- Deviate Stalker (1D) (0.974755A)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='3636'; -- Deviate Ravager (1.7D) (0.979192A)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='3637'; -- Deviate Guardian (1.7D) (0.979192A)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='3641'; -- Deviate Lurker (1D) (0.977273A)
UPDATE `creature_template` SET `UnitFlags`='32832', `SpeedWalk` = 1, `rank` = 4 WHERE `entry`='3652'; -- Trigore the Lasher (1.25D) (1A)
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `ArmorMultiplier`='5' WHERE `entry`='3653'; -- Kresh (1.6D) (4.85915A)
UPDATE `creature_template` SET `MinLootGold`='50' WHERE `entry`='3654'; -- Mutanus the Devourer (2.4D) (1A)
UPDATE `creature_template` SET `MechanicImmuneMask`='0' WHERE `entry`='3655'; -- Mad Magglish (1D) (1A)
UPDATE `creature_template` SET `DamageMultiplier`='2.86' WHERE `entry`='3670'; -- Lord Pythas (2.9D) (1A)
UPDATE `creature_template` SET `DamageMultiplier`='1.25', `MeleeBaseAttackTime`='2000' WHERE `entry`='3672'; -- Boahn (1.7D) (1A)
UPDATE `creature_template` SET `DamageMultiplier`='2.86' WHERE `entry`='3673'; -- Lord Serpentis (2.9D) (1A)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='5048'; -- Deviate Adder (1.7D) (0.979192A)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='5053'; -- Deviate Crocolisk (1D) (0.979192A)
UPDATE `creature_template` SET `DamageMultiplier`='1', `MeleeBaseAttackTime`='2000' WHERE `entry`='5780'; -- Cloned Ectoplasm (1.5D) (1A)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='5914'; -- Deviate Nightmare (1D) (0.960586A)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='8886'; -- Deviate Python (1D) (0.979192A)

