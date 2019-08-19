-- add missing mask to 4 piece bonus
UPDATE spell_affect SET SpellFamilyMask=0x0000040002000000 WHERE entry IN(37535);

