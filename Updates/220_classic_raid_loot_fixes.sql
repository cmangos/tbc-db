--
-- ONYXIA

-- table A
-- remove Viskag, Deathbringer, and trinket from table A and set maxcount to 1
DELETE FROM `reference_loot_template` WHERE `entry`='34001' and`item`='17064';
DELETE FROM `reference_loot_template` WHERE `entry`='34001' and`item`='17068';
DELETE FROM `reference_loot_template` WHERE `entry`='34001' and`item`='17075';
UPDATE `reference_loot_template` SET `ChanceOrQuestChance`='0' WHERE `entry`='34001' and`item`='18813';
UPDATE `creature_loot_template` SET `maxcount`='1' WHERE `entry`='10184' and`item`='34001';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100' WHERE `entry`='10184' AND `item`='21108';

-- table B
-- add Viskag, Deathbringer, and trinket to bonus loot table B
DELETE FROM `creature_loot_template` WHERE entry = 10184 AND item in (17075, 17068, 17064);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('10184', '17075', '8', '2', '1', '1', '0', 'Vis''kag the Bloodletter'),
('10184', '17068', '8', '2', '1', '1', '0', 'Deathbringer'),
('10184', '17064', '8', '2', '1', '1', '0', 'Shard of the Scale');

--
-- MAGMADAR

DELETE FROM creature_loot_template WHERE entry = 11982 AND item NOT in (20951, 34011);

