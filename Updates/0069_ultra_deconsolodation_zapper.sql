-- Ultra Deconsolodation Zapper -> Goblin Equipment Trigger
DELETE FROM spell_script_target WHERE entry=36460 AND `type`=1;
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(36460, 1, 21262, 0);


