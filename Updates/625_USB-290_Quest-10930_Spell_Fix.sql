-- UDB_290
-- q.10930 'The Big Bone Worm'
DELETE FROM spell_script_target WHERE entry = 39248;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(39248,2,22105);

