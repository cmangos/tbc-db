-- 2014-11-02 21:17:26 Table `creature_template` has creature (Entry: 25603) with MinLevelHealth=52 instead of 29.946001
-- 2014-11-02 21:17:26 Table `creature_template` has creature (Entry: 25603) with MaxLevelHealth=52 instead of 29.946001
UPDATE creature_template SET MinLevelHealth=30, MaxLevelHealth=30 WHERE entry IN (25603);


-- 2014-11-02 21:18:12 Table `dbscripts_on_creature_movement` contain unused script, id 570201.
-- 2014-11-02 21:18:12 Table `dbscripts_on_creature_movement` contain unused script, id 1061001.
-- 2014-11-02 21:18:12 Table `dbscripts_on_creature_movement` contain unused script, id 1061003.
-- 2014-11-02 21:18:12 Table `dbscripts_on_creature_movement` contain unused script, id 4184401.
DELETE FROM dbscripts_on_creature_movement WHERE id IN (570201,1061001,1061003,4184401);

-- 2014-11-02 22:46:10 Table `db_script_string` has unused string id 2000005367
-- 2014-11-02 22:46:10 Table `db_script_string` has unused string id 2000005368
-- 2014-11-02 22:46:10 Table `db_script_string` has unused string id 2000005369
-- 2014-11-02 22:46:10 Table `db_script_string` has unused string id 2000005370
-- 2014-11-02 22:46:10 Table `db_script_string` has unused string id 2000005371
-- 2014-11-02 22:46:10 Table `db_script_string` has unused string id 2000005372
-- 2014-11-02 22:46:10 Table `db_script_string` has unused string id 2000005373
-- 2014-11-02 22:46:10 Table `db_script_string` has unused string id 2000005374
-- 2014-11-02 22:46:10 Table `db_script_string` has unused string id 2000005375
-- 2014-11-02 22:46:10 Table `db_script_string` has unused string id 2000005376
-- 2014-11-02 22:46:10 Table `db_script_string` has unused string id 2000005377
-- 2014-11-02 22:46:10 Table `db_script_string` has unused string id 2000005378
DELETE FROM db_script_string WHERE entry BETWEEN 2000005367 AND 2000005378;















