UPDATE quest_template SET SpecialFlags=0 WHERE entry=9545;
UPDATE creature SET DeathState=0 WHERE guid=86002;
UPDATE creature_template SET ExtraFlags=128,Unitflags=514 WHERE entry=17413;
UPDATE creature_template SET SpeedWalk=1.125 WHERE entry=17404;
UPDATE creature_template SET Unitflags=33555200 WHERE entry=17413;
UPDATE creature_template SET Unitflags=256 WHERE entry=17404;
UPDATE creature_template SET Unitflags=256 WHERE entry=17405;
UPDATE creature_template SET Unitflags=33024 WHERE entry=17417;
UPDATE creature_template SET Unitflags=33024 WHERE entry=17418;

INSERT INTO creature_template_addon (entry, auras) VALUES (17404, 29266);

DELETE FROM spell_script_target WHERE entry=30462;
INSERT INTO spell_script_target VALUES(30462,1,17404,0);