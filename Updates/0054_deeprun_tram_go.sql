-- Correct Data for Subway 176084 in Deeprun Tram so it shows up again
-- https://gitlab.com/lights-vengeance/issues/-/issues/466

-- !!!
-- GAMEOBJECT_TYPE_TRANSPORT = 11
-- No data data used, all are always 0
-- !!!

UPDATE `gameobject_template` SET `data5` = 0 WHERE `entry` = 176084; -- 2147483647
UPDATE `gameobject_template` SET `flags` = 40, `ExtraFlags` = 4096 WHERE `entry` = 176086; -- 0, 0 probably unused, align data

