-- Robe of the Elder Scribes
DELETE FROM spell_proc_event WHERE entry IN(34598);
INSERT INTO spell_proc_event(entry,Cooldown) VALUES
(34598,45);

-- Mark of Defiance
DELETE FROM spell_proc_event WHERE entry IN(33511);
INSERT INTO spell_proc_event(entry,Cooldown) VALUES
(33511,15);

