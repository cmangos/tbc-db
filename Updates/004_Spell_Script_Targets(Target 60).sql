-- script target for spell 34186 cast by npc 17058
DELETE FROM spell_script_target WHERE entry=34186;
INSERT INTO spell_script_target (entry, type, targetEntry,inverseEffectMask) VALUES
(34186, 1, 16938, 0);
-- script target for spell 33924 cast by npc 19424
DELETE FROM spell_script_target WHERE entry=33924;
INSERT INTO spell_script_target (entry, type, targetEntry,inverseEffectMask) VALUES
(33924, 1, 19640, 0);
-- Chess event script targets
-- Footman
DELETE FROM spell_script_target WHERE entry IN (32227);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(32227,1,17469,0),
(32227,1,21748,0),
(32227,1,21750,0),
(32227,1,21747,0),
(32227,1,21726,0),
(32227,1,21752,0);
-- Grunt
DELETE FROM spell_script_target WHERE entry IN (32228);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(32228,1,17211,0),
(32228,1,21664,0),
(32228,1,21683,0),
(32228,1,21682,0),
(32228,1,21160,0),
(32228,1,21684,0);
-- Water Elem
DELETE FROM spell_script_target WHERE entry IN (37142);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(37142,1,17469,0),
(37142,1,21748,0),
(37142,1,21750,0),
(37142,1,21747,0),
(37142,1,21726,0),
(37142,1,21752,0);
-- Daemon
DELETE FROM spell_script_target WHERE entry IN (37220);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(37220,1,17211,0),
(37220,1,21664,0),
(37220,1,21683,0),
(37220,1,21682,0),
(37220,1,21160,0),
(37220,1,21684,0);
-- Charger
DELETE FROM spell_script_target WHERE entry IN (37143);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(37143,1,17469,0),
(37143,1,21748,0),
(37143,1,21750,0),
(37143,1,21747,0),
(37143,1,21726,0),
(37143,1,21752,0);
-- Wolf
DELETE FROM spell_script_target WHERE entry IN (37339);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(37339,1,17211,0),
(37339,1,21664,0),
(37339,1,21683,0),
(37339,1,21682,0),
(37339,1,21160,0),
(37339,1,21684,0);
-- Cleric
DELETE FROM spell_script_target WHERE entry IN (37147);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(37147,1,17469,0),
(37147,1,21748,0),
(37147,1,21750,0),
(37147,1,21747,0),
(37147,1,21726,0),
(37147,1,21752,0);
-- Necrolyte
DELETE FROM spell_script_target WHERE entry IN (37337);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(37337,1,17211,0),
(37337,1,21664,0),
(37337,1,21683,0),
(37337,1,21682,0),
(37337,1,21160,0),
(37337,1,21684,0);
-- Conjurer
DELETE FROM spell_script_target WHERE entry IN (37149);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(37149,1,17469,0),
(37149,1,21748,0),
(37149,1,21750,0),
(37149,1,21747,0),
(37149,1,21726,0),
(37149,1,21752,0);
-- Conjurer
DELETE FROM spell_script_target WHERE entry IN (37345);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(37345,1,17211,0),
(37345,1,21664,0),
(37345,1,21683,0),
(37345,1,21682,0),
(37345,1,21160,0),
(37345,1,21684,0);
-- Llane
DELETE FROM spell_script_target WHERE entry IN (37150);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(37150,1,17469,0),
(37150,1,21748,0),
(37150,1,21750,0),
(37150,1,21747,0),
(37150,1,21726,0),
(37150,1,21752,0);
-- Blackhand
DELETE FROM spell_script_target WHERE entry IN (37348);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(37348,1,17211,0),
(37348,1,21664,0),
(37348,1,21683,0),
(37348,1,21682,0),
(37348,1,21160,0),
(37348,1,21684,0);

