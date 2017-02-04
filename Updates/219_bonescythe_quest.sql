-- CDB-1524 Fixed requirements of quest 9078
-- Fixed requirements of quest 9078 (Bonescythe Legplates)
UPDATE quest_template SET RequiredClasses=8 WHERE entry=9078;
