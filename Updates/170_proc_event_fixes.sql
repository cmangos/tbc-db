INSERT INTO spell_proc_event VALUES
(1784,127,8,0x0000000000000080,0x0000000000000080,0x0000000000000080,0,0,0,0,0); -- stealth proc, needs to be expanded upon

UPDATE spell_affect SET SpellFamilyMask=0x0000000606000206 WHERE entry IN(14143); -- Update correct mask for Remorseless


