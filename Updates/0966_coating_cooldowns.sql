-- has associated core commit
DELETE FROM spell_proc_event WHERE entry IN(45396);
INSERT INTO spell_proc_event(entry,Cooldown) VALUES
(45396,45);
DELETE FROM spell_proc_event WHERE entry IN(45398);
INSERT INTO spell_proc_event(entry,Cooldown) VALUES
(45398,40);

