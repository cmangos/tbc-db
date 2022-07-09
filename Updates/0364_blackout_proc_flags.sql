-- first mask applicable to vanilla, second only to tbc, none to wotlk
UPDATE spell_proc_event SET SpellFamilyMask0=SpellFamilyMask0|(0x0000000000800000 + 0x0000040000000000) WHERE entry=15268;


