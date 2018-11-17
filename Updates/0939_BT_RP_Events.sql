-- unit flags for broken
UPDATE `creature_template` SET `UnitFlags` = 33536 WHERE `Entry` = 23319;

-- remove invisible on door trigger
UPDATE `creature_template` SET `ExtraFlags` = 0 WHERE `Entry` = 23412;


