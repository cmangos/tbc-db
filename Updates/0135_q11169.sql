-- s.42454 should only hit c.4344 and c.4345 (q.11169 'The Grimtotem Weapon)
DELETE FROM spell_script_target WHERE entry=42454;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(42454,1,4344,0),
(42454,1,4345,0);

