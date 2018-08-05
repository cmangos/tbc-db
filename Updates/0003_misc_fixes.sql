-- Spells need to proc on DOT tick taken, not dot tick done since they are on target, not owner and they proc themselves
DELETE FROM spell_proc_event WHERE entry IN(32065,35244,36659);
INSERT INTO spell_proc_event(entry,procFlags) VALUES
(32065,0x00080000),
(35244,0x00080000),
(36659,0x00080000);


