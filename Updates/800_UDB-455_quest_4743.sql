-- q.4743 'Seal of Ascension'
-- correct spell target
DELETE FROM spell_script_target WHERE entry IN (16053,16054);
insert into spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(16053,1,10321,0),
(16054,0,175321,0);

-- missing abbility added
-- Emberstrife
DELETE FROM creature_template_spells WHERE entry = 10321;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) VALUES 
(10321, 16054, 9573, 8269, 40504);


