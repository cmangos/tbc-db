-- Add Binding Heal to Empowered Healing Affect Mask
-- Name: Empowered Healing (Rank 1)
-- Description: Your Greater Heal spell gains an additional $s1% and your Flash Heal and Binding Heal gain an additional $s2% of your bonus healing effects.
-- Greater Heal is managed in effect0
UPDATE `spell_affect` SET `SpellFamilyMask` = 2048+17179869184 WHERE `entry` = 33158 AND `effectId` = 1;

