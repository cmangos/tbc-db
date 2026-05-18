-- Add Wound Poison & Anesthetic Poison to Improved Poisons Affect Mask
-- Instant Poison 8192 + Crippling Poison 16384 + Mind-numbing Poison 32768 + Deadly Poison 65536 + Wound Poison 268435456 + Anesthetic Poison 68719476736
UPDATE `spell_affect` SET `SpellFamilyMask` = `SpellFamilyMask`|(268435456+68719476736) WHERE `entry` = 14113; -- 122880

