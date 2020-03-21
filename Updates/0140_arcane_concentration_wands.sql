-- arcane concentration should not proc from wands
DELETE FROM spell_proc_event WHERE entry IN(11213);
INSERT INTO spell_proc_event(entry,SpellFamilyMask0) VALUES
(11213,0x00015410);

