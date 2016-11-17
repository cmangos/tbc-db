-- ================================================================
-- Fix Aggro of Vazruden So if you Pull Sentries it Aggros Vazruden
-- ================================================================
DELETE FROM creature_linking WHERE master_guid IN (63011,62084);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('63011','62084','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('63012','62084','3');

