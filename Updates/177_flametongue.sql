INSERT INTO spell_bonus_data VALUES('8026', '0.1', '0', '0', '0', 'Shaman - Flametongue Weapon Proc Rank 1');

DELETE FROM spell_chain WHERE first_spell=8026;
INSERT INTO spell_chain VALUES
(8026, 0, 8026, 1, 0),
(8028, 8026, 8026, 2, 0),
(8029, 8028, 8026, 3, 0),
(10445, 8029, 8026, 4, 0),
(16343, 10445, 8026, 5, 0),
(16344, 16343, 8026, 6, 0),
(25488, 16344, 8026, 7, 0);


UPDATE spell_affect SET SpellFamilyMask=0x0000000000200000 WHERE effectId = 1 AND entry=16266; -- proper elemental weapons mask for flametongue


