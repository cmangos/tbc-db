-- should proc from non dmg - applicable to tbc and wotlk
DELETE FROM spell_proc_event WHERE entry IN(23333,23335,34976);
INSERT INTO spell_proc_event(entry, procEx) VALUES
(23333,65536),
(23335,65536),
(34976,65536);
