-- this is after patch 2.2, Cala or CDB if you see this, vanilla needs to have explicit value 1
DELETE FROM spell_bonus_data WHERE entry IN(15851);
INSERT INTO spell_bonus_data(entry,direct_bonus) VALUES
(15851,0);