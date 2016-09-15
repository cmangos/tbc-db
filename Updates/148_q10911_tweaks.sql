DELETE FROM spell_script_target WHERE entry=39221; -- give proper targets
INSERT INTO spell_script_target VALUES(39221,1,22471,0);
INSERT INTO spell_script_target VALUES(39221,1,22472,0);

DELETE FROM creature WHERE id in (22474,22500); -- delete creatures spawned only through scripts


