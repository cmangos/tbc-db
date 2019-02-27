-- Fix stats of a few NPCs involved in the Scepter of the Shifting Sands quest line
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='12801'; -- Arcane Chimaerok (10H)(1P)(6D)(0.931678A)
UPDATE `creature_template` SET `DamageMultiplier`='6', `MeleeBaseAttackTime`='2000' WHERE `entry`='12802'; -- Chimaerok Devourer (7H)(1P)(10D)(1A)
UPDATE `creature_template` SET `PowerMultiplier`='200', `DamageMultiplier`='32', `MeleeBaseAttackTime`='2000', `MechanicImmuneMask` = `MechanicImmuneMask`|33554432 WHERE `entry`='15491'; -- Eranikus, Tyrant of the Dream (800H)(1P)(64D)(1A)
UPDATE `creature_template` SET `ExtraFlags`='2',`PowerMultiplier`='200', `DamageMultiplier`='32' WHERE `entry`='15628'; -- Eranikus the Redeemed (500H)(1P)(6D)(1A)
UPDATE `creature_template` SET `ExtraFlags`='66', `Rank`='1', `DamageMultiplier`='15' WHERE `entry`='15552'; -- Doctor Weavil (140H)(80P)(5D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='15' WHERE `entry`='15625'; -- Twilight Corrupter (250H)(1P)(6D)(1A)

