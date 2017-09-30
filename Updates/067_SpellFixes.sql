UPDATE spell_affect SET SpellFamilyMask=0x0000010A06020206 WHERE entry=36563 and effectId=1; -- shadowstep effects give proper family mask
UPDATE spell_affect SET SpellFamilyMask=0x0000000000100100 WHERE entry=36563 and effectId=2;
DELETE FROM spell_proc_event WHERE entry=32912; -- give windfury weapon internal 3 second CD
INSERT INTO spell_proc_event(entry,Cooldown) VALUES(32912,3);


