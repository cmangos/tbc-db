-- source classic
DELETE FROM creature_template_addon WHERE entry IN(5850);
INSERT INTO creature_template_addon(entry, auras) VALUES
('5850', '11966');
UPDATE creature_template SET SchoolImmuneMask=4 WHERE entry IN(5850);
UPDATE creature_template SET SchoolImmuneMask=8 WHERE entry IN(5855);