-- table A
-- Medallion of Steadfast Might + half the T1 legs
DELETE FROM reference_loot_template WHERE entry = 34013;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34013', '17065', '0', '1', '1', '1', '0'),
('34013', '16835', '0', '1', '1', '1', '0'),
('34013', '16867', '0', '1', '1', '1', '0'),
('34013', '16847', '0', '1', '1', '1', '0'),
('34013', '16843', '0', '1', '1', '1', '3'),
('34013', '16855', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 11982 AND item = 34013;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 
('11982', '34013', '100', '1', '-34013', '1', '0');

-- table B
-- Striker's Mark + the other half of T1 legs
DELETE FROM reference_loot_template WHERE entry = 34016;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34016', '17069', '0', '1', '1', '1', '0'),
('34016', '16796', '0', '1', '1', '1', '0'),
('34016', '16810', '0', '1', '1', '1', '0'),
('34016', '16822', '0', '1', '1', '1', '0'),
('34016', '16814', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 11982 AND item = 34016;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11982', '34016', '100', '1', '-34016', '1', '0');

-- table C
-- Earthshaker, Eshkandar's Right Claw + the shared loot pool between Magmadar/Garr/Geddon/Golemagg
DELETE FROM reference_loot_template WHERE entry = 34017;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34017', '17073', '20', '1', '1', '1', '0'),
('34017', '18203', '20', '1', '1', '1', '0'),
('34017', '18823', '0', '1', '1', '1', '0'),
('34017', '19142', '0', '1', '1', '1', '0'),
('34017', '19143', '0', '1', '1', '1', '0'),
('34017', '18861', '0', '1', '1', '1', '0'),
('34017', '19136', '0', '1', '1', '1', '0'),
('34017', '18822', '0', '1', '1', '1', '0'),
('34017', '18821', '0', '1', '1', '1', '0'),
('34017', '19144', '0', '1', '1', '1', '0'),
('34017', '18820', '0', '1', '1', '1', '0'),
('34017', '18829', '0', '1', '1', '1', '3'),
('34017', '18824', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 11982 AND item = 34017;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11982', '34017', '100', '1', '-34017', '1', '0');

--
-- GARR

DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='17066';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='17071';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='17105';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='18820';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='18821';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='18822';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='18823';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='18824';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='18829';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='18832';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='18861';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='19136';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='19142';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='19143';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='19144';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='34015';

-- table A
-- Drillborer + half the T1 helms
DELETE FROM reference_loot_template WHERE entry = 34015;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34015', '17066', '0', '1', '1', '1', '0'),
('34015', '16834', '0', '1', '1', '1', '0'),
('34015', '16866', '0', '1', '1', '1', '0'),
('34015', '16846', '0', '1', '1', '1', '0'),
('34015', '16842', '0', '1', '1', '1', '3'),
('34015', '16854', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 12057 AND item = 34015;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12057', '34015', '100', '1', '-34015', '1', '0');

-- table B
-- Gutgore Ripper + the other half of the T1 helms
DELETE FROM reference_loot_template WHERE entry = 34019;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34019', '17071', '0', '1', '1', '1', '0'),
('34019', '16795', '0', '1', '1', '1', '0'),
('34019', '16808', '0', '1', '1', '1', '0'),
('34019', '16821', '0', '1', '1', '1', '0'),
('34019', '16813', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 12057 AND item = 34019;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12057', '34019', '100', '1', '-34019', '1', '0');

-- table C
-- Aurastone Hammer, Brutality Blade + the shared loot pool between Magmadar/Garr/Geddon/Golemagg 

DELETE FROM reference_loot_template WHERE entry = 34020;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34020', '17105', '20', '1', '1', '1', '0'),
('34020', '18832', '20', '1', '1', '1', '0'),
('34020', '18823', '0', '1', '1', '1', '0'),
('34020', '19142', '0', '1', '1', '1', '0'),
('34020', '19143', '0', '1', '1', '1', '0'),
('34020', '18861', '0', '1', '1', '1', '0'),
('34020', '19136', '0', '1', '1', '1', '0'),
('34020', '18822', '0', '1', '1', '1', '0'),
('34020', '18821', '0', '1', '1', '1', '0'),
('34020', '19144', '0', '1', '1', '1', '0'),
('34020', '18820', '0', '1', '1', '1', '0'),
('34020', '18829', '0', '1', '1', '1', '3'),
('34020', '18824', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 12057 AND item = 34020;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12057', '34020', '100', '1', '-34020', '1', '0');

--
-- BARON GEDDON

DELETE FROM `creature_loot_template` WHERE `entry`='12056' and`item`='16797';
DELETE FROM `creature_loot_template` WHERE `entry`='12056' and`item`='16807';
DELETE FROM `creature_loot_template` WHERE `entry`='12056' and`item`='16836';
DELETE FROM `creature_loot_template` WHERE `entry`='12056' and`item`='16844';
DELETE FROM `creature_loot_template` WHERE `entry`='12056' and`item`='16856';
DELETE FROM `creature_loot_template` WHERE `entry`='12056' and`item`='17110';
DELETE FROM `creature_loot_template` WHERE `entry`='12056' and`item`='34027';

-- table A
DELETE FROM reference_loot_template WHERE entry = 34027;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34027', '16797', '0', '1', '1', '1', '0'),
('34027', '16807', '0', '1', '1', '1', '0'),
('34027', '17110', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 12056 AND item = 34027;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12056', '34027', '100', '1', '-34027', '1', '0');

-- table B
-- Druid, Pal/Shm T1 shoulders + the shared loot pool between Magmadar/Garr/Geddon/Golemagg
DELETE FROM reference_loot_template WHERE entry = 34021;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34021', '16836', '30', '1', '1', '1', '0'),
('34021', '16844', '30', '1', '1', '1', '3'),
('34021', '16856', '30', '1', '1', '1', '4'),
('34021', '18823', '0', '1', '1', '1', '0'),
('34021', '19142', '0', '1', '1', '1', '0'),
('34021', '19143', '0', '1', '1', '1', '0'),
('34021', '18861', '0', '1', '1', '1', '0'),
('34021', '19136', '0', '1', '1', '1', '0'),
('34021', '18822', '0', '1', '1', '1', '0'),
('34021', '18821', '0', '1', '1', '1', '0'),
('34021', '19144', '0', '1', '1', '1', '0'),
('34021', '18820', '0', '1', '1', '1', '0'),
('34021', '18829', '0', '1', '1', '1', '3'),
('34021', '18824', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 12056 AND item = 34021;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12056', '34021', '100', '1', '-34021', '1', '0');

--
-- GOLEMAGG THE INCINERATOR

DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='17072';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='17103';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='18820';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='18821';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='18822';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='18823';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='18824';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='18829';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='18842';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='18861';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='19136';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='19142';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='19143';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='19144';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='34028';

-- table A
DELETE FROM reference_loot_template WHERE entry = 34028;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34028', '16833', '0', '1', '1', '1', '0'),
('34028', '16865', '0', '1', '1', '1', '0'),
('34028', '16845', '0', '1', '1', '1', '0'),
('34028', '16841', '0', '1', '1', '1', '3'),
('34028', '16853', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 11988 AND item = 34028;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11988', '34028', '100', '1', '-34028', '1', '0');

-- table B
DELETE FROM reference_loot_template WHERE entry = 34022;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34022', '16798', '0', '1', '1', '1', '0'),
('34022', '16809', '0', '1', '1', '1', '0'),
('34022', '16820', '0', '1', '1', '1', '0'),
('34022', '16815', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 11988 AND item = 34022;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11988', '34022', '100', '1', '-34022', '1', '0');

-- table C
-- Golemagg weapons + the shared loot pool between Magmadar/Garr/Geddon/Golemagg
DELETE FROM reference_loot_template WHERE entry = 34023;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34023', '18842', '25', '1', '1', '1', '0'),
('34023', '17103', '25', '1', '1', '1', '0'),
('34023', '17072', '25', '1', '1', '1', '0'),
('34023', '18823', '0', '1', '1', '1', '0'),
('34023', '19142', '0', '1', '1', '1', '0'),
('34023', '19143', '0', '1', '1', '1', '0'),
('34023', '18861', '0', '1', '1', '1', '0'),
('34023', '19136', '0', '1', '1', '1', '0'),
('34023', '18822', '0', '1', '1', '1', '0'),
('34023', '18821', '0', '1', '1', '1', '0'),
('34023', '19144', '0', '1', '1', '1', '0'),
('34023', '18820', '0', '1', '1', '1', '0'),
('34023', '18829', '0', '1', '1', '1', '3'),
('34023', '18824', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 11988 AND item = 34023;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11988', '34023', '100', '1', '-34023', '1', '0');

--
-- LUCIFRON

DELETE FROM `creature_loot_template` WHERE `entry`='12118' and`item`='16800';
DELETE FROM `creature_loot_template` WHERE `entry`='12118' and`item`='16805';
DELETE FROM `creature_loot_template` WHERE `entry`='12118' and`item`='16829';
DELETE FROM `creature_loot_template` WHERE `entry`='12118' and`item`='16837';
DELETE FROM `creature_loot_template` WHERE `entry`='12118' and`item`='16859';
DELETE FROM `creature_loot_template` WHERE `entry`='12118' and`item`='16863';
DELETE FROM `creature_loot_template` WHERE `entry`='12118' and`item`='17109';
DELETE FROM `creature_loot_template` WHERE `entry`='12118' and`item`='34012';

-- table A
-- Choker of Enlightenment and Druid, Mage, Pal/Shm T1
DELETE FROM reference_loot_template WHERE entry = 34012;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34012', '16829', '0', '1', '1', '1', '0'),
('34012', '16800', '0', '1', '1', '1', '0'),
('34012', '17109', '0', '1', '1', '1', '0'),
('34012', '16837', '0', '1', '1', '1', '3'),
('34012', '16859', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 12118 AND item = 34012;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12118', '34012', '100', '1', '-34012', '1', '0');

-- table B
DELETE FROM reference_loot_template WHERE entry = 34050;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34050', '16863', '33', '1', '1', '1', '0'),
('34050', '16805', '33', '1', '1', '1', '0'),
('34050', '17077', '0', '1', '1', '1', '0'),
('34050', '18870', '0', '1', '1', '1', '0'),
('34050', '18872', '0', '1', '1', '1', '0'),
('34050', '18875', '0', '1', '1', '1', '0'),
('34050', '18878', '0', '1', '1', '1', '0'),
('34050', '18879', '0', '1', '1', '1', '0'),
('34050', '18861', '0', '1', '1', '1', '0'),
('34050', '19147', '0', '1', '1', '1', '0'),
('34050', '19146', '0', '1', '1', '1', '0'),
('34050', '19145', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 12118 AND item = 34050;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12118', '34050', '100', '1', '-34050', '1', '0');

--
-- GEHENNAS

DELETE FROM `creature_loot_template` WHERE `entry`='12259' and`item`='16812';
DELETE FROM `creature_loot_template` WHERE `entry`='12259' and`item`='16826';
DELETE FROM `creature_loot_template` WHERE `entry`='12259' and`item`='16839';
DELETE FROM `creature_loot_template` WHERE `entry`='12259' and`item`='16849';
DELETE FROM `creature_loot_template` WHERE `entry`='12259' and`item`='16860';
DELETE FROM `creature_loot_template` WHERE `entry`='12259' and`item`='16862';
DELETE FROM `creature_loot_template` WHERE `entry`='12259' and`item`='34014';

-- table A
DELETE FROM reference_loot_template WHERE entry = 34014;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34014', '16826', '0', '1', '1', '1', '0'),
('34014', '16812', '0', '1', '1', '1', '0'),
('34014', '16839', '0', '1', '1', '1', '3'),
('34014', '16860', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 12259 AND item = 34014;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12259', '34014', '100', '1', '-34014', '1', '0');

-- table B
DELETE FROM reference_loot_template WHERE entry = 34051;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34051', '16862', '25', '1', '1', '1', '0'),
('34051', '16849', '25', '1', '1', '1', '0'),

('34051', '17077', '0', '1', '1', '1', '0'),
('34051', '18870', '0', '1', '1', '1', '0'),
('34051', '18872', '0', '1', '1', '1', '0'),
('34051', '18875', '0', '1', '1', '1', '0'),
('34051', '18878', '0', '1', '1', '1', '0'),
('34051', '18879', '0', '1', '1', '1', '0'),
('34051', '18861', '0', '1', '1', '1', '0'),
('34051', '19147', '0', '1', '1', '1', '0'),
('34051', '19146', '0', '1', '1', '1', '0'),
('34051', '19145', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 12259 AND item = 34051;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12259', '34051', '100', '1', '-34051', '1', '0');

--
-- SHAZZRAH

DELETE FROM `creature_loot_template` WHERE `entry`='12264' and`item`='16801';
DELETE FROM `creature_loot_template` WHERE `entry`='12264' and`item`='16803';
DELETE FROM `creature_loot_template` WHERE `entry`='12264' and`item`='16811';
DELETE FROM `creature_loot_template` WHERE `entry`='12264' and`item`='16824';
DELETE FROM `creature_loot_template` WHERE `entry`='12264' and`item`='16831';
DELETE FROM `creature_loot_template` WHERE `entry`='12264' and`item`='16852';
DELETE FROM `creature_loot_template` WHERE `entry`='12264' and`item`='34026';

-- table A
DELETE FROM reference_loot_template WHERE entry = 34026;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34026', '16831', '0', '1', '1', '1', '0'),
('34026', '16801', '0', '1', '1', '1', '0'),
('34026', '16852', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 12264 AND item = 34026;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12264', '34026', '100', '1', '-34026', '1', '0');

-- table B
DELETE FROM reference_loot_template WHERE entry = 34104;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34104', '16803', '25', '1', '1', '1', '0'),
('34104', '16811', '25', '1', '1', '1', '0'),
('34104', '16824', '25', '1', '1', '1', '0'),

('34104', '17077', '0', '1', '1', '1', '0'),
('34104', '18870', '0', '1', '1', '1', '0'),
('34104', '18872', '0', '1', '1', '1', '0'),
('34104', '18875', '0', '1', '1', '1', '0'),
('34104', '18878', '0', '1', '1', '1', '0'),
('34104', '18879', '0', '1', '1', '1', '0'),
('34104', '18861', '0', '1', '1', '1', '0'),
('34104', '19147', '0', '1', '1', '1', '0'),
('34104', '19146', '0', '1', '1', '1', '0'),
('34104', '19145', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 12264 AND item = 34104;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12264', '34104', '100', '1', '-34104', '1', '0');

--
-- SULFURON HARBINGER

DELETE FROM `creature_loot_template` WHERE `entry`='12098' and`item`='16816';
DELETE FROM `creature_loot_template` WHERE `entry`='12098' and`item`='16823';
DELETE FROM `creature_loot_template` WHERE `entry`='12098' and`item`='16848';
DELETE FROM `creature_loot_template` WHERE `entry`='12098' and`item`='16868';
DELETE FROM `creature_loot_template` WHERE `entry`='12098' and`item`='17074';
DELETE FROM `creature_loot_template` WHERE `entry`='12098' and`item`='34029';

-- table A
DELETE FROM reference_loot_template WHERE entry = 34029;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34029', '16848', '0', '1', '1', '1', '0'),
('34029', '16816', '0', '1', '1', '1', '0'),
('34029', '17074', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 12098 AND item = 34029;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12098', '34029', '100', '1', '-34029', '1', '0');

-- table B
DELETE FROM reference_loot_template WHERE entry = 34105;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34105', '16868', '33', '1', '1', '1', '0'),
('34105', '16823', '33', '1', '1', '1', '0'),

('34105', '17077', '0', '1', '1', '1', '0'),
('34105', '18870', '0', '1', '1', '1', '0'),
('34105', '18872', '0', '1', '1', '1', '0'),
('34105', '18875', '0', '1', '1', '1', '0'),
('34105', '18878', '0', '1', '1', '1', '0'),
('34105', '18879', '0', '1', '1', '1', '0'),
('34105', '18861', '0', '1', '1', '1', '0'),
('34105', '19147', '0', '1', '1', '1', '0'),
('34105', '19146', '0', '1', '1', '1', '0'),
('34105', '19145', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 12098 AND item = 34105;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12098', '34105', '100', '1', '-34105', '1', '0');

--
-- RAGNAROS

-- table C
DELETE FROM reference_loot_template WHERE entry = 34106;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34106', '19138', '0', '1', '1', '1', '0'),
('34106', '18817', '0', '1', '1', '1', '0'),
('34106', '18814', '0', '1', '1', '1', '0'),
('34106', '18815', '0', '1', '1', '1', '0'),
('34106', '18816', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 11502 AND item = 34106;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11502', '34106', '100', '1', '-34106', '1', '0');

-- table D
DELETE FROM reference_loot_template WHERE entry = 34107;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34107', '17102', '0', '1', '1', '1', '0'),
('34107', '17063', '0', '1', '1', '1', '0'),
('34107', '17106', '0', '1', '1', '1', '0'),
('34107', '19137', '0', '1', '1', '1', '0'),
('34107', '17107', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 11502 AND item = 34107;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11502', '34107', '100', '1', '-34107', '1', '0');

-- table E (bonus table, 2handers + Shard of the Flame)
DELETE FROM creature_loot_template WHERE entry = 11502 AND item in (17104, 17076, 17082);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11502', '17104', '8', '2', '1', '1', '0'),
('11502', '17076', '8', '2', '1', '1', '0'),
('11502', '17082', '8', '2', '1', '1', '0');

--
-- NEFARIAN

DELETE FROM `creature_loot_template` WHERE `entry`='11583' AND `item`='21142';
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11583', '21142', '-100', '0', '1', '1' ,'0');

DELETE FROM `creature_loot_template` WHERE `entry`='11583' AND `item`='34010';

-- table C
DELETE FROM reference_loot_template WHERE entry = 34010;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34010', '19364', '10', '1', '1', '1', '0'),
('34010', '19356', '10', '1', '1', '1', '0'),
('34010', '19379', '0', '1', '1', '1', '0'),
('34010', '19380', '0', '1', '1', '1', '0'),
('34010', '19381', '0', '1', '1', '1', '0'),
('34010', '19382', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 11583 AND item = 34010;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11583', '34010', '100', '1', '-34010', '1', '0');

-- table D
DELETE FROM reference_loot_template WHERE entry = 34107;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34107', '19360', '10', '1', '1', '1', '0'),
('34107', '19363', '10', '1', '1', '1', '0'),
('34107', '19377', '0', '1', '1', '1', '0'),
('34107', '19378', '0', '1', '1', '1', '0'),
('34107', '19375', '0', '1', '1', '1', '0'),
('34107', '19376', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 11583 AND item = 34107;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11583', '34107', '100', '1', '-34107', '1', '0');

--
-- CHROMAGGUS

-- table A (T2 set items)
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19347';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19349';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19352';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19361';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19385';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19386';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19387';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19388';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19389';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19390';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19391';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19392';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19393';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34038' and`item`='16832';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34038' and`item`='16902';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34038' and`item`='16917';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34038' and`item`='16924';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34038' and`item`='16932';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34038' and`item`='16937';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34038' and`item`='16945';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34038' and`item`='16953';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34038' and`item`='16961';

-- table C
DELETE FROM reference_loot_template WHERE entry = 34108;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34108', '19352', '10', '1', '1', '1', '0'),
('34108', '19349', '10', '1', '1', '1', '0'),
('34108', '19387', '0', '1', '1', '1', '0'),
('34108', '19388', '0', '1', '1', '1', '0'),
('34108', '19389', '0', '1', '1', '1', '0'),
('34108', '19385', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 14020 AND item = 34108;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('14020', '34108', '100', '1', '-34108', '1', '0');

-- table D
DELETE FROM reference_loot_template WHERE entry = 34109;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34109', '19361', '10', '1', '1', '1', '0'),
('34109', '19347', '10', '1', '1', '1', '0'),
('34109', '19391', '0', '1', '1', '1', '0'),
('34109', '19386', '0', '1', '1', '1', '0'),
('34109', '19390', '0', '1', '1', '1', '0'),
('34109', '19393', '0', '1', '1', '1', '3'),
('34109', '19392', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 14020 AND item = 34109;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('14020', '34109', '100', '1', '-34109', '1', '0');

--
-- FLAMEGOR

-- shared loot table A
UPDATE `creature_loot_template` SET `maxcount`='1' WHERE `entry`='11981' and`item`='34037';
DELETE FROM reference_loot_template WHERE entry = 34037;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34037', '16964', '4', '1', '1', '1', '0'),
('34037', '16899', '4', '1', '1', '1', '0'),
('34037', '16907', '4', '1', '1', '1', '0'),
('34037', '16913', '4', '1', '1', '1', '0'),
('34037', '16920', '4', '1', '1', '1', '0'),
('34037', '16928', '4', '1', '1', '1', '0'),
('34037', '16940', '4', '1', '1', '1', '0'),
('34037', '16948', '4', '1', '1', '1', '3'),
('34037', '16956', '4', '1', '1', '1', '4'),
('34037', '19353', '4', '1', '1', '1', '0'),
('34037', '19355', '4', '1', '1', '1', '0'),
('34037', '19396', '0', '1', '1', '1', '0'),
('34037', '19394', '0', '1', '1', '1', '0'),
('34037', '19397', '0', '1', '1', '1', '0'),
('34037', '19395', '0', '1', '1', '1', '0');

-- table B
-- Flamegor-specific items
DELETE FROM reference_loot_template WHERE entry = 34110;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34110', '19357', '10', '1', '1', '1', '0'),
('34110', '19367', '10', '1', '1', '1', '0'),
('34110', '19433', '0', '1', '1', '1', '0'),
('34110', '19432', '0', '1', '1', '1', '0'),
('34110', '19430', '0', '1', '1', '1', '0'),
('34110', '19431', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 11981 AND item = 34110;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11981', '34110', '100', '1', '-34110', '1', '0');

--
-- EBONROC

DELETE FROM `creature_loot_template` WHERE `entry`='14601' and`item`='34036';
DELETE FROM `reference_loot_template` WHERE `entry`='34036';

-- shared loot table B
DELETE FROM creature_loot_template WHERE entry = 14601 AND item = 34037;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('14601', '34037', '100', '1', '-34037', '1', '0');

-- table B
-- Ebonroc-specific items
DELETE FROM reference_loot_template WHERE entry = 34036;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34036', '19368', '10', '1', '1', '1', '0'),
('34036', '19403', '0', '1', '1', '1', '0'),
('34036', '19406', '0', '1', '1', '1', '0'),
('34036', '19407', '0', '1', '1', '1', '0'),
('34036', '19405', '0', '1', '1', '1', '0'),
('34036', '19345', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 14601 AND item = 34036;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('14601', '34036', '100', '1', '-34036', '1', '0');

--
-- FIREMAW

DELETE FROM `creature_loot_template` WHERE `entry`='11983' and`item`='34035';
DELETE FROM `reference_loot_template` WHERE `entry`='34035';

-- shared loot table A
DELETE FROM creature_loot_template WHERE entry = 11983 AND item = 34037;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11983', '34037', '100', '1', '-34037', '1', '0');

-- table B
-- Firemaw-specific items
DELETE FROM reference_loot_template WHERE entry = 34035;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34035', '19365', '0', '1', '1', '1', '0'),
('34035', '19400', '0', '1', '1', '1', '0'),
('34035', '19399', '0', '1', '1', '1', '0'),
('34035', '19398', '0', '1', '1', '1', '0'),
('34035', '19401', '0', '1', '1', '1', '3'),
('34035', '19402', '0', '1', '1', '1', '4'),
('34035', '19344', '0', '1', '1', '1', '3'),
('34035', '19343', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 11983 AND item = 34035;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11983', '34035', '100', '1', '-34035', '1', '0');

--
-- HAKKAR

-- table A
DELETE FROM `creature_loot_template` WHERE `entry`='14834' and`item`='34090';

DELETE FROM `reference_loot_template` WHERE `entry`='34090';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34090', '19852', '0', '1', '1', '1', '0'),
('34090', '19864', '0', '1', '1', '1', '0'),
('34090', '19853', '0', '1', '1', '1', '0'),
('34090', '19856', '0', '1', '1', '1', '0'),
('34090', '19857', '0', '1', '1', '1', '0'),
('34090', '20257', '0', '1', '1', '1', '3'),
('34090', '20264', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 14834 AND item = 34090;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('14834', '34090', '100', '1', '-34090', '1', '0');

-- table B
DELETE FROM `reference_loot_template` WHERE `entry`='34112';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34112', '19854', '0', '1', '1', '1', '0'),
('34112', '19861', '0', '1', '1', '1', '0'),
('34112', '19865', '0', '1', '1', '1', '0'),
('34112', '19862', '0', '1', '1', '1', '0'),
('34112', '19855', '0', '1', '1', '1', '0'),
('34112', '19859', '0', '1', '1', '1', '0'),
('34112', '19876', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 14834 AND item = 34112;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('14834', '34112', '100', '1', '-34112', '1', '0');

--
-- OSSIRIAN THE UNSCARRED

-- table A
DELETE FROM `creature_loot_template` WHERE `entry`='15339' and`item`='34025';
DELETE FROM `reference_loot_template` WHERE `entry`='34025';

DELETE FROM `reference_loot_template` WHERE `entry`='34025';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34025', '21459', '10', '1', '1', '1', '0'),
('34025', '21460', '0', '1', '1', '1', '0'),
('34025', '21461', '0', '1', '1', '1', '0'),
('34025', '21462', '0', '1', '1', '1', '0'),
('34025', '21463', '0', '1', '1', '1', '0'),
('34025', '21464', '0', '1', '1', '1', '3');

DELETE FROM creature_loot_template WHERE entry = 15339 AND item = 34025;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15339', '34025', '100', '1', '-34025', '1', '0');

-- table B
DELETE FROM `reference_loot_template` WHERE `entry`='34112';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34112', '21715', '10', '1', '1', '1', '0'),
('34112', '21452', '0', '1', '1', '1', '0'),
('34112', '21456', '0', '1', '1', '1', '0'),
('34112', '21458', '0', '1', '1', '1', '0'),
('34112', '21454', '0', '1', '1', '1', '3'),
('34112', '21453', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 15339 AND item = 34112;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15339', '34112', '100', '1', '-34112', '1', '0');

--
-- THE PROPHET SKERAM

DELETE FROM `creature_loot_template` WHERE `entry`='15263' and`item`='34046';
DELETE FROM `reference_loot_template` WHERE `entry`='34046';

-- table A
DELETE FROM `reference_loot_template` WHERE `entry`='34113';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34113', '21128', '10', '1', '1', '1', '0'),
('34113', '21699', '0', '1', '1', '1', '0'),
('34113', '21701', '0', '1', '1', '1', '0'),
('34113', '21702', '0', '1', '1', '1', '0'),
('34113', '21700', '0', '1', '1', '1', '0'),
('34113', '21698', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 15263 AND item = 34113;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15263', '34113', '100', '1', '-34113', '1', '0');

-- table B
DELETE FROM `reference_loot_template` WHERE `entry`='34046';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34046', '21703', '10', '1', '1', '1', '0'),
('34046', '21706', '0', '1', '1', '1', '0'),
('34046', '21707', '0', '1', '1', '1', '0'),
('34046', '21708', '0', '1', '1', '1', '0'),
('34046', '21814', '0', '1', '1', '1', '0'),
('34046', '21705', '0', '1', '1', '1', '3'),
('34046', '21704', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 15263 AND item = 34046;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15263', '34046', '100', '1', '-34046', '1', '0');

--
-- BATTLEGUARD SARTURA

DELETE FROM `creature_loot_template` WHERE `entry`='15516' and`item`='34047';
DELETE FROM `reference_loot_template` WHERE `entry`='34047';

-- table A
DELETE FROM `reference_loot_template` WHERE `entry`='34047';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34047', '21666', '10', '1', '1', '1', '0'),
('34047', '21670', '0', '1', '1', '1', '0'),
('34047', '21672', '0', '1', '1', '1', '0'),
('34047', '21669', '0', '1', '1', '1', '0'),
('34047', '21671', '0', '1', '1', '1', '0'),
('34047', '21668', '0', '1', '1', '1', '3'),
('34047', '21667', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 15516 AND item = 34047;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15516', '34047', '100', '1', '-34047', '1', '0');

-- table B
DELETE FROM `reference_loot_template` WHERE `entry`='34114';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34114', '21673', '10', '1', '1', '1', '0'),
('34114', '21648', '0', '1', '1', '1', '0'),
('34114', '21675', '0', '1', '1', '1', '0'),
('34114', '21676', '0', '1', '1', '1', '0'),
('34114', '21674', '0', '1', '1', '1', '0'),
('34114', '21678', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 15516 AND item = 34114;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15516', '34114', '100', '1', '-34114', '1', '0');

--
-- FANKRISS THE UNYIELDING

DELETE FROM `creature_loot_template` WHERE `entry`='15510' and`item`='34048';
DELETE FROM `reference_loot_template` WHERE `entry`='34048';

-- table A
DELETE FROM `reference_loot_template` WHERE `entry`='34048';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34048', '21650', '10', '1', '1', '1', '0'),
('34048', '21664', '0', '1', '1', '1', '0'),
('34048', '21652', '0', '1', '1', '1', '0'),
('34048', '21665', '0', '1', '1', '1', '0'),
('34048', '21663', '0', '1', '1', '1', '0'),
('34048', '21651', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 15510 AND item = 34048;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15510', '34048', '100', '1', '-34048', '1', '0');

-- table B
DELETE FROM `reference_loot_template` WHERE `entry`='34115';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34115', '21635', '10', '1', '1', '1', '0'),
('34115', '21647', '0', '1', '1', '1', '0'),
('34115', '21645', '0', '1', '1', '1', '0'),
('34115', '21627', '0', '1', '1', '1', '0'),
('34115', '22396', '0', '1', '1', '1', '3'),
('34115', '22402', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 15510 AND item = 34115;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15510', '34115', '100', '1', '-34115', '1', '0');

--
-- C'THUN

DELETE FROM `creature_loot_template` WHERE `entry`='15727' and`item`='34049';
DELETE FROM `reference_loot_template` WHERE `entry`='34049';

-- table A
DELETE FROM `reference_loot_template` WHERE `entry`='34049';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34049', '21126', '8', '1', '1', '1', '0'),
('34049', '21586', '0', '1', '1', '1', '0'),
('34049', '22731', '0', '1', '1', '1', '0'),
('34049', '21596', '0', '1', '1', '1', '0'),
('34049', '21585', '0', '1', '1', '1', '0'),
('34049', '22730', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 15727 AND item = 34049;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15727', '34049', '100', '1', '-34049', '1', '0');

-- table B
DELETE FROM `reference_loot_template` WHERE `entry`='34116';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34116', '21134', '8', '1', '1', '1', '0'),
('34116', '21839', '8', '1', '1', '1', '0'),
('34116', '21583', '0', '1', '1', '1', '0'),
('34116', '21581', '0', '1', '1', '1', '0'),
('34116', '22732', '0', '1', '1', '1', '0'),
('34116', '21582', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 15727 AND item = 34116;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15727', '34116', '100', '1', '-34116', '1', '0');

-- table C (vanquished tentacle)
DELETE FROM creature_loot_template WHERE entry = 15727 AND item = 21579;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15727', '21579', '20', '2', '1', '1', '0');

