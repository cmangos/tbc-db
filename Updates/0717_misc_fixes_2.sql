-- Correct Affect Masks for Vile Poisons Talent
-- Instant Poison 8192 + Crippling Poison 16384 + Mind-numbing Poison 32768 + Deadly Poison 65536 + Wound Poison 268435456 + Anesthetic Poison 68719476736
UPDATE `spell_affect` SET `SpellFamilyMask` = (8192,16384,32768,65536,268435456+68719476736) WHERE `effectId` = 0 AND `entry` = 16513; -- 34359861248 (SPELLMOD_DAMAGE)
UPDATE `spell_affect` SET `SpellFamilyMask` = 65536 WHERE `effectId` = 1 AND `entry` = 16513; -- 65536 (SPELLMOD_DOT)
UPDATE `spell_affect` SET `SpellFamilyMask` = (8192,16384,32768,65536,268435456+68719476736) WHERE `effectId` = 2 AND `entry` = 16513; -- 268550144 (SPELLMOD_RESIST_DISPEL_CHANCE)

