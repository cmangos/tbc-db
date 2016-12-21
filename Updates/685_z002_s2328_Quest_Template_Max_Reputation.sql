ALTER TABLE quest_template
ADD COLUMN RewMaxRepValue1 mediumint(9) NOT NULL DEFAULT 0 AFTER RewRepValue5,
ADD COLUMN RewMaxRepValue2 mediumint(9) NOT NULL DEFAULT 0 AFTER RewMaxRepValue1,
ADD COLUMN RewMaxRepValue3 mediumint(9) NOT NULL DEFAULT 0 AFTER RewMaxRepValue2,
ADD COLUMN RewMaxRepValue4 mediumint(9) NOT NULL DEFAULT 0 AFTER RewMaxRepValue3,
ADD COLUMN RewMaxRepValue5 mediumint(9) NOT NULL DEFAULT 0 AFTER RewMaxRepValue4;

