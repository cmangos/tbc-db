-- healing and dmg trinkets also need to proc on DOT/HOT application
DELETE FROM spell_proc_event WHERE entry IN(37655,37705,45059);
INSERT INTO spell_proc_event(entry,SchoolMask,procEx,Cooldown) VALUES
(37655,127,65536,60);
INSERT INTO spell_proc_event(entry,procEx) VALUES
(37705,65536),
(45059,65536);


