-- Add Bloodthirst to T6 Warrior Setbonus
-- thx @ discord@biloulefou
UPDATE `spell_affect` SET `SpellFamilyMask` = (33554432 + 4398046511104) WHERE `entry` = 38399;

