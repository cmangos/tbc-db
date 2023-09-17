-- healing way
DELETE FROM spell_affect WHERE entry=29203;
INSERT INTO spell_affect(entry, effectId, SpellFamilyMask) VALUES
(29203,0,0x000000000040);

-- Increased Judgement of Light
DELETE FROM spell_affect WHERE entry IN(37182);
INSERT INTO spell_affect(entry, effectId, SpellFamilyMask) VALUES
(37182, 0, 0x0000000100000000);


