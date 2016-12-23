-- ===================
-- Fixes by Killerwife
-- ===================
-- Karazhan chess event data from UDB missing backport except the one update

UPDATE creature_template SET Armor=0,RegenerateStats=0 WHERE entry IN(21684,21752,17469,17211,21748,21664,21750,21683,21747,21682,21726,21160);
DELETE FROM spell_script_target WHERE entry = 30532;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(30532, 1, 17459, 0);
DELETE FROM spell_script_target WHERE entry = 45259;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45259, 1, 25213, 0);
-- cheat: hand of medivh
-- horde
DELETE FROM spell_script_target WHERE entry = 39338;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(39338, 1, 17469, 0),
(39338, 1, 21748, 0),
(39338, 1, 21750, 0),
(39338, 1, 21747, 0),
(39338, 1, 21726, 0),
(39338, 1, 21752, 0);
-- alliance
DELETE FROM spell_script_target WHERE entry = 39342;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(39342, 1, 17211, 0),
(39342, 1, 21664, 0),
(39342, 1, 21683, 0),
(39342, 1, 21682, 0),
(39342, 1, 21160, 0),
(39342, 1, 21684, 0);
-- cheat: fury of medivh
-- horde
DELETE FROM spell_script_target WHERE entry = 39341;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(39341, 1, 17469, 0),
(39341, 1, 21748, 0),
(39341, 1, 21750, 0),
(39341, 1, 21747, 0),
(39341, 1, 21726, 0),
(39341, 1, 21752, 0);
-- alliance
DELETE FROM spell_script_target WHERE entry = 39344;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(39344, 1, 17211, 0),
(39344, 1, 21664, 0),
(39344, 1, 21683, 0),
(39344, 1, 21682, 0),
(39344, 1, 21160, 0),
(39344, 1, 21684, 0);
-- move spells (AI controlled)
DELETE FROM spell_script_target WHERE entry = 32312;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(32312, 1, 17208, 0),
(32312, 1, 17305, 0);
DELETE FROM spell_script_target WHERE entry = 37388;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(37388, 1, 17208, 0),
(37388, 1, 17305, 0);
-- generic move spell
DELETE FROM spell_script_target WHERE entry = 30012;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(30012, 1, 17208, 0),
(30012, 1, 17305, 0);
-- rotation spells (include outside squares
DELETE FROM spell_script_target WHERE entry = 30284;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(30284, 1, 17208, 0),
(30284, 1, 17305, 0),
(30284, 1, 17316, 0),
(30284, 1, 17317, 0);
-- chess pieces move spells (player controlled)
DELETE FROM spell_script_target WHERE entry IN (37144,37146,37148,37151,37152,37153);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(37144, 1, 17208, 0),
(37144, 1, 17305, 0),
(37146, 1, 17208, 0),
(37146, 1, 17305, 0),
(37148, 1, 17208, 0),
(37148, 1, 17305, 0),
(37151, 1, 17208, 0),
(37151, 1, 17305, 0),
(37152, 1, 17208, 0),
(37152, 1, 17305, 0),
(37153, 1, 17208, 0),
(37153, 1, 17305, 0);
-- transform spells (when a piece dies)
DELETE FROM spell_script_target WHERE entry IN (39350,39352,39353,39354,39355,39356,39357,39358,39359,39360,39361,39362);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(39350, 1, 22519, 0),
(39352, 1, 22519, 0),
(39353, 1, 22519, 0),
(39354, 1, 22519, 0),
(39355, 1, 22519, 0),
(39356, 1, 22519, 0),
(39357, 1, 22519, 0),
(39358, 1, 22519, 0),
(39359, 1, 22519, 0),
(39360, 1, 22519, 0),
(39361, 1, 22519, 0),
(39362, 1, 22519, 0);
DELETE FROM spell_script_target WHERE entry = 32260;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(32260, 1, 17208, 0),
(32260, 1, 17305, 0);
-- cleanup spells
DELETE FROM spell_script_target WHERE entry IN (39398, 37366);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(39398, 1, 22521, 0),
(39398, 1, 22519, 0),
(37366, 1, 17469, 0),
(37366, 1, 17211, 0),
(37366, 1, 21748, 0),
(37366, 1, 21750, 0),
(37366, 1, 21747, 0),
(37366, 1, 21726, 0),
(37366, 1, 21752, 0),
(37366, 1, 21664, 0),
(37366, 1, 21683, 0),
(37366, 1, 21682, 0),
(37366, 1, 21160, 0),
(37366, 1, 21684, 0);
-- cleanup spell script
DELETE FROM dbscripts_on_spell WHERE id IN (39398, 37366);
INSERT INTO dbscripts_on_spell (id, command, datalong, data_flags, comments) VALUES
(37366, 18, 30000, 6, 'despawn self'),
(39398, 18, 30000, 6, 'despawn self');
-- win spells
DELETE FROM spell_script_target WHERE entry = 39401;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(39401, 1, 17469, 0),
(39401, 1, 17211, 0),
(39401, 1, 21748, 0),
(39401, 1, 21750, 0),
(39401, 1, 21747, 0),
(39401, 1, 21726, 0),
(39401, 1, 21752, 0),
(39401, 1, 21664, 0),
(39401, 1, 21683, 0),
(39401, 1, 21682, 0),
(39401, 1, 21160, 0),
(39401, 1, 21684, 0);
DELETE FROM spell_script_target WHERE entry = 39395;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(39395, 1, 22523, 0);
-- poison cloud spells
DELETE FROM spell_script_target WHERE entry IN (37469,37775);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(37469, 1, 17211, 0),
(37469, 1, 21664, 1),
(37469, 1, 21683, 1),
(37469, 1, 21682, 1),
(37469, 1, 21160, 1),
(37469, 1, 21684, 1),
(37775, 1, 17211, 0),
(37775, 1, 21664, 1),
(37775, 1, 21683, 1),
(37775, 1, 21682, 1),
(37775, 1, 21160, 1),
(37775, 1, 21684, 1);
-- rain of fire spells
DELETE FROM spell_script_target WHERE entry IN (37465);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(37465, 1, 17469, 0),
(37465, 1, 21748, 1),
(37465, 1, 21750, 1),
(37465, 1, 21747, 1),
(37465, 1, 21726, 1),
(37465, 1, 21752, 1);
-- npc template spells
DELETE FROM creature_template_spells WHERE entry IN (21684,21752,17469,17211,21748,21664,21750,21683,21747,21682,21726,21160);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3,  spell4) VALUES
(21684, 37153, 30284, 37474, 37471),
(21752, 37153, 30284, 37476, 37472),
(17469, 37146, 30284, 37413, 37416),
(17211, 37146, 30284, 37406, 37414),
(21748, 37144, 30284, 37454, 37502),
(21664, 37144, 30284, 37453, 37498),
(21750, 37148, 30284, 37463, 37469),
(21683, 37148, 30284, 37462, 37465),
(21747, 37152, 30284, 37456, 37461),
(21682, 37152, 30284, 37455, 37459),
(21726, 37151, 30284, 37428, 37434),
(21160, 37151, 30284, 37427, 37432);
-- missing gossip (ytdb)
UPDATE creature_template SET GossipMenuId = 8366 WHERE entry = 21748;
UPDATE creature_template SET GossipMenuId = 8362 WHERE entry = 21747;
DELETE FROM gossip_menu WHERE entry IN (8366,8362);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8366, 10439, 0, 0),
(8362, 10434, 0, 0);

