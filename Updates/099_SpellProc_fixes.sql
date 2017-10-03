DELETE FROM spell_proc_event WHERE entry in(14186,14190,14193,14194,14195); -- seal fate
INSERT INTO spell_proc_event VALUES
('14186', '0', '8', '9672066312', '9672066312', '9672066312', '0', '2', '0', '0', '0');

UPDATE spell_affect SET SpellFamilyMask=0x0000000600000000 WHERE entry IN(13733,13865,13866) AND effectId=1; -- Puncturing Wounds


