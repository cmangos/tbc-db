-- healing way
DELETE FROM spell_affect WHERE entry=29203;
INSERT INTO spell_affect(entry, effectId, SpellFamilyMask) VALUES
(29203,0,0x000000000040);

-- Increased Judgement of Light
DELETE FROM spell_affect WHERE entry IN(37182);
INSERT INTO spell_affect(entry, effectId, SpellFamilyMask) VALUES
(37182, 0, 0x0000000100000000);

-- Tier 5 Warlock 4 Set
DELETE FROM spell_affect WHERE entry IN(37401,37402,37384);
INSERT INTO spell_affect(entry, effectId, SpellFamilyMask) VALUES
(37384,0,0x00000006),
(37401, 0, 0x0000000000000002), -- corruption
(37402, 0, 0x0000000000000004); -- immolate

-- blessing of light
DELETE FROM spell_affect WHERE entry=19977;
INSERT INTO spell_affect(entry, effectId, SpellFamilyMask) VALUES
(19977,0,0x0000000080000000),
(19977,1,0x0000000040000000);
