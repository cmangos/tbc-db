-- Disgruntled should only hit Bonechewer Workers
DELETE FROM spell_script_target WHERE entry=40851;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(40851, 1, 22963, 0);


